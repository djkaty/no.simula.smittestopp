.class public final Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;
.super Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection$ReactorRunner;
    }
.end annotation


# static fields
.field public static final AMQP_PORT:I = 0x1627

.field public static final AMQP_WEB_SOCKET_PORT:I = 0x1bb

.field public static final APPLICATION_PROPERTY_STATUS_CODE:Ljava/lang/String; = "status-code"

.field public static final APPLICATION_PROPERTY_STATUS_DESCRIPTION:Ljava/lang/String; = "status-description"

.field public static final CBS_LINK_COUNT:I = 0x2

.field public static final MAX_MESSAGES_TO_SEND_PER_CALLBACK:I = 0x3e8

.field public static final MAX_WAIT_TO_CLOSE_CONNECTION:I = 0xea60

.field public static final MAX_WAIT_TO_OPEN_CBS_LINKS:I = 0x4e20

.field public static final MAX_WAIT_TO_OPEN_WORKER_LINKS:I = 0xea60

.field public static final MAX_WAIT_TO_TERMINATE_EXECUTOR:I = 0x1e

.field public static final REACTOR_COUNT:I = 0x1

.field public static final SEND_MESSAGES_PERIOD_MILLIS:I = 0x32

.field public static final WEBSOCKET_PORT:I = 0x1bb

.field public static final WEBSOCKET_QUERY:Ljava/lang/String; = "iothub-no-client-cert=true"

.field public static final WEB_SOCKET_PATH:Ljava/lang/String; = "/$iothub/websocket"

.field public static final WEB_SOCKET_SUB_PROTOCOL:Ljava/lang/String; = "AMQPWSB10"

.field public static final log:Lk/f/b;


# instance fields
.field public amqpsSessionManager:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;

.field public authenticationLinkOpenLatch:Ljava/util/concurrent/CountDownLatch;

.field public cbsLinkAuthorizedLatch:Ljava/util/concurrent/CountDownLatch;

.field public closeReactorLatch:Ljava/util/concurrent/CountDownLatch;

.field public connection:Lk/a/b/a/d/c;

.field public connectionId:Ljava/lang/String;

.field public deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

.field public executorService:Ljava/util/concurrent/ExecutorService;

.field public hostName:Ljava/lang/String;

.field public final inProgressMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/microsoft/azure/sdk/iot/device/Message;",
            ">;"
        }
    .end annotation
.end field

.field public isAuthenticated:Z

.field public listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

.field public messagesToSend:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/microsoft/azure/sdk/iot/device/Message;",
            ">;"
        }
    .end annotation
.end field

.field public reactor:Lk/a/b/a/g/d;

.field public reconnectionScheduled:Z

.field public sasTokenRenewalHandler:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpSasTokenRenewalHandler;

.field public savedException:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

.field public final sendAckMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/microsoft/azure/sdk/iot/device/Message;",
            "Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;",
            ">;"
        }
    .end annotation
.end field

.field public state:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

.field public final useWebSockets:Ljava/lang/Boolean;

