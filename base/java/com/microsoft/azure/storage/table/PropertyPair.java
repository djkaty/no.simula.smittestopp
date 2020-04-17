package com.microsoft.azure.storage.table;

import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.Utility;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;

public final class PropertyPair {
    public String effectiveName = null;
    public Method getter = null;
    public boolean isEncrypted = false;
    public String name = null;
    public Method setter = null;
    public Class<?> type = null;

    public static HashMap<String, PropertyPair> generatePropertyPairs(Class<?> cls) {
        if (TableServiceEntity.isReflectedEntityCacheDisabled()) {
            return generatePropertyPairsHelper(cls);
        }
        new HashMap();
        HashMap<String, PropertyPair> hashMap = TableServiceEntity.getReflectedEntityCache().get(cls);
        if (hashMap != null) {
            return hashMap;
        }
        HashMap<String, PropertyPair> generatePropertyPairsHelper = generatePropertyPairsHelper(cls);
        TableServiceEntity.getReflectedEntityCache().put(cls, generatePropertyPairsHelper);
        return generatePropertyPairsHelper;
    }

    public static HashMap<String, PropertyPair> generatePropertyPairsHelper(Class<?> cls) {
        PropertyPair propertyPair;
        Method[] methods = cls.getMethods();
        HashMap<String, PropertyPair> hashMap = new HashMap<>();
        for (Method method : methods) {
            if (method.getName().length() >= 4 && (method.getName().startsWith("get") || method.getName().startsWith("set"))) {
                String substring = method.getName().substring(3);
                if (!substring.equals(TableConstants.PARTITION_KEY) && !substring.equals(TableConstants.ROW_KEY) && !substring.equals(TableConstants.TIMESTAMP) && !substring.equals(Constants.ETAG_ELEMENT) && !substring.equals("LastModified")) {
                    if (hashMap.containsKey(substring)) {
                        propertyPair = hashMap.get(substring);
                    } else {
                        PropertyPair propertyPair2 = new PropertyPair();
                        propertyPair2.name = substring;
                        hashMap.put(substring, propertyPair2);
                        propertyPair = propertyPair2;
                    }
                    if (method.getName().startsWith("get") && method.getParameterTypes().length == 0) {
                        propertyPair.type = method.getReturnType();
                        propertyPair.getter = method;
                    } else if (method.getName().startsWith("set") && method.getParameterTypes().length == 1 && Void.TYPE.equals(method.getReturnType())) {
                        propertyPair.setter = method;
                    }
                    StoreAs storeAs = (StoreAs) method.getAnnotation(StoreAs.class);
                    if (storeAs == null) {
                        continue;
                    } else if (!Utility.isNullOrEmpty(storeAs.name())) {
                        String str = propertyPair.effectiveName;
                        if (str != null && !str.equals(propertyPair.name) && !propertyPair.effectiveName.equals(storeAs.name())) {
                            throw new IllegalArgumentException(String.format(SR.STOREAS_DIFFERENT_FOR_GETTER_AND_SETTER, new Object[]{propertyPair.name}));
                        } else if (!propertyPair.name.equals(storeAs.name())) {
                            propertyPair.effectiveName = storeAs.name();
                        }
                    } else {
                        throw new IllegalArgumentException(String.format(SR.STOREAS_USED_ON_EMPTY_PROPERTY, new Object[]{propertyPair.name}));
                    }
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry next : hashMap.entrySet()) {
            ((PropertyPair) next.getValue()).isEncrypted = ((PropertyPair) next.getValue()).setter != null && ((PropertyPair) next.getValue()).setter.isAnnotationPresent(Encrypt.class);
            if (!((PropertyPair) next.getValue()).shouldProcess()) {
                arrayList.add(next.getKey());
            } else if (!Utility.isNullOrEmpty(((PropertyPair) next.getValue()).effectiveName)) {
                arrayList2.add(next.getKey());
            } else {
                ((PropertyPair) next.getValue()).effectiveName = ((PropertyPair) next.getValue()).name;
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            hashMap.remove((String) it.next());
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            String str2 = (String) it2.next();
            PropertyPair propertyPair3 = hashMap.get(str2);
            hashMap.remove(str2);
            hashMap.put(propertyPair3.effectiveName, propertyPair3);
        }
        return hashMap;
    }

    public void consumeEntityProperty(EntityProperty entityProperty, Object obj) {
        Class cls = this.setter.getParameterTypes()[0];
        if (entityProperty.getIsNull()) {
            if (!cls.isPrimitive()) {
                this.setter.invoke(obj, new Object[]{null});
            }
        } else if (entityProperty.getEdmType() == EdmType.STRING) {
            if (cls.equals(String.class)) {
                this.setter.invoke(obj, new Object[]{entityProperty.getValueAsString()});
            }
        } else if (entityProperty.getEdmType() == EdmType.BINARY) {
            if (cls.equals(Byte[].class)) {
                this.setter.invoke(obj, new Object[]{entityProperty.getValueAsByteObjectArray()});
            } else if (cls.equals(byte[].class)) {
                this.setter.invoke(obj, new Object[]{entityProperty.getValueAsByteArray()});
            }
        } else if (entityProperty.getEdmType() == EdmType.BOOLEAN) {
            if (cls.equals(Boolean.class)) {
                this.setter.invoke(obj, new Object[]{entityProperty.getValueAsBooleanObject()});
            } else if (cls.equals(Boolean.TYPE)) {
                this.setter.invoke(obj, new Object[]{Boolean.valueOf(entityProperty.getValueAsBoolean())});
            }
        } else if (entityProperty.getEdmType() == EdmType.DOUBLE) {
            if (cls.equals(Double.class)) {
                this.setter.invoke(obj, new Object[]{entityProperty.getValueAsDoubleObject()});
            } else if (cls.equals(Double.TYPE)) {
                this.setter.invoke(obj, new Object[]{Double.valueOf(entityProperty.getValueAsDouble())});
            }
        } else if (entityProperty.getEdmType() == EdmType.GUID) {
            if (cls.equals(UUID.class)) {
                this.setter.invoke(obj, new Object[]{entityProperty.getValueAsUUID()});
            }
        } else if (entityProperty.getEdmType() == EdmType.INT32) {
            if (cls.equals(Integer.class)) {
                this.setter.invoke(obj, new Object[]{entityProperty.getValueAsIntegerObject()});
            } else if (cls.equals(Integer.TYPE)) {
                this.setter.invoke(obj, new Object[]{Integer.valueOf(entityProperty.getValueAsInteger())});
            }
        } else if (entityProperty.getEdmType() == EdmType.INT64) {
            if (cls.equals(Long.class)) {
                this.setter.invoke(obj, new Object[]{entityProperty.getValueAsLongObject()});
            } else if (cls.equals(Long.TYPE)) {
                this.setter.invoke(obj, new Object[]{Long.valueOf(entityProperty.getValueAsLong())});
            }
        } else if (entityProperty.getEdmType() != EdmType.DATE_TIME) {
            throw new IllegalArgumentException(String.format(SR.PROPERTY_CANNOT_BE_SERIALIZED_AS_GIVEN_EDMTYPE, new Object[]{this.name, entityProperty.getEdmType().toString()}));
        } else if (cls.equals(Date.class)) {
            this.setter.invoke(obj, new Object[]{entityProperty.getValueAsDate()});
        }
    }

    public EntityProperty generateEntityProperty(Object obj) {
        EntityProperty entityProperty = new EntityProperty(this.getter.invoke(obj, (Object[]) null), this.getter.getReturnType());
        entityProperty.setIsEncrypted(this.isEncrypted);
        return entityProperty;
    }

    public boolean shouldProcess() {
        Method method;
        Method method2;
        if (Utility.isNullOrEmpty(this.name) || (method = this.getter) == null || method.isAnnotationPresent(Ignore.class) || (method2 = this.setter) == null || method2.isAnnotationPresent(Ignore.class) || !this.getter.getReturnType().equals(this.setter.getParameterTypes()[0])) {
            return false;
        }
        return true;
    }
}
