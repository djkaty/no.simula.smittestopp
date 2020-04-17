.class public Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;
.super Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandlerWithCleanup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection$ReactorRunner;
    }
.end annotation


# static fields
.field public static final AMQP_PORT:I = 0x1627

.field public static final AMQP_WEB_SOCKET_PORT:I = 0x1bb

.field public static final MAX_WAIT_TO_OPEN_CLOSE_CONNECTION:I = 0xea60

.field public static final MAX_WAIT_TO_TERMINATE_EXECUTOR:I = 0x1e

.field public static final THREAD_POOL_MAX_NUMBER:I = 0x1

.field public static final WEB_SOCKET_PATH:Ljava/lang/String; = "/$iothub/websocket"

.field public static final WEB_SOCKET_SUB_PROTOCOL:Ljava/lang/String; = "AMQPWSB10"


# instance fields
.field public amqpDeviceOperations:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;

.field public final closeLock:Lcom/microsoft/azure/sdk/iot/deps/util/ObjectLock;

.field public connection:Lk/a/b/a/d/c;

.field public executorService:Ljava/util/concurrent/ExecutorService;

.field public fullHostAddress:Ljava/lang/String;

.field public hostName:Ljava/lang/String;

.field public isOpen:Ljava/lang/Boolean;

.field public linkCredit:I

.field public logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

.field public msgListener:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpListener;

.field public nextTag:J

.field public openLatch:Ljava/util/concurrent/CountDownLatch;

.field public reactor:Lk/a/b/a/g/d;

.field public saslListener:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;

.field public session:Lk/a/b/a/d/y;

.field public sslContext:Ljavax/net/ssl/SSLContext;