.field public workerLinksOpenLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->inProgressMessages:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->sendAckMessages:Ljava/util/Map;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->reconnectionScheduled:Z

    .line 5
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->messagesToSend:Ljava/util/Queue;

    if-eqz p1, :cond_5

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getIotHubHostname()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getIotHubHostname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getIotHubName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getIotHubName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    .line 10
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->isUseWebsocket()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->useWebSockets:Ljava/lang/Boolean;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/16 v1, 0x1bb

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "%s:%d"

    const/16 v5, 0x1627

    if-eqz p1, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    .line 12
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->chooseHostname()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->hostName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-array p1, v3, [Ljava/lang/Object;

    .line 13
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->chooseHostname()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->hostName:Ljava/lang/String;

    .line 14
    :goto_0
    new-instance p1, Lk/a/b/a/g/c;

    invoke-direct {p1}, Lk/a/b/a/g/c;-><init>()V

    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->add(Lk/a/b/a/d/l;)V

    .line 15
    new-instance p1, Lk/a/b/a/g/b;

    invoke-direct {p1}, Lk/a/b/a/g/b;-><init>()V

    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->add(Lk/a/b/a/d/l;)V

    .line 16
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->DISCONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->state:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    .line 17
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-direct {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->amqpsSessionManager:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;

    .line 18
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->useWebSockets:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x1627

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "AmqpsIotHubConnection object is created successfully and will use port {}"

    invoke-interface {p1, v1, v0}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 19
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hubName cannot be null or empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "deviceID cannot be null or empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hostName cannot be null or empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The DeviceClientConfig cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addProxyLayer(Lk/a/b/a/d/c0;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getProxySettings()Lcom/microsoft/azure/sdk/iot/device/ProxySettings;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/ProxySettings;->getUsername()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/ProxySettings;->getPassword()[C

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v2, "Adding proxy username and password to amqp proxy configuration"

    invoke-interface {v1, v2}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 4
    new-instance v1, Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;

    sget-object v2, Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;->BASIC:Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/ProxySettings;->getProxy()Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/ProxySettings;->getUsername()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/ProxySettings;->getPassword()[C

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;-><init>(Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-direct {v0, v1}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;-><init>(Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v1, "No proxy username and password will be used amqp proxy configuration"

    invoke-interface {v0, v1}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-direct {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;-><init>()V

    .line 8
    :goto_0
    new-instance v1, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyHandlerImpl;

    invoke-direct {v1}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyHandlerImpl;-><init>()V

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, p2, v2, v1, p1}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->configure(Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/azure/proton/transport/proxy/ProxyHandler;Lk/a/b/a/d/c0;)V

    .line 10
    check-cast p1, Lk/a/b/a/d/g0/c0;

    invoke-interface {p1, v0}, Lk/a/b/a/d/g0/c0;->a(Lk/a/b/a/d/g0/d0;)V

    return-void
.end method

.method private addWebsocketLayer(Lk/a/b/a/d/c0;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;

    invoke-direct {v8}, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->hostName:Ljava/lang/String;

    const-string v2, "/$iothub/websocket"

    const-string v3, "iothub-no-client-cert=true"

    const/16 v4, 0x1bb

    const-string v5, "AMQPWSB10"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->configure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler;)V

    .line 3
    check-cast p1, Lk/a/b/a/d/g0/c0;

    invoke-interface {p1, v8}, Lk/a/b/a/d/g0/c0;->a(Lk/a/b/a/d/g0/d0;)V

    return-void
.end method

.method private chooseHostname()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getGatewayHostname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v2, "Gateway hostname was present in config, connecting to gateway rather than directly to hub"

    invoke-interface {v1, v2}, Lk/f/b;->b(Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v1, "No gateway hostname was present in config, connecting directly to hub"

    invoke-interface {v0, v1}, Lk/f/b;->b(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getIotHubHostname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private closeAsync()V
    .locals 2

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v1, "CloseAsync called on amqp connection"

    invoke-interface {v0, v1}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->amqpsSessionManager:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->closeNow()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->connection:Lk/a/b/a/d/c;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lk/a/b/a/d/f;->close()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->reactor:Lk/a/b/a/g/d;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0}, Lk/a/b/a/g/d;->stop()V

    .line 8
    :cond_2
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v1, "Proton reactor has been stopped"

    invoke-interface {v0, v1}, Lk/f/b;->e(Ljava/lang/String;)V

    return-void
.end method

.method private closeConnectionWithException(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p2}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->setRetryable(Z)V

    .line 3
    sget-object p2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    invoke-interface {p2, p1, v0}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->close()V

    .line 5
    throw v0
.end method

.method private createReactor()Lk/a/b/a/g/d;
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getAuthenticationType()Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;->X509_CERTIFICATE:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lk/a/b/a/g/f;

    invoke-direct {v0}, Lk/a/b/a/g/f;-><init>()V

    .line 3
    iput-boolean v2, v0, Lk/a/b/a/g/f;->a:Z

    new-array v1, v3, [Lk/a/b/a/d/l;

    aput-object p0, v1, v2

    .line 4
    invoke-static {v0, v1}, Le/c/a/a/b/l/c;->a(Lk/a/b/a/g/f;[Lk/a/b/a/d/l;)Lk/a/b/a/g/d;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, v3, [Lk/a/b/a/d/l;

    aput-object p0, v0, v2

    .line 5
    new-instance v1, Lk/a/b/a/g/i/d;

    .line 6
    new-instance v4, Lk/a/b/a/g/i/c;

    invoke-direct {v4}, Lk/a/b/a/g/i/c;-><init>()V

    new-instance v5, Lk/a/b/a/g/f;

    invoke-direct {v5}, Lk/a/b/a/g/f;-><init>()V

    invoke-direct {v1, v4, v5}, Lk/a/b/a/g/i/d;-><init>(Lk/a/b/a/g/i/c;Lk/a/b/a/g/f;)V

    :goto_0
    if-ge v2, v3, :cond_1

    .line 7
    aget-object v4, v0, v2

    .line 8
    invoke-interface {v1}, Lk/a/b/a/g/d;->F()Lk/a/b/a/d/l;

    move-result-object v5

    invoke-interface {v5, v4}, Lk/a/b/a/d/l;->add(Lk/a/b/a/d/l;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    const-string v2, "Could not create Proton reactor"

    invoke-direct {v1, v2, v0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private executorServicesCleanup()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v1, "Shutdown of executor service has started"

    invoke-interface {v0, v1}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 6
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v2, "Pool did not terminate"

    invoke-interface {v1, v2}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 8
    :cond_0
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->executorService:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v1, "Shutdown of executor service completed"

    invoke-interface {v0, v1}, Lk/f/b;->e(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v3, "Interrupted while cleaning up executor services"

    invoke-interface {v2, v3, v1}, Lk/f/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 12
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 13
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    const-string v2, "Waited too long for the connection to close."

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private getErrorConditionFromEndpoint(Lk/a/b/a/d/f;)Lk/a/b/a/b/n/j;
    .locals 1

    .line 1
    invoke-interface {p1}, Lk/a/b/a/d/f;->L()Lk/a/b/a/b/n/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lk/a/b/a/d/f;->L()Lk/a/b/a/b/n/j;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lk/a/b/a/b/n/j;->a:Lk/a/b/a/b/f;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lk/a/b/a/d/f;->L()Lk/a/b/a/b/n/j;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lk/a/b/a/d/f;->H()Lk/a/b/a/b/n/j;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getTransportExceptionFromEvent(Lk/a/b/a/d/h;)Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Lk/a/b/a/d/f;

    .line 1
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->o()Lk/a/b/a/d/x;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->i()Lk/a/b/a/d/t;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->U()Lk/a/b/a/d/c;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->l()Lk/a/b/a/d/c0;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->T()Lk/a/b/a/d/y;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->G()Lk/a/b/a/d/n;

    move-result-object p1

    const/4 v1, 0x5

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->getTransportExceptionFromProtonEndpoints([Lk/a/b/a/d/f;)Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    const-string v0, "Unknown transport exception occurred"

    invoke-direct {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, v2}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->setRetryable(Z)V

    :cond_0
    return-object p1
.end method

.method private varargs getTransportExceptionFromProtonEndpoints([Lk/a/b/a/d/f;)Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-direct {p0, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->getErrorConditionFromEndpoint(Lk/a/b/a/d/f;)Lk/a/b/a/b/n/j;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3
    iget-object v3, v2, Lk/a/b/a/b/n/j;->a:Lk/a/b/a/b/f;

    if-nez v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object p1, v3, Lk/a/b/a/b/f;->x:Ljava/lang/String;

    .line 5
    iget-object v0, v2, Lk/a/b/a/b/n/j;->b:Ljava/lang/String;

    .line 6
    invoke-static {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsExceptionTranslator;->convertToAmqpException(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private handleCbsMessage(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;)V
    .locals 6

    const-string v0, "status-description"

    .line 1
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    invoke-virtual {p1}, Lk/a/b/a/f/d/a;->getCorrelationId()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Received message with correlation id {} was a cbs message, handling..."

    invoke-interface {v1, v3, v2}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lk/a/b/a/f/d/a;->getApplicationProperties()Lk/a/b/a/b/k/d;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lk/a/b/a/f/d/a;->getApplicationProperties()Lk/a/b/a/b/k/d;

    move-result-object v1

    .line 3
    iget-object v1, v1, Lk/a/b/a/b/k/d;->a:Ljava/util/Map;

    if-eqz v1, :cond_5

    .line 4
    invoke-virtual {p1}, Lk/a/b/a/f/d/a;->getApplicationProperties()Lk/a/b/a/b/k/d;

    move-result-object p1

    .line 5
    iget-object p1, p1, Lk/a/b/a/b/k/d;->a:Ljava/util/Map;

    const-string v1, "status-code"

    .line 6
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 9
    invoke-static {v2}, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->getIotHubStatusCode(I)Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    move-result-object v2

    .line 10
    sget-object v3, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK_EMPTY:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    if-eq v2, v3, :cond_1

    const-string v3, ""

    .line 11
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 12
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    .line 13
    :cond_0
    invoke-static {v2, v3}, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->getConnectionStatusException(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/exceptions/IotHubServiceException;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->savedException:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    .line 14
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v2, "CBS authentication was rejected by service"

    invoke-interface {v0, v2, p1}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->cbsLinkAuthorizedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->releaseLatch(Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_1

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->cbsLinkAuthorizedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 17
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->state:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->CONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    if-eq p1, v0, :cond_2

    .line 18
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v0, "CBS link received 200, one connection has been authorized"

    invoke-interface {p1, v0}, Lk/f/b;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_2
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v0, "CBS link received 200, one connection has been re-authorized"

    invoke-interface {p1, v0}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 20
    :goto_0
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->cbsLinkAuthorizedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-gtz p1, :cond_6

    .line 21
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->state:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->CONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    if-eq p1, v0, :cond_3

    .line 22
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v0, "All CBS links have received a 200, opening worker links"

    invoke-interface {p1, v0}, Lk/f/b;->b(Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->isAuthenticated:Z

    .line 24
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->amqpsSessionManager:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->openWorkerLinks()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 25
    :catch_0
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    const-string v0, "Encountered message from service with invalid status code value"

    invoke-direct {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->savedException:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    .line 26
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v0, "status code received from service on cbs link could not be parsed to integer {}"

    invoke-interface {p1, v0, v1}, Lk/f/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 27
    :cond_4
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v0, "CBS message had no status code application property, so it was ignored"

    invoke-interface {p1, v0}, Lk/f/b;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :cond_5
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v0, "CBS message had no application properties, so it was ignored"

    invoke-interface {p1, v0}, Lk/f/b;->d(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private handleCloudToDeviceMessage(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    invoke-virtual {p1}, Lk/a/b/a/f/d/a;->getCorrelationId()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Handling a received message with amqp message correlation id {}"

    invoke-interface {v0, v2, v1}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;->getDeviceClientConfig()Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->convertFromProton(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertFromProtonReturnValue;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;->getAmqpsMessageType()Lcom/microsoft/azure/sdk/iot/device/MessageType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/MessageType;->CBS_AUTHENTICATION:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    if-ne v0, v1, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->handleCbsMessage(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;)V

    return-void

    .line 5
    :cond_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    invoke-virtual {p1}, Lk/a/b/a/f/d/a;->getCorrelationId()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "No handler found for received message with amqp correlation id {}, ignoring it"

    invoke-interface {v0, v1, p1}, Lk/f/b;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertFromProtonReturnValue;->getMessageCallback()Lcom/microsoft/azure/sdk/iot/device/MessageCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertFromProtonReturnValue;->getMessage()Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertFromProtonReturnValue;->getMessageCallback()Lcom/microsoft/azure/sdk/iot/device/MessageCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setMessageCallback(Lcom/microsoft/azure/sdk/iot/device/MessageCallback;)V

    .line 9
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertFromProtonReturnValue;->getMessageContext()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setMessageCallbackContext(Ljava/lang/Object;)V

    .line 10
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v2, "Adding received message to the amqp message map to be acknowledged later ({})"

    invoke-interface {v0, v2, v1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->sendAckMessages:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;->onMessageReceived(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;Ljava/lang/Throwable;)V

    return-void

    .line 13
    :cond_2
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v0, "Callback is not defined therefore response to IoT Hub cannot be generated. All received messages will be removed from receive message queue"

    invoke-interface {p1, v0}, Lk/f/b;->d(Ljava/lang/String;)V

    .line 14
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    const-string v0, "callback is not defined"

    invoke-direct {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initializeStateLatches(I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->closeReactorLatch:Ljava/util/concurrent/CountDownLatch;

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getAuthenticationProvider()Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;

    move-result-object v0

    instance-of v0, v0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Initializing authentication link latch count to {}"

    invoke-interface {v0, v3, v2}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->authenticationLinkOpenLatch:Ljava/util/concurrent/CountDownLatch;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v1, "Initializing authentication link latch count to 0"

    invoke-interface {v0, v1}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->authenticationLinkOpenLatch:Ljava/util/concurrent/CountDownLatch;

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->amqpsSessionManager:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->getExpectedWorkerLinkCount()I

    move-result v0

    .line 8
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->workerLinksOpenLatch:Ljava/util/concurrent/CountDownLatch;

    .line 9
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Initializing worker link latch count to {}"

    invoke-interface {v1, v2, v0}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->cbsLinkAuthorizedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 11
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "Initializing authentication links authorized latch count to {}"

    invoke-interface {v0, v1, p1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private openAsync()V
    .locals 4

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v1, "OpenAsnyc called for AMQP connection"

    invoke-interface {v0, v1}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->reactor:Lk/a/b/a/g/d;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->createReactor()Lk/a/b/a/g/d;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->reactor:Lk/a/b/a/g/d;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 5
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 6
    :cond_1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IotHubReactor;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->reactor:Lk/a/b/a/g/d;

    invoke-direct {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IotHubReactor;-><init>(Lk/a/b/a/g/d;)V

    .line 7
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection$ReactorRunner;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->connectionId:Ljava/lang/String;

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection$ReactorRunner;-><init>(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IotHubReactor;Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private processMessage(Lcom/microsoft/azure/sdk/iot/device/Message;)I
    .locals 4

    const/4 v0, -0x1

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->convertToProton(Lcom/microsoft/azure/sdk/iot/device/Message;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertToProtonReturnValue;

    move-result-object v1
    :try_end_0
    .catch Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_0

    .line 2
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v2, "No handler found for message conversion! Abandoning message ({})"

    invoke-interface {v1, v2, p1}, Lk/f/b;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 3
    :cond_0
    :try_start_1
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v3, "Sending message over amqp ({})"

    invoke-interface {v2, v3, p1}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getConnectionDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->sendMessage(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertToProtonReturnValue;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1
    .catch Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException; {:try_start_1 .. :try_end_1} :catch_0

    if-eq v1, v0, :cond_1

    .line 5
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v2, "Amqp message was sent, waiting for ack ({})"

    invoke-interface {v0, v2, p1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->inProgressMessages:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Adding amqp delivery tag {} to in progress messages ({})"

    invoke-interface {v0, v3, v2, p1}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v2, "Amqp message failed to send, adding it back to messages to send queue ({})"

    invoke-interface {v0, v2, p1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->messagesToSend:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_0
    return v1

    :catch_0
    move-exception v1

    .line 10
    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->isRetryable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v3, "Encountered exception while sending amqp message, retrying ({})"

    invoke-interface {v2, v3, p1, v1}, Lk/f/b;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->messagesToSend:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_2
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v3, "Encountered non-retryable exception while sending amqp message, abandoning message ({})"

    invoke-interface {v2, v3, p1, v1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return v0

    :catch_1
    move-exception v1

    .line 14
    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->isRetryable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 15
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v3, "Encountered exception while converting message to proton message, retrying ({})"

    invoke-interface {v2, v3, p1, v1}, Lk/f/b;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->messagesToSend:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 17
    :cond_3
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v3, "Encountered non-retryable exception while converting message to proton message, not retryable so discarding message ({})"

    invoke-interface {v2, v3, p1, v1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    return v0
.end method

.method private processOutgoingMessages()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->messagesToSend:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/sdk/iot/device/Message;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/16 v3, 0x3e8

    if-ge v1, v3, :cond_1

    if-ltz v2, :cond_1

    .line 2
    invoke-direct {p0, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->subscriptionChangeHandler(Lcom/microsoft/azure/sdk/iot/device/Message;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 3
    invoke-direct {p0, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->processMessage(Lcom/microsoft/azure/sdk/iot/device/Message;)I

    move-result v0

    move v2, v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->messagesToSend:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/sdk/iot/device/Message;

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 5
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->messagesToSend:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private releaseLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    int-to-long v1, v0

    .line 1
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private scheduleReconnection(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v1, "Amqp connection was closed, creating a thread to notify transport layer"

    invoke-interface {v0, v1, p1}, Lk/f/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->reconnectionScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->reconnectionScheduled:Z

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->connectionId:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/ReconnectionNotifier;->notifyDisconnectAsync(Ljava/lang/Throwable;Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private sendMessage(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertToProtonReturnValue;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->state:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->DISCONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    if-eq v0, v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertToProtonReturnValue;->getMessageImpl()Lk/a/b/a/f/d/a;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertToProtonReturnValue;->getMessageType()Lcom/microsoft/azure/sdk/iot/device/MessageType;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->amqpsSessionManager:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;

    invoke-virtual {v1, v0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->sendMessage(Lk/a/b/a/f/a;Lcom/microsoft/azure/sdk/iot/device/MessageType;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string p2, "Amqp connection is disconnected, rejecting attempt to send message with delivery tag -1"

    invoke-interface {p1, p2}, Lk/f/b;->e(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private subscriptionChangeHandler(Lcom/microsoft/azure/sdk/iot/device/Message;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageType()Lcom/microsoft/azure/sdk/iot/device/MessageType;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageType()Lcom/microsoft/azure/sdk/iot/device/MessageType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getDeviceOperationType()Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    move-result-object v2

    sget-object v4, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_TWIN_UNSUBSCRIBE_DESIRED_PROPERTIES_REQUEST:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    if-ne v2, v4, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getDeviceOperationType()Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    move-result-object v0

    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_TWIN_SUBSCRIBE_DESIRED_PROPERTIES_REQUEST:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    if-ne v0, v2, :cond_3

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->amqpsSessionManager:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;

    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_TWIN:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getConnectionDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->subscribeDeviceToMessageType(Lcom/microsoft/azure/sdk/iot/device/MessageType;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

    invoke-interface {v0, p1, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;->onMessageSent(Lcom/microsoft/azure/sdk/iot/device/Message;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 7
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getDeviceOperationType()Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    move-result-object v0

    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_METHOD_SUBSCRIBE_REQUEST:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    if-ne v0, v2, :cond_3

    .line 8
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->amqpsSessionManager:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;

    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_METHODS:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getConnectionDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->subscribeDeviceToMessageType(Lcom/microsoft/azure/sdk/iot/device/MessageType;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

    invoke-interface {v0, p1, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;->onMessageSent(Lcom/microsoft/azure/sdk/iot/device/Message;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method


# virtual methods
.method public addDeviceOperationSession(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->amqpsSessionManager:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->addDeviceOperationSession(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V

    .line 2
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v0, "Added device to session list"

    invoke-interface {p1, v0}, Lk/f/b;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public authenticate()V
    .locals 2

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v1, "Authenticate called on amqp connection"

    invoke-interface {v0, v1}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->amqpsSessionManager:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->authenticate()V

    return-void
.end method

.method public close()V
    .locals 4

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v1, "Closing amqp connection..."

    invoke-interface {v0, v1}, Lk/f/b;->b(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->closeAsync()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->closeReactorLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/32 v1, 0xea60

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->executorServicesCleanup()V

    .line 5
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v1, "Amqp connection closed successfully"

    invoke-interface {v0, v1}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->DISCONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->state:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    return-void

    :catch_0
    move-exception v0

    .line 7
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v2, "Interrupted while closing proton reactor"

    invoke-interface {v1, v2, v0}, Lk/f/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    const-string v2, "Waited too long for the connection to close."

    invoke-direct {v1, v2, v0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public convertFromProton(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertFromProtonReturnValue;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->amqpsSessionManager:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->convertFromProton(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertFromProtonReturnValue;

    move-result-object p1

    return-object p1
.end method

.method public convertToProton(Lcom/microsoft/azure/sdk/iot/device/Message;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertToProtonReturnValue;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->amqpsSessionManager:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->convertToProton(Lcom/microsoft/azure/sdk/iot/device/Message;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertToProtonReturnValue;

    move-result-object p1

    return-object p1
.end method

.method public getConnectionId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->connectionId:Ljava/lang/String;

    return-object v0
.end method

.method public onConnectionBound(Lk/a/b/a/d/h;)V
    .locals 4

    .line 1
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->U()Lk/a/b/a/d/c;

    move-result-object v0

    invoke-interface {v0}, Lk/a/b/a/d/c;->l()Lk/a/b/a/d/c0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->useWebSockets:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->addWebsocketLayer(Lk/a/b/a/d/c0;)V

    .line 4
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->amqpsSessionManager:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;

    invoke-virtual {v1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->onConnectionBound(Lk/a/b/a/d/c0;)V
    :try_end_0
    .catch Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    iput-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->savedException:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    .line 6
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v3, "Encountered an exception while reacting to onConnectionBound event within amqp session"

    invoke-interface {v2, v3, v1}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getProxySettings()Lcom/microsoft/azure/sdk/iot/device/ProxySettings;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v2, "Proxy settings set, adding amqp layer for proxy"

    invoke-interface {v1, v2}, Lk/f/b;->b(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->U()Lk/a/b/a/d/c;

    move-result-object p1

    invoke-interface {p1}, Lk/a/b/a/d/c;->f()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->addProxyLayer(Lk/a/b/a/d/c0;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onConnectionInit(Lk/a/b/a/d/h;)V
    .locals 2

    .line 1
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->U()Lk/a/b/a/d/c;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->connection:Lk/a/b/a/d/c;

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->hostName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lk/a/b/a/d/c;->c(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->connection:Lk/a/b/a/d/c;

    invoke-interface {p1}, Lk/a/b/a/d/f;->open()V

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->amqpsSessionManager:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->connection:Lk/a/b/a/d/c;

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->onConnectionInit(Lk/a/b/a/d/c;)V
    :try_end_0
    .catch Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->savedException:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    .line 6
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v1, "Encountered an exception while reacting to onConnectionInit within amqp session"

    invoke-interface {v0, v1, p1}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onConnectionUnbound(Lk/a/b/a/d/h;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v0, "onConnectionUnbound event fired by proton, setting AMQP connection state to DISCONNECTED"

    invoke-interface {p1, v0}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->DISCONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->state:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    return-void
.end method

.method public onDelivery(Lk/a/b/a/d/h;)V
    .locals 7

    .line 1
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->G()Lk/a/b/a/d/n;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lk/a/b/a/d/x;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 3
    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->h()Lk/a/b/a/d/e;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_a

    .line 4
    invoke-interface {p1}, Lk/a/b/a/d/e;->K()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-interface {p1}, Lk/a/b/a/d/e;->e()Lk/a/b/a/b/n/e;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 5
    invoke-interface {p1}, Lk/a/b/a/d/e;->e()Lk/a/b/a/b/n/e;

    move-result-object v1

    .line 6
    new-instance v3, Ljava/lang/String;

    invoke-interface {p1}, Lk/a/b/a/d/e;->getTag()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 7
    invoke-interface {v0}, Lk/a/b/a/d/n;->A()Lk/a/b/a/b/n/q;

    move-result-object v4

    invoke-interface {v4}, Lk/a/b/a/b/n/q;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "$cbs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 8
    sget-object v4, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Amqp delivery received that acknowledged a sent message with delivery tag {}"

    invoke-interface {v4, v6, v5}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    sget-object v4, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Checking if amqp in progress messages contains delivery tag {}"

    invoke-interface {v4, v6, v5}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->inProgressMessages:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 11
    sget-object v4, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Amqp in progress messages does contain delivery tag {}"

    invoke-interface {v4, v6, v5}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->inProgressMessages:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/azure/sdk/iot/device/Message;

    .line 13
    instance-of v5, v1, Lk/a/b/a/b/k/a;

    if-eqz v5, :cond_0

    .line 14
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v3, "AMQP connection received Accepted acknowledgement for iot hub message ({})"

    invoke-interface {v1, v3, v4}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

    invoke-interface {v1, v4, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;->onMessageSent(Lcom/microsoft/azure/sdk/iot/device/Message;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 16
    :cond_0
    instance-of v5, v1, Lk/a/b/a/b/k/r;

    if-eqz v5, :cond_3

    .line 17
    sget-object v5, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v6, "AMQP connection received Rejected acknowledgement for iot hub message  ({})"

    invoke-interface {v5, v6, v4}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    check-cast v1, Lk/a/b/a/b/k/r;

    .line 19
    iget-object v1, v1, Lk/a/b/a/b/k/r;->a:Lk/a/b/a/b/n/j;

    if-eqz v1, :cond_2

    .line 20
    iget-object v4, v1, Lk/a/b/a/b/n/j;->a:Lk/a/b/a/b/f;

    if-eqz v4, :cond_2

    .line 21
    iget-object v4, v4, Lk/a/b/a/b/f;->x:Ljava/lang/String;

    .line 22
    iget-object v1, v1, Lk/a/b/a/b/n/j;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, ""

    .line 23
    :goto_1
    invoke-static {v4, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsExceptionTranslator;->convertToAmqpException(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    move-result-object v1

    goto :goto_2

    .line 24
    :cond_2
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    const-string v4, "IotHub rejected the message"

    invoke-direct {v1, v4}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;)V

    .line 25
    :goto_2
    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->inProgressMessages:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/azure/sdk/iot/device/Message;

    invoke-interface {v4, v3, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;->onMessageSent(Lcom/microsoft/azure/sdk/iot/device/Message;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 26
    :cond_3
    instance-of v5, v1, Lk/a/b/a/b/k/n;

    if-nez v5, :cond_4

    instance-of v5, v1, Lk/a/b/a/b/k/s;

    if-nez v5, :cond_4

    instance-of v1, v1, Lk/a/b/a/b/k/q;

    if-eqz v1, :cond_7

    .line 27
    :cond_4
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v5, "AMQP connection received Modified, Released or Received acknowledgement for iot hub message  ({})"

    invoke-interface {v1, v5, v4}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    const-string v4, "IotHub responded to message with Modified, Received or Released; message needs to be re-delivered"

    invoke-direct {v1, v4}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 29
    invoke-virtual {v1, v4}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->setRetryable(Z)V

    .line 30
    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->inProgressMessages:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/azure/sdk/iot/device/Message;

    invoke-interface {v4, v3, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;->onMessageSent(Lcom/microsoft/azure/sdk/iot/device/Message;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 31
    :cond_5
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Unable to correlate acknowledgement with delivery tag {} to a sent message, ignoring it"

    invoke-interface {v1, v4, v3}, Lk/f/b;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

    new-instance v3, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    const-string v4, "Received response from service about a message that this client did not send"

    invoke-direct {v3, v4}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;->onMessageReceived(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 33
    :cond_6
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v3, "Amqp delivery received that acknowledged a sent authentication message"

    invoke-interface {v1, v3}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 34
    :cond_7
    :goto_3
    invoke-interface {p1}, Lk/a/b/a/d/e;->a()V

    .line 35
    invoke-interface {v0}, Lk/a/b/a/d/n;->head()Lk/a/b/a/d/e;

    move-result-object p1

    goto/16 :goto_0

    .line 36
    :cond_8
    instance-of p1, v0, Lk/a/b/a/d/t;

    if-eqz p1, :cond_a

    .line 37
    :try_start_0
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v1, "Amqp delivery received on a receiver link, checking receiver links for delivered message"

    invoke-interface {p1, v1}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->amqpsSessionManager:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;

    invoke-interface {v0}, Lk/a/b/a/d/n;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->getMessageFromReceiverLink(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;

    move-result-object p1
    :try_end_0
    .catch Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 39
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v1, "Failed to receive message from receiver link"

    invoke-interface {v0, v1, p1}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

    invoke-interface {v0, v2, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;->onMessageReceived(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;Ljava/lang/Throwable;)V

    move-object p1, v2

    :goto_4
    if-eqz p1, :cond_9

    .line 41
    :try_start_1
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->handleCloudToDeviceMessage(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;)V
    :try_end_1
    .catch Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 42
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

    invoke-interface {v0, v2, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;->onMessageReceived(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 43
    :cond_9
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v0, "onDelivery called on receiver link, but no message was found on any receiver link"

    invoke-interface {p1, v0}, Lk/f/b;->d(Ljava/lang/String;)V

    :cond_a
    :goto_5
    return-void
.end method

.method public onLinkInit(Lk/a/b/a/d/h;)V
    .locals 1

    .line 1
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->G()Lk/a/b/a/d/n;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->amqpsSessionManager:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->onLinkInit(Lk/a/b/a/d/n;)V

    return-void
.end method

.method public onLinkRemoteClose(Lk/a/b/a/d/h;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->onLinkRemoteClose(Lk/a/b/a/d/h;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->amqpsSessionManager:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;

    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->G()Lk/a/b/a/d/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->onLinkRemoteClose(Lk/a/b/a/d/n;)V

    .line 3
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v1, "onLinkRemoteClose fired by proton, setting AMQP connection state as DISCONNECTED"

    invoke-interface {v0, v1}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->DISCONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->state:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    .line 5
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->getTransportExceptionFromEvent(Lk/a/b/a/d/h;)Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->savedException:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    .line 6
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->scheduleReconnection(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onLinkRemoteOpen(Lk/a/b/a/d/h;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->amqpsSessionManager:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;

    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->G()Lk/a/b/a/d/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->onLinkRemoteOpen(Lk/a/b/a/d/n;)Z

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->amqpsSessionManager:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->isAuthenticationOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->isAuthenticated:Z

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->authenticate()V
    :try_end_0
    .catch Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->savedException:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->G()Lk/a/b/a/d/n;

    move-result-object v0

    invoke-interface {v0}, Lk/a/b/a/d/n;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cbs-receiver-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->G()Lk/a/b/a/d/n;

    move-result-object p1

    invoke-interface {p1}, Lk/a/b/a/d/n;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cbs-sender-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v0, "workerLinksOpenLatch counted down"

    invoke-interface {p1, v0}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->workerLinksOpenLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_2

    .line 8
    :cond_2
    :goto_1
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v0, "authenticationLinkOpenLatch counted down"

    invoke-interface {p1, v0}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->authenticationLinkOpenLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_2
    return-void
.end method

.method public onReactorFinal(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->authenticationLinkOpenLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->releaseLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 2
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->workerLinksOpenLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->releaseLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 3
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->closeReactorLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->releaseLatch(Ljava/util/concurrent/CountDownLatch;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->reactor:Lk/a/b/a/g/d;

    return-void
.end method

.method public onReactorInit(Lk/a/b/a/d/h;)V
    .locals 2

    .line 1
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->b()Lk/a/b/a/g/d;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->useWebSockets:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getProxySettings()Lcom/microsoft/azure/sdk/iot/device/ProxySettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/ProxySettings;->getHostname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/ProxySettings;->getPort()I

    move-result v0

    invoke-interface {p1, v1, v0, p0}, Lk/a/b/a/g/d;->a(Ljava/lang/String;ILk/a/b/a/d/l;)Lk/a/b/a/d/c;

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->chooseHostname()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1bb

    invoke-interface {p1, v0, v1, p0}, Lk/a/b/a/g/d;->a(Ljava/lang/String;ILk/a/b/a/d/l;)Lk/a/b/a/d/c;

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->chooseHostname()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1627

    invoke-interface {p1, v0, v1, p0}, Lk/a/b/a/g/d;->a(Ljava/lang/String;ILk/a/b/a/d/l;)Lk/a/b/a/d/c;

    :goto_0
    const/16 v0, 0x32

    .line 7
    invoke-interface {p1, v0, p0}, Lk/a/b/a/g/d;->a(ILk/a/b/a/d/l;)Lk/a/b/a/g/h;

    .line 8
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getAuthenticationProvider()Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;

    move-result-object v0

    instance-of v0, v0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getSasTokenAuthentication()Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->getMillisecondsBeforeProactiveRenewal()I

    move-result v0

    .line 10
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->sasTokenRenewalHandler:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpSasTokenRenewalHandler;

    invoke-interface {p1, v0, v1}, Lk/a/b/a/g/d;->a(ILk/a/b/a/d/l;)Lk/a/b/a/g/h;

    :cond_2
    return-void
.end method

.method public onSessionRemoteOpen(Lk/a/b/a/d/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->amqpsSessionManager:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;

    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->T()Lk/a/b/a/d/y;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->onSessionRemoteOpen(Lk/a/b/a/d/y;)V

    return-void
.end method

.method public onTimerTask(Lk/a/b/a/d/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->processOutgoingMessages()V

    .line 2
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->b()Lk/a/b/a/g/d;

    move-result-object p1

    const/16 v0, 0x32

    invoke-interface {p1, v0, p0}, Lk/a/b/a/g/d;->a(ILk/a/b/a/d/l;)Lk/a/b/a/g/h;

    return-void
.end method

.method public onTransportError(Lk/a/b/a/d/h;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandler;->onTransportError(Lk/a/b/a/d/h;)V

    .line 2
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->DISCONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->state:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    .line 3
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->getTransportExceptionFromEvent(Lk/a/b/a/d/h;)Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->savedException:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    .line 4
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->scheduleReconnection(Ljava/lang/Throwable;)V

    return-void
.end method

.method public open(Ljava/util/Queue;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 4
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

    .line 1
    sget-object p2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v0, "Opening AMQP connection"

    invoke-interface {p2, v0}, Lk/f/b;->b(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->reconnectionScheduled:Z

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->connectionId:Ljava/lang/String;

    .line 4
    iput-boolean p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->isAuthenticated:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->savedException:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    .line 6
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpSasTokenRenewalHandler;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->amqpsSessionManager:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-direct {v0, v1, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpSasTokenRenewalHandler;-><init>(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->sasTokenRenewalHandler:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpSasTokenRenewalHandler;

    .line 7
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->state:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->DISCONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    if-ne v0, v1, :cond_6

    .line 8
    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 9
    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->addDeviceOperationSession(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->initializeStateLatches(I)V

    .line 13
    :try_start_0
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->openAsync()V

    .line 14
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v0, "Waiting for authentication links to open..."

    invoke-interface {p1, v0}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->authenticationLinkOpenLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x4e20

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 16
    :goto_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->savedException:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    if-nez v0, :cond_5

    if-eqz p1, :cond_2

    const-string p1, "Timed out waiting for authentication links to open"

    .line 17
    invoke-direct {p0, p1, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->closeConnectionWithException(Ljava/lang/String;Z)V

    .line 18
    :cond_2
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v0, "Waiting for worker links to open..."

    invoke-interface {p1, v0}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->workerLinksOpenLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/32 v2, 0xea60

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p2, 0x1

    .line 20
    :cond_3
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->savedException:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    if-nez p1, :cond_4

    if-eqz p2, :cond_6

    const-string p1, "Timed out waiting for worker links to open"

    .line 21
    invoke-direct {p0, p1, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->closeConnectionWithException(Ljava/lang/String;Z)V

    goto :goto_2

    .line 22
    :cond_4
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->savedException:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    throw p1

    .line 23
    :cond_5
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->savedException:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 24
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->executorServicesCleanup()V

    .line 25
    sget-object p2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v0, "Interrupted while waiting for links to open for AMQP connection"

    invoke-interface {p2, v0, p1}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    new-instance p2, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    invoke-direct {p2, v0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 27
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->connectionId:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;->onConnectionEstablished(Ljava/lang/String;)V

    .line 28
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->CONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->state:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    .line 29
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string p2, "AMQP connection opened successfully"

    invoke-interface {p1, p2}, Lk/f/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public sendMessage(Lcom/microsoft/azure/sdk/iot/device/Message;)Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;
    .locals 2

    .line 7
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v1, "Adding message to amqp message queue to be sent later ({})"

    invoke-interface {v0, v1, p1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->messagesToSend:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    return-object p1
.end method

.method public sendMessageResult(Lcom/microsoft/azure/sdk/iot/device/Message;Lcom/microsoft/azure/sdk/iot/device/IotHubMessageResult;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->state:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->CONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 2
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string p2, "Unable to send message acknowledgement because amqp connection is not open"

    invoke-interface {p1, p2}, Lk/f/b;->d(Ljava/lang/String;)V

    return v2

    .line 3
    :cond_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v1, "Sending amqp acknowledgement for iothub message ({}) with result {}"

    invoke-interface {v0, v1, p1, p2}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->sendAckMessages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->sendAckMessages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;

    .line 6
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    .line 7
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Invalid IoT Hub message result {}"

    invoke-interface {p1, v0, p2}, Lk/f/b;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return v2

    .line 8
    :cond_1
    sget-object p2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;->REJECT:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;

    invoke-virtual {v0, p2}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;->acknowledge(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;)V

    goto :goto_0

    .line 9
    :cond_2
    sget-object p2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;->ABANDON:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;

    invoke-virtual {v0, p2}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;->acknowledge(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;)V

    goto :goto_0

    .line 10
    :cond_3
    sget-object p2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;->COMPLETE:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;

    invoke-virtual {v0, p2}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;->acknowledge(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;)V

    .line 11
    :goto_0
    sget-object p2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v0, "Removing message from amqp map of messages to acknowledge ({})"

    invoke-interface {p2, v0, p1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->sendAckMessages:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    .line 13
    :cond_4
    sget-object p2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->log:Lk/f/b;

    const-string v0, "Amqp connection cannot send ack for this iot hub message because it has no mapping from it to any amqp message ({})"

    invoke-interface {p2, v0, p1}, Lk/f/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return v2
.end method

.method public setListener(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;->listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
