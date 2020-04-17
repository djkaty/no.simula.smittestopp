package com.microsoft.appcenter.utils.crypto;

import android.annotation.SuppressLint;
import android.content.Context;
import android.security.KeyPairGeneratorSpec;
import com.microsoft.appcenter.utils.crypto.CryptoUtils;
import com.microsoft.identity.common.internal.platform.DevicePopManager;
import e.a.a.a.a;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.cert.CertificateExpiredException;
import java.security.cert.X509Certificate;
import java.util.Calendar;
import java.util.Date;
import javax.security.auth.x500.X500Principal;

public class CryptoRsaHandler implements CryptoHandler {
    private CryptoUtils.ICipher getCipher(CryptoUtils.ICryptoFactory iCryptoFactory, int i2) {
        return iCryptoFactory.getCipher("RSA/ECB/PKCS1Padding", i2 >= 23 ? CryptoConstants.PROVIDER_ANDROID_M : CryptoConstants.PROVIDER_ANDROID_OLD);
    }

    public byte[] decrypt(CryptoUtils.ICryptoFactory iCryptoFactory, int i2, KeyStore.Entry entry, byte[] bArr) {
        CryptoUtils.ICipher cipher = getCipher(iCryptoFactory, i2);
        cipher.init(2, ((KeyStore.PrivateKeyEntry) entry).getPrivateKey());
        return cipher.doFinal(bArr);
    }

    public byte[] encrypt(CryptoUtils.ICryptoFactory iCryptoFactory, int i2, KeyStore.Entry entry, byte[] bArr) {
        CryptoUtils.ICipher cipher = getCipher(iCryptoFactory, i2);
        X509Certificate x509Certificate = (X509Certificate) ((KeyStore.PrivateKeyEntry) entry).getCertificate();
        try {
            x509Certificate.checkValidity();
            cipher.init(1, x509Certificate.getPublicKey());
            return cipher.doFinal(bArr);
        } catch (CertificateExpiredException e2) {
            throw new InvalidKeyException(e2);
        }
    }

    @SuppressLint({"InlinedApi", "TrulyRandom"})
    public void generateKey(CryptoUtils.ICryptoFactory iCryptoFactory, String str, Context context) {
        Calendar instance = Calendar.getInstance();
        instance.add(1, 1);
        KeyPairGenerator instance2 = KeyPairGenerator.getInstance(DevicePopManager.KeyPairGeneratorAlgorithms.RSA, "AndroidKeyStore");
        instance2.initialize(new KeyPairGeneratorSpec.Builder(context).setAlias(str).setSubject(new X500Principal(a.b("CN=", str))).setStartDate(new Date()).setEndDate(instance.getTime()).setSerialNumber(BigInteger.TEN).setKeySize(2048).build());
        instance2.generateKeyPair();
    }

    public String getAlgorithm() {
        return "RSA/ECB/PKCS1Padding/2048";
    }
}
