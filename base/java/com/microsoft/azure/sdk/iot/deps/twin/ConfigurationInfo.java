package com.microsoft.azure.sdk.iot.deps.twin;

import e.c.c.v.a;
import e.c.c.v.c;

public class ConfigurationInfo {
    public static final String STATUS_NAME = "status";
    @a(deserialize = true, serialize = true)
    @c("status")
    public ConfigurationStatus status;

    public ConfigurationStatus getStatus() {
        return this.status;
    }

    public void setStatus(ConfigurationStatus configurationStatus) {
        this.status = configurationStatus;
    }
}
