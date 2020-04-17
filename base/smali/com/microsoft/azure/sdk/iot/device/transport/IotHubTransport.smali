.class public Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport$MessageRetryRunnable;
    }
.end annotation


# static fields
.field public static final MAX_MESSAGES_TO_SEND_PER_THREAD:I = 0xa

.field public static final POOL_SIZE:I = 0x1

.field public static final log:Lk/f/b;


# instance fields
.field public final callbackPacketsQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;",
            ">;"
        }
    .end annotation
.end field

.field public volatile connectionStatus:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

.field public connectionStatusChangeCallback:Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeCallback;

.field public connectionStatusChangeCallbackContext:Ljava/lang/Object;

.field public currentReconnectionAttempt:I

.field public defaultConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

.field public deviceClientConfigs:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;",
            ">;"
        }
    .end annotation
.end field

.field public final inProgressMessagesLock:Ljava/lang/Object;

.field public final inProgressPackets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;",
            ">;"
        }
    .end annotation
.end field

.field public iotHubTransportConnection:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportConnection;

.field public final receivedMessagesQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;",
            ">;"
        }
    .end annotation
.end field

.field public reconnectionAttemptStartTimeMillis:J

.field public final reconnectionLock:Ljava/lang/Object;

.field public scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field public stateCallback:Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStateCallback;

.field public stateCallbackContext:Ljava/lang/Object;

