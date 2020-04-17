.class public Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509HardwareAuthenticationProvider;
.super Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;
.source "SourceFile"


# instance fields
.field public securityProviderX509:Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderX509;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    instance-of p1, p5, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderX509;

    if-eqz p1, :cond_0

    .line 3
    check-cast p5, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderX509;

    iput-object p5, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509HardwareAuthenticationProvider;->securityProviderX509:Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderX509;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The provided security provider must be of type SecurityProviderX509"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->iotHubSSLContext:Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509HardwareAuthenticationProvider;->securityProviderX509:Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderX509;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderX509;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;-><init>(Ljavax/net/ssl/SSLContext;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->iotHubSSLContext:Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;
    :try_end_0
    .catch Lcom/microsoft/azure/sdk/iot/provisioning/security/exceptions/SecurityProviderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->iotHubSSLContext:Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method public setIotHubTrustedCert(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot change the trusted certificate when using security provider for authentication."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPathToIotHubTrustedCert(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot change the trusted certificate when using security provider for authentication."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
