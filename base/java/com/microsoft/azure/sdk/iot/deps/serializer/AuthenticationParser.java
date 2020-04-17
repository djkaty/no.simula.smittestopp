package com.microsoft.azure.sdk.iot.deps.serializer;

import e.c.c.v.a;
import e.c.c.v.c;

public class AuthenticationParser {
    public static final String AUTHENTICATION_TYPE_NAME = "type";
    public static final String SYMMETRIC_KEY_NAME = "symmetricKey";
    public static final String X509_THUMBPRINT_NAME = "x509Thumbprint";
    @a(deserialize = true, serialize = true)
    @c("symmetricKey")
    public SymmetricKeyParser symmetricKey;
    @a(deserialize = true, serialize = true)
    @c("x509Thumbprint")
    public X509ThumbprintParser thumbprint;
    @a(deserialize = true, serialize = true)
    @c("type")
    public AuthenticationTypeParser type;

    public SymmetricKeyParser getSymmetricKey() {
        return this.symmetricKey;
    }

    public X509ThumbprintParser getThumbprint() {
        return this.thumbprint;
    }

    public AuthenticationTypeParser getType() {
        return this.type;
    }

    public void setSymmetricKey(SymmetricKeyParser symmetricKeyParser) {
        this.symmetricKey = symmetricKeyParser;
    }

    public void setThumbprint(X509ThumbprintParser x509ThumbprintParser) {
        this.thumbprint = x509ThumbprintParser;
    }

    public void setType(AuthenticationTypeParser authenticationTypeParser) {
        if (authenticationTypeParser != null) {
            this.type = authenticationTypeParser;
            return;
        }
        throw new IllegalArgumentException("Type may not be set to null");
    }
}
