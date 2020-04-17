package com.microsoft.appcenter.ingestion.models.properties;

import org.json.JSONObject;
import org.json.JSONStringer;

public class BooleanTypedProperty extends TypedProperty {
    public static final String TYPE = "boolean";
    public boolean value;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || BooleanTypedProperty.class != obj.getClass() || !super.equals(obj) || this.value != ((BooleanTypedProperty) obj).value) {
            return false;
        }
        return true;
    }

    public String getType() {
        return "boolean";
    }

    public boolean getValue() {
        return this.value;
    }

    public int hashCode() {
        return (super.hashCode() * 31) + (this.value ? 1 : 0);
    }

    public void read(JSONObject jSONObject) {
        super.read(jSONObject);
        setValue(jSONObject.getBoolean("value"));
    }

    public void setValue(boolean z) {
        this.value = z;
    }

    public void write(JSONStringer jSONStringer) {
        super.write(jSONStringer);
        jSONStringer.key("value").value(getValue());
    }
}
