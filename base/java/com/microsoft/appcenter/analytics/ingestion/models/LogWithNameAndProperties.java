package com.microsoft.appcenter.analytics.ingestion.models;

import com.microsoft.appcenter.ingestion.models.LogWithProperties;
import org.json.JSONObject;
import org.json.JSONStringer;

public abstract class LogWithNameAndProperties extends LogWithProperties {
    public String name;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        String str = this.name;
        String str2 = ((LogWithNameAndProperties) obj).name;
        if (str != null) {
            return str.equals(str2);
        }
        if (str2 == null) {
            return true;
        }
        return false;
    }

    public String getName() {
        return this.name;
    }

    public int hashCode() {
        int hashCode = super.hashCode() * 31;
        String str = this.name;
        return hashCode + (str != null ? str.hashCode() : 0);
    }

    public void read(JSONObject jSONObject) {
        super.read(jSONObject);
        setName(jSONObject.getString("name"));
    }

    public void setName(String str) {
        this.name = str;
    }

    public void write(JSONStringer jSONStringer) {
        super.write(jSONStringer);
        jSONStringer.key("name").value(getName());
    }
}
