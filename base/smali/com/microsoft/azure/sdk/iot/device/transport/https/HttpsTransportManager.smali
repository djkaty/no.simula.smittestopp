.class public Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportManager;


# static fields
.field public static final DeviceMethodUriFormat:Ljava/lang/String; = "/twins/%s/methods"

.field public static final MODULE_ID:Ljava/lang/String; = "x-ms-edge-moduleId"

.field public static final ModuleMethodUriFormat:Ljava/lang/String; = "/twins/%s/modules/%s/methods"

.field public static final PATH_FILES_STRING:Ljava/lang/String; = "/files"

.field public static final PATH_NOTIFICATIONS_STRING:Ljava/lang/String; = "/files/notifications"


# instance fields
.field public config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

.field public httpsIotHubConnection:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "config is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getDeviceMethodUri(Ljava/lang/String;)Ljava/net/URI;
    .locals 3

    const-string v0, "UTF-8"

    .line 1
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/net/URI;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "/twins/%s/methods"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getModuleMethodUri(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    .locals 3

    const-string v0, "UTF-8"

    .line 1
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/net/URI;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const-string p0, "/twins/%s/modules/%s/methods"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private invokeMethod(Lcom/microsoft/azure/sdk/iot/device/edge/MethodRequest;Ljava/net/URI;)Lcom/microsoft/azure/sdk/iot/device/edge/MethodResult;
    .locals 2

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/edge/MethodRequest;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;-><init>(Ljava/lang/String;)V

    .line 7
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/IotHubMethod;->POST:Lcom/microsoft/azure/sdk/iot/device/IotHubMethod;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setIotHubMethod(Lcom/microsoft/azure/sdk/iot/device/IotHubMethod;)V

    .line 8
    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setUriPath(Ljava/lang/String;)V

    .line 9
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getModuleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "x-ms-edge-moduleId"

    invoke-virtual {p1, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;->send(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;Ljava/util/Map;)Lcom/microsoft/azure/sdk/iot/device/ResponseMessage;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/ResponseMessage;->getStatus()Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    move-result-object p2

    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    if-eq p2, v0, :cond_1

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/ResponseMessage;->getStatus()Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    move-result-object p2

    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK_EMPTY:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/ResponseMessage;->getStatus()Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    move-result-object p2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {p2, v0}, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->getConnectionStatusException(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/exceptions/IotHubServiceException;

    move-result-object p1

    .line 14
    throw p1

    .line 15
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getBytes()[B

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    .line 16
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/edge/MethodResult;

    invoke-direct {p1, p2}, Lcom/microsoft/azure/sdk/iot/device/edge/MethodResult;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "uri cannot be null or be an empty path"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "direct method request cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;->httpsIotHubConnection:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;

    return-void
.end method

.method public invokeMethod(Lcom/microsoft/azure/sdk/iot/device/edge/MethodRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/edge/MethodResult;
    .locals 1

    if-eqz p3, :cond_1

    .line 1
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p2, p3}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;->getModuleMethodUri(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;->getDeviceMethodUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    .line 4
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;->invokeMethod(Lcom/microsoft/azure/sdk/iot/device/edge/MethodRequest;Ljava/net/URI;)Lcom/microsoft/azure/sdk/iot/device/edge/MethodResult;

    move-result-object p1

    return-object p1
.end method

.method public open()V
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-direct {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;->httpsIotHubConnection:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;

    return-void
.end method

.method public open([Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-direct {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;->httpsIotHubConnection:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;

    return-void
.end method

.method public receive()Lcom/microsoft/azure/sdk/iot/device/Message;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;->httpsIotHubConnection:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->receiveMessage()Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    move-result-object v0
    :try_end_0
    .catch Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public send(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;Ljava/util/Map;)Lcom/microsoft/azure/sdk/iot/device/ResponseMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/azure/sdk/iot/device/ResponseMessage;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->parseHttpsJsonMessage(Lcom/microsoft/azure/sdk/iot/device/Message;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getIotHubMethod()Lcom/microsoft/azure/sdk/iot/device/IotHubMethod;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getUriPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getIotHubMethod()Lcom/microsoft/azure/sdk/iot/device/IotHubMethod;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;->POST:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;

    goto :goto_0

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown IoT Hub type "

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getIotHubMethod()Lcom/microsoft/azure/sdk/iot/device/IotHubMethod;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6
    :cond_1
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;->GET:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;

    .line 7
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getUriPath()Ljava/lang/String;

    move-result-object p1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;->httpsIotHubConnection:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;

    invoke-virtual {v2, v0, v1, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->sendHttpsMessage(Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMessage;Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;Ljava/lang/String;Ljava/util/Map;)Lcom/microsoft/azure/sdk/iot/device/ResponseMessage;

    move-result-object p1
    :try_end_0
    .catch Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 9
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method or path is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendFileUploadMessage(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;)Lcom/microsoft/azure/sdk/iot/device/ResponseMessage;
    .locals 5

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getModuleId()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, "/files"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;->toStringWithoutApiVersion()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setUriPath(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;->send(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;Ljava/util/Map;)Lcom/microsoft/azure/sdk/iot/device/ResponseMessage;

    move-result-object p1

    return-object p1
.end method

.method public sendFileUploadNotification(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;)Lcom/microsoft/azure/sdk/iot/device/ResponseMessage;
    .locals 5

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getModuleId()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, "/files/notifications"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;->toStringWithoutApiVersion()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setUriPath(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;->send(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;Ljava/util/Map;)Lcom/microsoft/azure/sdk/iot/device/ResponseMessage;

    move-result-object p1

    return-object p1
.end method
