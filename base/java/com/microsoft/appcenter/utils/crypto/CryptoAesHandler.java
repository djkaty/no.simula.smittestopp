package com.microsoft.appcenter.utils.crypto;

import android.content.Context;
import android.security.keystore.KeyGenParameterSpec;
import com.microsoft.appcenter.utils.crypto.CryptoUtils;
import com.microsoft.identity.common.adal.internal.cache.StorageHelper;
import java.security.KeyStore;
import java.util.Calendar;
import javax.crypto.spec.IvParameterSpec;

public class CryptoAesHandler implements CryptoHandler {
    public byte[] decrypt(CryptoUtils.ICryptoFactory iCryptoFactory, int i2, KeyStore.Entry entry, byte[] bArr) {
        CryptoUtils.ICipher cipher = iCryptoFactory.getCipher(CryptoConstants.CIPHER_AES, CryptoConstants.PROVIDER_ANDROID_M);
        int blockSize = cipher.getBlockSize();
        cipher.init(2, ((KeyStore.SecretKeyEntry) entry).getSecretKey(), new IvParameterSpec(bArr, 0, blockSize));
        return cipher.doFinal(bArr, blockSize, bArr.length - blockSize);
    }

    public byte[] encrypt(CryptoUtils.ICryptoFactory iCryptoFactory, int i2, KeyStore.Entry entry, byte[] bArr) {
        CryptoUtils.ICipher cipher = iCryptoFactory.getCipher(CryptoConstants.CIPHER_AES, CryptoConstants.PROVIDER_ANDROID_M);
        cipher.init(1, ((KeyStore.SecretKeyEntry) entry).getSecretKey());
        byte[] iv = cipher.getIV();
        byte[] doFinal = cipher.doFinal(bArr);
        byte[] bArr2 = new byte[(iv.length + doFinal.length)];
        System.arraycopy(iv, 0, bArr2, 0, iv.length);
        System.arraycopy(doFinal, 0, bArr2, iv.length, doFinal.length);
        return bArr2;
    }

    public void generateKey(CryptoUtils.ICryptoFactory iCryptoFactory, String str, Context context) {
        Calendar instance = Calendar.getInstance();
        instance.add(1, 1);
        CryptoUtils.IKeyGenerator keyGenerator = iCryptoFactory.getKeyGenerator(StorageHelper.KEYSPEC_ALGORITHM, "AndroidKeyStore");
        keyGenerator.init(new KeyGenParameterSpec.Builder(str, 3).setBlockModes(new String[]{"CBC"}).setEncryptionPaddings(new String[]{"PKCS7Padding"}).setKeySize(256).setKeyValidityForOriginationEnd(instance.getTime()).build());
        keyGenerator.generateKey();
    }

    public String getAlgorithm() {
        return "AES/CBC/PKCS7Padding/256";
    }
}
