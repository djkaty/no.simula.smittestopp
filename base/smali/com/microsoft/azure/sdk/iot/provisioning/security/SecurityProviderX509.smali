.class public abstract Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderX509;
.super Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProvider;
.source "SourceFile"


# static fields
.field public static final ALIAS_CERT_ALIAS:Ljava/lang/String; = "ALIAS_CERT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProvider;-><init>()V

    return-void
.end method

.method private generateSSLContext(Ljava/security/cert/X509Certificate;Ljava/security/Key;Ljava/util/Collection;)Ljavax/net/ssl/SSLContext;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/Key;",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Ljavax/net/ssl/SSLContext;"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TLSv1.2"

    .line 2
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProvider;->getKeyStoreWithTrustedCerts()Ljava/security/KeyStore;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 5
    new-array v3, v3, [Ljava/security/cert/X509Certificate;

    const/4 v5, 0x0

    .line 6
    aput-object p1, v3, v5

    .line 7
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    add-int/lit8 v7, p3, 0x1

    .line 8
    aput-object v6, v3, p3

    move p3, v7

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const-string p3, "ALIAS_CERT"

    invoke-virtual {v2, p3, p2, p1, v3}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    new-array p1, v4, [Ljavax/net/ssl/KeyManager;

    .line 10
    invoke-direct {p0, v2, v0}, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderX509;->getDefaultX509KeyManager(Ljava/security/KeyStore;Ljava/lang/String;)Ljavax/net/ssl/KeyManager;

    move-result-object p2

    aput-object p2, p1, v5

    new-array p2, v4, [Ljavax/net/ssl/TrustManager;

    invoke-direct {p0, v2}, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderX509;->getDefaultX509TrustManager(Ljava/security/KeyStore;)Ljavax/net/ssl/TrustManager;

    move-result-object p3

    aput-object p3, p2, v5

    new-instance p3, Ljava/security/SecureRandom;

    invoke-direct {p3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, p1, p2, p3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-object v1

    .line 11
    :cond_1
    new-instance p1, Lcom/microsoft/azure/sdk/iot/provisioning/security/exceptions/SecurityProviderException;

    const-string p2, "Key store with trusted certs cannot be null"

    invoke-direct {p1, p2}, Lcom/microsoft/azure/sdk/iot/provisioning/security/exceptions/SecurityProviderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cert or private key cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getDefaultX509KeyManager(Ljava/security/KeyStore;Ljava/lang/String;)Ljavax/net/ssl/KeyManager;
    .locals 3

    .line 1
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 3
    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    .line 4
    instance-of v2, v1, Ljavax/net/ssl/X509KeyManager;

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Lcom/microsoft/azure/sdk/iot/provisioning/security/exceptions/SecurityProviderException;

    const-string p2, "Could not retrieve X509 Key Manager"

    invoke-direct {p1, p2}, Lcom/microsoft/azure/sdk/iot/provisioning/security/exceptions/SecurityProviderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getDefaultX509TrustManager(Ljava/security/KeyStore;)Ljavax/net/ssl/TrustManager;
    .locals 4

    .line 1
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 3
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 4
    instance-of v3, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Lcom/microsoft/azure/sdk/iot/provisioning/security/exceptions/SecurityProviderException;

    const-string v0, "Could not retrieve X509 trust manager"

    invoke-direct {p1, v0}, Lcom/microsoft/azure/sdk/iot/provisioning/security/exceptions/SecurityProviderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract getClientCertificate()Ljava/security/cert/X509Certificate;
.end method

.method public abstract getClientCertificateCommonName()Ljava/lang/String;
.end method

.method public abstract getClientPrivateKey()Ljava/security/Key;
.end method

.method public abstract getIntermediateCertificatesChain()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end method

.method public getRegistrationId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderX509;->getClientCertificateCommonName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderX509;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderX509;->getClientPrivateKey()Ljava/security/Key;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderX509;->getIntermediateCertificatesChain()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderX509;->generateSSLContext(Ljava/security/cert/X509Certificate;Ljava/security/Key;Ljava/util/Collection;)Ljavax/net/ssl/SSLContext;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v0

    goto :goto_0

    :catch_6
    move-exception v0

    .line 2
    :goto_0
    new-instance v1, Lcom/microsoft/azure/sdk/iot/provisioning/security/exceptions/SecurityProviderException;

    invoke-direct {v1, v0}, Lcom/microsoft/azure/sdk/iot/provisioning/security/exceptions/SecurityProviderException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
