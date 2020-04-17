.class public Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderSymmetricKey;
.super Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProvider;
.source "SourceFile"


# static fields
.field public static final HMAC_SHA_256:Ljava/lang/String; = "HmacSHA256"


# instance fields
.field public primaryKey:[B

.field public registrationId:Ljava/lang/String;

.field public secondaryKey:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProvider;-><init>()V

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 9
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderSymmetricKey;->primaryKey:[B

    .line 11
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderSymmetricKey;->secondaryKey:[B

    .line 12
    iput-object p3, p0, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderSymmetricKey;->registrationId:Ljava/lang/String;

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Registration ID cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Symmetric key cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProvider;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderSymmetricKey;->primaryKey:[B

    .line 4
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderSymmetricKey;->registrationId:Ljava/lang/String;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Registration ID cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Symmetric key cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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
.method public HMACSignData([B[B)[B
    .locals 2

    const-string v0, "HmacSHA256"

    if-eqz p1, :cond_0

    .line 1
    array-length v1, p1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    array-length v1, p2

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 3
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p2

    .line 4
    invoke-virtual {p2, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 5
    invoke-virtual {p2, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 6
    :goto_0
    new-instance p2, Lcom/microsoft/azure/sdk/iot/provisioning/security/exceptions/SecurityProviderException;

    invoke-direct {p2, p1}, Lcom/microsoft/azure/sdk/iot/provisioning/security/exceptions/SecurityProviderException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 7
    :cond_0
    new-instance p1, Lcom/microsoft/azure/sdk/iot/provisioning/security/exceptions/SecurityProviderException;

    const-string p2, "Signature or Key cannot be null or empty"

    invoke-direct {p1, p2}, Lcom/microsoft/azure/sdk/iot/provisioning/security/exceptions/SecurityProviderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRegistrationId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderSymmetricKey;->registrationId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderSymmetricKey;->registrationId:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/microsoft/azure/sdk/iot/provisioning/security/exceptions/SecurityProviderException;

    const-string v1, "Registration is null or empty"

    invoke-direct {v0, v1}, Lcom/microsoft/azure/sdk/iot/provisioning/security/exceptions/SecurityProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderSymmetricKey;->generateSSLContext()Ljavax/net/ssl/SSLContext;

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

.method public getSymmetricKey()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderSymmetricKey;->primaryKey:[B

    return-object v0
.end method
