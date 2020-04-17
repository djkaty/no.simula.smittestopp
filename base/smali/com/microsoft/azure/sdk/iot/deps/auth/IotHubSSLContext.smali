.class public Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CERTIFICATE_ALIAS:Ljava/lang/String; = "cert-alias"

.field public static final PRIVATE_KEY_ALIAS:Ljava/lang/String; = "key-alias"

.field public static final SSL_CONTEXT_INSTANCE:Ljava/lang/String; = "TLSv1.2"

.field public static final TRUSTED_IOT_HUB_CERT_PREFIX:Ljava/lang/String; = "trustedIotHubCert-"


# instance fields
.field public sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 3
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubCertificateManager;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubCertificateManager;-><init>()V

    .line 4
    invoke-direct {p0, v0}, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;->generateDefaultSSLContext(Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubCertificateManager;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 23
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubCertificateManager;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubCertificateManager;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;->generateSSLContextWithKeys(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubCertificateManager;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 17
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubCertificateManager;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubCertificateManager;-><init>()V

    if-eqz p4, :cond_0

    .line 18
    invoke-virtual {v0, p3}, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubCertificateManager;->setCertificatesPath(Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0, p3}, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubCertificateManager;->setCertificates(Ljava/lang/String;)V

    .line 20
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;->generateSSLContextWithKeys(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubCertificateManager;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 11
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubCertificateManager;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubCertificateManager;-><init>()V

    if-eqz p2, :cond_0

    .line 12
    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubCertificateManager;->setCertificatesPath(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubCertificateManager;->setCertificates(Ljava/lang/String;)V

    .line 14
    :goto_0
    invoke-direct {p0, v0}, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;->generateDefaultSSLContext(Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubCertificateManager;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;->sslContext:Ljavax/net/ssl/SSLContext;

    if-eqz p1, :cond_0

    .line 7
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;->sslContext:Ljavax/net/ssl/SSLContext;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sslContext cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private generateDefaultSSLContext(Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubCertificateManager;)V
    .locals 3

    const-string v0, "TLSv1.2"

    .line 1
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;->sslContext:Ljavax/net/ssl/SSLContext;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;->generateTrustManagerFactory(Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubCertificateManager;Ljava/security/KeyStore;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {p1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0, p1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-void
.end method

.method private generateSSLContextWithKeys(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubCertificateManager;)V
    .locals 5

    .line 1
    invoke-static {p2}, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;->parsePrivateKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object p2

    .line 2
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;->parsePublicKeyCertificate(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/security/cert/X509Certificate;

    .line 4
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;->generateTemporaryPassword()[C

    move-result-object v0

    .line 5
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const/4 v2, 0x0

    .line 7
    aget-object v3, p1, v2

    const-string v4, "cert-alias"

    invoke-virtual {v1, v4, v3}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    const-string v3, "key-alias"

    .line 8
    invoke-virtual {v1, v3, p2, v0, p1}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 9
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v1, v0}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 11
    array-length p2, v0

    const/16 v3, 0x30

    invoke-static {v0, v2, p2, v3}, Ljava/util/Arrays;->fill([CIIC)V

    .line 12
    invoke-direct {p0, p3, v1}, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;->generateTrustManagerFactory(Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubCertificateManager;Ljava/security/KeyStore;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p2

    const-string p3, "TLSv1.2"

    .line 13
    invoke-static {p3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p3

    iput-object p3, p0, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 14
    invoke-virtual {p1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object p1

    invoke-virtual {p2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p2

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p3, p1, p2, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-void
.end method

.method private generateTemporaryPassword()[C
    .locals 5

    const/16 v0, 0x100

    new-array v1, v0, [B

    new-array v2, v0, [C

    .line 1
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 2
    aget-byte v4, v1, v3

    int-to-char v4, v4

    aput-char v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private generateTrustManagerFactory(Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubCertificateManager;Ljava/security/KeyStore;)Ljavax/net/ssl/TrustManagerFactory;
    .locals 3

    if-nez p2, :cond_0

    .line 1
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p2

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubCertificateManager;->getCertificateCollection()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    const-string v1, "trustedIotHubCert-"

    .line 4
    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    return-object p1
.end method

.method public static getPrivateKey(Ljava/lang/Object;)Ljava/security/Key;
    .locals 5

    .line 1
    instance-of v0, p0, Lk/b/g/c;

    const-string v1, "unable to convert key pair: "

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lk/b/g/g/a;

    invoke-direct {v0}, Lk/b/g/g/a;-><init>()V

    check-cast p0, Lk/b/g/c;

    .line 3
    :try_start_0
    iget-object v2, p0, Lk/b/g/c;->b:Lk/b/a/i2/f;

    .line 4
    iget-object v2, v2, Lk/b/a/i2/f;->y:Lk/b/a/l2/a;

    .line 5
    invoke-virtual {v0, v2}, Lk/b/g/g/a;->a(Lk/b/a/l2/a;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    .line 6
    iget-object v4, p0, Lk/b/g/c;->a:Lk/b/a/l2/s;

    .line 7
    invoke-virtual {v4}, Lk/b/a/n;->e()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 8
    iget-object p0, p0, Lk/b/g/c;->b:Lk/b/a/i2/f;

    .line 9
    invoke-virtual {p0}, Lk/b/a/n;->e()[B

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 11
    new-instance v0, Lk/b/g/b;

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lk/b/g/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 12
    :cond_0
    instance-of v0, p0, Lk/b/a/i2/f;

    if-eqz v0, :cond_1

    .line 13
    new-instance v0, Lk/b/g/g/a;

    invoke-direct {v0}, Lk/b/g/g/a;-><init>()V

    check-cast p0, Lk/b/a/i2/f;

    .line 14
    :try_start_1
    iget-object v2, p0, Lk/b/a/i2/f;->y:Lk/b/a/l2/a;

    .line 15
    invoke-virtual {v0, v2}, Lk/b/g/g/a;->a(Lk/b/a/l2/a;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p0}, Lk/b/a/n;->e()[B

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    new-instance v0, Lk/b/g/b;

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lk/b/g/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 16
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Unable to parse private key, type unknown"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parsePrivateKey(Ljava/lang/String;)Ljava/security/Key;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lk/b/e/a/a;

    invoke-direct {v0}, Lk/b/e/a/a;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 2
    new-instance v0, Lk/b/g/e;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lk/b/g/e;-><init>(Ljava/io/Reader;)V

    .line 3
    invoke-virtual {v0}, Lk/b/g/e;->readObject()Ljava/lang/Object;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;->getPrivateKey(Ljava/lang/Object;)Ljava/security/Key;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    new-instance v0, Ljava/security/cert/CertificateException;

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parsePublicKeyCertificate(Ljava/lang/String;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lk/b/e/a/a;

    invoke-direct {v1}, Lk/b/e/a/a;-><init>()V

    invoke-static {v1}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    const-string v1, "X.509"

    .line 3
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 4
    new-instance v2, Lk/b/j/h/b/d;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lk/b/j/h/b/d;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lk/b/j/h/b/d;->a()Lk/b/j/h/b/b;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 6
    iget-object p0, p0, Lk/b/j/h/b/b;->c:[B

    .line 7
    array-length v3, p0

    if-lez v3, :cond_2

    .line 8
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p0

    if-lez p0, :cond_0

    .line 10
    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    .line 11
    instance-of v4, p0, Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_1

    .line 12
    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 13
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 14
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 15
    new-instance v0, Ljava/security/cert/CertificateException;

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;->sslContext:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method
