.class public Lcom/microsoft/azure/sdk/iot/device/InternalClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SET_CERTIFICATE_AUTHORITY:Ljava/lang/String; = "SetCertificateAuthority"

.field public static final SET_CERTIFICATE_PATH:Ljava/lang/String; = "SetCertificatePath"

.field public static final SET_MINIMUM_POLLING_INTERVAL:Ljava/lang/String; = "SetMinimumPollingInterval"

.field public static final SET_SAS_TOKEN_EXPIRY_TIME:Ljava/lang/String; = "SetSASTokenExpiryTime"

.field public static final SET_SEND_INTERVAL:Ljava/lang/String; = "SetSendInterval"

.field public static final log:Lk/f/b;


# instance fields
.field public config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

.field public deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

.field public method:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;

.field public twin:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->log:Lk/f/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    .line 33
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;JJ)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->commonConstructorVerification(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;)V

    .line 3
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;-><init>(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    .line 4
    invoke-virtual {v0, p2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->setProtocol(Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;)V

    .line 5
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    move-object v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;JJ)V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;Ljava/lang/String;ZLjava/lang/String;ZJJ)V
    .locals 8

    move-object v0, p0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->commonConstructorVerification(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;)V

    .line 12
    new-instance v7, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;-><init>(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;Ljava/lang/String;ZLjava/lang/String;Z)V

    iput-object v7, v0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    move-object v1, p2

    .line 13
    invoke-virtual {v7, p2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->setProtocol(Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;)V

    .line 14
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    iget-object v2, v0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    move-object p1, v1

    move-object p2, v2

    move-wide p3, p7

    move-wide/from16 p5, p9

    invoke-direct/range {p1 .. p6}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;JJ)V

    iput-object v1, v0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;Ljavax/net/ssl/SSLContext;JJ)V
    .locals 7

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->commonConstructorVerification(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;)V

    .line 17
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-direct {v0, p1, p3}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;-><init>(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;Ljavax/net/ssl/SSLContext;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    .line 18
    invoke-virtual {v0, p2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->setProtocol(Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;)V

    .line 19
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    move-object v1, p1

    move-wide v3, p4

    move-wide v5, p6

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;JJ)V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;JJ)V
    .locals 7

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;-><init>(Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    .line 8
    invoke-virtual {v0, p2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->setProtocol(Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;)V

    .line 9
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    move-object v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;JJ)V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProvider;Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;JJ)V
    .locals 7

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p4, :cond_3

    if-eqz p3, :cond_2

    if-eqz p1, :cond_1

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 22
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, v1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-direct {p1, v0, p3}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;-><init>(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;Lcom/microsoft/azure/sdk/iot/provisioning/security/SecurityProvider;)V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    .line 25
    invoke-virtual {p1, p4}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->setProtocol(Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;)V

    .line 26
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    move-object v1, p1

    move-wide v3, p5

    move-wide v5, p7

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;JJ)V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "deviceId cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "URI cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "securityProvider cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The transport protocol cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private commonConstructorVerification(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;)V
    .locals 0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->getGatewayHostName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;->HTTPS:Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Communication with edgehub only supported by MQTT/MQTT_WS and AMQPS/AMQPS_WS"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Protocol cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Connection string cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->close()V

    return-void
.end method

.method public closeNow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->close()V

    return-void
.end method

.method public getConfig()Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    return-object v0
.end method

.method public getDeviceIO()Lcom/microsoft/azure/sdk/iot/device/DeviceIO;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    return-object v0
.end method

.method public getProductInfo()Lcom/microsoft/azure/sdk/iot/device/ProductInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getProductInfo()Lcom/microsoft/azure/sdk/iot/device/ProductInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTwinInternal()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->twin:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->twin:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->getDeviceTwin()V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Open the client connection before using it."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Start twin before using it"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public open()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getAuthenticationType()Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;->SAS_TOKEN:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getSasTokenAuthentication()Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->isRenewalNecessary()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Your SasToken is expired"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->open()V

    return-void
.end method

