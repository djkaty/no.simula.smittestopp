package com.microsoft.azure.sdk.iot.deps.auth;

import e.a.a.a.a;
import java.io.IOException;
import java.io.StringReader;
import java.security.Key;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyStore;
import java.security.SecureRandom;
import java.security.Security;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Arrays;
import java.util.Collection;
import java.util.UUID;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManagerFactory;
import k.b.a.i2.f;
import k.b.g.b;
import k.b.g.c;
import k.b.g.e;

public class IotHubSSLContext {
    public static final String CERTIFICATE_ALIAS = "cert-alias";
    public static final String PRIVATE_KEY_ALIAS = "key-alias";
    public static final String SSL_CONTEXT_INSTANCE = "TLSv1.2";
    public static final String TRUSTED_IOT_HUB_CERT_PREFIX = "trustedIotHubCert-";
    public SSLContext sslContext = null;

    public IotHubSSLContext() {
        generateDefaultSSLContext(new IotHubCertificateManager());
    }

    private void generateDefaultSSLContext(IotHubCertificateManager iotHubCertificateManager) {
        this.sslContext = SSLContext.getInstance("TLSv1.2");
        this.sslContext.init((KeyManager[]) null, generateTrustManagerFactory(iotHubCertificateManager, (KeyStore) null).getTrustManagers(), new SecureRandom());
    }

    private void generateSSLContextWithKeys(String str, String str2, IotHubCertificateManager iotHubCertificateManager) {
        Key parsePrivateKey = parsePrivateKey(str2);
        Collection<X509Certificate> parsePublicKeyCertificate = parsePublicKeyCertificate(str);
        X509Certificate[] x509CertificateArr = (X509Certificate[]) parsePublicKeyCertificate.toArray(new X509Certificate[parsePublicKeyCertificate.size()]);
        char[] generateTemporaryPassword = generateTemporaryPassword();
        KeyStore instance = KeyStore.getInstance(KeyStore.getDefaultType());
        instance.load((KeyStore.LoadStoreParameter) null);
        instance.setCertificateEntry(CERTIFICATE_ALIAS, x509CertificateArr[0]);
        instance.setKeyEntry(PRIVATE_KEY_ALIAS, parsePrivateKey, generateTemporaryPassword, x509CertificateArr);
        KeyManagerFactory instance2 = KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
        instance2.init(instance, generateTemporaryPassword);
        Arrays.fill(generateTemporaryPassword, 0, generateTemporaryPassword.length, '0');
        TrustManagerFactory generateTrustManagerFactory = generateTrustManagerFactory(iotHubCertificateManager, instance);
        SSLContext instance3 = SSLContext.getInstance("TLSv1.2");
        this.sslContext = instance3;
        instance3.init(instance2.getKeyManagers(), generateTrustManagerFactory.getTrustManagers(), new SecureRandom());
    }

    private char[] generateTemporaryPassword() {
        byte[] bArr = new byte[256];
        char[] cArr = new char[256];
        new SecureRandom().nextBytes(bArr);
        for (int i2 = 0; i2 < 256; i2++) {
            cArr[i2] = (char) bArr[i2];
        }
        return cArr;
    }

    private TrustManagerFactory generateTrustManagerFactory(IotHubCertificateManager iotHubCertificateManager, KeyStore keyStore) {
        if (keyStore == null) {
            keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            keyStore.load((KeyStore.LoadStoreParameter) null);
        }
        for (Certificate certificateEntry : iotHubCertificateManager.getCertificateCollection()) {
            StringBuilder a = a.a(TRUSTED_IOT_HUB_CERT_PREFIX);
            a.append(UUID.randomUUID());
            keyStore.setCertificateEntry(a.toString(), certificateEntry);
        }
        TrustManagerFactory instance = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        instance.init(keyStore);
        return instance;
    }

    public static Key getPrivateKey(Object obj) {
        if (obj instanceof c) {
            c cVar = (c) obj;
            try {
                KeyFactory a = new k.b.g.g.a().a(cVar.b.y);
                return new KeyPair(a.generatePublic(new X509EncodedKeySpec(cVar.a.e())), a.generatePrivate(new PKCS8EncodedKeySpec(cVar.b.e()))).getPrivate();
            } catch (Exception e2) {
                StringBuilder a2 = a.a("unable to convert key pair: ");
                a2.append(e2.getMessage());
                throw new b(a2.toString(), e2);
            }
        } else if (obj instanceof f) {
            f fVar = (f) obj;
            try {
                return new k.b.g.g.a().a(fVar.y).generatePrivate(new PKCS8EncodedKeySpec(fVar.e()));
            } catch (Exception e3) {
                StringBuilder a3 = a.a("unable to convert key pair: ");
                a3.append(e3.getMessage());
                throw new b(a3.toString(), e3);
            }
        } else {
            throw new IOException("Unable to parse private key, type unknown");
        }
    }

