.class public Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenSoftwareAuthenticationProvider;
.super Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;
.source "SourceFile"


# instance fields
.field public deviceKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iput-object p5, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenSoftwareAuthenticationProvider;->deviceKey:Ljava/lang/String;

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->sslContextNeedsUpdate:Z

    .line 8
    new-instance p2, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->getExpiryTimeInSeconds()J

    move-result-wide v6

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v3, p5

    move-object v4, p6

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->sasToken:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 17

    move-object/from16 v8, p0

    move/from16 v0, p7

    int-to-long v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v7, p8

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    move-object/from16 v0, p5

    .line 2
    iput-object v0, v8, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenSoftwareAuthenticationProvider;->deviceKey:Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v8, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->sslContextNeedsUpdate:Z

    .line 4
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;

    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->getExpiryTimeInSeconds()J

    move-result-wide v15

    move-object v9, v1

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p4

    invoke-direct/range {v9 .. v16}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iput-object v1, v8, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->sasToken:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;)V
    .locals 15

    move-object v6, p0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p7

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;)V

    move-object/from16 v0, p5

    .line 10
    iput-object v0, v6, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenSoftwareAuthenticationProvider;->deviceKey:Ljava/lang/String;

    .line 11
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->getExpiryTimeInSeconds()J

    move-result-wide v13

    move-object v7, v1

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p4

    invoke-direct/range {v7 .. v14}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iput-object v1, v6, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->sasToken:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;

    return-void
.end method


# virtual methods
.method public canRefreshToken()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenSoftwareAuthenticationProvider;->deviceKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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
    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenSoftwareAuthenticationProvider;->deviceKey:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 3
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->hostname:Ljava/lang/String;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->deviceId:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->moduleId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->getExpiryTimeInSeconds()J

    move-result-wide v6

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

.method public isRenewalNecessary()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->isRenewalNecessary()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenSoftwareAuthenticationProvider;->deviceKey:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setTokenValidSecs(J)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->setTokenValidSecs(J)V

    .line 2
    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenSoftwareAuthenticationProvider;->deviceKey:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->hostname:Ljava/lang/String;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->deviceId:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->moduleId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->getExpiryTimeInSeconds()J

    move-result-wide v6

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->sasToken:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;

    :cond_0
    return-void
.end method
