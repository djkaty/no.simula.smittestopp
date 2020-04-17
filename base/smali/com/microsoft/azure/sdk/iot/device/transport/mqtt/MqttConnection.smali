.class public Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEEP_ALIVE_INTERVAL:I = 0xe6

.field public static final MAX_IN_FLIGHT_COUNT:I = 0xa

.field public static final MAX_SUBSCRIBE_ACK_WAIT_TIME:I = 0x3a98

.field public static final MQTT_VERSION:I = 0x4

.field public static final QOS:I = 0x1

.field public static final SET_CLEAN_SESSION:Z = false


# instance fields
.field public allReceivedMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lk/a/a/b/e/b<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation
.end field

.field public connectionOptions:Lk/c/a/a/a/i;

.field public mqttAsyncClient:Lk/c/a/a/a/f;

.field public mqttLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/microsoft/azure/sdk/iot/device/ProxySettings;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->mqttAsyncClient:Lk/c/a/a/a/f;

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->connectionOptions:Lk/c/a/a/a/i;

    const-string v1, "ServerURI, clientId, and userName may not be null or empty"

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-eqz p5, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    :try_start_0
    new-instance v1, Lk/c/a/a/a/f;

    new-instance v2, Lk/c/a/a/a/u/a;

    invoke-direct {v2}, Lk/c/a/a/a/u/a;-><init>()V

    invoke-direct {v1, p1, p2, v2}, Lk/c/a/a/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lk/c/a/a/a/u/a;)V

    iput-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->mqttAsyncClient:Lk/c/a/a/a/f;

    const/4 p1, 0x1

    .line 6
    iget-object p2, v1, Lk/c/a/a/a/f;->A:Lk/c/a/a/a/s/a;

    .line 7
    iget-object p2, p2, Lk/c/a/a/a/s/a;->h:Lk/c/a/a/a/s/c;

    .line 8
    iput-boolean p1, p2, Lk/c/a/a/a/s/c;->N:Z

    .line 9
    new-instance p1, Lk/c/a/a/a/i;

    invoke-direct {p1}, Lk/c/a/a/a/i;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->connectionOptions:Lk/c/a/a/a/i;

    .line 10
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->updateConnectionOptions(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/microsoft/azure/sdk/iot/device/ProxySettings;)V
    :try_end_0
    .catch Lk/c/a/a/a/k; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->allReceivedMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 12
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->mqttLock:Ljava/lang/Object;

    return-void

    :catch_0
    move-exception p1

    .line 13
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->mqttAsyncClient:Lk/c/a/a/a/f;

    .line 14
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->connectionOptions:Lk/c/a/a/a/i;

    const-string p2, "Unable to create mqttAsyncClient"

    .line 15
    invoke-static {p1, p2}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/exceptions/PahoExceptionTranslator;->convertToMqttException(Lk/c/a/a/a/k;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/exceptions/ProtocolException;

    move-result-object p1

    .line 16
    throw p1

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private updateConnectionOptions(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/microsoft/azure/sdk/iot/device/ProxySettings;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->connectionOptions:Lk/c/a/a/a/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/16 v2, 0xe6

    .line 2
    iput v2, v0, Lk/c/a/a/a/i;->a:I

    const/4 v2, 0x0

    .line 3
    iput-boolean v2, v0, Lk/c/a/a/a/i;->k:Z

    const/4 v2, 0x4

    .line 4
    invoke-virtual {v0, v2}, Lk/c/a/a/a/i;->a(I)V

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->connectionOptions:Lk/c/a/a/a/i;

    .line 6
    iput-object p1, v0, Lk/c/a/a/a/i;->e:Ljava/lang/String;

    if-eqz p4, :cond_2

    .line 7
    invoke-virtual {p4}, Lcom/microsoft/azure/sdk/iot/device/ProxySettings;->getProxy()Ljava/net/Proxy;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object v0, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne p1, v0, :cond_0

    .line 8
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->connectionOptions:Lk/c/a/a/a/i;

    new-instance p3, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory;

    invoke-virtual {p4}, Lcom/microsoft/azure/sdk/iot/device/ProxySettings;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lcom/microsoft/azure/sdk/iot/device/ProxySettings;->getPort()I

    move-result p4

    invoke-direct {p3, v0, p4}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory;-><init>(Ljava/lang/String;I)V

    .line 9
    iput-object p3, p1, Lk/c/a/a/a/i;->g:Ljavax/net/SocketFactory;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p4}, Lcom/microsoft/azure/sdk/iot/device/ProxySettings;->getProxy()Ljava/net/Proxy;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p1, v0, :cond_1

    .line 11
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->connectionOptions:Lk/c/a/a/a/i;

    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/HttpProxySocketFactory;

    invoke-virtual {p3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p3

    invoke-direct {v0, p3, p4}, Lcom/microsoft/azure/sdk/iot/device/transport/HttpProxySocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;Lcom/microsoft/azure/sdk/iot/device/ProxySettings;)V

    .line 12
    iput-object v0, p1, Lk/c/a/a/a/i;->g:Ljavax/net/SocketFactory;

    goto :goto_0

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Proxy settings must be configured to use either SOCKS or HTTP"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    invoke-virtual {p3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    .line 15
    iput-object p1, v0, Lk/c/a/a/a/i;->g:Ljavax/net/SocketFactory;

    :goto_0
    if-eqz p2, :cond_4

    .line 16
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 17
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->connectionOptions:Lk/c/a/a/a/i;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    if-eqz p1, :cond_3

    .line 18
    invoke-virtual {p2}, [C->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [C

    iput-object p2, p1, Lk/c/a/a/a/i;->f:[C

    goto :goto_1

    :cond_3
    throw v1

    :cond_4
    :goto_1
    return-void

    .line 19
    :cond_5
    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->mqttAsyncClient:Lk/c/a/a/a/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lk/c/a/a/a/f;->close()V

    :cond_0
    return-void
.end method

.method public disconnect()Lk/c/a/a/a/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->mqttAsyncClient:Lk/c/a/a/a/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lk/c/a/a/a/f;->a()Lk/c/a/a/a/e;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllReceivedMessages()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lk/a/a/b/e/b<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->allReceivedMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method public getConnectionOptions()Lk/c/a/a/a/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->connectionOptions:Lk/c/a/a/a/i;

    return-object v0
.end method

.method public getMqttAsyncClient()Lk/c/a/a/a/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->mqttAsyncClient:Lk/c/a/a/a/f;

    return-object v0
.end method

.method public getMqttLock()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->mqttLock:Ljava/lang/Object;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->mqttAsyncClient:Lk/c/a/a/a/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lk/c/a/a/a/f;->b()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sendMessageAcknowledgement(I)Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->mqttAsyncClient:Lk/c/a/a/a/f;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lk/c/a/a/a/f;->a(II)V
    :try_end_0
    .catch Lk/c/a/a/a/k; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    const-string v0, "Error sending message ack"

    .line 2
    invoke-static {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/exceptions/PahoExceptionTranslator;->convertToMqttException(Lk/c/a/a/a/k;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/exceptions/ProtocolException;

    move-result-object p1

    throw p1
.end method

.method public setMqttAsyncClient(Lk/c/a/a/a/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->mqttAsyncClient:Lk/c/a/a/a/f;

    return-void
.end method

.method public setMqttCallback(Lk/c/a/a/a/g;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->getMqttAsyncClient()Lk/c/a/a/a/f;

    move-result-object v0

    .line 2
    iput-object p1, v0, Lk/c/a/a/a/f;->C:Lk/c/a/a/a/g;

    .line 3
    iget-object v0, v0, Lk/c/a/a/a/f;->A:Lk/c/a/a/a/s/a;

    .line 4
    iget-object v0, v0, Lk/c/a/a/a/s/a;->h:Lk/c/a/a/a/s/c;

    .line 5
    iput-object p1, v0, Lk/c/a/a/a/s/c;->y:Lk/c/a/a/a/g;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
