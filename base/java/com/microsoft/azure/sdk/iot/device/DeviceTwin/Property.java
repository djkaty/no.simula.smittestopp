package com.microsoft.azure.sdk.iot.device.DeviceTwin;

import java.util.Date;

public class Property {
    public boolean isReported;
    public Date lastUpdated;
    public Integer lastUpdatedVersion;
    public Pair<String, Object> property;
    public Integer version;

    public Property(String str, Object obj) {
        this.property = null;
        this.version = null;
        this.isReported = false;
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Key cannot be null or empty");
        }
        this.property = new Pair<>(str, obj);
    }

    public boolean getIsReported() {
        return this.isReported;
    }

    public String getKey() {
        return this.property.getKey();
    }

    public Date getLastUpdated() {
        return this.lastUpdated;
    }

    public Integer getLastUpdatedVersion() {
        return this.lastUpdatedVersion;
    }

    public Object getValue() {
        return this.property.getValue();
    }

    public Integer getVersion() {
        return this.version;
    }

    public void setValue(Object obj) {
        this.property.setValue(obj);
    }

    public String toString() {
        return getKey() + " - " + getValue();
    }

    public Property(String str, Object obj, Integer num, boolean z, Date date, Integer num2) {
        this(str, obj);
        this.version = num;
        this.isReported = z;
        this.lastUpdated = date;
        this.lastUpdatedVersion = num2;
    }
}
