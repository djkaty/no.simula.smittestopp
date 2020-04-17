package com.microsoft.azure.sdk.iot.deps.serializer;

import com.google.gson.Gson;
import e.c.c.s;
import e.c.c.v.c;
import e.c.c.w.t;
import java.lang.reflect.Type;

public class X509ThumbprintParser {
    public static final String PRIMARY_THUMBPRINT_SERIALIZED_NAME = "primaryThumbprint";
    public static final String SECONDARY_THUMBPRINT_SERIALIZED_NAME = "secondaryThumbprint";
    public transient Gson gson = new Gson();
    @c("primaryThumbprint")
    public String primaryThumbprint;
    @c("secondaryThumbprint")
    public String secondaryThumbprint;

    public X509ThumbprintParser() {
    }

    @Deprecated
    public String getPrimaryThumbprint() {
        return this.primaryThumbprint;
    }

    public final String getPrimaryThumbprintFinal() {
        return this.primaryThumbprint;
    }

    @Deprecated
    public String getSecondaryThumbprint() {
        return this.secondaryThumbprint;
    }

    public final String getSecondaryThumbprintFinal() {
        return this.secondaryThumbprint;
    }

    public void setPrimaryThumbprint(String str) {
        if (str != null) {
            this.primaryThumbprint = str;
            return;
        }
        throw new IllegalArgumentException("Primary thumbprint cannot be null or empty");
    }

    public void setSecondaryThumbprint(String str) {
        if (str != null) {
            this.secondaryThumbprint = str;
            return;
        }
        throw new IllegalArgumentException("Secondary thumbprint cannot be null or empty");
    }

    public String toJson() {
        return this.gson.a((Object) this);
    }

    public X509ThumbprintParser(String str, String str2) {
        this.primaryThumbprint = str;
        this.secondaryThumbprint = str2;
    }

    public X509ThumbprintParser(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("The provided Json must not be null or empty");
        }
        try {
            Class cls = X509ThumbprintParser.class;
            X509ThumbprintParser x509ThumbprintParser = (X509ThumbprintParser) t.a(cls).cast(this.gson.a(str, (Type) cls));
            this.primaryThumbprint = x509ThumbprintParser.getPrimaryThumbprintFinal();
            this.secondaryThumbprint = x509ThumbprintParser.getSecondaryThumbprintFinal();
        } catch (s unused) {
            throw new IllegalArgumentException("The provided json could not be parsed");
        }
    }
}
