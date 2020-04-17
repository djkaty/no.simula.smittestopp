.class public Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportConnection;


# static fields
.field public static final HTTPS_HEAD_TAG:Ljava/lang/String; = "https://"

.field public static final HTTPS_PROPERTY_AUTHORIZATION_TAG:Ljava/lang/String; = "authorization"

.field public static final HTTPS_PROPERTY_CONTENT_TYPE_TAG:Ljava/lang/String; = "content-type"

.field public static final HTTPS_PROPERTY_ETAG_TAG:Ljava/lang/String; = "etag"

.field public static final HTTPS_PROPERTY_IF_MATCH_TAG:Ljava/lang/String; = "if-match"

.field public static final HTTPS_PROPERTY_IOTHUB_MESSAGELOCKTIMEOUT_TAG:Ljava/lang/String; = "iothub-messagelocktimeout"

.field public static final HTTPS_PROPERTY_IOTHUB_TO_TAG:Ljava/lang/String; = "iothub-to"

.field public static final log:Lk/f/b;


# instance fields
.field public final HTTPS_CONNECTION_LOCK:Ljava/lang/Object;

.field public final config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

.field public listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

.field public messageToETagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/microsoft/azure/sdk/iot/device/Message;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->log:Lk/f/b;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->HTTPS_CONNECTION_LOCK:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->messageToETagMap:Ljava/util/Map;

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->HTTPS_CONNECTION_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private buildUrlFromString(Ljava/lang/String;)Ljava/net/URL;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    const-string v1, "Could not build HTTP url"

    invoke-direct {v0, v1, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private getHostName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getGatewayHostname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getIotHubHostname()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getAuthenticationProvider()Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    invoke-direct {v1, v0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getSasToken()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getSasTokenAuthentication()Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->getRenewedSasToken(ZZ)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    invoke-direct {v1, v0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static sanitizeEtag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\""

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private sendRequest(Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsResponse;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getReadTimeoutMillis()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->setReadTimeoutMillis(I)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getAuthenticationType()Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;->SAS_TOKEN:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->getSasToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "authorization"

    invoke-virtual {p1, v1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->setSSLContext(Ljavax/net/ssl/SSLContext;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->send()Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsResponse;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public getConnectionId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public open(Ljava/util/Queue;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;",
            ">;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public receiveMessage()Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->HTTPS_CONNECTION_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/net/IotHubMessageUri;

    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->getHostName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v3}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v4}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getModuleId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/microsoft/azure/sdk/iot/device/net/IotHubMessageUri;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/net/IotHubMessageUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->buildUrlFromString(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 4
    new-instance v2, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;

    sget-object v5, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;->GET:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;

    const/4 v3, 0x0

    new-array v6, v3, [B

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    .line 5
    invoke-virtual {v3}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getProductInfo()Lcom/microsoft/azure/sdk/iot/device/ProductInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/azure/sdk/iot/device/ProductInfo;->getUserAgentString()Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v3}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getProxySettings()Lcom/microsoft/azure/sdk/iot/device/ProxySettings;

    move-result-object v8

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;-><init>(Ljava/net/URL;Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;[BLjava/lang/String;Lcom/microsoft/azure/sdk/iot/device/ProxySettings;)V

    const-string v3, "iothub-to"

    .line 6
    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/net/IotHubMessageUri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v2, v3, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;

    move-result-object v1

    const-string v2, "iothub-messagelocktimeout"

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    .line 8
    invoke-virtual {v3}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getMessageLockTimeoutSecs()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v1, v2, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;

    move-result-object v1

    .line 10
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->log:Lk/f/b;

    const-string v3, "Sending http request to check if any messages are ready to be received..."

    invoke-interface {v2, v3}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->sendRequest(Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsResponse;

    move-result-object v1

    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsResponse;->getStatus()I

    move-result v3

    invoke-static {v3}, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->getIotHubStatusCode(I)Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    move-result-object v3

    .line 13
    sget-object v4, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    if-ne v3, v4, :cond_0

    const-string v2, "etag"

    .line 14
    invoke-virtual {v1, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsResponse;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->sanitizeEtag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {v1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->parseHttpsMessage(Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsResponse;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->toMessage()Lcom/microsoft/azure/sdk/iot/device/Message;

    move-result-object v1

    .line 17
    new-instance v9, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageType()Lcom/microsoft/azure/sdk/iot/device/MessageType;

    move-result-object v5

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getCorrelationId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getProperties()[Lcom/microsoft/azure/sdk/iot/device/MessageProperty;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;-><init>([BLcom/microsoft/azure/sdk/iot/device/MessageType;Ljava/lang/String;Ljava/lang/String;[Lcom/microsoft/azure/sdk/iot/device/MessageProperty;)V

    .line 18
    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getInputName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceTelemetryMessageCallback(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/MessageCallback;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setMessageCallback(Lcom/microsoft/azure/sdk/iot/device/MessageCallback;)V

    .line 19
    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getInputName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceTelemetryMessageContext(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setMessageCallbackContext(Ljava/lang/Object;)V

    .line 20
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->log:Lk/f/b;

    const-string v3, "Received http message with etag {} in transport message ({})"

    invoke-interface {v1, v3, v2, v9}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->messageToETagMap:Ljava/util/Map;

    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v9

    .line 22
    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendHttpsMessage(Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMessage;Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;Ljava/lang/String;Ljava/util/Map;)Lcom/microsoft/azure/sdk/iot/device/ResponseMessage;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMessage;",
            "Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/azure/sdk/iot/device/ResponseMessage;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->HTTPS_CONNECTION_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;->API_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->buildUrlFromString(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 4
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;

    invoke-interface {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMessage;->getBody()[B

    move-result-object v5

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getProductInfo()Lcom/microsoft/azure/sdk/iot/device/ProductInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/ProductInfo;->getUserAgentString()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getProxySettings()Lcom/microsoft/azure/sdk/iot/device/ProxySettings;

    move-result-object v7

    move-object v2, v1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;-><init>(Ljava/net/URL;Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;[BLjava/lang/String;Lcom/microsoft/azure/sdk/iot/device/ProxySettings;)V

    .line 5
    invoke-interface {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMessage;->getProperties()[Lcom/microsoft/azure/sdk/iot/device/MessageProperty;

    move-result-object p2

    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p2, v3

    .line 6
    invoke-virtual {v4}, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "iothub-to"

    .line 7
    invoke-virtual {v1, p2, p3}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;

    move-result-object p2

    const-string p3, "content-type"

    .line 8
    invoke-interface {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMessage;->getContentType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;

    .line 9
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 10
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v1, p2, p3}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;

    goto :goto_1

    .line 11
    :cond_1
    invoke-direct {p0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->sendRequest(Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsResponse;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsResponse;->getStatus()I

    move-result p2

    invoke-static {p2}, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->getIotHubStatusCode(I)Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    move-result-object p2

    .line 13
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsResponse;->getBody()[B

    move-result-object p1

    .line 14
    new-instance p3, Lcom/microsoft/azure/sdk/iot/device/ResponseMessage;

    invoke-direct {p3, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/ResponseMessage;-><init>([BLcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;)V

    monitor-exit v0

    return-object p3

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sendMessage(Lcom/microsoft/azure/sdk/iot/device/Message;)Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->HTTPS_CONNECTION_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->parseHttpsMessage(Lcom/microsoft/azure/sdk/iot/device/Message;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;

    move-result-object v1

    .line 3
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v3}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v4}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getModuleId()Ljava/lang/String;

    move-result-object v4

    .line 6
    new-instance v5, Lcom/microsoft/azure/sdk/iot/device/net/IotHubEventUri;

    invoke-direct {v5, v2, v3, v4}, Lcom/microsoft/azure/sdk/iot/device/net/IotHubEventUri;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/microsoft/azure/sdk/iot/device/net/IotHubEventUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->buildUrlFromString(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v7

    .line 8
    new-instance v2, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;

    sget-object v8, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;->POST:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;

    invoke-interface {v1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMessage;->getBody()[B

    move-result-object v9

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v3}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getProductInfo()Lcom/microsoft/azure/sdk/iot/device/ProductInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/azure/sdk/iot/device/ProductInfo;->getUserAgentString()Ljava/lang/String;

    move-result-object v10

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v3}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getProxySettings()Lcom/microsoft/azure/sdk/iot/device/ProxySettings;

    move-result-object v11

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;-><init>(Ljava/net/URL;Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;[BLjava/lang/String;Lcom/microsoft/azure/sdk/iot/device/ProxySettings;)V

    .line 9
    invoke-interface {v1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMessage;->getProperties()[Lcom/microsoft/azure/sdk/iot/device/MessageProperty;

    move-result-object v3

    array-length v4, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v3, v6

    .line 10
    invoke-virtual {v7}, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;->getName()Ljava/lang/String;

    move-result-object v8

    .line 11
    invoke-virtual {v7}, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 12
    invoke-virtual {v2, v8, v7}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "iothub-contentencoding"

    .line 14
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getContentEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getContentType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "iothub-contenttype"

    .line 16
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;

    .line 17
    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getCreationTimeUTC()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, "iothub-creation-time-utc"

    .line 18
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getCreationTimeUTCString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;

    .line 19
    :cond_3
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->isSecurityMessage()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "iothub-interface-id"

    const-string v4, "urn:azureiot:Security:SecurityAgent:1"

    .line 20
    invoke-virtual {v2, v3, v4}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;

    .line 21
    :cond_4
    invoke-interface {v1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMessage;->getSystemProperties()Ljava/util/Map;

    move-result-object v3

    .line 22
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 23
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;

    goto :goto_1

    :cond_5
    const-string v3, "iothub-to"

    .line 24
    invoke-virtual {v5}, Lcom/microsoft/azure/sdk/iot/device/net/IotHubEventUri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;

    move-result-object v3

    const-string v4, "content-type"

    .line 25
    invoke-interface {v1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMessage;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;

    .line 26
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->log:Lk/f/b;

    const-string v3, "Sending message using http request ({})"

    invoke-interface {v1, v3, p1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    invoke-direct {p0, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->sendRequest(Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsResponse;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsResponse;->getStatus()I

    move-result v1

    invoke-static {v1}, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->getIotHubStatusCode(I)Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    move-result-object v1

    .line 29
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->log:Lk/f/b;

    const-string v3, "Iot Hub responded to http message for iot hub message ({}) with status code {}"

    invoke-interface {v2, v3, p1, v1}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    new-instance v2, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getBytes()[B

    move-result-object v5

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageType()Lcom/microsoft/azure/sdk/iot/device/MessageType;

    move-result-object v6

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getCorrelationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getProperties()[Lcom/microsoft/azure/sdk/iot/device/MessageProperty;

    move-result-object v9

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;-><init>([BLcom/microsoft/azure/sdk/iot/device/MessageType;Ljava/lang/String;Ljava/lang/String;[Lcom/microsoft/azure/sdk/iot/device/MessageProperty;)V

    .line 31
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    if-eq v1, p1, :cond_7

    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK_EMPTY:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    if-ne v1, p1, :cond_6

    goto :goto_2

    .line 32
    :cond_6
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

    const-string v3, ""

    invoke-static {v1, v3}, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->getConnectionStatusException(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/exceptions/IotHubServiceException;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;->onMessageSent(Lcom/microsoft/azure/sdk/iot/device/Message;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 33
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;->onMessageSent(Lcom/microsoft/azure/sdk/iot/device/Message;Ljava/lang/Throwable;)V

    .line 34
    :goto_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sendMessageResult(Lcom/microsoft/azure/sdk/iot/device/Message;Lcom/microsoft/azure/sdk/iot/device/IotHubMessageResult;)Z
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->HTTPS_CONNECTION_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->log:Lk/f/b;

    const-string v2, "Checking if http layer can correlate the received iot hub message to a received etag {}"

    invoke-interface {v1, v2, p1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->messageToETagMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 4
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->log:Lk/f/b;

    const-string v3, "Http layer correlated the received iot hub message ({}) to etag {}"

    invoke-interface {v2, v3, p1, v1}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->log:Lk/f/b;

    const-string v3, "Sending ACK with result {} for etag {}"

    invoke-interface {v2, v3, p2, v1}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v3}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https://"

    .line 8
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v6, :cond_1

    const/4 v7, 0x2

    if-ne p2, v7, :cond_0

    .line 9
    new-instance p2, Lcom/microsoft/azure/sdk/iot/device/net/IotHubRejectUri;

    iget-object v7, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    .line 10
    invoke-virtual {v7}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getModuleId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p2, v2, v3, v1, v7}, Lcom/microsoft/azure/sdk/iot/device/net/IotHubRejectUri;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/microsoft/azure/sdk/iot/device/net/IotHubRejectUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {p2}, Lcom/microsoft/azure/sdk/iot/device/net/IotHubRejectUri;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-direct {p0, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->buildUrlFromString(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v8

    .line 14
    new-instance v2, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;

    sget-object v9, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;->DELETE:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;

    new-array v10, v5, [B

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v3}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getProductInfo()Lcom/microsoft/azure/sdk/iot/device/ProductInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/azure/sdk/iot/device/ProductInfo;->getUserAgentString()Ljava/lang/String;

    move-result-object v11

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v3}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getProxySettings()Lcom/microsoft/azure/sdk/iot/device/ProxySettings;

    move-result-object v12

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;-><init>(Ljava/net/URL;Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;[BLjava/lang/String;Lcom/microsoft/azure/sdk/iot/device/ProxySettings;)V

    goto/16 :goto_0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid message result specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_1
    new-instance p2, Lcom/microsoft/azure/sdk/iot/device/net/IotHubAbandonUri;

    iget-object v7, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    .line 17
    invoke-virtual {v7}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getModuleId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p2, v2, v3, v1, v7}, Lcom/microsoft/azure/sdk/iot/device/net/IotHubAbandonUri;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/microsoft/azure/sdk/iot/device/net/IotHubAbandonUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-virtual {p2}, Lcom/microsoft/azure/sdk/iot/device/net/IotHubAbandonUri;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 20
    invoke-direct {p0, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->buildUrlFromString(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v8

    .line 21
    new-instance v2, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;

    sget-object v9, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;->POST:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;

    new-array v10, v6, [B

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v3}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getProductInfo()Lcom/microsoft/azure/sdk/iot/device/ProductInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/azure/sdk/iot/device/ProductInfo;->getUserAgentString()Ljava/lang/String;

    move-result-object v11

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v3}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getProxySettings()Lcom/microsoft/azure/sdk/iot/device/ProxySettings;

    move-result-object v12

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;-><init>(Ljava/net/URL;Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;[BLjava/lang/String;Lcom/microsoft/azure/sdk/iot/device/ProxySettings;)V

    goto :goto_0

    .line 22
    :cond_2
    new-instance p2, Lcom/microsoft/azure/sdk/iot/device/net/IotHubCompleteUri;

    iget-object v7, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    .line 23
    invoke-virtual {v7}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getModuleId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p2, v2, v3, v1, v7}, Lcom/microsoft/azure/sdk/iot/device/net/IotHubCompleteUri;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/microsoft/azure/sdk/iot/device/net/IotHubCompleteUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-virtual {p2}, Lcom/microsoft/azure/sdk/iot/device/net/IotHubCompleteUri;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 26
    invoke-direct {p0, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->buildUrlFromString(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v8

    .line 27
    new-instance v2, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;

    sget-object v9, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;->DELETE:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;

    new-array v10, v5, [B

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v3}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getProductInfo()Lcom/microsoft/azure/sdk/iot/device/ProductInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/azure/sdk/iot/device/ProductInfo;->getUserAgentString()Ljava/lang/String;

    move-result-object v11

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v3}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getProxySettings()Lcom/microsoft/azure/sdk/iot/device/ProxySettings;

    move-result-object v12

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;-><init>(Ljava/net/URL;Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;[BLjava/lang/String;Lcom/microsoft/azure/sdk/iot/device/ProxySettings;)V

    :goto_0
    const-string v3, "iothub-to"

    .line 28
    invoke-virtual {v2, v3, p2}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;

    move-result-object p2

    const-string v3, "if-match"

    .line 29
    invoke-virtual {p2, v3, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;

    .line 30
    invoke-direct {p0, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->sendRequest(Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsResponse;

    move-result-object p2

    .line 31
    invoke-virtual {p2}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsResponse;->getStatus()I

    move-result p2

    invoke-static {p2}, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->getIotHubStatusCode(I)Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    move-result-object p2

    .line 32
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK_EMPTY:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    if-eq p2, v2, :cond_4

    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    if-ne p2, v2, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, "Sending message result failed with status %s.%n"

    new-array v1, v6, [Ljava/lang/Object;

    .line 33
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v5

    .line 34
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 35
    new-instance p2, Lcom/microsoft/azure/sdk/iot/device/exceptions/IotHubServiceException;

    invoke-direct {p2, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/IotHubServiceException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 36
    :cond_4
    :goto_1
    sget-object p2, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->log:Lk/f/b;

    const-string v2, "Successfully sent ack for http message with etag {}. Removing it from saved list of outstanding messages to acknowledge"

    invoke-interface {p2, v2, v1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->messageToETagMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    monitor-exit v0

    return v6

    .line 39
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot send a message result before a message is received or if the result was already sent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setListener(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Listener cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
