package com.microsoft.azure.sdk.iot.device.hsm.parser;

import e.c.c.e;
import e.c.c.v.a;
import e.c.c.v.c;
import e.c.c.w.t;
import java.lang.reflect.Type;

public class ErrorResponse {
    public static final String MESSAGE_NAME = "message";
    @a(deserialize = true, serialize = true)
    @c("message")
    public String message;

    public static ErrorResponse fromJson(String str) {
        Class cls = ErrorResponse.class;
        return (ErrorResponse) t.a(cls).cast(new e().a().a(str, (Type) cls));
    }

    public String getMessage() {
        return this.message;
    }
}
