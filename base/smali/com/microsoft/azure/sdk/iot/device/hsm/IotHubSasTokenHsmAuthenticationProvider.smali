.class public Lcom/microsoft/azure/sdk/iot/device/hsm/IotHubSasTokenHsmAuthenticationProvider;
.super Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenWithRefreshAuthenticationProvider;
.source "SourceFile"


# instance fields
.field public generationId:Ljava/lang/String;

.field public signatureProvider:Lcom/microsoft/azure/sdk/iot/device/auth/SignatureProvider;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/device/auth/SignatureProvider;II)V
    .locals 9

    move-object v8, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move/from16 v6, p8

    move/from16 v7, p9

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenWithRefreshAuthenticationProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v0, p7

    .line 2
    iput-object v0, v8, Lcom/microsoft/azure/sdk/iot/device/hsm/IotHubSasTokenHsmAuthenticationProvider;->signatureProvider:Lcom/microsoft/azure/sdk/iot/device/auth/SignatureProvider;

    move-object v0, p5

    .line 3
    iput-object v0, v8, Lcom/microsoft/azure/sdk/iot/device/hsm/IotHubSasTokenHsmAuthenticationProvider;->generationId:Ljava/lang/String;

    return-void
.end method

.method public static create(Lcom/microsoft/azure/sdk/iot/device/auth/SignatureProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/microsoft/azure/sdk/iot/device/hsm/IotHubSasTokenHsmAuthenticationProvider;
    .locals 11

    if-eqz p0, :cond_0

    move/from16 v8, p6

    int-to-long v6, v8

    move-object v0, p3

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p5

    move-object v5, p0

    .line 1
    invoke-static/range {v0 .. v7}, Lcom/microsoft/azure/sdk/iot/device/hsm/IotHubSasTokenHsmAuthenticationProvider;->createNewSasToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/device/auth/SignatureProvider;J)Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;

    move-result-object v0

    .line 2
    new-instance v10, Lcom/microsoft/azure/sdk/iot/device/hsm/IotHubSasTokenHsmAuthenticationProvider;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->getSasToken()Ljava/lang/String;

    move-result-object v6

    move-object v0, v10

    move-object v1, p3

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p5

    move-object v7, p0

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/microsoft/azure/sdk/iot/device/hsm/IotHubSasTokenHsmAuthenticationProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/device/auth/SignatureProvider;II)V

    return-object v10

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "signatureProvider cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createNewSasToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/device/auth/SignatureProvider;J)Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;
    .locals 10

    move-object v0, p3

    move-object v1, p0

    move-object v3, p2

    .line 1
    :try_start_0
    invoke-static {p0, p2, p3}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenWithRefreshAuthenticationProvider;->buildAudience(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    add-long v7, v4, p6

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p4

    move-object v6, p5

    .line 4
    invoke-interface {p5, p3, v4, p4}, Lcom/microsoft/azure/sdk/iot/device/auth/SignatureProvider;->sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, p1

    goto :goto_0

    :cond_0
    move-object v5, v1

    .line 6
    :goto_0
    invoke-static {v2, v4, v7, v8}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->buildSharedAccessToken(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    .line 7
    new-instance v9, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;

    const/4 v4, 0x0

    move-object v1, v9

    move-object v2, v5

    move-object v3, p2

    move-object v5, v6

    move-object v6, p3

    invoke-direct/range {v1 .. v8}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/microsoft/azure/sdk/iot/device/hsm/HsmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    .line 8
    :goto_1
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public canRefreshToken()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public refreshSasToken()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->hostname:Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->gatewayHostname:Ljava/lang/String;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->deviceId:Ljava/lang/String;

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->moduleId:Ljava/lang/String;

    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/device/hsm/IotHubSasTokenHsmAuthenticationProvider;->generationId:Ljava/lang/String;

    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/device/hsm/IotHubSasTokenHsmAuthenticationProvider;->signatureProvider:Lcom/microsoft/azure/sdk/iot/device/auth/SignatureProvider;

    iget-wide v6, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->tokenValidSecs:J

    invoke-static/range {v0 .. v7}, Lcom/microsoft/azure/sdk/iot/device/hsm/IotHubSasTokenHsmAuthenticationProvider;->createNewSasToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/device/auth/SignatureProvider;J)Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->sasToken:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;

    return-void
.end method