.field public useWebSockets:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;Ljavax/net/ssl/SSLContext;Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandlerWithCleanup;-><init>()V

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->linkCredit:I

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->nextTag:J

    .line 6
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->amqpDeviceOperations:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;

    .line 7
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->useWebSockets:Ljava/lang/Boolean;

    if-eqz p4, :cond_0

    .line 8
    new-instance p2, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;

    invoke-direct {p2, p4}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;-><init>(Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler;)V

    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->saslListener:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;

    .line 9
    :cond_0
    new-instance p2, Ljava/util/concurrent/CountDownLatch;

    const/4 p4, 0x1

    invoke-direct {p2, p4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->openLatch:Ljava/util/concurrent/CountDownLatch;

    .line 10
    new-instance p2, Lcom/microsoft/azure/sdk/iot/deps/util/ObjectLock;

    invoke-direct {p2}, Lcom/microsoft/azure/sdk/iot/deps/util/ObjectLock;-><init>()V

    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->closeLock:Lcom/microsoft/azure/sdk/iot/deps/util/ObjectLock;

    .line 11
    iput-object p3, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->sslContext:Ljavax/net/ssl/SSLContext;

    const/4 p2, 0x0

    .line 12
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->isOpen:Ljava/lang/Boolean;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, p2

    .line 13
    iget-object p5, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->useWebSockets:Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    if-eqz p5, :cond_1

    const/16 p5, 0x1bb

    goto :goto_0

    :cond_1
    const/16 p5, 0x1627

    :goto_0
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p3, p4

    const-string p5, "%s:%d"

    invoke-static {p5, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->fullHostAddress:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->hostName:Ljava/lang/String;

    .line 15
    new-instance p1, Lk/a/b/a/g/c;

    invoke-direct {p1}, Lk/a/b/a/g/c;-><init>()V

    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->add(Lk/a/b/a/d/l;)V

    .line 16
    new-instance p1, Lk/a/b/a/g/b;

    invoke-direct {p1}, Lk/a/b/a/g/b;-><init>()V

    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->add(Lk/a/b/a/d/l;)V

    .line 17
    :try_start_0
    new-instance p1, Lk/a/b/a/g/f;

    invoke-direct {p1}, Lk/a/b/a/g/f;-><init>()V

    .line 18
    iput-boolean p2, p1, Lk/a/b/a/g/f;->a:Z

    new-array p3, p4, [Lk/a/b/a/d/l;

    aput-object p0, p3, p2

    .line 19
    invoke-static {p1, p3}, Le/c/a/a/b/l/c;->a(Lk/a/b/a/g/f;[Lk/a/b/a/d/l;)Lk/a/b/a/g/d;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->reactor:Lk/a/b/a/g/d;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 20
    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    invoke-virtual {p2, p1}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogError(Ljava/lang/Throwable;)V

    .line 21
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Could not create Proton reactor"

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 22
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The hostname cannot be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private makeDomain()Lk/a/b/a/d/a0;
    .locals 4

    .line 1
    new-instance v0, Lk/a/b/a/d/g0/m0/e;

    invoke-direct {v0}, Lk/a/b/a/d/g0/m0/e;-><init>()V

    .line 2
    sget-object v1, Lk/a/b/a/d/a0$b;->VERIFY_PEER:Lk/a/b/a/d/a0$b;

    .line 3
    iput-object v1, v0, Lk/a/b/a/d/g0/m0/e;->b:Lk/a/b/a/d/a0$b;

    .line 4
    iget-object v1, v0, Lk/a/b/a/d/g0/m0/e;->d:Lk/a/b/a/d/g0/m0/f;

    const/4 v2, 0x0

    .line 5
    iput-object v2, v1, Lk/a/b/a/d/g0/m0/f;->a:Ljavax/net/ssl/SSLContext;

    .line 6
    sget-object v3, Lk/a/b/a/d/a0$a;->CLIENT:Lk/a/b/a/d/a0$a;

    .line 7
    iput-object v2, v1, Lk/a/b/a/d/g0/m0/f;->a:Ljavax/net/ssl/SSLContext;

    .line 8
    iput-object v3, v0, Lk/a/b/a/d/g0/m0/e;->a:Lk/a/b/a/d/a0$a;

    .line 9
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 10
    iput-object v1, v0, Lk/a/b/a/d/g0/m0/e;->c:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Entered in method %s"

    invoke-virtual {v0, v3, v2}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->isOpen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->amqpDeviceOperations:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->closeLinks()V

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->session:Lk/a/b/a/d/y;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lk/a/b/a/d/f;->close()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->connection:Lk/a/b/a/d/c;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Lk/a/b/a/d/f;->close()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->reactor:Lk/a/b/a/g/d;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Lk/a/b/a/g/d;->stop()V

    .line 10
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->closeLock:Lcom/microsoft/azure/sdk/iot/deps/util/ObjectLock;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    :try_start_1
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->closeLock:Lcom/microsoft/azure/sdk/iot/deps/util/ObjectLock;

    const-wide/32 v5, 0xea60

    invoke-virtual {v2, v5, v6}, Lcom/microsoft/azure/sdk/iot/deps/util/ObjectLock;->waitLock(J)V

    .line 12
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_3

    .line 14
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 15
    :try_start_2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1e

    invoke-interface {v0, v5, v6, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 17
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v5, v6, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 18
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    const-string v2, "Pool did not terminate"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogInfo(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 19
    :catch_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 20
    :cond_3
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->isOpen:Ljava/lang/Boolean;

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 21
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    .line 22
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    invoke-virtual {v1, v0}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogError(Ljava/lang/Throwable;)V

    .line 23
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Waited too long for the connection to open."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->getMethodName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Exited from method %s"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->saslListener:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;->getSavedException()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->saslListener:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;->getSavedException()Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->isOpen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onConnectionBound(Lk/a/b/a/d/h;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Entered in method %s"

    invoke-virtual {v0, v3, v2}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->U()Lk/a/b/a/d/c;

    move-result-object p1

    invoke-interface {p1}, Lk/a/b/a/d/c;->l()Lk/a/b/a/d/c0;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->saslListener:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Lk/a/b/a/d/c0;->E()Lk/a/b/a/d/v;

    move-result-object v0

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->saslListener:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;

    check-cast v0, Lk/a/b/a/d/g0/v;

    .line 5
    iput-object v2, v0, Lk/a/b/a/d/g0/v;->x:Lk/a/b/a/d/w;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->useWebSockets:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;-><init>()V

    .line 8
    iget-object v6, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->hostName:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v7, "/$iothub/websocket"

    const-string v9, "AMQPWSB10"

    move-object v5, v0

    invoke-virtual/range {v5 .. v11}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->configure(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler;)V

    .line 9
    move-object v2, p1

    check-cast v2, Lk/a/b/a/d/g0/c0;

    invoke-interface {v2, v0}, Lk/a/b/a/d/g0/c0;->a(Lk/a/b/a/d/g0/d0;)V

    .line 10
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->makeDomain()Lk/a/b/a/d/a0;

    move-result-object v0

    .line 11
    invoke-interface {p1, v0}, Lk/a/b/a/d/c0;->a(Lk/a/b/a/d/a0;)Lk/a/b/a/d/z;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "onConnectionBound has thrown exception while creating ssl context: %s"

    invoke-virtual {v0, p1, v2}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->getMethodName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "Exited from method %s"

    invoke-virtual {p1, v1, v0}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onConnectionInit(Lk/a/b/a/d/h;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Entered in method %s"

    invoke-virtual {v0, v3, v2}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->U()Lk/a/b/a/d/c;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->connection:Lk/a/b/a/d/c;

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->fullHostAddress:Ljava/lang/String;

    invoke-interface {p1, v0}, Lk/a/b/a/d/c;->c(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->connection:Lk/a/b/a/d/c;

    invoke-interface {p1}, Lk/a/b/a/d/c;->D()Lk/a/b/a/d/y;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->session:Lk/a/b/a/d/y;

    .line 5
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->connection:Lk/a/b/a/d/c;

    invoke-interface {p1}, Lk/a/b/a/d/f;->open()V

    .line 6
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->session:Lk/a/b/a/d/y;

    invoke-interface {p1}, Lk/a/b/a/d/f;->open()V

    .line 7
    :try_start_0
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->amqpDeviceOperations:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->session:Lk/a/b/a/d/y;

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->openLinks(Lk/a/b/a/d/y;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "openLinks has thrown exception: %s"

    invoke-virtual {v0, p1, v2}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->getMethodName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "Exited from method %s"

    invoke-virtual {p1, v1, v0}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onConnectionUnbound(Lk/a/b/a/d/h;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Entered in method %s"

    invoke-virtual {p1, v2, v1}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->isOpen:Ljava/lang/Boolean;

    .line 3
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->getMethodName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "Exited from method %s"

    invoke-virtual {p1, v1, v0}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onDelivery(Lk/a/b/a/d/h;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Entered in method %s"

    invoke-virtual {v0, v3, v2}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->amqpDeviceOperations:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;

    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->G()Lk/a/b/a/d/n;

    move-result-object v2

    invoke-interface {v2}, Lk/a/b/a/d/n;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->receiverMessageFromLink(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpMessage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->w()Lk/a/b/a/d/h$b;

    move-result-object v0

    sget-object v2, Lk/a/b/a/d/h$b;->DELIVERY:Lk/a/b/a/d/h$b;

    if-ne v0, v2, :cond_1

    .line 4
    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->h()Lk/a/b/a/d/e;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Lk/a/b/a/d/e;->e()Lk/a/b/a/b/n/e;

    move-result-object v0

    .line 6
    sget-object v2, Lk/a/b/a/b/k/a;->a:Lk/a/b/a/b/k/a;

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    invoke-interface {p1}, Lk/a/b/a/d/e;->a()V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->msgListener:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpListener;

    invoke-interface {p1, v0}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpListener;->messageReceived(Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpMessage;)V

    .line 10
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->getMethodName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "Exited from method %s"

    invoke-virtual {p1, v1, v0}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onLinkFlow(Lk/a/b/a/d/h;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Entered in method %s"

    invoke-virtual {v0, v3, v2}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->G()Lk/a/b/a/d/n;

    move-result-object p1

    invoke-interface {p1}, Lk/a/b/a/d/n;->x()I

    move-result p1

    iput p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->linkCredit:I

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v4

    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->getMethodName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "The link credit value is %s, method name is %s"

    invoke-virtual {v0, p1, v2}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->getMethodName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "Exited from method %s"

    invoke-virtual {p1, v1, v0}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onLinkInit(Lk/a/b/a/d/h;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Entered in method %s"

    invoke-virtual {v0, v3, v2}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    check-cast p1, Lk/a/b/a/d/g0/g;

    :try_start_0
    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->G()Lk/a/b/a/d/n;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->amqpDeviceOperations:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->initLink(Lk/a/b/a/d/n;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "Exception in onLinkInit: %s"

    invoke-virtual {v0, p1, v2}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->getMethodName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "Exited from method %s"

    invoke-virtual {p1, v1, v0}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onLinkRemoteOpen(Lk/a/b/a/d/h;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Entered in method %s"

    invoke-virtual {v0, v3, v2}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->G()Lk/a/b/a/d/n;

    move-result-object p1

    invoke-interface {p1}, Lk/a/b/a/d/n;->getName()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->amqpDeviceOperations:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->isReceiverLinkTag(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->isOpen:Ljava/lang/Boolean;

    .line 5
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->msgListener:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpListener;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpListener;->connectionEstablished()V

    .line 7
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->openLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->getMethodName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "Exited from method %s"

    invoke-virtual {p1, v1, v0}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onReactorFinal(Lk/a/b/a/d/h;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Entered in method %s"

    invoke-virtual {p1, v2, v1}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->reactor:Lk/a/b/a/g/d;

    .line 3
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->closeLock:Lcom/microsoft/azure/sdk/iot/deps/util/ObjectLock;

    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->closeLock:Lcom/microsoft/azure/sdk/iot/deps/util/ObjectLock;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/deps/util/ObjectLock;->notifyLock()V

    .line 5
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->getMethodName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "Exited from method %s"

    invoke-virtual {p1, v1, v0}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onReactorInit(Lk/a/b/a/d/h;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Entered in method %s"

    invoke-virtual {v0, v3, v2}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->b()Lk/a/b/a/g/d;

    move-result-object p1

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->hostName:Ljava/lang/String;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->useWebSockets:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1bb

    goto :goto_0

    :cond_0
    const/16 v2, 0x1627

    :goto_0
    invoke-interface {p1, v0, v2, p0}, Lk/a/b/a/g/d;->a(Ljava/lang/String;ILk/a/b/a/d/l;)Lk/a/b/a/d/c;

    .line 3
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->getMethodName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "Exited from method %s"

    invoke-virtual {p1, v1, v0}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onTransportError(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/ErrorLoggingBaseHandlerWithCleanup;->onTransportError(Lk/a/b/a/d/h;)V

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->isOpen:Ljava/lang/Boolean;

    return-void
.end method

.method public onTransportHeadClosed(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->openLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public open()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Entered in method %s"

    invoke-virtual {v0, v3, v2}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->isOpen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->openAmqpAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->openLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/32 v2, 0xea60

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    invoke-virtual {v1, v0}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogError(Ljava/lang/Throwable;)V

    .line 6
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->close()V

    .line 7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Waited too long for the connection to open."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    .line 8
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    invoke-virtual {v1, v0}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogError(Ljava/lang/Throwable;)V

    .line 9
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->close()V

    .line 10
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error opening Amqp connection: "

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 11
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->isOpen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->getMethodName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Exited from method %s"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 13
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to open the connection"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openAmqpAsync()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Entered in method %s"

    invoke-virtual {v0, v3, v2}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->openLatch:Ljava/util/concurrent/CountDownLatch;

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 4
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 5
    :cond_0
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpReactor;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->reactor:Lk/a/b/a/g/d;

    invoke-direct {v0, v2}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpReactor;-><init>(Lk/a/b/a/g/d;)V

    .line 6
    new-instance v2, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection$ReactorRunner;

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    invoke-direct {v2, p0, v0, v3}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection$ReactorRunner;-><init>(Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpReactor;Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;)V

    .line 7
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 8
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->getMethodName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Exited from method %s"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public sendAmqpMessage(Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpMessage;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->saslListener:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;->getSavedException()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->saslListener:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;->getSavedException()Ljava/lang/Exception;

    move-result-object p1

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Entered in method %s"

    invoke-virtual {v0, v3, v2}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->isOpen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 p1, 0x0

    goto :goto_4

    :cond_3
    const/16 v0, 0x400

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    :cond_4
    :try_start_0
    invoke-virtual {p1, v0, v4}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpMessage;->encode([BI)I

    move-result v3
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_1

    .line 6
    :catch_0
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    :goto_1
    if-eqz v2, :cond_4

    if-lez v3, :cond_2

    .line 7
    iget-wide v5, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->nextTag:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 8
    iget-wide v5, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->nextTag:J

    const-wide/32 v7, 0x7fffffff

    const-wide/16 v9, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_6

    cmp-long v2, v5, v9

    if-gez v2, :cond_5

    goto :goto_2

    :cond_5
    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    .line 9
    iput-wide v5, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->nextTag:J

    goto :goto_3

    .line 10
    :cond_6
    :goto_2
    iput-wide v9, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->nextTag:J

    .line 11
    :goto_3
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->amqpDeviceOperations:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;

    invoke-virtual {v2, p1, v0, v3, v4}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->sendMessage([B[BII)V

    const/4 p1, 0x1

    .line 12
    :goto_4
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->getMethodName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Exited from method %s"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public setListener(Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;->msgListener:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpListener;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The listener cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
