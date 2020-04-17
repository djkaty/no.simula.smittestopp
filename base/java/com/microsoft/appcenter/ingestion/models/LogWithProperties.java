package com.microsoft.appcenter.ingestion.models;

import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import java.util.Map;
import org.json.JSONObject;
import org.json.JSONStringer;

public abstract class LogWithProperties extends AbstractLog {
    public static final String PROPERTIES = "properties";
    public Map<String, String> properties;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        Map<String, String> map = this.properties;
        Map<String, String> map2 = ((LogWithProperties) obj).properties;
        if (map != null) {
            return map.equals(map2);
        }
        if (map2 == null) {
            return true;
        }
        return false;
    }

    public Map<String, String> getProperties() {
        return this.properties;
    }

    public int hashCode() {
        int hashCode = super.hashCode() * 31;
        Map<String, String> map = this.properties;
        return hashCode + (map != null ? map.hashCode() : 0);
    }

    public void read(JSONObject jSONObject) {
        super.read(jSONObject);
        setProperties(JSONUtils.readMap(jSONObject, "properties"));
    }

    public void setProperties(Map<String, String> map) {
        this.properties = map;
    }

    public void write(JSONStringer jSONStringer) {
        super.write(jSONStringer);
        JSONUtils.writeMap(jSONStringer, "properties", getProperties());
    }
}
