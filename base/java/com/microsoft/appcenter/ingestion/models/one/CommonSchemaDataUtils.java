package com.microsoft.appcenter.ingestion.models.one;

import com.microsoft.appcenter.ingestion.models.json.JSONDateUtils;
import com.microsoft.appcenter.ingestion.models.properties.BooleanTypedProperty;
import com.microsoft.appcenter.ingestion.models.properties.DateTimeTypedProperty;
import com.microsoft.appcenter.ingestion.models.properties.DoubleTypedProperty;
import com.microsoft.appcenter.ingestion.models.properties.LongTypedProperty;
import com.microsoft.appcenter.ingestion.models.properties.StringTypedProperty;
import com.microsoft.appcenter.ingestion.models.properties.TypedProperty;
import com.microsoft.appcenter.utils.AppCenterLog;
import e.a.a.a.a;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class CommonSchemaDataUtils {
    public static final int DATA_TYPE_DATETIME = 9;
    public static final int DATA_TYPE_DOUBLE = 6;
    public static final int DATA_TYPE_INT64 = 4;
    public static final String METADATA_FIELDS = "f";

    public static void addCommonSchemaData(List<TypedProperty> list, CommonSchemaLog commonSchemaLog) {
        Iterator<TypedProperty> it;
        CommonSchemaLog commonSchemaLog2 = commonSchemaLog;
        if (list != null) {
            try {
                Data data = new Data();
                commonSchemaLog2.setData(data);
                MetadataExtension metadataExtension = new MetadataExtension();
                Iterator<TypedProperty> it2 = list.iterator();
                while (it2.hasNext()) {
                    TypedProperty next = it2.next();
                    try {
                        Object validateProperty = validateProperty(next);
                        Integer metadataType = getMetadataType(next);
                        String[] split = next.getName().split("\\.", -1);
                        int length = split.length - 1;
                        JSONObject properties = data.getProperties();
                        JSONObject metadata = metadataExtension.getMetadata();
                        int i2 = 0;
                        while (i2 < length) {
                            Iterator<TypedProperty> it3 = it2;
                            String str = split[i2];
                            JSONObject optJSONObject = properties.optJSONObject(str);
                            if (optJSONObject == null) {
                                if (properties.has(str)) {
                                    AppCenterLog.warn("AppCenter", "Property key '" + str + "' already has a value, the old value will be overridden.");
                                }
                                JSONObject jSONObject = new JSONObject();
                                properties.put(str, jSONObject);
                                properties = jSONObject;
                            } else {
                                properties = optJSONObject;
                            }
                            metadata = addIntermediateMetadata(metadata, str);
                            i2++;
                            it2 = it3;
                            CommonSchemaLog commonSchemaLog3 = commonSchemaLog;
                        }
                        it = it2;
                        String str2 = split[length];
                        if (properties.has(str2)) {
                            AppCenterLog.warn("AppCenter", "Property key '" + str2 + "' already has a value, the old value will be overridden.");
                        }
                        properties.put(str2, validateProperty);
                        addLeafMetadata(metadataType, metadata, str2);
                    } catch (IllegalArgumentException e2) {
                        it = it2;
                        AppCenterLog.warn("AppCenter", e2.getMessage());
                    }
                    it2 = it;
                    CommonSchemaLog commonSchemaLog4 = commonSchemaLog;
                }
                JSONObject properties2 = data.getProperties();
                String optString = properties2.optString(Data.BASE_TYPE, (String) null);
                JSONObject optJSONObject2 = properties2.optJSONObject(Data.BASE_DATA);
                if (optString == null && optJSONObject2 != null) {
                    AppCenterLog.warn("AppCenter", "baseData was set but baseType is missing.");
                    properties2.remove(Data.BASE_DATA);
                    metadataExtension.getMetadata().optJSONObject(METADATA_FIELDS).remove(Data.BASE_DATA);
                }
                if (optString != null && optJSONObject2 == null) {
                    AppCenterLog.warn("AppCenter", "baseType was set but baseData is missing.");
                    properties2.remove(Data.BASE_TYPE);
                }
                if (!cleanUpEmptyObjectsInMetadata(metadataExtension.getMetadata())) {
                    if (commonSchemaLog.getExt() == null) {
                        commonSchemaLog.setExt(new Extensions());
                    } else {
                        CommonSchemaLog commonSchemaLog5 = commonSchemaLog;
                    }
                    commonSchemaLog.getExt().setMetadata(metadataExtension);
                }
            } catch (JSONException unused) {
            }
        }
    }

    public static JSONObject addIntermediateMetadata(JSONObject jSONObject, String str) {
        JSONObject optJSONObject = jSONObject.optJSONObject(METADATA_FIELDS);
        if (optJSONObject == null) {
            optJSONObject = new JSONObject();
            jSONObject.put(METADATA_FIELDS, optJSONObject);
        }
        JSONObject optJSONObject2 = optJSONObject.optJSONObject(str);
        if (optJSONObject2 != null) {
            return optJSONObject2;
        }
        JSONObject jSONObject2 = new JSONObject();
        optJSONObject.put(str, jSONObject2);
        return jSONObject2;
    }

    public static void addLeafMetadata(Integer num, JSONObject jSONObject, String str) {
        JSONObject optJSONObject = jSONObject.optJSONObject(METADATA_FIELDS);
        if (num != null) {
            if (optJSONObject == null) {
                optJSONObject = new JSONObject();
                jSONObject.put(METADATA_FIELDS, optJSONObject);
            }
            optJSONObject.put(str, num);
        } else if (optJSONObject != null) {
            optJSONObject.remove(str);
        }
    }

    public static boolean cleanUpEmptyObjectsInMetadata(JSONObject jSONObject) {
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            JSONObject optJSONObject = jSONObject.optJSONObject(keys.next());
            if (optJSONObject != null && cleanUpEmptyObjectsInMetadata(optJSONObject)) {
                keys.remove();
            }
        }
        return jSONObject.length() == 0;
    }

    public static Integer getMetadataType(TypedProperty typedProperty) {
        if (typedProperty instanceof LongTypedProperty) {
            return 4;
        }
        if (typedProperty instanceof DoubleTypedProperty) {
            return 6;
        }
        return typedProperty instanceof DateTimeTypedProperty ? 9 : null;
    }

    public static Object validateProperty(TypedProperty typedProperty) {
        Object obj;
        String name = typedProperty.getName();
        if (name == null) {
            throw new IllegalArgumentException("Property key cannot be null.");
        } else if (name.equals(Data.BASE_TYPE) && !(typedProperty instanceof StringTypedProperty)) {
            throw new IllegalArgumentException("baseType must be a string.");
        } else if (name.startsWith("baseType.")) {
            throw new IllegalArgumentException("baseType must be a string.");
        } else if (!name.equals(Data.BASE_DATA)) {
            if (typedProperty instanceof StringTypedProperty) {
                obj = ((StringTypedProperty) typedProperty).getValue();
            } else if (typedProperty instanceof LongTypedProperty) {
                obj = Long.valueOf(((LongTypedProperty) typedProperty).getValue());
            } else if (typedProperty instanceof DoubleTypedProperty) {
                obj = Double.valueOf(((DoubleTypedProperty) typedProperty).getValue());
            } else if (typedProperty instanceof DateTimeTypedProperty) {
                obj = JSONDateUtils.toString(((DateTimeTypedProperty) typedProperty).getValue());
            } else if (typedProperty instanceof BooleanTypedProperty) {
                obj = Boolean.valueOf(((BooleanTypedProperty) typedProperty).getValue());
            } else {
                StringBuilder a = a.a("Unsupported property type: ");
                a.append(typedProperty.getType());
                throw new IllegalArgumentException(a.toString());
            }
            if (obj != null) {
                return obj;
            }
            throw new IllegalArgumentException(a.a("Value of property with key '", name, "' cannot be null."));
        } else {
            throw new IllegalArgumentException("baseData must be an object.");
        }
    }
}