.field public taskScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field public final waitingPacketsQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->waitingPacketsQueue:Ljava/util/Queue;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->inProgressPackets:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->receivedMessagesQueue:Ljava/util/Queue;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->callbackPacketsQueue:Ljava/util/Queue;

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->inProgressMessagesLock:Ljava/lang/Object;

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->reconnectionLock:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 8
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->defaultConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    .line 9
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->DISCONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->connectionStatus:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->currentReconnectionAttempt:I

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Config cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private acknowledgeReceivedMessage(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getMessageCallback()Lcom/microsoft/azure/sdk/iot/device/MessageCallback;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getMessageCallbackContext()Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 3
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v3, "Executing callback for received message ({})"

    invoke-interface {v2, v3, p1}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-interface {v0, p1, v1}, Lcom/microsoft/azure/sdk/iot/device/MessageCallback;->execute(Lcom/microsoft/azure/sdk/iot/device/Message;Ljava/lang/Object;)Lcom/microsoft/azure/sdk/iot/device/IotHubMessageResult;

    move-result-object v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v2, "Sending acknowledgement for received cloud to device message ({})"

    invoke-interface {v1, v2, p1}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->iotHubTransportConnection:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportConnection;

    invoke-interface {v1, p1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportConnection;->sendMessageResult(Lcom/microsoft/azure/sdk/iot/device/Message;Lcom/microsoft/azure/sdk/iot/device/IotHubMessageResult;)Z
    :try_end_0
    .catch Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v2, "Sending acknowledgement for received cloud to device message failed, adding it back to the queue ({})"

    invoke-interface {v1, v2, p1, v0}, Lk/f/b;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->receivedMessagesQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 9
    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private addReceivedMessagesOverHttpToReceivedQueue()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->iotHubTransportConnection:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportConnection;

    check-cast v0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;->receiveMessage()Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v2, "Message was received from IotHub ({})"

    invoke-interface {v1, v2, v0}, Lk/f/b;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->receivedMessagesQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private addToCallbackQueue(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->getCallback()Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->callbackPacketsQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private cancelPendingPackets()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->waitingPacketsQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;

    :goto_0
    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->MESSAGE_CANCELLED_ONCLOSE:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->setStatus(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->addToCallbackQueue(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;)V

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->waitingPacketsQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->inProgressMessagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->inProgressPackets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;

    .line 8
    sget-object v3, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->MESSAGE_CANCELLED_ONCLOSE:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    invoke-virtual {v2, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->setStatus(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;)V

    .line 9
    invoke-direct {p0, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->addToCallbackQueue(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->inProgressPackets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkForExpiredMessages()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->waitingPacketsQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;

    .line 2
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->getMessage()Lcom/microsoft/azure/sdk/iot/device/Message;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/Message;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->MESSAGE_EXPIRED:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    invoke-virtual {v0, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->setStatus(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;)V

    .line 5
    invoke-direct {p0, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->addToCallbackQueue(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;)V

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/AbstractQueue;->add(Ljava/lang/Object;)Z

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->waitingPacketsQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->waitingPacketsQueue:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 9
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->inProgressMessagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->inProgressPackets:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 12
    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->inProgressPackets:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;

    invoke-virtual {v4}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->getMessage()Lcom/microsoft/azure/sdk/iot/device/Message;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/azure/sdk/iot/device/Message;->isExpired()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 13
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 15
    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->inProgressPackets:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;

    .line 16
    sget-object v3, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->MESSAGE_EXPIRED:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    invoke-virtual {v2, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->setStatus(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;)V

    .line 17
    invoke-direct {p0, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->addToCallbackQueue(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;)V

    goto :goto_3

    .line 18
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkForUnauthorizedException(Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->isSasTokenExpired()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/exceptions/MqttUnauthorizedException;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/microsoft/azure/sdk/iot/device/exceptions/UnauthorizedException;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpUnauthorizedAccessException;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->setRetryable(Z)V

    :cond_1
    return-void
.end method

.method private exceptionToStatusChangeReason(Ljava/lang/Throwable;)Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    if-eqz v0, :cond_3

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    .line 3
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->isRetryable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v1, "Mapping throwable to NO_NETWORK because it was a retryable exception"

    invoke-interface {v0, v1, p1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;->NO_NETWORK:Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;

    return-object p1

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->isSasTokenExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v1, "Mapping throwable to EXPIRED_SAS_TOKEN because it was a non-retryable exception and the saved sas token has expired"

    invoke-interface {v0, v1, p1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;->EXPIRED_SAS_TOKEN:Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;

    return-object p1

    .line 9
    :cond_1
    instance-of v0, p1, Lcom/microsoft/azure/sdk/iot/device/exceptions/UnauthorizedException;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/exceptions/MqttUnauthorizedException;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpUnauthorizedAccessException;

    if-eqz v0, :cond_3

    .line 10
    :cond_2
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v1, "Mapping throwable to BAD_CREDENTIAL because it was a non-retryable exception authorization exception but the saved sas token has not expired yet"

    invoke-interface {v0, v1, p1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;->BAD_CREDENTIAL:Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;

    return-object p1

    .line 12
    :cond_3
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v1, "Mapping exception throwable to COMMUNICATION_ERROR because the sdk was unable to classify the thrown exception to anything other category"

    invoke-interface {v0, v1, p1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;->COMMUNICATION_ERROR:Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;

    return-object p1
.end method

.method private handleDisconnection(Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v1, "Handling a disconnection event"

    invoke-interface {v0, v1, p1}, Lk/f/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->inProgressMessagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v2, "Due to disconnection event, clearing active queues, and re-queueing them to waiting queues to be re-processed later upon reconnection"

    invoke-interface {v1, v2}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->waitingPacketsQueue:Ljava/util/Queue;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->inProgressPackets:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->inProgressPackets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->DISCONNECTED_RETRYING:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->exceptionToStatusChangeReason(Ljava/lang/Throwable;)Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->updateStatus(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;Ljava/lang/Throwable;)V

    .line 8
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->checkForUnauthorizedException(Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;)V

    .line 9
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v1, "Starting reconnection logic"

    invoke-interface {v0, v1}, Lk/f/b;->b(Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->reconnect(Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;)V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private handleMessageException(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->getCurrentRetryAttempt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Handling an exception from sending message: Attempt number {}"

    invoke-interface {v0, v2, v1, p2}, Lk/f/b;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->incrementRetryAttempt()V

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->getStartTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->hasOperationTimedOut(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p2}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->isRetryable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->defaultConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getRetryPolicy()Lcom/microsoft/azure/sdk/iot/device/transport/RetryPolicy;

    move-result-object v0

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->getCurrentRetryAttempt()I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/microsoft/azure/sdk/iot/device/transport/RetryPolicy;->getRetryDecision(ILcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;)Lcom/microsoft/azure/sdk/iot/device/transport/RetryDecision;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/RetryDecision;->shouldRetry()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->taskScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport$MessageRetryRunnable;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->waitingPacketsQueue:Ljava/util/Queue;

    invoke-direct {v1, p0, v2, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport$MessageRetryRunnable;-><init>(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;Ljava/util/Queue;Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;)V

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/RetryDecision;->getDuration()J

    move-result-wide v2

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->getMessage()Lcom/microsoft/azure/sdk/iot/device/Message;

    move-result-object v1

    const-string v2, "Retry policy dictated that the message should be abandoned, so it has been abandoned ({})"

    invoke-interface {v0, v2, v1, p2}, Lk/f/b;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->getMessage()Lcom/microsoft/azure/sdk/iot/device/Message;

    move-result-object v1

    const-string v2, "Encountering an non-retryable exception while sending a message, so it has been abandoned ({})"

    invoke-interface {v0, v2, v1, p2}, Lk/f/b;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_2
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->getMessage()Lcom/microsoft/azure/sdk/iot/device/Message;

    move-result-object v1

    const-string v2, "The device operation timeout has been exceeded for the message, so it has been abandoned ({})"

    invoke-interface {v0, v2, v1, p2}, Lk/f/b;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    :goto_0
    instance-of v0, p2, Lcom/microsoft/azure/sdk/iot/device/exceptions/IotHubServiceException;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/IotHubServiceException;

    .line 12
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/IotHubServiceException;->getStatusCode()Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    move-result-object v0

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->ERROR:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    .line 13
    :goto_1
    instance-of p2, p2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpConnectionThrottledException;

    if-eqz p2, :cond_4

    .line 14
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->THROTTLED:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    .line 15
    :cond_4
    invoke-virtual {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->setStatus(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->addToCallbackQueue(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;)V

    return-void
.end method

.method private hasOperationTimedOut(J)Z
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->defaultConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getOperationTimeout()J

    move-result-wide p1

    cmp-long v3, v1, p1

    if-lez v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private invokeConnectionStateCallback(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->stateCallback:Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStateCallback;

    if-eqz v0, :cond_2

    .line 2
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->CONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    if-ne p1, v1, :cond_0

    .line 3
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;->CONNECTION_SUCCESS:Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;

    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->stateCallbackContext:Ljava/lang/Object;

    invoke-interface {v0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStateCallback;->execute(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;->EXPIRED_SAS_TOKEN:Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;

    if-ne p2, v1, :cond_1

    .line 5
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;->SAS_TOKEN_EXPIRED:Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;

    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->stateCallbackContext:Ljava/lang/Object;

    invoke-interface {v0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStateCallback;->execute(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    sget-object p2, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->DISCONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    if-ne p1, p2, :cond_2

    .line 7
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;->CONNECTION_DROP:Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;

    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->stateCallbackContext:Ljava/lang/Object;

    invoke-interface {v0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStateCallback;->execute(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionState;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private invokeConnectionStatusChangeCallback(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->connectionStatusChangeCallback:Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeCallback;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->connectionStatusChangeCallbackContext:Ljava/lang/Object;

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeCallback;->execute(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;Ljava/lang/Throwable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private isMessageValid(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->getMessage()Lcom/microsoft/azure/sdk/iot/device/Message;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/Message;->isExpired()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v3, "Message with has expired, adding to callbacks queue with MESSAGE_EXPIRED ({})"

    invoke-interface {v1, v3, v0}, Lk/f/b;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->MESSAGE_EXPIRED:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->setStatus(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->addToCallbackQueue(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;)V

    return v2

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->isSasTokenExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v1, "Creating a callback for the message with expired sas token with UNAUTHORIZED status"

    invoke-interface {v0, v1}, Lk/f/b;->c(Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->UNAUTHORIZED:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->setStatus(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;)V

    .line 9
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->addToCallbackQueue(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;)V

    .line 10
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->DISCONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;->EXPIRED_SAS_TOKEN:Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;

    new-instance v1, Ljava/lang/SecurityException;

    const-string v3, "Your sas token has expired"

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->updateStatus(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;Ljava/lang/Throwable;)V

    return v2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isSasTokenExpired()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->defaultConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getAuthenticationType()Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;->SAS_TOKEN:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->defaultConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    .line 2
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getSasTokenAuthentication()Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->isRenewalNecessary()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private openConnection()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->iotHubTransportConnection:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportConnection;

    if-nez v1, :cond_4

    .line 3
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->defaultConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getProtocol()Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_3

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_2

    const/4 v0, 0x4

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    const-string v1, "Protocol not supported"

    invoke-direct {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->defaultConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-direct {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->iotHubTransportConnection:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportConnection;

    goto :goto_1

    .line 6
    :cond_2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->defaultConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-direct {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->iotHubTransportConnection:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportConnection;

    goto :goto_1

    .line 7
    :cond_3
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->defaultConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-direct {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->iotHubTransportConnection:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportConnection;

    .line 8
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->iotHubTransportConnection:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportConnection;

    invoke-interface {v0, p0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportConnection;->setListener(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;)V

    .line 9
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->iotHubTransportConnection:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportConnection;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->deviceClientConfigs:Ljava/util/Queue;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportConnection;->open(Ljava/util/Queue;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 10
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->CONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;->CONNECTION_OK:Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->updateStatus(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;Ljava/lang/Throwable;)V

    return-void
.end method

.method private reconnect(Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->reconnectionAttemptStartTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->reconnectionAttemptStartTimeMillis:J

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->reconnectionAttemptStartTimeMillis:J

    invoke-direct {p0, v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->hasOperationTimedOut(J)Z

    move-result v0

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->connectionStatus:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    sget-object v3, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->DISCONNECTED_RETRYING:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    if-ne v2, v3, :cond_2

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->isRetryable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    iget v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->currentReconnectionAttempt:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Attempting reconnect attempt {}"

    invoke-interface {v0, v2, v1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->currentReconnectionAttempt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->currentReconnectionAttempt:I

    .line 8
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->defaultConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getRetryPolicy()Lcom/microsoft/azure/sdk/iot/device/transport/RetryPolicy;

    move-result-object v0

    .line 9
    iget v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->currentReconnectionAttempt:I

    invoke-interface {v0, v1, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/RetryPolicy;->getRetryDecision(ILcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;)Lcom/microsoft/azure/sdk/iot/device/transport/RetryDecision;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/transport/RetryDecision;->shouldRetry()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v0, "Sleeping between reconnect attempts"

    invoke-interface {p1, v0}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/transport/RetryDecision;->getDuration()J

    move-result-wide v2

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->sleepUninterruptibly(JLjava/util/concurrent/TimeUnit;)V

    .line 13
    iget-wide v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->reconnectionAttemptStartTimeMillis:J

    invoke-direct {p0, v2, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->hasOperationTimedOut(J)Z

    move-result v0

    .line 14
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->singleReconnectAttempt()Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 15
    :try_start_0
    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/transport/RetryDecision;->shouldRetry()Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v1, "Reconnection was abandoned due to the retry policy"

    invoke-interface {v0, v1}, Lk/f/b;->b(Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;->RETRY_EXPIRED:Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->close(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 18
    :cond_3
    iget-wide v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->reconnectionAttemptStartTimeMillis:J

    invoke-direct {p0, v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->hasOperationTimedOut(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v1, "Reconnection was abandoned due to the operation timeout"

    invoke-interface {v0, v1}, Lk/f/b;->b(Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;->RETRY_EXPIRED:Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;

    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/exceptions/DeviceOperationTimeoutException;

    const-string v2, "Device operation for reconnection timed out"

    invoke-direct {v1, v2}, Lcom/microsoft/azure/sdk/iot/device/exceptions/DeviceOperationTimeoutException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->close(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    .line 21
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->isRetryable()Z

    move-result v0

    if-nez v0, :cond_5

    .line 22
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v1, "Reconnection was abandoned due to encountering a non-retryable exception"

    invoke-interface {v0, v1, p1}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->exceptionToStatusChangeReason(Ljava/lang/Throwable;)Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->close(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lcom/microsoft/azure/sdk/iot/device/exceptions/DeviceClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 24
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v2, "Encountered an exception while closing the client object, client instance should no longer be used as the state is unknown"

    invoke-interface {v1, v2, v0}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->DISCONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;->COMMUNICATION_ERROR:Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;

    invoke-direct {p0, v0, v1, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->updateStatus(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private sendPacket(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->getMessage()Lcom/microsoft/azure/sdk/iot/device/Message;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->defaultConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    .line 3
    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getProtocol()Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->isMessageAckNeeded(Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->inProgressMessagesLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    sget-object v3, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v4, "Adding transport message to the inProgressPackets to wait for acknowledgement ({})"

    invoke-interface {v3, v4, v0}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->inProgressPackets:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3

    .line 8
    :cond_2
    :goto_2
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v3, "Sending message ({})"

    invoke-interface {v2, v3, v0}, Lk/f/b;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->iotHubTransportConnection:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportConnection;

    invoke-interface {v2, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportConnection;->sendMessage(Lcom/microsoft/azure/sdk/iot/device/Message;)Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    move-result-object v2

    .line 10
    sget-object v3, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v4, "Sent message ({}) to protocol level, returned status code was {}"

    invoke-interface {v3, v4, v0, v2}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    sget-object v3, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK_EMPTY:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    if-eq v2, v3, :cond_3

    sget-object v3, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    if-eq v2, v3, :cond_3

    .line 12
    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->inProgressPackets:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;

    const-string v4, ""

    invoke-static {v2, v4}, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->getConnectionStatusException(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/exceptions/IotHubServiceException;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->handleMessageException(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;)V

    goto :goto_4

    :cond_3
    if-nez v1, :cond_5

    .line 13
    invoke-virtual {p1, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->setStatus(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->addToCallbackQueue(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;)V
    :try_end_2
    .catch Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v2

    .line 15
    sget-object v3, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/Message;->getCorrelationId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Encountered exception while sending message with correlation id {}"

    invoke-interface {v3, v5, v4, v2}, Lk/f/b;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v1, :cond_4

    .line 16
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->inProgressMessagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_3
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->inProgressPackets:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;

    .line 18
    monitor-exit v1

    goto :goto_3

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 19
    :cond_4
    :goto_3
    invoke-direct {p0, p1, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->handleMessageException(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;)V

    :cond_5
    :goto_4
    return-void
.end method

.method private singleReconnectAttempt()Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v1, "Attempting to close and re-open the iot hub transport connection..."

    invoke-interface {v0, v1}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->iotHubTransportConnection:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportConnection;

    invoke-interface {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportConnection;->close()V

    .line 3
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->openConnection()V

    .line 4
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v1, "Successfully closed and re-opened the iot hub transport connection"

    invoke-interface {v0, v1}, Lk/f/b;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-direct {p0, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->checkForUnauthorizedException(Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;)V

    .line 6
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v2, "Failed to close and re-open the iot hub transport connection, checking if another retry attempt should be made"

    invoke-interface {v1, v2, v0}, Lk/f/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static sleepUninterruptibly(JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p0

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v1, p0

    .line 3
    :goto_0
    :try_start_1
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void

    :catch_0
    const/4 v0, 0x1

    .line 5
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long p0, v1, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 7
    :cond_1
    throw p0
.end method

.method private updateStatus(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->connectionStatus:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    if-eq v0, p1, :cond_1

    const/4 v0, 0x0

    const-string v1, "Updating transport status to new status {} with reason {}"

    if-nez p3, :cond_0

    .line 2
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    invoke-interface {v2, v1, p1, p2}, Lk/f/b;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-interface {v2, v1, v3}, Lk/f/b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->connectionStatus:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    .line 5
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v2, "Invoking connection status callbacks with new status details"

    invoke-interface {v1, v2}, Lk/f/b;->b(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->invokeConnectionStateCallback(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;)V

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->invokeConnectionStatusChangeCallback(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;Ljava/lang/Throwable;)V

    .line 8
    sget-object p2, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->CONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    if-ne p1, p2, :cond_1

    .line 9
    iput v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->currentReconnectionAttempt:I

    const-wide/16 p1, 0x0

    .line 10
    iput-wide p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->reconnectionAttemptStartTimeMillis:J

    :cond_1
    return-void
.end method


# virtual methods
.method public addMessage(Lcom/microsoft/azure/sdk/iot/device/Message;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->connectionStatus:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->DISCONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;-><init>(Lcom/microsoft/azure/sdk/iot/device/Message;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;J)V

    .line 3
    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->waitingPacketsQueue:Ljava/util/Queue;

    invoke-interface {p2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object p2, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string p3, "Message was queued to be sent later ({})"

    invoke-interface {p2, p3, p1}, Lk/f/b;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add a message when the transport is closed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p1, :cond_3

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->cancelPendingPackets()V

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->invokeCallbacks()V

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->taskScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->iotHubTransportConnection:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportConnection;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportConnection;->close()V

    .line 10
    :cond_2
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->DISCONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    invoke-direct {p0, v0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->updateStatus(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;Ljava/lang/Throwable;)V

    .line 11
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string p2, "Client connection closed successfully"

    invoke-interface {p1, p2}, Lk/f/b;->c(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "reason cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public handleMessage()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->connectionStatus:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->CONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->iotHubTransportConnection:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportConnection;

    instance-of v0, v0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsIotHubConnection;

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v1, "Sending http request to check for any cloud to device messages..."

    invoke-interface {v0, v1}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->addReceivedMessagesOverHttpToReceivedQueue()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->receivedMessagesQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->acknowledgeReceivedMessage(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;)V

    :cond_1
    return-void
.end method

.method public invokeCallbacks()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->callbackPacketsQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;

    :goto_0
    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->getStatus()Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->getCallback()Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;

    move-result-object v2

    .line 4
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->getContext()Ljava/lang/Object;

    move-result-object v3

    .line 5
    sget-object v4, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->getMessage()Lcom/microsoft/azure/sdk/iot/device/Message;

    move-result-object v0

    const-string v5, "Invoking the callback function for sent message, IoT Hub responded to message ({}) with status {}"

    invoke-interface {v4, v5, v0, v1}, Lk/f/b;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    invoke-interface {v2, v1, v3}, Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;->execute(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->callbackPacketsQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->inProgressMessagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->waitingPacketsQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->inProgressPackets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->callbackPacketsQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onConnectionEstablished(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->iotHubTransportConnection:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportConnection;

    invoke-interface {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportConnection;->getConnectionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v0, "The connection to the IoT Hub has been established"

    invoke-interface {p1, v0}, Lk/f/b;->c(Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->CONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;->CONNECTION_OK:Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->updateStatus(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onConnectionLost(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->reconnectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->iotHubTransportConnection:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportConnection;

    invoke-interface {v1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportConnection;->getConnectionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string p2, "OnConnectionLost was fired, but for an outdated connection. Ignoring..."

    invoke-interface {p1, p2}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->connectionStatus:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->CONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    if-eq p2, v1, :cond_1

    .line 6
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string p2, "OnConnectionLost was fired, but connection is already disocnnected. Ignoring..."

    invoke-interface {p1, p2}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_1
    instance-of p2, p1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    if-eqz p2, :cond_2

    .line 9
    check-cast p1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->handleDisconnection(Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;)V

    goto :goto_0

    .line 10
    :cond_2
    new-instance p2, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    invoke-direct {p2, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, p2}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->handleDisconnection(Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;)V

    .line 11
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onMessageReceived(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v1, "Exception encountered while receiving a message from service {}"

    invoke-interface {v0, v1, p1, p2}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    sget-object p2, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v0, "Message was received from IotHub ({})"

    invoke-interface {p2, v0, p1}, Lk/f/b;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->receivedMessagesQueue:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v0, "Exception encountered while receiving messages from service"

    invoke-interface {p1, v0, p2}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onMessageSent(Lcom/microsoft/azure/sdk/iot/device/Message;Ljava/lang/Throwable;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string p2, "onMessageSent called with null message"

    invoke-interface {p1, p2}, Lk/f/b;->d(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v1, "IotHub message was acknowledged. Checking if there is record of sending this message ({})"

    invoke-interface {v0, v1, p1}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->inProgressMessagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->inProgressPackets:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    if-nez p2, :cond_1

    .line 6
    sget-object p2, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v0, "Message was sent by this client, adding it to callbacks queue with OK_EMPTY ({})"

    invoke-interface {p2, v0, p1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK_EMPTY:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    invoke-virtual {v1, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->setStatus(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;)V

    .line 8
    invoke-direct {p0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->addToCallbackQueue(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;)V

    goto :goto_0

    .line 9
    :cond_1
    instance-of p1, p2, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    if-eqz p1, :cond_2

    .line 10
    check-cast p2, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    invoke-direct {p0, v1, p2}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->handleMessageException(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;)V

    goto :goto_0

    .line 11
    :cond_2
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    invoke-direct {p1, p2}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v1, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->handleMessageException(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;)V

    goto :goto_0

    .line 12
    :cond_3
    sget-object p2, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v0, "A message was acknowledged by IoT Hub, but this client has no record of sending it ({})"

    invoke-interface {p2, v0, p1}, Lk/f/b;->c(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public open(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->connectionStatus:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->CONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->connectionStatus:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->DISCONNECTED_RETRYING:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    if-eq v0, v1, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->isSasTokenExpired()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->deviceClientConfigs:Ljava/util/Queue;

    .line 6
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->defaultConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    const/4 p1, 0x1

    .line 7
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->taskScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->openConnection()V

    .line 9
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v0, "Client connection opened successfully"

    invoke-interface {p1, v0}, Lk/f/b;->c(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Your sas token has expired"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    const-string v0, "Open cannot be called while transport is reconnecting"

    invoke-direct {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "deviceClientConfigs cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerConnectionStateCallback(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStateCallback;Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->stateCallback:Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStateCallback;

    .line 2
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->stateCallbackContext:Ljava/lang/Object;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Callback cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerConnectionStatusChangeCallback(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeCallback;Ljava/lang/Object;)V
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Callback cannot be null if callback context is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->connectionStatusChangeCallback:Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeCallback;

    .line 3
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->connectionStatusChangeCallbackContext:Ljava/lang/Object;

    return-void
.end method

.method public sendMessages()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->checkForExpiredMessages()V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->connectionStatus:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->DISCONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->connectionStatus:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->DISCONNECTED_RETRYING:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0xa

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->connectionStatus:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->CONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    if-ne v1, v2, :cond_2

    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->waitingPacketsQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->getMessage()Lcom/microsoft/azure/sdk/iot/device/Message;

    move-result-object v2

    .line 6
    sget-object v3, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->log:Lk/f/b;

    const-string v4, "Dequeued a message from waiting queue to be sent ({})"

    invoke-interface {v3, v4, v2}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v2, :cond_1

    .line 7
    invoke-direct {p0, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->isMessageValid(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-direct {p0, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->sendPacket(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;)V

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
