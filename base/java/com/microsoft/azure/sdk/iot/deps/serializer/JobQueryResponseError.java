package com.microsoft.azure.sdk.iot.deps.serializer;

import e.c.c.e;
import e.c.c.s;
import e.c.c.v.c;
import e.c.c.w.t;
import java.io.IOException;
import java.lang.reflect.Type;

public class JobQueryResponseError {
    public static final String CODE_TAG = "code";
    public static final String DESCRIPTION_TAG = "description";
    @c("code")
    public String code;
    @c("description")
    public String description;

    public JobQueryResponseError fromJson(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Json is null or empty");
        }
        e eVar = new e();
        eVar.f1303l = false;
        Class cls = JobQueryResponseError.class;
        try {
            JobQueryResponseError jobQueryResponseError = (JobQueryResponseError) t.a(cls).cast(eVar.a().a(str, (Type) cls));
            String str2 = jobQueryResponseError.code;
            if (str2 == null || str2.isEmpty()) {
                throw new IllegalArgumentException("Json does not contains code");
            } else if (jobQueryResponseError.description != null) {
                return jobQueryResponseError;
            } else {
                throw new IllegalArgumentException("Json does not contains description");
            }
        } catch (s unused) {
            throw new IOException("Not a valid json");
        }
    }

    public String getCode() {
        return this.code;
    }

    public String getDescription() {
        return this.description;
    }

    public String toJson() {
        e eVar = new e();
        eVar.f1298g = true;
        return eVar.a().a((Object) this);
    }
}
