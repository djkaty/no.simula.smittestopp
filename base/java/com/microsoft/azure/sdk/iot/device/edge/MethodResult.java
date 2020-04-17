package com.microsoft.azure.sdk.iot.device.edge;

import e.c.c.e;
import e.c.c.v.a;
import e.c.c.v.c;
import e.c.c.w.t;
import java.lang.reflect.Type;

public class MethodResult {
    public static final String PAYLOAD_KEY_NAME = "payload";
    public static final String STATUS_KEY_NAME = "status";
    @a(deserialize = true, serialize = false)
    @c("payload")
    public Object payload;
    @a(deserialize = true, serialize = false)
    @c("status")
    public int status;

    public MethodResult() {
    }

    public String getPayload() {
        Object obj = this.payload;
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof byte[]) {
            return new String((byte[]) this.payload);
        }
        return obj.toString();
    }

    public Object getPayloadObject() {
        return this.payload;
    }

    public int getStatus() {
        return this.status;
    }

    public MethodResult(String str) {
        Class cls = MethodResult.class;
        MethodResult methodResult = (MethodResult) t.a(cls).cast(new e().a().a(str, (Type) cls));
        Object obj = methodResult.payload;
        this.payload = obj == null ? null : obj;
        this.status = methodResult.status;
    }
}
