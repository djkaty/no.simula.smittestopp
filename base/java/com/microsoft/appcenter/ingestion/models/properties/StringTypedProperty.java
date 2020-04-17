package com.microsoft.appcenter.ingestion.models.properties;

import org.json.JSONObject;
import org.json.JSONStringer;

public class StringTypedProperty extends TypedProperty {
    public static final String TYPE = "string";
    public String value;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || StringTypedProperty.class != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        String str = this.value;
        String str2 = ((StringTypedProperty) obj).value;
        if (str != null) {
            return str.equals(str2);
        }
        if (str2 == null) {
            return true;
        }
        return false;
    }

    public String getType() {
        return "string";
    }

    public String getValue() {
        return this.value;
    }

    public int hashCode() {
        int hashCode = super.hashCode() * 31;
        String str = this.value;
        return hashCode + (str != null ? str.hashCode() : 0);
    }

    public void read(JSONObject jSONObject) {
        super.read(jSONObject);
        setValue(jSONObject.getString("value"));
    }

    public void setValue(String str) {
        this.value = str;
    }

    public void write(JSONStringer jSONStringer) {
        super.write(jSONStringer);
        jSONStringer.key("value").value(getValue());
    }
}