    public static Key parsePrivateKey(String str) {
        try {
            Security.addProvider(new k.b.e.a.a());
            return getPrivateKey(new e(new StringReader(str)).readObject());
        } catch (Exception e2) {
            throw new CertificateException(e2);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:?, code lost:
        r2.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0044, code lost:
        return r0;
     */
    /* JADX WARNING: Removed duplicated region for block: B:5:0x0023 A[Catch:{ all -> 0x0045, Exception -> 0x004a }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.util.Collection<java.security.cert.X509Certificate> parsePublicKeyCertificate(java.lang.String r5) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch:{ Exception -> 0x004a }
            r0.<init>()     // Catch:{ Exception -> 0x004a }
            k.b.e.a.a r1 = new k.b.e.a.a     // Catch:{ Exception -> 0x004a }
            r1.<init>()     // Catch:{ Exception -> 0x004a }
            java.security.Security.addProvider(r1)     // Catch:{ Exception -> 0x004a }
            java.lang.String r1 = "X.509"
            java.security.cert.CertificateFactory r1 = java.security.cert.CertificateFactory.getInstance(r1)     // Catch:{ Exception -> 0x004a }
            k.b.j.h.b.d r2 = new k.b.j.h.b.d     // Catch:{ Exception -> 0x004a }
            java.io.StringReader r3 = new java.io.StringReader     // Catch:{ Exception -> 0x004a }
            r3.<init>(r5)     // Catch:{ Exception -> 0x004a }
            r2.<init>(r3)     // Catch:{ Exception -> 0x004a }
        L_0x001d:
            k.b.j.h.b.b r5 = r2.a()     // Catch:{ all -> 0x0045 }
            if (r5 == 0) goto L_0x0041
            byte[] r5 = r5.f2182c     // Catch:{ all -> 0x0045 }
            int r3 = r5.length     // Catch:{ all -> 0x0045 }
            if (r3 <= 0) goto L_0x0041
            java.io.ByteArrayInputStream r3 = new java.io.ByteArrayInputStream     // Catch:{ all -> 0x0045 }
            r3.<init>(r5)     // Catch:{ all -> 0x0045 }
        L_0x002d:
            int r5 = r3.available()     // Catch:{ all -> 0x0045 }
            if (r5 <= 0) goto L_0x001d
            java.security.cert.Certificate r5 = r1.generateCertificate(r3)     // Catch:{ all -> 0x0045 }
            boolean r4 = r5 instanceof java.security.cert.X509Certificate     // Catch:{ all -> 0x0045 }
            if (r4 == 0) goto L_0x002d
            java.security.cert.X509Certificate r5 = (java.security.cert.X509Certificate) r5     // Catch:{ all -> 0x0045 }
            r0.add(r5)     // Catch:{ all -> 0x0045 }
            goto L_0x002d
        L_0x0041:
            r2.close()     // Catch:{ Exception -> 0x004a }
            return r0
        L_0x0045:
            r5 = move-exception
            r2.close()     // Catch:{ Exception -> 0x004a }
            throw r5     // Catch:{ Exception -> 0x004a }
        L_0x004a:
            r5 = move-exception
            java.security.cert.CertificateException r0 = new java.security.cert.CertificateException
            r0.<init>(r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.deps.auth.IotHubSSLContext.parsePublicKeyCertificate(java.lang.String):java.util.Collection");
    }

    public SSLContext getSSLContext() {
        return this.sslContext;
    }

    public IotHubSSLContext(SSLContext sSLContext) {
        if (sSLContext != null) {
            this.sslContext = sSLContext;
            return;
        }
        throw new IllegalArgumentException("sslContext cannot be null");
    }

    public IotHubSSLContext(String str, boolean z) {
        IotHubCertificateManager iotHubCertificateManager = new IotHubCertificateManager();
        if (z) {
            iotHubCertificateManager.setCertificatesPath(str);
        } else {
            iotHubCertificateManager.setCertificates(str);
        }
        generateDefaultSSLContext(iotHubCertificateManager);
    }

    public IotHubSSLContext(String str, String str2, String str3, boolean z) {
        IotHubCertificateManager iotHubCertificateManager = new IotHubCertificateManager();
        if (z) {
            iotHubCertificateManager.setCertificatesPath(str3);
        } else {
            iotHubCertificateManager.setCertificates(str3);
        }
        generateSSLContextWithKeys(str, str2, iotHubCertificateManager);
    }

    public IotHubSSLContext(String str, String str2) {
        generateSSLContextWithKeys(str, str2, new IotHubCertificateManager());
    }
}
