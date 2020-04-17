.class public Lcom/microsoft/azure/sdk/iot/device/ModuleClient;
.super Lcom/microsoft/azure/sdk/iot/device/InternalClient;
.source "SourceFile"


# static fields
.field public static final AuthSchemeVariableName:Ljava/lang/String; = "IOTEDGE_AUTHSCHEME"

.field public static final DEFAULT_API_VERSION:Ljava/lang/String; = "2018-06-28"

.field public static DEFAULT_SAS_TOKEN_BUFFER_PERCENTAGE:I = 0x0

.field public static DEFAULT_SAS_TOKEN_TIME_TO_LIVE_SECONDS:I = 0x0

.field public static final DeviceIdVariableName:Ljava/lang/String; = "IOTEDGE_DEVICEID"

.field public static final EdgeCaCertificateFileVariableName:Ljava/lang/String; = "EdgeModuleCACertificateFile"

.field public static final EdgehubConnectionstringVariableName:Ljava/lang/String; = "EdgeHubConnectionString"

.field public static final GatewayHostnameVariableName:Ljava/lang/String; = "IOTEDGE_GATEWAYHOSTNAME"

.field public static final IotEdgedUriVariableName:Ljava/lang/String; = "IOTEDGE_WORKLOADURI"

.field public static final IotHubHostnameVariableName:Ljava/lang/String; = "IOTEDGE_IOTHUBHOSTNAME"

.field public static final IothubConnectionstringVariableName:Ljava/lang/String; = "IotHubConnectionString"

.field public static final ModuleGenerationIdVariableName:Ljava/lang/String; = "IOTEDGE_MODULEGENERATIONID"

.field public static final ModuleIdVariableName:Ljava/lang/String; = "IOTEDGE_MODULEID"

.field public static RECEIVE_PERIOD_MILLIS_AMQPS:J = 0x0L

.field public static RECEIVE_PERIOD_MILLIS_HTTPS:J = 0x0L

.field public static RECEIVE_PERIOD_MILLIS_MQTT:J = 0x0L

.field public static SEND_PERIOD_MILLIS:J = 0x0L

.field public static final SasTokenAuthScheme:Ljava/lang/String; = "sasToken"

