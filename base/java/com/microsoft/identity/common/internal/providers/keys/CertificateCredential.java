package com.microsoft.identity.common.internal.providers.keys;

import java.io.InputStream;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.cert.X509Certificate;

public final class CertificateCredential {
    public static final int MIN_KEYSIZE_IN_BITS = 2048;
    public final String mClientId;
    public final PrivateKey mPrivateKey;
    public final X509Certificate mPublicCertificate;

    public static class CertificateCredentialBuilder {
        public X509Certificate mCertificate;
        public ClientCertificateMetadata mClientCertificateMetdata;
        public String mClientId;
        public KeyStoreConfiguration mKeyStoreConfiguration;
        public PrivateKey mPrivateKey;

        public CertificateCredentialBuilder(String str) {
            this.mClientId = str;
        }

        private void getCertificateInfoFromStore(KeyStoreConfiguration keyStoreConfiguration, ClientCertificateMetadata clientCertificateMetadata) {
            PrivateKey privateKey;
            KeyStore instance = KeyStore.getInstance(keyStoreConfiguration.getKeyStoreType(), keyStoreConfiguration.getKeyStoreProvider());
            instance.load((InputStream) null, (char[]) null);
            if (clientCertificateMetadata.getPassword() == null) {
                privateKey = (PrivateKey) instance.getKey(clientCertificateMetadata.getAlias(), (char[]) null);
            } else {
                privateKey = (PrivateKey) instance.getKey(clientCertificateMetadata.getAlias(), clientCertificateMetadata.getPassword());
            }
            this.mPrivateKey = privateKey;
            this.mCertificate = (X509Certificate) instance.getCertificate(clientCertificateMetadata.getAlias());
        }

        private void validateCertificateCredential(CertificateCredential certificateCredential) {
            if (certificateCredential == null) {
                throw new IllegalArgumentException("Client ID, Certificate and PrivateKey OR KeyStoreConfiguration and Certificate Metadata are required");
            }
        }

        public CertificateCredential build() {
            KeyStoreConfiguration keyStoreConfiguration;
            CertificateCredential certificateCredential;
            CertificateCredential certificateCredential2 = null;
            if (this.mClientId != null) {
                if (this.mCertificate == null || this.mPrivateKey == null) {
                    ClientCertificateMetadata clientCertificateMetadata = this.mClientCertificateMetdata;
                    if (!(clientCertificateMetadata == null || (keyStoreConfiguration = this.mKeyStoreConfiguration) == null)) {
                        getCertificateInfoFromStore(keyStoreConfiguration, clientCertificateMetadata);
                        certificateCredential = new CertificateCredential(this);
                    }
                } else {
                    certificateCredential = new CertificateCredential(this);
                }
                certificateCredential2 = certificateCredential;
            }
            validateCertificateCredential(certificateCredential2);
            return certificateCredential2;
        }

        public CertificateCredentialBuilder certificate(X509Certificate x509Certificate) {
            this.mCertificate = x509Certificate;
            return this;
        }

        public CertificateCredentialBuilder clientCertificateMetadata(ClientCertificateMetadata clientCertificateMetadata) {
            this.mClientCertificateMetdata = clientCertificateMetadata;
            return this;
        }

        public CertificateCredentialBuilder keyStoreConfiguration(KeyStoreConfiguration keyStoreConfiguration) {
            this.mKeyStoreConfiguration = keyStoreConfiguration;
            return this;
        }

        public CertificateCredentialBuilder privateKey(PrivateKey privateKey) {
            this.mPrivateKey = privateKey;
            return this;
        }
    }

    public String getClientId() {
        return this.mClientId;
    }

    public PrivateKey getPrivateKey() {
        return this.mPrivateKey;
    }

    public X509Certificate getPublicCertificate() {
        return this.mPublicCertificate;
    }

    public CertificateCredential(CertificateCredentialBuilder certificateCredentialBuilder) {
        this.mClientId = certificateCredentialBuilder.mClientId;
        this.mPublicCertificate = certificateCredentialBuilder.mCertificate;
        this.mPrivateKey = certificateCredentialBuilder.mPrivateKey;
    }
}
