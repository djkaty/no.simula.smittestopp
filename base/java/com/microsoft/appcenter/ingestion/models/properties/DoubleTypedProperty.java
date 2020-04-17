package com.microsoft.appcenter.ingestion.models.properties;

import org.json.JSONObject;
import org.json.JSONStringer;

public class DoubleTypedProperty extends TypedProperty {
    public static final String TYPE = "double";
    public double value;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || DoubleTypedProperty.class != obj.getClass() || !super.equals(obj) || Double.compare(((DoubleTypedProperty) obj).value, this.value) != 0) {
            return false;
        }
        return true;
    }

    public String getType() {
        return TYPE;
    }

    public double getValue() {
        return this.value;
    }

    public int hashCode() {
        int hashCode = super.hashCode();
        long doubleToLongBits = Double.doubleToLongBits(this.value);
        return (hashCode * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
    }

    public void read(JSONObject jSONObject) {
        super.read(jSONObject);
        setValue(jSONObject.getDouble("value"));
    }

    public void setValue(double d2) {
        this.value = d2;
    }

    public void write(JSONStringer jSONStringer) {
        super.write(jSONStringer);
        jSONStringer.key("value").value(getValue());
    }
}
