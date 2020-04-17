.class public Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenHardwareAuthenticationProvider;
.super Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;
.source "SourceFile"


# static fields
.field public static final SASTOKEN_FORMAT:Ljava/lang/String; = "SharedAccessSignature sr=%s&sig=%s&se=%s"

.field public static final TOKEN_SCOPE_FORMAT:Ljava/lang/String; = "%s/devices/%s"


# instance fields
.field public securityProvider:Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderTpm;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProvider;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    instance-of p2, p5, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderTpm;

    if-eqz p2, :cond_0

    .line 3
    move-object p2, p5

    check-cast p2, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderTpm;

    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenHardwareAuthenticationProvider;->securityProvider:Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderTpm;

    .line 4
    new-instance p2, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;

    const/4 v3, 0x0

    iget-wide v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->tokenValidSecs:J

    invoke-direct {p0, v0, v1}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenHardwareAuthenticationProvider;->generateSasTokenSignatureFromSecurityProvider(J)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->sasToken:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;

    .line 5
    new-instance p1, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;

    invoke-virtual {p5}, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProvider;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;-><init>(Ljavax/net/ssl/SSLContext;)V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->iotHubSSLContext:Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->sslContextNeedsUpdate:Z

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The provided security provided must be an instance of SecurityProviderTpm"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/microsoft/azure/sdk/iot/provisioning/security/exceptions/SecurityProviderException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private generateSasTokenSignatureFromSecurityProvider(J)Ljava/lang/String;
    .locals 8

    :try_start_0
    const-string v0, "%s/devices/%s"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    .line 1
    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->hostname:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->deviceId:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->ENCODING_FORMAT_NAME:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    add-long/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenHardwareAuthenticationProvider;->securityProvider:Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderTpm;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProviderTpm;->signWithIdentity([B)[B

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6
    array-length v2, p2

    if-eqz v2, :cond_0

    .line 7
    invoke-static {p2}, Lcom/microsoft/azure/sdk/iot/deps/util/Base64;->encodeBase64Local([B)[B

    move-result-object p2

    .line 8
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    sget-object p2, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->ENCODING_FORMAT_NAME:Ljava/lang/String;

    invoke-static {v2, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "SharedAccessSignature sr=%s&sig=%s&se=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    aput-object p2, v3, v5

    aput-object p1, v3, v1

    .line 9
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Security provider could not sign data successfully"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Could not construct token scope"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/microsoft/azure/sdk/iot/provisioning/security/exceptions/SecurityProviderException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 12
    :goto_0
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public canRefreshToken()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getRenewedSasToken(ZZ)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->shouldRefreshToken(Z)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 2
    :cond_0
    iget-wide p1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->tokenValidSecs:J

    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenHardwareAuthenticationProvider;->generateSasTokenSignatureFromSecurityProvider(J)Ljava/lang/String;

    move-result-object v4

    .line 3
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->hostname:Ljava/lang/String;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->deviceId:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->moduleId:Ljava/lang/String;

    const-wide/16 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->sasToken:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->sasToken:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->iotHubSSLContext:Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/auth/IotHubSSLContext;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method public isRenewalNecessary()Z
    .locals 1

    const/4 v0, 0x0

    return v0
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