.field public static final log:Lk/f/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;->log:Lk/f/b;

    const-wide/16 v0, 0xa

    .line 2
    sput-wide v0, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;->SEND_PERIOD_MILLIS:J

    .line 3
    sput-wide v0, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;->RECEIVE_PERIOD_MILLIS_AMQPS:J

    .line 4
    sput-wide v0, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;->RECEIVE_PERIOD_MILLIS_MQTT:J

    const-wide/32 v0, 0x16e360

    .line 5
    sput-wide v0, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;->RECEIVE_PERIOD_MILLIS_HTTPS:J

    const/16 v0, 0xe10

    .line 6
    sput v0, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;->DEFAULT_SAS_TOKEN_TIME_TO_LIVE_SECONDS:I

    const/16 v0, 0x55

    .line 7
    sput v0, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;->DEFAULT_SAS_TOKEN_BUFFER_PERCENTAGE:I

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;JJ)V
    .locals 0

    .line 7
    invoke-direct/range {p0 .. p6}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;-><init>(Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;)V
    .locals 7

    .line 1
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;

    invoke-direct {v1, p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;-><init>(Ljava/lang/String;)V

    sget-wide v3, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;->SEND_PERIOD_MILLIS:J

    invoke-static {p2}, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;->getReceivePeriod(Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;)J

    move-result-wide v5

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;-><init>(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;JJ)V

    .line 2
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-static {p2, p1}, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;->commonConstructorVerifications(Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 11

    .line 3
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;

    move-object v0, p1

    invoke-direct {v1, p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;-><init>(Ljava/lang/String;)V

    sget-wide v7, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;->SEND_PERIOD_MILLIS:J

    invoke-static {p2}, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;->getReceivePeriod(Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;)J

    move-result-wide v9

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v10}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;-><init>(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;Ljava/lang/String;ZLjava/lang/String;ZJJ)V

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->getConfig()Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    move-result-object v0

    move-object v1, p2

    invoke-static {p2, v0}, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;->commonConstructorVerifications(Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;Ljavax/net/ssl/SSLContext;)V
    .locals 8

    .line 5
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;

    invoke-direct {v1, p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;-><init>(Ljava/lang/String;)V

    sget-wide v4, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;->SEND_PERIOD_MILLIS:J

    invoke-static {p2}, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;->getReceivePeriod(Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;)J

    move-result-wide v6

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;-><init>(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;Ljavax/net/ssl/SSLContext;JJ)V

    .line 6
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->getConfig()Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;->commonConstructorVerifications(Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V

    return-void
.end method

.method public static commonConstructorVerifications(Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;->HTTPS:Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;

    if-eq p0, v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getModuleId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getModuleId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Connection string must contain field for ModuleId"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Only MQTT, MQTT_WS, AMQPS and AMQPS_WS are supported for ModuleClient."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFromEnvironment()Lcom/microsoft/azure/sdk/iot/device/ModuleClient;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;->AMQPS:Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;->createFromEnvironment(Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;)Lcom/microsoft/azure/sdk/iot/device/ModuleClient;

    move-result-object v0

    return-object v0
.end method

.method public static createFromEnvironment(Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;)Lcom/microsoft/azure/sdk/iot/device/ModuleClient;
    .locals 19

    move-object/from16 v0, p0

    const-string v8, "2018-06-28"

    .line 2
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;->log:Lk/f/b;

    const-string v2, "Creating module client from environment with protocol {}..."

    invoke-interface {v1, v2, v0}, Lk/f/b;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;->log:Lk/f/b;

    const-string v3, "Checking for an edgehub connection string..."

    invoke-interface {v2, v3}, Lk/f/b;->b(Ljava/lang/String;)V

    const-string v2, "EdgeHubConnectionString"

    .line 5
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 6
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;->log:Lk/f/b;

    const-string v3, "No edgehub connection string was configured, checking for an IoThub connection string..."

    invoke-interface {v2, v3}, Lk/f/b;->b(Ljava/lang/String;)V

    const-string v2, "IotHubConnectionString"

    .line 7
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_0
    if-eqz v2, :cond_2

    .line 8
    sget-object v3, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;->log:Lk/f/b;

    const-string v4, "Creating module client with the provided connection string"

    invoke-interface {v3, v4}, Lk/f/b;->b(Ljava/lang/String;)V

    .line 9
    :try_start_0
    new-instance v3, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;

    invoke-direct {v3, v2, v0}, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;-><init>(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "EdgeModuleCACertificateFile"

    .line 10
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 12
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;->log:Lk/f/b;

    const-string v2, "Configuring module client to use the configured alternative trusted certificate"

    invoke-interface {v1, v2}, Lk/f/b;->b(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v3, v0}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->setOption_SetCertificatePath(Ljava/lang/Object;)V

    :cond_1
    return-object v3

    :catch_0
    move-exception v0

    .line 14
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/exceptions/ModuleClientException;

    const-string v2, "Could not create module client"

    invoke-direct {v1, v2, v0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/ModuleClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 15
    :cond_2
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;->log:Lk/f/b;

    const-string v3, "No connection string was configured for this module, so it will get its credentials from the edgelet"

    invoke-interface {v2, v3}, Lk/f/b;->c(Ljava/lang/String;)V

    const-string v2, "IOTEDGE_WORKLOADURI"

    .line 16
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    const-string v2, "IOTEDGE_DEVICEID"

    .line 17
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    const-string v2, "IOTEDGE_MODULEID"

    .line 18
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/lang/String;

    const-string v2, "IOTEDGE_IOTHUBHOSTNAME"

    .line 19
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    const-string v2, "IOTEDGE_AUTHSCHEME"

    .line 20
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "IOTEDGE_GATEWAYHOSTNAME"

    .line 21
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Ljava/lang/String;

    const-string v3, "IOTEDGE_MODULEGENERATIONID"

    .line 22
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/lang/String;

    if-eqz v9, :cond_a

    if-eqz v11, :cond_9

    if-eqz v12, :cond_8

    if-eqz v13, :cond_7

    if-eqz v2, :cond_6

    if-eqz v15, :cond_5

    const-string v1, "sasToken"

    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 24
    :try_start_1
    new-instance v10, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpHsmSignatureProvider;

    invoke-direct {v10, v9, v8}, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpHsmSignatureProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_5

    .line 25
    :try_start_2
    sget v16, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;->DEFAULT_SAS_TOKEN_TIME_TO_LIVE_SECONDS:I

    sget v17, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;->DEFAULT_SAS_TOKEN_BUFFER_PERCENTAGE:I

    move-object/from16 v14, v18

    invoke-static/range {v10 .. v17}, Lcom/microsoft/azure/sdk/iot/device/hsm/IotHubSasTokenHsmAuthenticationProvider;->create(Lcom/microsoft/azure/sdk/iot/device/auth/SignatureProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/microsoft/azure/sdk/iot/device/hsm/IotHubSasTokenHsmAuthenticationProvider;

    move-result-object v2

    .line 26
    new-instance v10, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;

    sget-wide v4, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;->SEND_PERIOD_MILLIS:J

    invoke-static/range {p0 .. p0}, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;->getReceivePeriod(Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;)J

    move-result-wide v6

    move-object v1, v10

    move-object/from16 v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;-><init>(Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;JJ)V

    if-eqz v18, :cond_3

    .line 27
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 28
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/edge/HttpsHsmTrustBundleProvider;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/device/edge/HttpsHsmTrustBundleProvider;-><init>()V

    .line 29
    invoke-interface {v0, v9, v8}, Lcom/microsoft/azure/sdk/iot/device/edge/TrustBundleProvider;->getTrustBundleCerts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-virtual {v10, v0}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->setTrustedCertificates(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/microsoft/azure/sdk/iot/device/hsm/HsmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    return-object v10

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

    .line 31
    :goto_0
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/exceptions/ModuleClientException;

    invoke-direct {v1, v0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/ModuleClientException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    .line 32
    :goto_1
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/exceptions/ModuleClientException;

    const-string v2, "Could not use Hsm Signature Provider"

    invoke-direct {v1, v2, v0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/ModuleClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 33
    :cond_4
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/ModuleClientException;

    const-string v1, "Unsupported authentication scheme. Supported scheme is sasToken."

    invoke-direct {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/ModuleClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_5
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/ModuleClientException;

    const-string v1, "Environment variable IOTEDGE_MODULEGENERATIONID is required"

    invoke-direct {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/ModuleClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_6
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/ModuleClientException;

    const-string v1, "Environment variable IOTEDGE_AUTHSCHEME is required."

    invoke-direct {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/ModuleClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_7
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/ModuleClientException;

    const-string v1, "Environment variable IOTEDGE_IOTHUBHOSTNAME is required."

    invoke-direct {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/ModuleClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_8
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/ModuleClientException;

    const-string v1, "Environment variable IOTEDGE_MODULEID is required."

    invoke-direct {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/ModuleClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_9
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/ModuleClientException;

    const-string v1, "Environment variable IOTEDGE_DEVICEID is required."

    invoke-direct {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/ModuleClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_a
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/ModuleClientException;

    const-string v1, "Environment variable IOTEDGE_WORKLOADURI is required."

    invoke-direct {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/ModuleClientException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getReceivePeriod(Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid client protocol specified."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    :goto_0
    sget-wide v0, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;->RECEIVE_PERIOD_MILLIS_MQTT:J

    return-wide v0

    .line 4
    :cond_2
    sget-wide v0, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;->RECEIVE_PERIOD_MILLIS_AMQPS:J

    return-wide v0

    .line 5
    :cond_3
    sget-wide v0, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;->RECEIVE_PERIOD_MILLIS_HTTPS:J

    return-wide v0
.end method


# virtual methods
.method public getTwin()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->getTwinInternal()V

    return-void
.end method

.method public invokeMethod(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/device/edge/MethodRequest;)Lcom/microsoft/azure/sdk/iot/device/edge/MethodResult;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-direct {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V

    .line 3
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;->open()V

    const-string v1, ""

    .line 4
    invoke-virtual {v0, p2, p1, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;->invokeMethod(Lcom/microsoft/azure/sdk/iot/device/edge/MethodRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/edge/MethodResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 5
    :goto_0
    new-instance p2, Lcom/microsoft/azure/sdk/iot/device/exceptions/ModuleClientException;

    const-string v0, "Could not invoke method"

    invoke-direct {p2, v0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/ModuleClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DeviceId cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public invokeMethod(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/device/edge/MethodRequest;)Lcom/microsoft/azure/sdk/iot/device/edge/MethodResult;
    .locals 2

    const-string v0, "DeviceId cannot be null or empty"

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    :try_start_0
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-direct {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V

    .line 10
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;->open()V

    .line 11
    invoke-virtual {v0, p3, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;->invokeMethod(Lcom/microsoft/azure/sdk/iot/device/edge/MethodRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/edge/MethodResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 12
    :goto_0
    new-instance p2, Lcom/microsoft/azure/sdk/iot/device/exceptions/ModuleClientException;

    const-string p3, "Could not invoke method"

    invoke-direct {p2, p3, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/ModuleClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendEventAsync(Lcom/microsoft/azure/sdk/iot/device/Message;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getModuleId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/Message;->setConnectionModuleId(Ljava/lang/String;)V

    .line 6
    invoke-super {p0, p1, p2, p3}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->sendEventAsync(Lcom/microsoft/azure/sdk/iot/device/Message;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public sendEventAsync(Lcom/microsoft/azure/sdk/iot/device/Message;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    if-eqz p4, :cond_0

    .line 1
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1, p4}, Lcom/microsoft/azure/sdk/iot/device/Message;->setOutputName(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/sdk/iot/device/ModuleClient;->sendEventAsync(Lcom/microsoft/azure/sdk/iot/device/Message;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "outputName cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMessageCallback(Lcom/microsoft/azure/sdk/iot/device/MessageCallback;Ljava/lang/Object;)Lcom/microsoft/azure/sdk/iot/device/ModuleClient;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->setMessageCallbackInternal(Lcom/microsoft/azure/sdk/iot/device/MessageCallback;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setMessageCallback(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/device/MessageCallback;Ljava/lang/Object;)Lcom/microsoft/azure/sdk/iot/device/ModuleClient;
    .locals 1

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot give non-null context for a null callback."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->setMessageCallback(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/device/MessageCallback;Ljava/lang/Object;)V

    return-object p0

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "InputName must not be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startTwin(Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/PropertyCallBack;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->startTwinInternal(Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/PropertyCallBack;Ljava/lang/Object;)V

    return-void
.end method

.method public startTwin(Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/TwinPropertyCallBack;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->startTwinInternal(Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/TwinPropertyCallBack;Ljava/lang/Object;)V

    return-void
.end method

.method public subscribeToMethod(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethodCallback;Ljava/lang/Object;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->subscribeToMethodsInternal(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethodCallback;Ljava/lang/Object;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;)V

    return-void
.end method
