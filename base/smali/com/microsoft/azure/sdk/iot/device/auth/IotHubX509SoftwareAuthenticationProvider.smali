.class public Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509SoftwareAuthenticationProvider;
.super Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;
.source "SourceFile"


# instance fields
.field public iotHubX509:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509;

    invoke-direct {p1, p5, p6, p7, p8}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509;-><init>(Ljava/lang/String;ZLjava/lang/String;Z)V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509SoftwareAuthenticationProvider;->iotHubX509:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->sslContextNeedsUpdate:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p5}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;)V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509SoftwareAuthenticationProvider;->iotHubX509:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509;

    return-void
.end method

.method private generateSSLContext()Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->iotHubTrustedCert:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509SoftwareAuthenticationProvider;->iotHubX509:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509;->getPublicKeyCertificate()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509SoftwareAuthenticationProvider;->iotHubX509:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509;

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509;->getPrivateKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->iotHubTrustedCert:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->pathToIotHubTrustedCert:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509SoftwareAuthenticationProvider;->iotHubX509:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509;->getPublicKeyCertificate()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509SoftwareAuthenticationProvider;->iotHubX509:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509;

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509;->getPrivateKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->pathToIotHubTrustedCert:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509SoftwareAuthenticationProvider;->iotHubX509:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509;->getPublicKeyCertificate()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509SoftwareAuthenticationProvider;->iotHubX509:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509;

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509;->getPrivateKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->iotHubSSLContext:Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->sslContextNeedsUpdate:Z

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509SoftwareAuthenticationProvider;->generateSSLContext()Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->iotHubSSLContext:Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->sslContextNeedsUpdate:Z

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->iotHubSSLContext:Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

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

    .line 5
    :goto_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
