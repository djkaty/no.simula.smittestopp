.class public abstract Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public deviceId:Ljava/lang/String;

.field public gatewayHostname:Ljava/lang/String;

.field public hostname:Ljava/lang/String;

.field public iotHubSSLContext:Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;

.field public iotHubTrustedCert:Ljava/lang/String;

.field public moduleId:Ljava/lang/String;

.field public pathToIotHubTrustedCert:Ljava/lang/String;

.field public sslContextNeedsUpdate:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->hostname:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->gatewayHostname:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->deviceId:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->moduleId:Ljava/lang/String;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "deviceId cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "hostname cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->sslContextNeedsUpdate:Z

    .line 12
    new-instance p1, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;

    invoke-direct {p1, p5}, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;-><init>(Ljavax/net/ssl/SSLContext;)V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->iotHubSSLContext:Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;

    return-void
.end method

.method private generateSSLContext()Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->iotHubTrustedCert:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;-><init>(Ljava/lang/String;Z)V

    return-object v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->pathToIotHubTrustedCert:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;-><init>(Ljava/lang/String;Z)V

    return-object v1

    .line 5
    :cond_1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getGatewayHostname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->gatewayHostname:Ljava/lang/String;

    return-object v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getIotHubTrustedCert()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->iotHubTrustedCert:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->moduleId:Ljava/lang/String;

    return-object v0
.end method

.method public getPathToIotHubTrustedCert()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->pathToIotHubTrustedCert:Ljava/lang/String;

    return-object v0
.end method

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
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->generateSSLContext()Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;

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
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
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

    .line 5
    :goto_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setIotHubTrustedCert(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->iotHubTrustedCert:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->sslContextNeedsUpdate:Z

    .line 3
    :cond_1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->iotHubTrustedCert:Ljava/lang/String;

    return-void
.end method

.method public setPathToIotHubTrustedCert(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->pathToIotHubTrustedCert:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->sslContextNeedsUpdate:Z

    .line 3
    :cond_1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->pathToIotHubTrustedCert:Ljava/lang/String;

    return-void
.end method
