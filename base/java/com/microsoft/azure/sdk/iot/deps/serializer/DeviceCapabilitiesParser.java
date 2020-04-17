package com.microsoft.azure.sdk.iot.deps.serializer;

import e.c.c.v.a;
import e.c.c.v.c;

public class DeviceCapabilitiesParser {
    public static final String IOT_EDGE_NAME = "iotEdge";
    @a(deserialize = true, serialize = true)
    @c("iotEdge")
    public Boolean iotEdge;

    public Boolean getIotEdge() {
        return this.iotEdge;
    }

    public void setIotEdge(Boolean bool) {
        this.iotEdge = bool;
    }
}
