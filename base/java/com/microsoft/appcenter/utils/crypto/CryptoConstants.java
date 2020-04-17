package com.microsoft.appcenter.utils.crypto;

import android.annotation.SuppressLint;

public class CryptoConstants {
    public static final int AES_KEY_SIZE = 256;
    public static final String ALGORITHM_DATA_SEPARATOR = ":";
    public static final String ALIAS_SEPARATOR = ".";
    public static final String ANDROID_KEY_STORE = "AndroidKeyStore";
    public static final String CHARSET = "UTF-8";
    public static final String CIPHER_AES = "AES/CBC/PKCS7Padding";
    @SuppressLint({"InlinedApi"})
    public static final String CIPHER_RSA = "RSA/ECB/PKCS1Padding";
    public static final int ENCRYPT_KEY_LIFETIME_IN_YEARS = 1;
    public static final String KEYSTORE_ALIAS_PREFIX = "appcenter";
    public static final String PROVIDER_ANDROID_M = "AndroidKeyStoreBCWorkaround";
    public static final String PROVIDER_ANDROID_OLD = "AndroidOpenSSL";
    public static final int RSA_KEY_SIZE = 2048;
}
