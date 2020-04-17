package com.microsoft.appcenter.crashes.ingestion.models;

import com.microsoft.appcenter.ingestion.models.LogWithProperties;
import java.util.UUID;
import org.json.JSONObject;
import org.json.JSONStringer;

public class HandledErrorLog extends LogWithProperties {
    public static final String EXCEPTION = "exception";
    public static final String TYPE = "handledError";
    public Exception exception;
    public UUID id;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || HandledErrorLog.class != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        HandledErrorLog handledErrorLog = (HandledErrorLog) obj;
        UUID uuid = this.id;
        if (uuid == null ? handledErrorLog.id != null : !uuid.equals(handledErrorLog.id)) {
            return false;
        }
        Exception exception2 = this.exception;
        Exception exception3 = handledErrorLog.exception;
        if (exception2 != null) {
            return exception2.equals(exception3);
        }
        if (exception3 == null) {
            return true;
        }
        return false;
    }

    public Exception getException() {
        return this.exception;
    }

    public UUID getId() {
        return this.id;
    }

    public String getType() {
        return TYPE;
    }

    public int hashCode() {
        int hashCode = super.hashCode() * 31;
        UUID uuid = this.id;
        int i2 = 0;
        int hashCode2 = (hashCode + (uuid != null ? uuid.hashCode() : 0)) * 31;
        Exception exception2 = this.exception;
        if (exception2 != null) {
            i2 = exception2.hashCode();
        }
        return hashCode2 + i2;
    }

    public void read(JSONObject jSONObject) {
        super.read(jSONObject);
        setId(UUID.fromString(jSONObject.getString("id")));
        if (jSONObject.has("exception")) {
            JSONObject jSONObject2 = jSONObject.getJSONObject("exception");
            Exception exception2 = new Exception();
            exception2.read(jSONObject2);
            setException(exception2);
        }
    }

    public void setException(Exception exception2) {
        this.exception = exception2;
    }

    public void setId(UUID uuid) {
        this.id = uuid;
    }

    public void write(JSONStringer jSONStringer) {
        super.write(jSONStringer);
        jSONStringer.key("id").value(getId());
        if (getException() != null) {
            jSONStringer.key("exception").object();
            this.exception.write(jSONStringer);
            jSONStringer.endObject();
        }
    }
}
