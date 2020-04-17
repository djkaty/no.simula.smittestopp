.class public final Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceMethods;
.super Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;
.source "SourceFile"


# static fields
.field public static final APPLICATION_PROPERTY_KEY_IOTHUB_METHOD_NAME:Ljava/lang/String; = "IoThub-methodname"

.field public static final APPLICATION_PROPERTY_KEY_IOTHUB_STATUS:Ljava/lang/String; = "IoThub-status"

.field public static final CORRELATION_ID_KEY:Ljava/lang/String; = "com.microsoft:channel-correlation-id"

.field public static final CORRELATION_ID_KEY_PREFIX:Ljava/lang/String; = "methods:"

.field public static final RECEIVER_LINK_ENDPOINT_PATH:Ljava/lang/String; = "/devices/%s/methods/devicebound"

.field public static final RECEIVER_LINK_ENDPOINT_PATH_MODULES:Ljava/lang/String; = "/devices/%s/modules/%s/methods/devicebound"

.field public static final RECEIVER_LINK_TAG_PREFIX:Ljava/lang/String; = "receiver_link_devicemethods-"

.field public static final SENDER_LINK_ENDPOINT_PATH:Ljava/lang/String; = "/devices/%s/methods/devicebound"

.field public static final SENDER_LINK_ENDPOINT_PATH_MODULES:Ljava/lang/String; = "/devices/%s/modules/%s/methods/devicebound"

.field public static final SENDER_LINK_TAG_PREFIX:Ljava/lang/String; = "sender_link_devicemethods-"


