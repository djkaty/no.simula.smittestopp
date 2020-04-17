.class public Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/c/a/a/a/g;


# static fields
.field public static final KEEP_ALIVE_INTERVAL:I = 0xe6

.field public static final MAX_WAIT_TIME:I = 0x3e8

.field public static final MQTT_VERSION:I = 0x4

.field public static final SET_CLEAN_SESSION:Z = false

.field public static final SSL_URL_FORMAT:Ljava/lang/String; = "ssl://%s:8883"

.field public static final WS_SSL_URL_FORMAT:Ljava/lang/String; = "wss://%s:443"


# instance fields
.field public connectionOptions:Lk/c/a/a/a/i;

.field public mqttAsyncClient:Lk/c/a/a/a/f;

.field public mqttListener:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttListener;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    if-eqz p5, :cond_3

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p6, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p7, :cond_0

    :try_start_0
    const-string p7, "wss://%s:443"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 3
    invoke-static {p7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p7, "ssl://%s:8883"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 4
    invoke-static {p7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    :goto_0
    iput-object p6, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttConnection;->mqttListener:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttListener;

    .line 6
    new-instance p6, Lk/c/a/a/a/f;

    new-instance p7, Lk/c/a/a/a/u/a;

    invoke-direct {p7}, Lk/c/a/a/a/u/a;-><init>()V

    invoke-direct {p6, p1, p2, p7}, Lk/c/a/a/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lk/c/a/a/a/u/a;)V

    iput-object p6, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttConnection;->mqttAsyncClient:Lk/c/a/a/a/f;

    .line 7
    new-instance p1, Lk/c/a/a/a/i;

    invoke-direct {p1}, Lk/c/a/a/a/i;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttConnection;->connectionOptions:Lk/c/a/a/a/i;

    .line 8
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttConnection;->mqttAsyncClient:Lk/c/a/a/a/f;

    .line 9
    iput-object p0, p1, Lk/c/a/a/a/f;->C:Lk/c/a/a/a/g;

    .line 10
    iget-object p1, p1, Lk/c/a/a/a/f;->A:Lk/c/a/a/a/s/a;

    .line 11
    iget-object p1, p1, Lk/c/a/a/a/s/a;->h:Lk/c/a/a/a/s/c;

    .line 12
    iput-object p0, p1, Lk/c/a/a/a/s/c;->y:Lk/c/a/a/a/g;

    .line 13
    invoke-direct {p0, p3, p4, p5}, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttConnection;->updateConnectionOptions(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;)V
    :try_end_0
    .catch Lk/c/a/a/a/k; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 14
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttConnection;->mqttAsyncClient:Lk/c/a/a/a/f;

    .line 15
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttConnection;->connectionOptions:Lk/c/a/a/a/i;

    .line 16
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Error initializing MQTT connection:"

    invoke-static {p3}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lk/c/a/a/a/k;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The listener cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 19
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private updateConnectionOptions(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttConnection;->connectionOptions:Lk/c/a/a/a/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

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
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttConnection;->connectionOptions:Lk/c/a/a/a/i;

    .line 6
    iput-object p1, v0, Lk/c/a/a/a/i;->e:Ljava/lang/String;

    .line 7
    invoke-virtual {p3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    .line 8
    iput-object p1, v0, Lk/c/a/a/a/i;->g:Ljavax/net/SocketFactory;

    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttConnection;->connectionOptions:Lk/c/a/a/a/i;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p2}, [C->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [C

    iput-object p2, p1, Lk/c/a/a/a/i;->f:[C

    goto :goto_0

    :cond_0
    throw v1

    :cond_1
    :goto_0
    return-void

    .line 12
    :cond_2
    throw v1
.end method


# virtual methods
.method public declared-synchronized connect()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttConnection;->mqttAsyncClient:Lk/c/a/a/a/f;

    invoke-virtual {v0}, Lk/c/a/a/a/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttConnection;->mqttAsyncClient:Lk/c/a/a/a/f;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttConnection;->connectionOptions:Lk/c/a/a/a/i;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v2}, Lk/c/a/a/a/f;->a(Lk/c/a/a/a/i;Ljava/lang/Object;Lk/c/a/a/a/a;)Lk/c/a/a/a/e;

    move-result-object v0
    :try_end_0
    .catch Lk/c/a/a/a/k; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    check-cast v0, Lk/c/a/a/a/q;

    :try_start_1
    invoke-virtual {v0}, Lk/c/a/a/a/q;->a()V

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttConnection;->mqttListener:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttListener;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttConnection;->mqttListener:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttListener;

    invoke-interface {v0}, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttListener;->connectionEstablished()V
    :try_end_1
    .catch Lk/c/a/a/a/k; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to connect to mqtt service"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectionLost(Ljava/lang/Throwable;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttConnection;->mqttListener:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttListener;

    invoke-interface {v0, p1}, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttListener;->connectionLost(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deliveryComplete(Lk/c/a/a/a/c;)V
    .locals 0

    monitor-enter p0

    .line 1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized disconnect()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttConnection;->mqttAsyncClient:Lk/c/a/a/a/f;

    invoke-virtual {v0}, Lk/c/a/a/a/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttConnection;->mqttAsyncClient:Lk/c/a/a/a/f;

    invoke-virtual {v0}, Lk/c/a/a/a/f;->a()Lk/c/a/a/a/e;

    move-result-object v0
    :try_end_0
    .catch Lk/c/a/a/a/k; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    check-cast v0, Lk/c/a/a/a/q;

    :try_start_1
    invoke-virtual {v0}, Lk/c/a/a/a/q;->a()V
    :try_end_1
    .catch Lk/c/a/a/a/k; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to connect to mqtt service"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public isMqttConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttConnection;->mqttAsyncClient:Lk/c/a/a/a/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lk/c/a/a/a/f;->b()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public declared-synchronized messageArrived(Ljava/lang/String;Lk/c/a/a/a/l;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttConnection;->mqttListener:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttListener;

    new-instance v1, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;

    invoke-direct {v1, p1, p2}, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;-><init>(Ljava/lang/String;Lk/c/a/a/a/l;)V

    invoke-interface {v0, v1}, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttListener;->messageReceived(Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized publishMessage(Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;)V
    .locals 4

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttConnection;->mqttAsyncClient:Lk/c/a/a/a/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttConnection;->mqttAsyncClient:Lk/c/a/a/a/f;

    invoke-virtual {v0}, Lk/c/a/a/a/f;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 8
    :try_start_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttConnection;->mqttAsyncClient:Lk/c/a/a/a/f;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;->getMqttMessage()Lk/c/a/a/a/l;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lk/c/a/a/a/f;->a(Ljava/lang/String;Lk/c/a/a/a/l;)Lk/c/a/a/a/c;

    move-result-object v0
    :try_end_1
    .catch Lk/c/a/a/a/k; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    check-cast v0, Lk/c/a/a/a/q;

    :try_start_2
    invoke-virtual {v0}, Lk/c/a/a/a/q;->a()V
    :try_end_2
    .catch Lk/c/a/a/a/k; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 11
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to publish message on topic : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;->getTopic()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 12
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "MqttMessage is null"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Mqtt is not connected"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized publishMessage(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;[B)V
    .locals 1

    monitor-enter p0

    if-eqz p3, :cond_1

    .line 1
    :try_start_0
    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;

    invoke-direct {v0, p1, p3}, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;-><init>(Ljava/lang/String;[B)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;-><init>(Ljava/lang/String;)V

    .line 4
    :goto_1
    invoke-virtual {v0, p2}, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;->setQos(Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttConnection;->publishMessage(Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized subscribe(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttConnection;->mqttAsyncClient:Lk/c/a/a/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttConnection;->mqttAsyncClient:Lk/c/a/a/a/f;

    invoke-virtual {v0}, Lk/c/a/a/a/f;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttConnection;->mqttAsyncClient:Lk/c/a/a/a/f;

    invoke-static {p2}, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;->retrieveQosValue(Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lk/c/a/a/a/f;->a(Ljava/lang/String;I)Lk/c/a/a/a/e;

    move-result-object p2

    const-wide/16 v0, 0x3e8

    .line 3
    check-cast p2, Lk/c/a/a/a/q;

    .line 4
    iget-object p2, p2, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    invoke-virtual {p2, v0, v1}, Lk/c/a/a/a/s/p;->a(J)V
    :try_end_1
    .catch Lk/c/a/a/a/k; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catch_0
    move-exception p2

    .line 6
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to subscribe on topic : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 7
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Mqtt is not connected"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unsubscribe(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttConnection;->mqttAsyncClient:Lk/c/a/a/a/f;

    invoke-virtual {v0, p1}, Lk/c/a/a/a/f;->a(Ljava/lang/String;)Lk/c/a/a/a/e;

    move-result-object v0
    :try_end_0
    .catch Lk/c/a/a/a/k; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    check-cast v0, Lk/c/a/a/a/q;

    :try_start_1
    invoke-virtual {v0}, Lk/c/a/a/a/q;->a()V
    :try_end_1
    .catch Lk/c/a/a/a/k; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to unsubscribe message on topic : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method
