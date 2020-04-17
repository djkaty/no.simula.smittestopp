.class public final Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceTelemetry;
.super Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;
.source "SourceFile"


# static fields
.field public static final CORRELATION_ID_KEY:Ljava/lang/String; = "com.microsoft:channel-correlation-id"

.field public static final RECEIVER_LINK_ENDPOINT_PATH_DEVICES:Ljava/lang/String; = "/devices/%s/messages/devicebound"

.field public static final RECEIVER_LINK_ENDPOINT_PATH_MODULES:Ljava/lang/String; = "/devices/%s/modules/%s/messages/devicebound"

.field public static final RECEIVER_LINK_ENDPOINT_PATH_MODULES_EDGEHUB:Ljava/lang/String; = "/devices/%s/modules/%s/messages/events"

.field public static final RECEIVER_LINK_TAG_PREFIX:Ljava/lang/String; = "receiver_link_telemetry-"

.field public static final SENDER_LINK_ENDPOINT_PATH_DEVICES:Ljava/lang/String; = "/devices/%s/messages/events"

.field public static final SENDER_LINK_ENDPOINT_PATH_MODULES:Ljava/lang/String; = "/devices/%s/modules/%s/messages/events"

.field public static final SENDER_LINK_TAG_PREFIX:Ljava/lang/String; = "sender_link_telemetry-"


# instance fields
.field public deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getGatewayHostname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "/devices/%s/modules/%s/messages/events"

    goto :goto_0

    :cond_0
    const-string v0, "/devices/%s/modules/%s/messages/devicebound"

    :goto_0
    move-object v6, v0

    const-string v3, "/devices/%s/messages/events"

    const-string v4, "/devices/%s/messages/devicebound"

    const-string v5, "/devices/%s/modules/%s/messages/events"

    const-string v7, "sender_link_telemetry-"

    const-string v8, "receiver_link_telemetry-"

    move-object v1, p0

    move-object v2, p1

    .line 2
    invoke-direct/range {v1 .. v8}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceTelemetry;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getModuleId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.microsoft:channel-correlation-id"

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->amqpProperties:Ljava/util/Map;

    invoke-static {v0}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceTelemetry;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v3}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->amqpProperties:Ljava/util/Map;

    invoke-static {v0}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceTelemetry;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method


# virtual methods
.method public convertFromProton(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertFromProtonReturnValue;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;->getAmqpsMessageType()Lcom/microsoft/azure/sdk/iot/device/MessageType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;->getAmqpsMessageType()Lcom/microsoft/azure/sdk/iot/device/MessageType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_TELEMETRY:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceTelemetry;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    .line 2
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceTelemetry;->protonMessageToIoTHubMessage(Lk/a/b/a/f/d/a;)Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getInputName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceTelemetryMessageCallback(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/MessageCallback;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getInputName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceTelemetryMessageContext(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 6
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertFromProtonReturnValue;

    invoke-direct {v1, p1, v0, p2}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertFromProtonReturnValue;-><init>(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;Lcom/microsoft/azure/sdk/iot/device/MessageCallback;Ljava/lang/Object;)V

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public convertToProton(Lcom/microsoft/azure/sdk/iot/device/Message;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertToProtonReturnValue;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageType()Lcom/microsoft/azure/sdk/iot/device/MessageType;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageType()Lcom/microsoft/azure/sdk/iot/device/MessageType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_TELEMETRY:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceTelemetry;->iotHubMessageToProtonMessage(Lcom/microsoft/azure/sdk/iot/device/Message;)Lk/a/b/a/f/d/a;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertToProtonReturnValue;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_TELEMETRY:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    invoke-direct {v0, p1, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertToProtonReturnValue;-><init>(Lk/a/b/a/f/d/a;Lcom/microsoft/azure/sdk/iot/device/MessageType;)V

    return-object v0
.end method

.method public getLinkInstanceType()Ljava/lang/String;
    .locals 1

    const-string v0, "telemetry"

    return-object v0
.end method

.method public getMessageFromReceiverLink(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getMessageFromReceiverLink(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_TELEMETRY:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;->setAmqpsMessageType(Lcom/microsoft/azure/sdk/iot/device/MessageType;)V

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceTelemetry;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;->setDeviceClientConfig(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V

    :cond_0
    return-object p1
.end method

.method public iotHubMessageToProtonMessage(Lcom/microsoft/azure/sdk/iot/device/Message;)Lk/a/b/a/f/d/a;
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->iotHubMessageToProtonMessage(Lcom/microsoft/azure/sdk/iot/device/Message;)Lk/a/b/a/f/d/a;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getOutputName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lk/a/b/a/f/d/a;->getApplicationProperties()Lk/a/b/a/b/k/d;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lk/a/b/a/f/d/a;->getApplicationProperties()Lk/a/b/a/b/k/d;

    move-result-object v1

    .line 4
    iget-object v1, v1, Lk/a/b/a/b/k/d;->a:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getOutputName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "iothub-outputname"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v0}, Lk/a/b/a/f/d/a;->getApplicationProperties()Lk/a/b/a/b/k/d;

    move-result-object p1

    .line 8
    iget-object p1, p1, Lk/a/b/a/b/k/d;->a:Ljava/util/Map;

    .line 9
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 10
    new-instance p1, Lk/a/b/a/b/k/d;

    invoke-direct {p1, v1}, Lk/a/b/a/b/k/d;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p1}, Lk/a/b/a/f/d/a;->setApplicationProperties(Lk/a/b/a/b/k/d;)V

    :cond_0
    return-object v0
.end method

.method public protonMessageToIoTHubMessage(Lk/a/b/a/f/d/a;)Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->protonMessageToIoTHubMessage(Lk/a/b/a/f/d/a;)Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_TELEMETRY:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/Message;->setMessageType(Lcom/microsoft/azure/sdk/iot/device/MessageType;)V

    .line 3
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_UNKNOWN:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setDeviceOperationType(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;)V

    .line 4
    invoke-virtual {p1}, Lk/a/b/a/f/d/a;->getMessageAnnotations()Lk/a/b/a/b/k/m;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lk/a/b/a/f/d/a;->getMessageAnnotations()Lk/a/b/a/b/k/m;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lk/a/b/a/b/k/m;->a:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lk/a/b/a/f/d/a;->getMessageAnnotations()Lk/a/b/a/b/k/m;

    move-result-object p1

    .line 7
    iget-object p1, p1, Lk/a/b/a/b/k/m;->a:Ljava/util/Map;

    .line 8
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/a/b/a/b/f;

    .line 10
    iget-object v2, v2, Lk/a/b/a/b/f;->x:Ljava/lang/String;

    const-string v3, "x-opt-input-name"

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/Message;->setInputName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public declared-synchronized sendMessageAndGetDeliveryTag(Lcom/microsoft/azure/sdk/iot/device/MessageType;[BII[B)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSendReturnValue;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_TELEMETRY:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-super/range {p0 .. p5}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->sendMessageAndGetDeliveryTag(Lcom/microsoft/azure/sdk/iot/device/MessageType;[BII[B)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSendReturnValue;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSendReturnValue;

    const/4 p2, 0x0

    const/4 p3, -0x1

    invoke-direct {p1, p2, p3}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSendReturnValue;-><init>(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
