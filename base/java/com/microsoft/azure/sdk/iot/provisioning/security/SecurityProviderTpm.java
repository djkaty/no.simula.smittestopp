package com.microsoft.azure.sdk.iot.provisioning.security;

import com.microsoft.azure.sdk.iot.provisioning.security.exceptions.SecurityProviderException;
import java.io.IOException;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManagerFactory;
import k.a.a.a.b.a;

public abstract class SecurityProviderTpm extends SecurityProvider {
    public static final String EQUALS = "=";
    public static final String SHA_256 = "SHA-256";

    private SSLContext generateSSLContext() {
        SSLContext instance = SSLContext.getInstance("TLSv1.2");
        KeyStore keyStoreWithTrustedCerts = getKeyStoreWithTrustedCerts();
        TrustManagerFactory instance2 = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        instance2.init(keyStoreWithTrustedCerts);
        instance.init((KeyManager[]) null, instance2.getTrustManagers(), new SecureRandom());
        return instance;
    }

    public abstract byte[] activateIdentityKey(byte[] bArr);

    public abstract byte[] getEndorsementKey();

    public String getRegistrationId() {
        try {
            String lowerCase = new String(new a().b(MessageDigest.getInstance("SHA-256").digest(getEndorsementKey()))).toLowerCase();
            return lowerCase.contains("=") ? lowerCase.replace("=", "").toLowerCase() : lowerCase;
        } catch (NoSuchAlgorithmException e2) {
            throw new SecurityProviderException((Throwable) e2);
        }
    }

    public SSLContext getSSLContext() {
        try {
            return generateSSLContext();
        } catch (IOException | KeyManagementException | KeyStoreException | NoSuchAlgorithmException | CertificateException e2) {
            throw new SecurityProviderException(e2);
        }
    }

    public abstract byte[] getStorageRootKey();

    public abstract byte[] signWithIdentity(byte[] bArr);
}
