package com.microsoft.identity.common.internal.providers.keys;

public class ClientCertificateMetadata {
    public String mAlias;
    public char[] mPassword;

    public ClientCertificateMetadata(String str, char[] cArr) {
        this.mAlias = str;
        this.mPassword = cArr;
    }

    public String getAlias() {
        return this.mAlias;
    }

    public char[] getPassword() {
        return this.mPassword;
    }
}
