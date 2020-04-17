package com.microsoft.azure.sdk.iot.device.edge;

import e.c.c.e;
import e.c.c.v.a;
import e.c.c.v.c;

public class MethodRequest {
    public static final String CONNECT_TIMEOUT_KEY_NAME = "connectTimeoutInSeconds";
    public static final String METHOD_NAME_KEY_NAME = "methodName";
    public static final String PAYLOAD_KEY_NAME = "payload";
    public static final String RESPONSE_TIMEOUT_KEY_NAME = "responseTimeoutInSeconds";
    @a(deserialize = false, serialize = true)
    @c("connectTimeoutInSeconds")
    public Integer connectionTimeoutInSeconds;
    @a(deserialize = false, serialize = true)
    @c("methodName")
    public String methodName;
    @a(deserialize = false, serialize = true)
    @c("payload")
    public String payload;
    @a(deserialize = false, serialize = true)
    @c("responseTimeoutInSeconds")
    public Integer responseTimeoutInSeconds;

    public MethodRequest(String str, String str2) {
        this(str, str2, (Integer) null, (Integer) null);
    }

    public String toJson() {
        return new e().a().a((Object) this);
    }

    public MethodRequest(String str, String str2, Integer num, Integer num2) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("MethodName cannot be null or empty");
        }
        this.payload = str2;
        this.methodName = str;
        this.responseTimeoutInSeconds = num;
        this.connectionTimeoutInSeconds = num2;
    }

    public MethodRequest() {
    }
}
