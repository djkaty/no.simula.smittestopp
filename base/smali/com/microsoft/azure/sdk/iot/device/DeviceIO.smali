.class public final Lcom/microsoft/azure/sdk/iot/device/DeviceIO;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;
    }
.end annotation


# static fields
.field public static final log:Lk/f/b;


# instance fields
.field public config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

.field public deviceClientConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;",
            ">;"
        }
    .end annotation
.end field

.field public protocol:Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;

.field public receivePeriodInMilliseconds:J

.field public receiveTask:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubReceiveTask;

.field public sendPeriodInMilliseconds:J

.field public sendTask:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubSendTask;

.field public state:Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;

.field public taskScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field public transport:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->log:Lk/f/b;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;JJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->sendTask:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubSendTask;

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->receiveTask:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubReceiveTask;

    .line 4
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->protocol:Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;

    .line 5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->deviceClientConfigs:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getProtocol()Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->protocol:Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;

    .line 9
    iput-wide p2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->sendPeriodInMilliseconds:J

    .line 10
    iput-wide p4, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->receivePeriodInMilliseconds:J

    .line 11
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;->CLOSED:Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;

    iput-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->state:Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;

    .line 12
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;->AMQPS_WS:Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;->MQTT_WS:Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;

    if-ne v0, v1, :cond_1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->setUseWebsocket(Z)V

    .line 14
    :cond_1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->transport:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;

    .line 15
    iput-wide p2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->sendPeriodInMilliseconds:J

    .line 16
    iput-wide p4, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->receivePeriodInMilliseconds:J

    .line 17
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;->CLOSED:Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->state:Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;

    return-void

    .line 18
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Config cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private commonOpenSetup()V
    .locals 15

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubSendTask;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->transport:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;

    invoke-direct {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubSendTask;-><init>(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->sendTask:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubSendTask;

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubReceiveTask;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->transport:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;

    invoke-direct {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubReceiveTask;-><init>(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->receiveTask:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubReceiveTask;

    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->taskScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->sendTask:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubSendTask;

    iget-wide v5, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->sendPeriodInMilliseconds:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 5
    iget-object v8, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->taskScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v9, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->receiveTask:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubReceiveTask;

    iget-wide v12, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->receivePeriodInMilliseconds:J

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x0

    invoke-interface/range {v8 .. v14}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 6
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;->OPEN:Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->state:Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;

    return-void
.end method


# virtual methods
.method public addClient(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->deviceClientConfigs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Config cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->taskScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->transport:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;->CLIENT_CLOSE:Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->close(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lcom/microsoft/azure/sdk/iot/device/exceptions/DeviceClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;->CLOSED:Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->state:Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;

    return-void

    :catch_0
    move-exception v0

    .line 5
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;->CLOSED:Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;

    iput-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->state:Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;

    .line 6
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getProtocol()Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->protocol:Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;

    return-object v0
.end method

.method public getReceivePeriodInMilliseconds()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->receivePeriodInMilliseconds:J

    return-wide v0
.end method

.method public getSendPeriodInMilliseconds()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->sendPeriodInMilliseconds:J

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->transport:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->state:Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;->OPEN:Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public multiplexClose()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->close()V

    return-void
.end method

.method public open()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->state:Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;->OPEN:Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->transport:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->deviceClientConfigs:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->open(Ljava/util/Collection;)V
    :try_end_0
    .catch Lcom/microsoft/azure/sdk/iot/device/exceptions/DeviceClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->commonOpenSetup()V

    return-void

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Could not open the connection"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public registerConnectionStateCallback(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStateCallback;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->transport:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->registerConnectionStateCallback(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStateCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public registerConnectionStatusChangeCallback(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeCallback;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->transport:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->registerConnectionStatusChangeCallback(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized sendEventAsync(Lcom/microsoft/azure/sdk/iot/device/Message;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->state:Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;->CLOSED:Lcom/microsoft/azure/sdk/iot/device/DeviceIO$IotHubClientState;

    if-eq v0, v1, :cond_2

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    .line 2
    invoke-virtual {p1, p4}, Lcom/microsoft/azure/sdk/iot/device/Message;->setConnectionDeviceId(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p4, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->transport:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;

    invoke-virtual {p4, p1, p2, p3}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->addMessage(Lcom/microsoft/azure/sdk/iot/device/Message;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot send message \'null\'."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot send event from an IoT Hub client that is closed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setReceivePeriodInMilliseconds(J)V
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 1
    iput-wide p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->receivePeriodInMilliseconds:J

    .line 2
    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->taskScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v3, :cond_1

    .line 3
    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->receiveTask:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubReceiveTask;

    if-eqz v4, :cond_0

    const-wide/16 v5, 0x0

    .line 4
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v7, p1

    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "transport receive task not set"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "receive interval can not be zero or negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSendPeriodInMilliseconds(J)V
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 1
    iput-wide p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->sendPeriodInMilliseconds:J

    .line 2
    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->taskScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v3, :cond_1

    .line 3
    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->sendTask:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubSendTask;

    if-eqz v4, :cond_0

    const-wide/16 v5, 0x0

    .line 4
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v7, p1

    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "transport send task not set"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "send interval can not be zero or negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
