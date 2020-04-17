package com.microsoft.azure.storage.table;

import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.StorageErrorCodeStrings;
import com.microsoft.azure.storage.StorageException;
import com.microsoft.azure.storage.StorageExtendedErrorInformation;
import com.microsoft.azure.storage.core.SR;
import java.lang.reflect.InvocationTargetException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class TableServiceEntity implements TableEntity {
    public static final int DEFAULT_CONCURRENCY_MULTIPLIER = 4;
    public static final int DEFAULT_INITIAL_CAPACITY = 31;
    public static final float DEFAULT_LOAD_FACTOR = 0.75f;
    public static boolean disableReflectedEntityCache = false;
    public static ConcurrentHashMap<Class<?>, HashMap<String, PropertyPair>> reflectedEntityCache = initialize();
    public String etag = null;
    public String partitionKey = null;
    public String rowKey = null;
    public Date timeStamp = new Date();

    public TableServiceEntity() {
    }

    public static ConcurrentHashMap<Class<?>, HashMap<String, PropertyPair>> getReflectedEntityCache() {
        return reflectedEntityCache;
    }

    public static ConcurrentHashMap<Class<?>, HashMap<String, PropertyPair>> initialize() {
        return new ConcurrentHashMap<>(31, 0.75f, Runtime.getRuntime().availableProcessors() * 4);
    }

    public static boolean isReflectedEntityCacheDisabled() {
        return disableReflectedEntityCache;
    }

    public static void readEntityWithReflection(Object obj, HashMap<String, EntityProperty> hashMap, OperationContext operationContext) {
        HashMap<String, PropertyPair> generatePropertyPairs = PropertyPair.generatePropertyPairs(obj.getClass());
        for (Map.Entry next : hashMap.entrySet()) {
            if (generatePropertyPairs.containsKey(next.getKey())) {
                generatePropertyPairs.get(next.getKey()).consumeEntityProperty((EntityProperty) next.getValue(), obj);
            }
        }
    }

    public static void setReflectedEntityCacheDisabled(boolean z) {
        ConcurrentHashMap<Class<?>, HashMap<String, PropertyPair>> concurrentHashMap = reflectedEntityCache;
        if (concurrentHashMap != null && z) {
            concurrentHashMap.clear();
        }
        disableReflectedEntityCache = z;
    }

    public static HashMap<String, EntityProperty> writeEntityWithReflection(Object obj) {
        HashMap<String, PropertyPair> generatePropertyPairs = PropertyPair.generatePropertyPairs(obj.getClass());
        HashMap<String, EntityProperty> hashMap = new HashMap<>();
        for (Map.Entry next : generatePropertyPairs.entrySet()) {
            hashMap.put(((PropertyPair) next.getValue()).effectiveName, ((PropertyPair) next.getValue()).generateEntityProperty(obj));
        }
        return hashMap;
    }

    public String getEtag() {
        return this.etag;
    }

    public String getPartitionKey() {
        return this.partitionKey;
    }

    public String getRowKey() {
        return this.rowKey;
    }

    public Date getTimestamp() {
        return this.timeStamp;
    }

    public void readEntity(HashMap<String, EntityProperty> hashMap, OperationContext operationContext) {
        try {
            readEntityWithReflection(this, hashMap, operationContext);
        } catch (IllegalArgumentException e2) {
            throw new StorageException(StorageErrorCodeStrings.INVALID_DOCUMENT, "The response received is invalid or improperly formatted.", Constants.HeaderConstants.HTTP_UNUSED_306, (StorageExtendedErrorInformation) null, e2);
        } catch (IllegalAccessException e3) {
            throw new StorageException(StorageErrorCodeStrings.INVALID_DOCUMENT, SR.EXCEPTION_THROWN_DURING_DESERIALIZATION, Constants.HeaderConstants.HTTP_UNUSED_306, (StorageExtendedErrorInformation) null, e3);
        } catch (InvocationTargetException e4) {
            throw new StorageException(StorageErrorCodeStrings.INTERNAL_ERROR, SR.EXCEPTION_THROWN_DURING_DESERIALIZATION, Constants.HeaderConstants.HTTP_UNUSED_306, (StorageExtendedErrorInformation) null, e4);
        }
    }

    public void setEtag(String str) {
        this.etag = str;
    }

    public void setPartitionKey(String str) {
        this.partitionKey = str;
    }

    public void setRowKey(String str) {
        this.rowKey = str;
    }

    public void setTimestamp(Date date) {
        this.timeStamp = date;
    }

    public HashMap<String, EntityProperty> writeEntity(OperationContext operationContext) {
        try {
            return writeEntityWithReflection(this);
        } catch (IllegalAccessException e2) {
            throw new StorageException(StorageErrorCodeStrings.INTERNAL_ERROR, SR.ATTEMPTED_TO_SERIALIZE_INACCESSIBLE_PROPERTY, Constants.HeaderConstants.HTTP_UNUSED_306, (StorageExtendedErrorInformation) null, e2);
        } catch (InvocationTargetException e3) {
            throw new StorageException(StorageErrorCodeStrings.INTERNAL_ERROR, SR.EXCEPTION_THROWN_DURING_SERIALIZATION, Constants.HeaderConstants.HTTP_UNUSED_306, (StorageExtendedErrorInformation) null, e3);
        }
    }

    public TableServiceEntity(String str, String str2) {
        this.partitionKey = str;
        this.rowKey = str2;
    }
}
