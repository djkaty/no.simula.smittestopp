package com.microsoft.appcenter.utils.crypto;

import android.content.Context;
import com.microsoft.appcenter.utils.crypto.CryptoUtils;
import java.security.KeyStore;

public interface CryptoHandler {
    byte[] decrypt(CryptoUtils.ICryptoFactory iCryptoFactory, int i2, KeyStore.Entry entry, byte[] bArr);

    byte[] encrypt(CryptoUtils.ICryptoFactory iCryptoFactory, int i2, KeyStore.Entry entry, byte[] bArr);

    void generateKey(CryptoUtils.ICryptoFactory iCryptoFactory, String str, Context context);

    String getAlgorithm();
}
