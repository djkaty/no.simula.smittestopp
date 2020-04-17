.class public final Lcom/microsoft/azure/sdk/iot/device/DeviceClient;
.super Lcom/microsoft/azure/sdk/iot/device/InternalClient;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final CONNECTION_STRING_CHARSET:Ljava/nio/charset/Charset;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEVICE_ID_ATTRIBUTE:Ljava/lang/String; = "DeviceId="
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOSTNAME_ATTRIBUTE:Ljava/lang/String; = "HostName="
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static RECEIVE_PERIOD_MILLIS_AMQPS:J = 0x0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static RECEIVE_PERIOD_MILLIS_HTTPS:J = 0x0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static RECEIVE_PERIOD_MILLIS_MQTT:J = 0x0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static SEND_PERIOD_MILLIS:J = 0x0L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHARED_ACCESS_KEY_ATTRIBUTE:Ljava/lang/String; = "SharedAccessKey="
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHARED_ACCESS_TOKEN_ATTRIBUTE:Ljava/lang/String; = "SharedAccessSignature="
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final log:Lk/f/b;


# instance fields
.field public RECEIVE_PERIOD_MILLIS:J

.field public fileUpload:Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;

.field public ioTHubConnectionType:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

.field public transportClient:Lcom/microsoft/azure/sdk/iot/device/TransportClient;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->log:Lk/f/b;

    .line 2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->CONNECTION_STRING_CHARSET:Ljava/nio/charset/Charset;

    const-wide/16 v0, 0xa

    .line 3
    sput-wide v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->SEND_PERIOD_MILLIS:J

    .line 4
    sput-wide v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->RECEIVE_PERIOD_MILLIS_AMQPS:J

    .line 5
    sput-wide v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->RECEIVE_PERIOD_MILLIS_MQTT:J

    const-wide/32 v0, 0x16e360

    .line 6
    sput-wide v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->RECEIVE_PERIOD_MILLIS_HTTPS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;-><init>()V

    .line 29
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;->UNKNOWN:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->ioTHubConnectionType:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->transportClient:Lcom/microsoft/azure/sdk/iot/device/TransportClient;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;)V
    .locals 7

    .line 13
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;

    invoke-direct {v1, p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;-><init>(Ljava/lang/String;)V

    sget-wide v3, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->SEND_PERIOD_MILLIS:J

    invoke-static {p2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->getReceivePeriod(Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;)J

    move-result-wide v5

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;-><init>(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;JJ)V

    .line 14
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;->UNKNOWN:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->ioTHubConnectionType:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    .line 15
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->commonConstructorVerifications()V

    .line 16
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->commonConstructorSetup()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 11

    .line 17
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;

    move-object v0, p1

    invoke-direct {v1, p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;-><init>(Ljava/lang/String;)V

    sget-wide v7, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->SEND_PERIOD_MILLIS:J

    invoke-static {p2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->getReceivePeriod(Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;)J

    move-result-wide v9

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v10}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;-><init>(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;Ljava/lang/String;ZLjava/lang/String;ZJJ)V

    .line 18
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;->UNKNOWN:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    move-object v1, p0

    iput-object v0, v1, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->ioTHubConnectionType:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    .line 19
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->commonConstructorVerifications()V

    .line 20
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->commonConstructorSetup()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;Ljavax/net/ssl/SSLContext;)V
    .locals 8

    .line 21
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;

    invoke-direct {v1, p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;-><init>(Ljava/lang/String;)V

    sget-wide v4, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->SEND_PERIOD_MILLIS:J

    invoke-static {p2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->getReceivePeriod(Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;)J

    move-result-wide v6

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;-><init>(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;Ljavax/net/ssl/SSLContext;JJ)V

    .line 22
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;->UNKNOWN:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->ioTHubConnectionType:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    .line 23
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->commonConstructorVerifications()V

    .line 24
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->commonConstructorSetup()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/device/TransportClient;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;-><init>()V

    .line 2
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;->UNKNOWN:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->ioTHubConnectionType:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    .line 3
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;

    invoke-direct {v1, p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;-><init>(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    if-eqz p2, :cond_2

    .line 5
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;->USE_TRANSPORTCLIENT:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->ioTHubConnectionType:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    .line 6
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->transportClient:Lcom/microsoft/azure/sdk/iot/device/TransportClient;

    .line 7
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->getConfig()Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getModuleId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Multiplexing with module connection strings is not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->getConfig()Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->transportClient:Lcom/microsoft/azure/sdk/iot/device/TransportClient;

    invoke-virtual {p2}, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->getIotHubClientProtocol()Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->setProtocol(Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;)V

    .line 11
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->transportClient:Lcom/microsoft/azure/sdk/iot/device/TransportClient;

    invoke-virtual {p1, p0}, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->registerDeviceClient(Lcom/microsoft/azure/sdk/iot/device/DeviceClient;)V

    return-void

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transport client cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProvider;Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;)V
    .locals 9

    .line 25
    sget-wide v5, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->SEND_PERIOD_MILLIS:J

    invoke-static {p4}, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->getReceivePeriod(Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;)J

    move-result-wide v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProvider;Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;JJ)V

    .line 26
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;->UNKNOWN:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->ioTHubConnectionType:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    .line 27
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->commonConstructorSetup()V

    return-void
.end method

.method private commonConstructorSetup()V
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;->SINGLE_CLIENT:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->ioTHubConnectionType:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->transportClient:Lcom/microsoft/azure/sdk/iot/device/TransportClient;

    return-void
.end method

.method private commonConstructorVerifications()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->getConfig()Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getModuleId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->getConfig()Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getModuleId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DeviceClient connection string cannot contain module id. Use ModuleClient instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static createFromSecurityProvider(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProvider;Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;)Lcom/microsoft/azure/sdk/iot/device/DeviceClient;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProvider;Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;)V

    return-object v0
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
    sget-wide v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->RECEIVE_PERIOD_MILLIS_MQTT:J

    return-wide v0

    .line 4
    :cond_2
    sget-wide v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->RECEIVE_PERIOD_MILLIS_AMQPS:J

    return-wide v0

    .line 5
    :cond_3
    sget-wide v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->RECEIVE_PERIOD_MILLIS_HTTPS:J

    return-wide v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->ioTHubConnectionType:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;->USE_TRANSPORTCLIENT:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->transportClient:Lcom/microsoft/azure/sdk/iot/device/TransportClient;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->getTransportClientState()Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;->OPENED:Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;

    if-eq v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->log:Lk/f/b;

    const-string v1, "Connection already closed by TransportClient."

    invoke-interface {v0, v1}, Lk/f/b;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Calling closeNow() when using TransportClient is not supported. Use TransportClient.closeNow() instead."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->log:Lk/f/b;

    const-string v1, "Closing device client..."

    invoke-interface {v0, v1}, Lk/f/b;->c(Ljava/lang/String;)V

    .line 6
    invoke-super {p0}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->close()V

    .line 7
    :goto_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->log:Lk/f/b;

    const-string v1, "Device client closed successfully"

    invoke-interface {v0, v1}, Lk/f/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public closeFileUpload()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->fileUpload:Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;->closeNow()V

    :cond_0
    return-void
.end method

.method public closeNow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->ioTHubConnectionType:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;->USE_TRANSPORTCLIENT:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->transportClient:Lcom/microsoft/azure/sdk/iot/device/TransportClient;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->getTransportClientState()Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;->OPENED:Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;

    if-eq v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->log:Lk/f/b;

    const-string v1, "Connection already closed by TransportClient."

    invoke-interface {v0, v1}, Lk/f/b;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Calling closeNow() when using TransportClient is not supported. Use TransportClient.closeNow() instead."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->log:Lk/f/b;

    const-string v1, "Closing device client..."

    invoke-interface {v0, v1}, Lk/f/b;->c(Ljava/lang/String;)V

    .line 6
    invoke-super {p0}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->closeNow()V

    .line 7
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->closeFileUpload()V

    .line 8
    :goto_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->log:Lk/f/b;

    const-string v1, "Device client closed successfully"

    invoke-interface {v0, v1}, Lk/f/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public getDeviceTwin()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->getTwinInternal()V

    return-void
.end method

.method public open()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->ioTHubConnectionType:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;->USE_TRANSPORTCLIENT:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->transportClient:Lcom/microsoft/azure/sdk/iot/device/TransportClient;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->getTransportClientState()Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;->CLOSED:Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;

    if-eq v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->log:Lk/f/b;

    const-string v1, "Connection already opened by TransportClient."

    invoke-interface {v0, v1}, Lk/f/b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Calling open() when using the TransportClient is not supported. Use TransportClient.open() instead."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    invoke-super {p0}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->open()V

    .line 6
    :goto_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->log:Lk/f/b;

    const-string v1, "Device client opened successfully"

    invoke-interface {v0, v1}, Lk/f/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public registerConnectionStateCallback(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStateCallback;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->registerConnectionStateCallback(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStateCallback;Ljava/lang/Object;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Callback object cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMessageCallback(Lcom/microsoft/azure/sdk/iot/device/MessageCallback;Ljava/lang/Object;)Lcom/microsoft/azure/sdk/iot/device/DeviceClient;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->setMessageCallbackInternal(Lcom/microsoft/azure/sdk/iot/device/MessageCallback;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const-string v0, "optionName is null"

    if-eqz p1, :cond_e

    if-eqz p2, :cond_d

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "SetCertificateAuthority"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "SetSASTokenExpiryTime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const-string v1, "SetCertificatePath"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "SetMinimumPollingInterval"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_4
    const-string v1, "SetSendInterval"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-eqz v0, :cond_a

    const-string v1, "setOption SetCertificatePath only works when the transport is closed"

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_4

    if-ne v0, v2, :cond_3

    .line 2
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->ioTHubConnectionType:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;->USE_TRANSPORTCLIENT:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    if-ne p1, v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->transportClient:Lcom/microsoft/azure/sdk/iot/device/TransportClient;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->getTransportClientState()Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;

    move-result-object p1

    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;->OPENED:Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;

    if-eq p1, v0, :cond_1

    .line 4
    invoke-virtual {p0, p2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->setOption_SetSASTokenExpiryTime(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "setOption SetSASTokenExpiryTime with TransportClient only works when the transport client is closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    invoke-virtual {p0, p2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->setOption_SetSASTokenExpiryTime(Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "optionName is unknown = "

    invoke-static {v0, p1}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8
    :cond_4
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->ioTHubConnectionType:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;->USE_TRANSPORTCLIENT:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    if-ne v0, v2, :cond_b

    .line 9
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->transportClient:Lcom/microsoft/azure/sdk/iot/device/TransportClient;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->getTransportClientState()Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;

    move-result-object v0

    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;->OPENED:Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;

    if-eq v0, v2, :cond_5

    goto :goto_1

    .line 10
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_6
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->ioTHubConnectionType:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;->USE_TRANSPORTCLIENT:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    if-eq v0, v2, :cond_9

    .line 12
    :cond_7
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->ioTHubConnectionType:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;->USE_TRANSPORTCLIENT:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    if-ne v0, v2, :cond_b

    .line 13
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->transportClient:Lcom/microsoft/azure/sdk/iot/device/TransportClient;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->getTransportClientState()Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;

    move-result-object p1

    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;->OPENED:Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;

    if-eq p1, v0, :cond_8

    .line 14
    invoke-virtual {p0, p2}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->setOption_SetCertificatePath(Ljava/lang/Object;)V

    return-void

    .line 15
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Setting send interval is not supported for single client if using TransportClient. Use TransportClient.setSendInterval() instead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_a
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->ioTHubConnectionType:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;->USE_TRANSPORTCLIENT:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    if-eq v0, v1, :cond_c

    .line 18
    :cond_b
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->setOption(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 19
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "setOption SetMinimumPollingIntervalonly works with HTTP protocol"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6905aa31 -> :sswitch_4
        -0x424ff964 -> :sswitch_3
        0x52489dba -> :sswitch_2
        0x67d0f2b6 -> :sswitch_1
        0x74dd82ce -> :sswitch_0
    .end sparse-switch
.end method

.method public setOption_SetSASTokenExpiryTime(Ljava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->log:Lk/f/b;

    const-string v1, "Setting SASTokenExpiryTime as {} seconds"

    invoke-interface {v0, v1, p1}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->getConfig()Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getAuthenticationType()Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;->SAS_TOKEN:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_2

    .line 3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->getConfig()Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getSasTokenAuthentication()Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->setTokenValidSecs(J)V

    .line 6
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->getDeviceIO()Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->getDeviceIO()Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->getConfig()Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getSasTokenAuthentication()Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->canRefreshToken()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->ioTHubConnectionType:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;->USE_TRANSPORTCLIENT:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IoTHubConnectionType;

    if-ne p1, v0, :cond_0

    .line 10
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->transportClient:Lcom/microsoft/azure/sdk/iot/device/TransportClient;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->closeNow()V

    .line 11
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->transportClient:Lcom/microsoft/azure/sdk/iot/device/TransportClient;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->open()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->getDeviceIO()Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->close()V

    .line 13
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->getDeviceIO()Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->open()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    new-instance v0, Ljava/io/IOError;

    invoke-direct {v0, p1}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 15
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value is not long = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void

    .line 16
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set sas token validity time when not using sas token authentication"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startDeviceTwin(Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/PropertyCallBack;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->startTwinInternal(Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/PropertyCallBack;Ljava/lang/Object;)V

    return-void
.end method

.method public startDeviceTwin(Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/TwinPropertyCallBack;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->startTwinInternal(Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/TwinPropertyCallBack;Ljava/lang/Object;)V

    return-void
.end method

.method public subscribeToDeviceMethod(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethodCallback;Ljava/lang/Object;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->subscribeToMethodsInternal(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethodCallback;Ljava/lang/Object;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public uploadToBlobAsync(Ljava/lang/String;Ljava/io/InputStream;JLcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;)V
    .locals 9

    if-eqz p5, :cond_3

    if-eqz p2, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_1

    .line 1
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->validateBlobName(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->fileUpload:Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-direct {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->fileUpload:Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->fileUpload:Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;->uploadToBlobAsync(Ljava/lang/String;Ljava/io/InputStream;JLcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid stream size."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The input stream cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Callback is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
