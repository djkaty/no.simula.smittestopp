.class public abstract Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderTpm;
.super Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProvider;
.source "SourceFile"


# static fields
.field public static final EQUALS:Ljava/lang/String; = "="

.field public static final SHA_256:Ljava/lang/String; = "SHA-256"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProvider;-><init>()V

    return-void
.end method

.method private generateSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 4

    const-string v0, "TLSv1.2"

    .line 1
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProvider;->getKeyStoreWithTrustedCerts()Ljava/security/KeyStore;

    move-result-object v1

    .line 3
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 4
    invoke-virtual {v2, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 5
    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-object v0
.end method


# virtual methods
.method public abstract activateIdentityKey([B)[B
.end method

.method public abstract getEndorsementKey()[B
.end method

.method public getRegistrationId()Ljava/lang/String;
    .locals 3

    const-string v0, "="

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderTpm;->getEndorsementKey()[B

    move-result-object v1

    const-string v2, "SHA-256"

    .line 2
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 3
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 4
    new-instance v2, Lk/a/a/a/b/a;

    invoke-direct {v2}, Lk/a/a/a/b/a;-><init>()V

    .line 5
    invoke-virtual {v2, v1}, Lk/a/a/a/b/c;->b([B)[B

    move-result-object v1

    .line 6
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    .line 8
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Lcom/microsoft/azure/sdk/iot/provisioning/security/exceptions/SecurityProviderException;

    invoke-direct {v1, v0}, Lcom/microsoft/azure/sdk/iot/provisioning/security/exceptions/SecurityProviderException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderTpm;->generateSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

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

    .line 2
    :goto_0
    new-instance v1, Lcom/microsoft/azure/sdk/iot/provisioning/security/exceptions/SecurityProviderException;

    invoke-direct {v1, v0}, Lcom/microsoft/azure/sdk/iot/provisioning/security/exceptions/SecurityProviderException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract getStorageRootKey()[B
.end method

.method public abstract signWithIdentity([B)[B
.end method
