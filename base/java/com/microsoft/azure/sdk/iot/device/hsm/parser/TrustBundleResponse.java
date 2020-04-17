package com.microsoft.azure.sdk.iot.device.hsm.parser;

import e.c.c.e;
import e.c.c.v.a;
import e.c.c.v.c;
import e.c.c.w.t;
import java.lang.reflect.Type;

public class TrustBundleResponse {
    public static final String CERTIFICATE_NAME = "certificate";
    @a(deserialize = true, serialize = false)
    @c("certificate")
    public String certificates;

    public static TrustBundleResponse fromJson(String str) {
        String str2;
        Class cls = TrustBundleResponse.class;
        TrustBundleResponse trustBundleResponse = (TrustBundleResponse) t.a(cls).cast(new e().a().a(str, (Type) cls));
        if (trustBundleResponse != null && (str2 = trustBundleResponse.certificates) != null && !str2.isEmpty()) {
            return trustBundleResponse;
        }
        throw new IllegalArgumentException("The provided json did not contain any certificates");
    }

    public String getCertificates() {
        return this.certificates;
    }
}