.method public registerConnectionStatusChangeCallback(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeCallback;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->registerConnectionStatusChangeCallback(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public sendEventAsync(Lcom/microsoft/azure/sdk/iot/device/Message;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/Message;->setConnectionDeviceId(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->sendEventAsync(Lcom/microsoft/azure/sdk/iot/device/Message;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public sendReportedProperties(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->twin:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->twin:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->updateReportedProperties(Ljava/util/Set;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Reported properties set cannot be null or empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Open the client connection before using it."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Start twin before using it"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendReportedProperties(Ljava/util/Set;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;",
            ">;I)V"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->twin:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 10
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p2, :cond_0

    .line 11
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->twin:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->updateReportedProperties(Ljava/util/Set;Ljava/lang/Integer;)V

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Version cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Reported properties set cannot be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Open the client connection before using it."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Start twin before using it"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDeviceIO(Lcom/microsoft/azure/sdk/iot/device/DeviceIO;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    return-void
.end method

.method public setMessageCallbackInternal(Lcom/microsoft/azure/sdk/iot/device/MessageCallback;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot give non-null context for a null callback."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->setMessageCallback(Lcom/microsoft/azure/sdk/iot/device/MessageCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public setOperationTimeout(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->setOperationTimeout(J)V

    return-void
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
    const-string v1, "optionName is unknown = "

    if-eqz v0, :cond_a

    if-eq v0, v5, :cond_9

    const-string v5, "setOption SetCertificatePath only works when the transport is closed"

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_1

    .line 2
    invoke-virtual {p0, p2}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->setOption_SetSASTokenExpiryTime(Ljava/lang/Object;)V

    goto :goto_3

    .line 3
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {v1, p1}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->isOpen()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_4
    :goto_1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->setTrustedCertificates(Ljava/lang/String;)V

    goto :goto_3

    .line 7
    :cond_5
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->isOpen()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    .line 8
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->getProtocol()Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;

    move-result-object p1

    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;->HTTPS:Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;

    if-eq p1, v0, :cond_8

    .line 10
    invoke-virtual {p0, p2}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->setOption_SetCertificatePath(Ljava/lang/Object;)V

    goto :goto_3

    .line 11
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "option SetCertificatePath cannot be invoked when using HTTPS protocol"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_9
    invoke-virtual {p0, p2}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->setOption_SetSendInterval(Ljava/lang/Object;)V

    goto :goto_3

    .line 13
    :cond_a
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->isOpen()Z

    move-result v0

    if-nez v0, :cond_c

    .line 14
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->getProtocol()Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;

    move-result-object v0

    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;->HTTPS:Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;

    if-ne v0, v2, :cond_b

    .line 15
    invoke-virtual {p0, p2}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->setOption_SetMinimumPollingInterval(Ljava/lang/Object;)V

    :goto_3
    return-void

    .line 16
    :cond_b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->getProtocol()Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 17
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "setOption SetMinimumPollingIntervalonly works when the transport is closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
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

.method public setOption_SetCertificatePath(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getAuthenticationProvider()Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;

    move-result-object v0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->setPathToIotHubTrustedCert(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOption_SetMinimumPollingInterval(Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->setReceivePeriodInMilliseconds(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/io/IOError;

    invoke-direct {v0, p1}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 4
    :cond_0
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

    :cond_1
    :goto_0
    return-void
.end method

.method public setOption_SetSASTokenExpiryTime(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getAuthenticationType()Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;->SAS_TOKEN:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_1

    .line 2
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getSasTokenAuthentication()Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->setTokenValidSecs(J)V

    .line 5
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    :try_start_0
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getSasTokenAuthentication()Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->canRefreshToken()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->close()V

    .line 9
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->open()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    new-instance v0, Ljava/io/IOError;

    invoke-direct {v0, p1}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 11
    :cond_0
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

    :cond_1
    :goto_0
    return-void

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set sas token validity time when not using sas token authentication"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOption_SetSendInterval(Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->setSendPeriodInMilliseconds(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/io/IOError;

    invoke-direct {v0, p1}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 4
    :cond_0
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

    :cond_1
    :goto_0
    return-void
.end method

.method public setProxySettings(Lcom/microsoft/azure/sdk/iot/device/ProxySettings;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->getProtocol()Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;->HTTPS:Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;->AMQPS_WS:Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;->MQTT_WS:Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Use of proxies is unsupported unless using HTTPS, MQTT_WS or AMQPS_WS"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->setProxy(Lcom/microsoft/azure/sdk/iot/device/ProxySettings;)V

    return-void

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set proxy after connection was already opened"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRetryPolicy(Lcom/microsoft/azure/sdk/iot/device/transport/RetryPolicy;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->setRetryPolicy(Lcom/microsoft/azure/sdk/iot/device/transport/RetryPolicy;)V

    return-void
.end method

.method public setTrustedCertificates(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getAuthenticationProvider()Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->setIotHubTrustedCert(Ljava/lang/String;)V

    return-void
.end method

.method public startTwinInternal(Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/PropertyCallBack;Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->twin:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceIO;Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/PropertyCallBack;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->twin:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    .line 4
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->getDeviceTwin()V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "You have already initialised twin"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Callback cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Open the client connection before using it."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startTwinInternal(Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/TwinPropertyCallBack;Ljava/lang/Object;)V
    .locals 8

    .line 8
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 9
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->twin:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceIO;Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/TwinPropertyCallBack;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->twin:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    .line 11
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->getDeviceTwin()V

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "You have already initialised twin"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Callback cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Open the client connection before using it."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public subscribeToDesiredProperties(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair<",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/PropertyCallBack<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->twin:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->twin:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->subscribeDesiredPropertiesNotification(Ljava/util/Map;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Open the client connection before using it."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Start twin before using it"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public subscribeToMethodsInternal(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethodCallback;Ljava/lang/Object;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->method:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-direct {v0, v1, v2, p3, p4}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceIO;Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->method:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;

    .line 4
    :cond_0
    iget-object p3, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->method:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;

    invoke-virtual {p3, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->subscribeToDeviceMethod(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethodCallback;Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Callback cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Open the client connection before using it."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public subscribeToTwinDesiredProperties(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Property;",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/Pair<",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/TwinPropertyCallBack;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->twin:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->twin:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->subscribeDesiredPropertiesTwinPropertyNotification(Ljava/util/Map;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Open the client connection before using it."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Start twin before using it"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
