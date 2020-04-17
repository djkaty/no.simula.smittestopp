.class public Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;
.super Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;
.source "SourceFile"


# static fields
.field public static final log:Lk/f/b;


# instance fields
.field public final BACKSLASH:Ljava/lang/String;

.field public final METHOD:Ljava/lang/String;

.field public final METHOD_TOKEN:I

.field public final POST:Ljava/lang/String;

.field public final POST_TOKEN:I

.field public final POUND:Ljava/lang/String;

.field public final QUESTION:Ljava/lang/String;

.field public final REQID_TOKEN:I

.field public final REQ_ID:Ljava/lang/String;

.field public final RES:Ljava/lang/String;

.field public isStarted:Z

.field public final requestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;",
            ">;"
        }
    .end annotation
.end field

.field public responseTopic:Ljava/lang/String;

.field public subscribeTopic:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->log:Lk/f/b;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/microsoft/azure/sdk/iot/device/Message;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;-><init>(Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessageListener;Ljava/lang/String;Ljava/util/Map;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->requestMap:Ljava/util/Map;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->isStarted:Z

    const-string p1, "#"

    .line 4
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->POUND:Ljava/lang/String;

    const-string p1, "/"

    .line 5
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->BACKSLASH:Ljava/lang/String;

    const-string p1, "?"

    .line 6
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->QUESTION:Ljava/lang/String;

    const-string p1, "$iothub/methods/"

    .line 7
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->METHOD:Ljava/lang/String;

    const-string p1, "$iothub/methods/POST"

    .line 8
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->POST:Ljava/lang/String;

    const-string p1, "$iothub/methods/res"

    .line 9
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->RES:Ljava/lang/String;

    const-string p2, "?$rid="

    .line 10
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->REQ_ID:Ljava/lang/String;

    const/4 p2, 0x2

    .line 11
    iput p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->POST_TOKEN:I

    const/4 p2, 0x3

    .line 12
    iput p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->METHOD_TOKEN:I

    const/4 p2, 0x4

    .line 13
    iput p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->REQID_TOKEN:I

    const-string p2, "$iothub/methods/POST/#"

    .line 14
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->subscribeTopic:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->responseTopic:Ljava/lang/String;

    return-void
.end method

.method private throwMethodsTransportException(Ljava/lang/Exception;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/Throwable;)V

    .line 5
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;->METHODS:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->setIotHubService(Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;)V

    .line 6
    throw v0
.end method

.method private throwMethodsTransportException(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;->METHODS:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->setIotHubService(Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;)V

    .line 3
    throw v0
.end method


# virtual methods
.method public receive()Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->incomingLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->peekMessage()Lk/a/a/b/e/b;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3
    invoke-virtual {v2}, Lk/a/a/b/e/b;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 5
    invoke-virtual {v2}, Lk/a/a/b/e/b;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x10

    if-le v4, v5, :cond_2

    const-string v4, "$iothub/methods/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x14

    if-le v4, v5, :cond_2

    const-string v4, "$iothub/methods/POST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->allReceivedMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 9
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/TopicParser;

    invoke-direct {v1, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/TopicParser;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    .line 10
    array-length v3, v2

    if-lez v3, :cond_0

    .line 11
    new-instance v3, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    sget-object v4, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_METHODS:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    invoke-direct {v3, v2, v4}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;-><init>([BLcom/microsoft/azure/sdk/iot/device/MessageType;)V

    move-object v2, v3

    goto :goto_0

    .line 12
    :cond_0
    new-instance v2, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    const/4 v3, 0x0

    new-array v3, v3, [B

    sget-object v4, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_METHODS:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    invoke-direct {v2, v3, v4}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;-><init>([BLcom/microsoft/azure/sdk/iot/device/MessageType;)V

    .line 13
    :goto_0
    sget-object v3, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_UNKNOWN:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    invoke-virtual {v2, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setDeviceOperationType(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;)V

    const/4 v3, 0x3

    .line 14
    invoke-virtual {v1, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/TopicParser;->getMethodName(I)Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {v2, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setMethodName(Ljava/lang/String;)V

    const/4 v3, 0x4

    .line 16
    invoke-virtual {v1, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/TopicParser;->getRequestId(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 17
    invoke-virtual {v2, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setRequestId(Ljava/lang/String;)V

    .line 18
    sget-object v3, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_METHOD_RECEIVE_REQUEST:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    invoke-virtual {v2, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setDeviceOperationType(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;)V

    .line 19
    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->requestMap:Ljava/util/Map;

    sget-object v4, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_METHOD_RECEIVE_REQUEST:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v1, "Request ID cannot be null"

    .line 20
    invoke-direct {p0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->throwMethodsTransportException(Ljava/lang/String;)V

    :goto_1
    move-object v1, v2

    .line 21
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public send(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;)V
    .locals 3

    if-eqz p1, :cond_7

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getBytes()[B

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2
    iget-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->isStarted:Z

    if-nez v0, :cond_0

    const-string v0, "Start device method before using send"

    .line 3
    invoke-direct {p0, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->throwMethodsTransportException(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageType()Lcom/microsoft/azure/sdk/iot/device/MessageType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_METHODS:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    if-eq v0, v1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getDeviceOperationType()Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    const-string p1, "Mismatched device method operation"

    .line 6
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->throwMethodsTransportException(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getRequestId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 8
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->requestMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->requestMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    const-string v0, "Mismatched request and response operation"

    .line 10
    invoke-direct {p0, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->throwMethodsTransportException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "Sending a response for the method that was never invoked"

    .line 11
    invoke-direct {p0, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->throwMethodsTransportException(Ljava/lang/String;)V

    .line 12
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->responseTopic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?$rid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->publish(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/device/Message;)V

    goto :goto_1

    .line 16
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request id cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_6
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->subscribeTopic:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->subscribe(Ljava/lang/String;)V

    :goto_1
    return-void

    .line 18
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public start()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->isStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->isStarted:Z

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->isStarted:Z

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->requestMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->log:Lk/f/b;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->requestMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Pending {} responses to be sent to IotHub yet unsubscribed"

    invoke-interface {v0, v2, v1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
