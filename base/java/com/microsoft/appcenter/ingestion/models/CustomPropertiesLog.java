package com.microsoft.appcenter.ingestion.models;

import com.microsoft.appcenter.ingestion.models.json.JSONDateUtils;
import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;

public class CustomPropertiesLog extends AbstractLog {
    public static final String PROPERTIES = "properties";
    public static final String PROPERTY_NAME = "name";
    public static final String PROPERTY_TYPE = "type";
    public static final String PROPERTY_TYPE_BOOLEAN = "boolean";
    public static final String PROPERTY_TYPE_CLEAR = "clear";
    public static final String PROPERTY_TYPE_DATETIME = "dateTime";
    public static final String PROPERTY_TYPE_NUMBER = "number";
    public static final String PROPERTY_TYPE_STRING = "string";
    public static final String PROPERTY_VALUE = "value";
    public static final String TYPE = "customProperties";
    public Map<String, Object> properties;

    public static Map<String, Object> readProperties(JSONObject jSONObject) {
        JSONArray jSONArray = jSONObject.getJSONArray("properties");
        HashMap hashMap = new HashMap();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
            hashMap.put(jSONObject2.getString("name"), readPropertyValue(jSONObject2));
        }
        return hashMap;
    }

    public static Object readPropertyValue(JSONObject jSONObject) {
        String string = jSONObject.getString("type");
        if (string.equals(PROPERTY_TYPE_CLEAR)) {
            return null;
        }
        if (string.equals("boolean")) {
            return Boolean.valueOf(jSONObject.getBoolean("value"));
        }
        if (string.equals(PROPERTY_TYPE_NUMBER)) {
            Object obj = jSONObject.get("value");
            if (obj instanceof Number) {
                return obj;
            }
            throw new JSONException("Invalid value type");
        } else if (string.equals("dateTime")) {
            return JSONDateUtils.toDate(jSONObject.getString("value"));
        } else {
            if (string.equals("string")) {
                return jSONObject.getString("value");
            }
            throw new JSONException("Invalid value type");
        }
    }

    public static void writeProperties(JSONStringer jSONStringer, Map<String, Object> map) {
        if (map != null) {
            jSONStringer.key("properties").array();
            for (Map.Entry next : map.entrySet()) {
                jSONStringer.object();
                JSONUtils.write(jSONStringer, "name", next.getKey());
                writePropertyValue(jSONStringer, next.getValue());
                jSONStringer.endObject();
            }
            jSONStringer.endArray();
            return;
        }
        throw new JSONException("Properties cannot be null");
    }

    public static void writePropertyValue(JSONStringer jSONStringer, Object obj) {
        if (obj == null) {
            JSONUtils.write(jSONStringer, "type", PROPERTY_TYPE_CLEAR);
        } else if (obj instanceof Boolean) {
            JSONUtils.write(jSONStringer, "type", "boolean");
            JSONUtils.write(jSONStringer, "value", obj);
        } else if (obj instanceof Number) {
            JSONUtils.write(jSONStringer, "type", PROPERTY_TYPE_NUMBER);
            JSONUtils.write(jSONStringer, "value", obj);
        } else if (obj instanceof Date) {
            JSONUtils.write(jSONStringer, "type", "dateTime");
            JSONUtils.write(jSONStringer, "value", JSONDateUtils.toString((Date) obj));
        } else if (obj instanceof String) {
            JSONUtils.write(jSONStringer, "type", "string");
            JSONUtils.write(jSONStringer, "value", obj);
        } else {
            throw new JSONException("Invalid value type");
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || CustomPropertiesLog.class != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        Map<String, Object> map = this.properties;
        Map<String, Object> map2 = ((CustomPropertiesLog) obj).properties;
        if (map != null) {
            return map.equals(map2);
        }
        if (map2 == null) {
            return true;
        }
        return false;
    }

    public Map<String, Object> getProperties() {
        return this.properties;
    }

    public String getType() {
        return TYPE;
    }

    public int hashCode() {
        int hashCode = super.hashCode() * 31;
        Map<String, Object> map = this.properties;
        return hashCode + (map != null ? map.hashCode() : 0);
    }

    public void read(JSONObject jSONObject) {
        super.read(jSONObject);
        setProperties(readProperties(jSONObject));
    }

    public void setProperties(Map<String, Object> map) {
        this.properties = map;
    }

    public void write(JSONStringer jSONStringer) {
        super.write(jSONStringer);
        writeProperties(jSONStringer, getProperties());
    }
}