# instance fields
.field public deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V
    .locals 8

    const-string v2, "/devices/%s/methods/devicebound"

    const-string v3, "/devices/%s/methods/devicebound"

    const-string v4, "/devices/%s/modules/%s/methods/devicebound"

    const-string v5, "/devices/%s/modules/%s/methods/devicebound"

    const-string v6, "sender_link_devicemethods-"

    const-string v7, "receiver_link_devicemethods-"

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceMethods;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getModuleId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "methods:"

    const-string v1, "com.microsoft:channel-correlation-id"

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->amqpProperties:Ljava/util/Map;

    invoke-static {v1}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v1

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->amqpProperties:Ljava/util/Map;

    invoke-static {v1}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v1

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->amqpProperties:Ljava/util/Map;

    const-string v0, "com.microsoft:api-version"

    invoke-static {v0}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/TransportUtils;->IOTHUB_API_VERSION:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public convertFromProton(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertFromProtonReturnValue;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;->getAmqpsMessageType()Lcom/microsoft/azure/sdk/iot/device/MessageType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_METHODS:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceMethods;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    .line 2
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceMethods;->protonMessageToIoTHubMessage(Lk/a/b/a/f/d/a;)Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    move-result-object p1

    .line 4
    invoke-virtual {p2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceMethodsMessageCallback()Lcom/microsoft/azure/sdk/iot/device/MessageCallback;

    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceMethodsMessageContext()Ljava/lang/Object;

    move-result-object p2

    .line 6
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertFromProtonReturnValue;

    invoke-direct {v1, p1, v0, p2}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertFromProtonReturnValue;-><init>(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;Lcom/microsoft/azure/sdk/iot/device/MessageCallback;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public convertToProton(Lcom/microsoft/azure/sdk/iot/device/Message;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertToProtonReturnValue;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageType()Lcom/microsoft/azure/sdk/iot/device/MessageType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_METHODS:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceMethods;->iotHubMessageToProtonMessage(Lcom/microsoft/azure/sdk/iot/device/Message;)Lk/a/b/a/f/d/a;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertToProtonReturnValue;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_METHODS:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    invoke-direct {v0, p1, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertToProtonReturnValue;-><init>(Lk/a/b/a/f/d/a;Lcom/microsoft/azure/sdk/iot/device/MessageType;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLinkInstanceType()Ljava/lang/String;
    .locals 1

    const-string v0, "methods"

    return-object v0
.end method

.method public getMessageFromReceiverLink(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getMessageFromReceiverLink(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_METHODS:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;->setAmqpsMessageType(Lcom/microsoft/azure/sdk/iot/device/MessageType;)V

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceMethods;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

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
    check-cast p1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    .line 3
    invoke-virtual {v0}, Lk/a/b/a/f/d/a;->getProperties()Lk/a/b/a/b/k/p;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lk/a/b/a/f/d/a;->getProperties()Lk/a/b/a/b/k/p;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lk/a/b/a/b/k/p;

    invoke-direct {v1}, Lk/a/b/a/b/k/p;-><init>()V

    .line 6
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getRequestId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    .line 8
    iput-object v2, v1, Lk/a/b/a/b/k/p;->f:Ljava/lang/Object;

    .line 9
    :cond_1
    invoke-virtual {v0, v1}, Lk/a/b/a/f/d/a;->setProperties(Lk/a/b/a/b/k/p;)V

    .line 10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getStatus()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "IoThub-status"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 14
    invoke-virtual {v0}, Lk/a/b/a/f/d/a;->getApplicationProperties()Lk/a/b/a/b/k/d;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lk/a/b/a/f/d/a;->getApplicationProperties()Lk/a/b/a/b/k/d;

    move-result-object p1

    .line 15
    iget-object p1, p1, Lk/a/b/a/b/k/d;->a:Ljava/util/Map;

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {v0}, Lk/a/b/a/f/d/a;->getApplicationProperties()Lk/a/b/a/b/k/d;

    move-result-object p1

    .line 17
    iget-object p1, p1, Lk/a/b/a/b/k/d;->a:Ljava/util/Map;

    .line 18
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 19
    :cond_3
    new-instance p1, Lk/a/b/a/b/k/d;

    invoke-direct {p1, v1}, Lk/a/b/a/b/k/d;-><init>(Ljava/util/Map;)V

    .line 20
    invoke-virtual {v0, p1}, Lk/a/b/a/f/d/a;->setApplicationProperties(Lk/a/b/a/b/k/d;)V

    return-object v0
.end method

.method public protonMessageToIoTHubMessage(Lk/a/b/a/f/d/a;)Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->protonMessageToIoTHubMessage(Lk/a/b/a/f/d/a;)Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_METHODS:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/Message;->setMessageType(Lcom/microsoft/azure/sdk/iot/device/MessageType;)V

    .line 3
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_METHOD_RECEIVE_REQUEST:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setDeviceOperationType(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;)V

    .line 4
    invoke-virtual {p1}, Lk/a/b/a/f/d/a;->getApplicationProperties()Lk/a/b/a/b/k/d;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lk/a/b/a/f/d/a;->getApplicationProperties()Lk/a/b/a/b/k/d;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lk/a/b/a/b/k/d;->a:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p1}, Lk/a/b/a/f/d/a;->getApplicationProperties()Lk/a/b/a/b/k/d;

    move-result-object v1

    .line 7
    iget-object v1, v1, Lk/a/b/a/b/k/d;->a:Ljava/util/Map;

    const-string v2, "IoThub-methodname"

    .line 8
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setMethodName(Ljava/lang/String;)V

    .line 10
    :cond_0
    invoke-virtual {p1}, Lk/a/b/a/f/d/a;->getProperties()Lk/a/b/a/b/k/p;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lk/a/b/a/f/d/a;->getProperties()Lk/a/b/a/b/k/p;

    move-result-object v1

    .line 11
    iget-object v1, v1, Lk/a/b/a/b/k/p;->f:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {p1}, Lk/a/b/a/f/d/a;->getProperties()Lk/a/b/a/b/k/p;

    move-result-object p1

    .line 13
    iget-object p1, p1, Lk/a/b/a/b/k/p;->f:Ljava/lang/Object;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setRequestId(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public declared-synchronized sendMessageAndGetDeliveryTag(Lcom/microsoft/azure/sdk/iot/device/MessageType;[BII[B)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSendReturnValue;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_METHODS:Lcom/microsoft/azure/sdk/iot/device/MessageType;

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
