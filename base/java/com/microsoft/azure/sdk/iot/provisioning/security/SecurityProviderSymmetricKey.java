package com.microsoft.azure.sdk.iot.provisioning.security;

import com.microsoft.azure.sdk.iot.provisioning.security.exceptions.SecurityProviderException;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManagerFactory;

public class SecurityProviderSymmetricKey extends SecurityProvider {
    public static final String HMAC_SHA_256 = "HmacSHA256";
    public byte[] primaryKey;
    public String registrationId;
    public byte[] secondaryKey;

    public SecurityProviderSymmetricKey(byte[] bArr, String str) {
        if (bArr == null) {
            throw new IllegalArgumentException("Symmetric key cannot be null");
        } else if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Registration ID cannot be null");
        } else {
            this.primaryKey = bArr;
            this.registrationId = str;
        }
    }

    private SSLContext generateSSLContext() {
        SSLContext instance = SSLContext.getInstance("TLSv1.2");
        KeyStore keyStoreWithTrustedCerts = getKeyStoreWithTrustedCerts();
        TrustManagerFactory instance2 = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        instance2.init(keyStoreWithTrustedCerts);
        instance.init((KeyManager[]) null, instance2.getTrustManagers(), new SecureRandom());
        return instance;
    }

    public byte[] HMACSignData(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr.length == 0 || bArr2 == null || bArr2.length == 0) {
            throw new SecurityProviderException("Signature or Key cannot be null or empty");
        }
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, "HmacSHA256");
            Mac instance = Mac.getInstance("HmacSHA256");
            instance.init(secretKeySpec);
            return instance.doFinal(bArr);
        } catch (InvalidKeyException | NoSuchAlgorithmException e2) {
            throw new SecurityProviderException(e2);
        }
    }

    public String getRegistrationId() {
        String str = this.registrationId;
        if (str != null && !str.isEmpty()) {
            return this.registrationId;
        }
        throw new SecurityProviderException("Registration is null or empty");
    }

    public SSLContext getSSLContext() {
        try {
            return generateSSLContext();
        } catch (IOException | KeyManagementException | KeyStoreException | NoSuchAlgorithmException | CertificateException e2) {
            throw new SecurityProviderException(e2);
        }
    }

    public byte[] getSymmetricKey() {
        return this.primaryKey;
    }

    public SecurityProviderSymmetricKey(String str, String str2, String str3) {
        if (str == null || str.isEmpty() || str2 == null || str2.isEmpty()) {
            throw new IllegalArgumentException("Symmetric key cannot be null");
        } else if (str3 == null || str3.isEmpty()) {
            throw new IllegalArgumentException("Registration ID cannot be null");
        } else {
            this.primaryKey = str.getBytes();
            this.secondaryKey = str2.getBytes();
            this.registrationId = str3;
        }
    }
}
