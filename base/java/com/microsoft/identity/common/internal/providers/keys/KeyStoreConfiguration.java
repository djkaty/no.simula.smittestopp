package com.microsoft.identity.common.internal.providers.keys;

public class KeyStoreConfiguration {
    public final char[] mKeyStorePassword;
    public final String mKeyStoreProvider;
    public final String mKeyStoreType;

    public KeyStoreConfiguration(String str, String str2, char[] cArr) {
        this.mKeyStoreType = str;
        this.mKeyStoreProvider = str2;
        this.mKeyStorePassword = cArr;
    }

    public char[] getKeyStorePassword() {
        return this.mKeyStorePassword;
    }

    public String getKeyStoreProvider() {
        return this.mKeyStoreProvider;
    }

    public String getKeyStoreType() {
        return this.mKeyStoreType;
    }
}
