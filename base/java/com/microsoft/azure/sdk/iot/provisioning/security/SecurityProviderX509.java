package com.microsoft.azure.sdk.iot.provisioning.security;

import com.microsoft.azure.sdk.iot.provisioning.security.exceptions.SecurityProviderException;
import java.io.IOException;
import java.security.Key;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Collection;
import java.util.UUID;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509KeyManager;
import javax.net.ssl.X509TrustManager;

public abstract class SecurityProviderX509 extends SecurityProvider {
    public static final String ALIAS_CERT_ALIAS = "ALIAS_CERT";

    private SSLContext generateSSLContext(X509Certificate x509Certificate, Key key, Collection<X509Certificate> collection) {
        if (x509Certificate == null || key == null || collection == null) {
            throw new IllegalArgumentException("cert or private key cannot be null");
        }
        String uuid = UUID.randomUUID().toString();
        SSLContext instance = SSLContext.getInstance("TLSv1.2");
        KeyStore keyStoreWithTrustedCerts = getKeyStoreWithTrustedCerts();
        if (keyStoreWithTrustedCerts != null) {
            X509Certificate[] x509CertificateArr = new X509Certificate[(collection.size() + 1)];
            x509CertificateArr[0] = x509Certificate;
            int i2 = 1;
            for (X509Certificate x509Certificate2 : collection) {
                x509CertificateArr[i2] = x509Certificate2;
                i2++;
            }
            keyStoreWithTrustedCerts.setKeyEntry(ALIAS_CERT_ALIAS, key, uuid.toCharArray(), x509CertificateArr);
            instance.init(new KeyManager[]{getDefaultX509KeyManager(keyStoreWithTrustedCerts, uuid)}, new TrustManager[]{getDefaultX509TrustManager(keyStoreWithTrustedCerts)}, new SecureRandom());
            return instance;
        }
        throw new SecurityProviderException("Key store with trusted certs cannot be null");
    }

    private KeyManager getDefaultX509KeyManager(KeyStore keyStore, String str) {
        KeyManagerFactory instance = KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
        instance.init(keyStore, str.toCharArray());
        for (KeyManager keyManager : instance.getKeyManagers()) {
            if (keyManager instanceof X509KeyManager) {
                return keyManager;
            }
        }
        throw new SecurityProviderException("Could not retrieve X509 Key Manager");
    }

    private TrustManager getDefaultX509TrustManager(KeyStore keyStore) {
        TrustManagerFactory instance = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        instance.init(keyStore);
        for (TrustManager trustManager : instance.getTrustManagers()) {
            if (trustManager instanceof X509TrustManager) {
                return trustManager;
            }
        }
        throw new SecurityProviderException("Could not retrieve X509 trust manager");
    }

    public abstract X509Certificate getClientCertificate();

    public abstract String getClientCertificateCommonName();

    public abstract Key getClientPrivateKey();

    public abstract Collection<X509Certificate> getIntermediateCertificatesChain();

    public String getRegistrationId() {
        return getClientCertificateCommonName();
    }

    public SSLContext getSSLContext() {
        try {
            return generateSSLContext(getClientCertificate(), getClientPrivateKey(), getIntermediateCertificatesChain());
        } catch (IOException | KeyManagementException | KeyStoreException | NoSuchAlgorithmException | NoSuchProviderException | UnrecoverableKeyException | CertificateException e2) {
            throw new SecurityProviderException(e2);
        }
    }
}
