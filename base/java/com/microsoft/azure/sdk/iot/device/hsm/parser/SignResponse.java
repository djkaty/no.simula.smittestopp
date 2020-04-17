package com.microsoft.azure.sdk.iot.device.hsm.parser;

import e.c.c.e;
import e.c.c.v.a;
import e.c.c.v.c;
import e.c.c.w.t;
import java.lang.reflect.Type;

public class SignResponse {
    public static final String DIGEST_NAME = "digest";
    @a(deserialize = true, serialize = true)
    @c("digest")
    public String digest;

    public static SignResponse fromJson(String str) {
        Class cls = SignResponse.class;
        return (SignResponse) t.a(cls).cast(new e().a().a(str, (Type) cls));
    }

    public String getDigest() {
        return this.digest;
    }
}
