package com.microsoft.azure.sdk.iot.deps.twin;

import e.c.c.v.a;
import e.c.c.v.c;

public class DeviceCapabilities {
    public static final String IOT_EDGE_NAME = "iotEdge";
    @a(deserialize = true, serialize = true)
    @c("iotEdge")
    public Boolean iotEdge = false;

    public Boolean isIotEdge() {
        return this.iotEdge;
    }

    public void setIotEdge(Boolean bool) {
        if (bool != null) {
            this.iotEdge = bool;
            return;
        }
        throw new IllegalArgumentException("iotEdge cannot be null");
    }
}
