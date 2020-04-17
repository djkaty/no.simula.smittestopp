package com.microsoft.appcenter.analytics.ingestion.models;

import com.microsoft.appcenter.ingestion.models.CommonProperties;
import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import com.microsoft.appcenter.ingestion.models.properties.TypedProperty;
import com.microsoft.appcenter.ingestion.models.properties.TypedPropertyUtils;
import java.util.List;
import java.util.UUID;
import org.json.JSONObject;
import org.json.JSONStringer;

public class EventLog extends LogWithNameAndProperties {
    public static final String TYPE = "event";
    public UUID id;
    public List<TypedProperty> typedProperties;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || EventLog.class != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        EventLog eventLog = (EventLog) obj;
        UUID uuid = this.id;
        if (uuid == null ? eventLog.id != null : !uuid.equals(eventLog.id)) {
            return false;
        }
        List<TypedProperty> list = this.typedProperties;
        List<TypedProperty> list2 = eventLog.typedProperties;
        if (list != null) {
            return list.equals(list2);
        }
        if (list2 == null) {
            return true;
        }
        return false;
    }

    public UUID getId() {
        return this.id;
    }

    public String getType() {
        return TYPE;
    }

    public List<TypedProperty> getTypedProperties() {
        return this.typedProperties;
    }

    public int hashCode() {
        int hashCode = super.hashCode() * 31;
        UUID uuid = this.id;
        int i2 = 0;
        int hashCode2 = (hashCode + (uuid != null ? uuid.hashCode() : 0)) * 31;
        List<TypedProperty> list = this.typedProperties;
        if (list != null) {
            i2 = list.hashCode();
        }
        return hashCode2 + i2;
    }

    public void read(JSONObject jSONObject) {
        super.read(jSONObject);
        setId(UUID.fromString(jSONObject.getString("id")));
        setTypedProperties(TypedPropertyUtils.read(jSONObject));
    }

    public void setId(UUID uuid) {
        this.id = uuid;
    }

    public void setTypedProperties(List<TypedProperty> list) {
        this.typedProperties = list;
    }

    public void write(JSONStringer jSONStringer) {
        super.write(jSONStringer);
        jSONStringer.key("id").value(getId());
        JSONUtils.writeArray(jSONStringer, CommonProperties.TYPED_PROPERTIES, getTypedProperties());
    }
}
