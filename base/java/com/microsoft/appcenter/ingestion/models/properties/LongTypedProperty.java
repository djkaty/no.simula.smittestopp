package com.microsoft.appcenter.ingestion.models.properties;

import org.json.JSONObject;
import org.json.JSONStringer;

public class LongTypedProperty extends TypedProperty {
    public static final String TYPE = "long";
    public long value;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || LongTypedProperty.class != obj.getClass() || !super.equals(obj) || this.value != ((LongTypedProperty) obj).value) {
            return false;
        }
        return true;
    }

    public String getType() {
        return TYPE;
    }

    public long getValue() {
        return this.value;
    }

    public int hashCode() {
        long j2 = this.value;
        return (super.hashCode() * 31) + ((int) (j2 ^ (j2 >>> 32)));
    }

    public void read(JSONObject jSONObject) {
        super.read(jSONObject);
        setValue(jSONObject.getLong("value"));
    }

    public void setValue(long j2) {
        this.value = j2;
    }

    public void write(JSONStringer jSONStringer) {
        super.write(jSONStringer);
        jSONStringer.key("value").value(getValue());
    }
}
