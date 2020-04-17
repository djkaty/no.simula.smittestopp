package com.microsoft.appcenter.ingestion.models.properties;

import com.microsoft.appcenter.ingestion.models.json.JSONDateUtils;
import java.util.Date;
import org.json.JSONObject;
import org.json.JSONStringer;

public class DateTimeTypedProperty extends TypedProperty {
    public static final String TYPE = "dateTime";
    public Date value;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || DateTimeTypedProperty.class != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        Date date = this.value;
        Date date2 = ((DateTimeTypedProperty) obj).value;
        if (date != null) {
            return date.equals(date2);
        }
        if (date2 == null) {
            return true;
        }
        return false;
    }

    public String getType() {
        return "dateTime";
    }

    public Date getValue() {
        return this.value;
    }

    public int hashCode() {
        int hashCode = super.hashCode() * 31;
        Date date = this.value;
        return hashCode + (date != null ? date.hashCode() : 0);
    }

    public void read(JSONObject jSONObject) {
        super.read(jSONObject);
        setValue(JSONDateUtils.toDate(jSONObject.getString("value")));
    }

    public void setValue(Date date) {
        this.value = date;
    }

    public void write(JSONStringer jSONStringer) {
        super.write(jSONStringer);
        jSONStringer.key("value").value(JSONDateUtils.toString(getValue()));
    }
}
