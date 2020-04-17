.class public final Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceTwin;
.super Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;
.source "SourceFile"


# static fields
.field public static final CORRELATION_ID_KEY:Ljava/lang/String; = "com.microsoft:channel-correlation-id"

.field public static final CORRELATION_ID_KEY_PREFIX:Ljava/lang/String; = "twin:"

.field public static final DEFAULT_STATUS_CODE:Ljava/lang/String; = "200"

.field public static final MESSAGE_ANNOTATION_FIELD_KEY_OPERATION:Ljava/lang/String; = "operation"

.field public static final MESSAGE_ANNOTATION_FIELD_KEY_RESOURCE:Ljava/lang/String; = "resource"

.field public static final MESSAGE_ANNOTATION_FIELD_KEY_STATUS:Ljava/lang/String; = "status"

.field public static final MESSAGE_ANNOTATION_FIELD_KEY_VERSION:Ljava/lang/String; = "version"

.field public static final MESSAGE_ANNOTATION_FIELD_VALUE_DELETE:Ljava/lang/String; = "DELETE"

.field public static final MESSAGE_ANNOTATION_FIELD_VALUE_GET:Ljava/lang/String; = "GET"

.field public static final MESSAGE_ANNOTATION_FIELD_VALUE_NOTIFICATIONS_TWIN_PROPERTIES_DESIRED:Ljava/lang/String; = "/notifications/twin/properties/desired"

.field public static final MESSAGE_ANNOTATION_FIELD_VALUE_PATCH:Ljava/lang/String; = "PATCH"

.field public static final MESSAGE_ANNOTATION_FIELD_VALUE_PROPERTIES_DESIRED:Ljava/lang/String; = "/properties/desired"

.field public static final MESSAGE_ANNOTATION_FIELD_VALUE_PROPERTIES_REPORTED:Ljava/lang/String; = "/properties/reported"

.field public static final MESSAGE_ANNOTATION_FIELD_VALUE_PUT:Ljava/lang/String; = "PUT"

.field public static final RECEIVER_LINK_ENDPOINT_PATH:Ljava/lang/String; = "/devices/%s/twin"

.field public static final RECEIVER_LINK_ENDPOINT_PATH_MODULES:Ljava/lang/String; = "/devices/%s/modules/%s/twin"

.field public static final RECEIVER_LINK_TAG_PREFIX:Ljava/lang/String; = "receiver_link_devicetwin-"

.field public static final SENDER_LINK_ENDPOINT_PATH:Ljava/lang/String; = "/devices/%s/twin"

.field public static final SENDER_LINK_ENDPOINT_PATH_MODULES:Ljava/lang/String; = "/devices/%s/modules/%s/twin"

.field public static final SENDER_LINK_TAG_PREFIX:Ljava/lang/String; = "sender_link_devicetwin-"


# instance fields
.field public correlationIdList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;",
            ">;"
        }
    .end annotation
.end field

.field public deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V
    .locals 8

    const-string v2, "/devices/%s/twin"

    const-string v3, "/devices/%s/twin"

    const-string v4, "/devices/%s/modules/%s/twin"

    const-string v5, "/devices/%s/modules/%s/twin"

    const-string v6, "sender_link_devicetwin-"

    const-string v7, "receiver_link_devicetwin-"

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceTwin;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    .line 3
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->amqpProperties:Ljava/util/Map;

    const-string v0, "com.microsoft:api-version"

    invoke-static {v0}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/TransportUtils;->IOTHUB_API_VERSION:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->amqpProperties:Ljava/util/Map;

    const-string v0, "com.microsoft:channel-correlation-id"

    invoke-static {v0}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v0

    const-string v1, "twin:"

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceTwin;->correlationIdList:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public convertFromProton(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertFromProtonReturnValue;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;->getAmqpsMessageType()Lcom/microsoft/azure/sdk/iot/device/MessageType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_TWIN:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceTwin;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    .line 2
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceTwin;->protonMessageToIoTHubMessage(Lk/a/b/a/f/d/a;)Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    move-result-object p1

    .line 4
    invoke-virtual {p2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceTwinMessageCallback()Lcom/microsoft/azure/sdk/iot/device/MessageCallback;

    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceTwinMessageContext()Ljava/lang/Object;

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

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_TWIN:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceTwin;->iotHubMessageToProtonMessage(Lcom/microsoft/azure/sdk/iot/device/Message;)Lk/a/b/a/f/d/a;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertToProtonReturnValue;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_TWIN:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    invoke-direct {v0, p1, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertToProtonReturnValue;-><init>(Lk/a/b/a/f/d/a;Lcom/microsoft/azure/sdk/iot/device/MessageType;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLinkInstanceType()Ljava/lang/String;
    .locals 1

    const-string v0, "twin"

    return-object v0
.end method

.method public getMessageFromReceiverLink(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getMessageFromReceiverLink(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_TWIN:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;->setAmqpsMessageType(Lcom/microsoft/azure/sdk/iot/device/MessageType;)V

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceTwin;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;->setDeviceClientConfig(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V

    :cond_0
    return-object p1
.end method

.method public iotHubMessageToProtonMessage(Lcom/microsoft/azure/sdk/iot/device/Message;)Lk/a/b/a/f/d/a;
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->iotHubMessageToProtonMessage(Lcom/microsoft/azure/sdk/iot/device/Message;)Lk/a/b/a/f/d/a;

    move-result-object v0

    .line 2
    check-cast p1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getCorrelationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lk/a/b/a/f/d/a;->getProperties()Lk/a/b/a/b/k/p;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getCorrelationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    .line 5
    iput-object v2, v1, Lk/a/b/a/b/k/p;->f:Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceTwin;->correlationIdList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getCorrelationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getDeviceOperationType()Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getDeviceOperationType()Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-string v3, "operation"

    if-eqz v2, :cond_4

    const/4 v4, 0x2

    const-string v5, "resource"

    if-eq v2, v4, :cond_3

    const/4 p1, 0x4

    const-string v4, "/notifications/twin/properties/desired"

    if-eq v2, p1, :cond_2

    const/4 p1, 0x6

    if-eq v2, p1, :cond_1

    .line 9
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;->TWIN:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    const-string v2, "Invalid device operation type in iotHubMessageToProtonMessage!"

    invoke-static {v2, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/TransportUtils;->throwTransportExceptionWithIotHubServiceType(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v3}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object p1

    const-string v2, "DELETE"

    .line 11
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {v5}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object p1

    .line 13
    invoke-virtual {v1, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {v3}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object p1

    const-string v2, "PUT"

    .line 15
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {v5}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object p1

    .line 17
    invoke-virtual {v1, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_3
    invoke-static {v3}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v2

    const-string v3, "PATCH"

    .line 19
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {v5}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v2

    const-string v3, "/properties/reported"

    .line 21
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getVersion()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    :try_start_0
    const-string v2, "version"

    .line 23
    invoke-static {v2}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v2

    .line 24
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;->TWIN:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    invoke-static {p1, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/TransportUtils;->throwTransportExceptionWithIotHubServiceType(Ljava/lang/Exception;Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;)V

    goto :goto_0

    .line 26
    :cond_4
    invoke-static {v3}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object p1

    const-string v2, "GET"

    .line 27
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_5
    :goto_0
    invoke-virtual {v0}, Lk/a/b/a/f/d/a;->getMessageAnnotations()Lk/a/b/a/b/k/m;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lk/a/b/a/f/d/a;->getMessageAnnotations()Lk/a/b/a/b/k/m;

    move-result-object p1

    .line 29
    iget-object p1, p1, Lk/a/b/a/b/k/m;->a:Ljava/util/Map;

    if-eqz p1, :cond_6

    .line 30
    invoke-virtual {v0}, Lk/a/b/a/f/d/a;->getMessageAnnotations()Lk/a/b/a/b/k/m;

    move-result-object p1

    .line 31
    iget-object p1, p1, Lk/a/b/a/b/k/m;->a:Ljava/util/Map;

    .line 32
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 33
    :cond_6
    new-instance p1, Lk/a/b/a/b/k/m;

    invoke-direct {p1, v1}, Lk/a/b/a/b/k/m;-><init>(Ljava/util/Map;)V

    .line 34
    invoke-virtual {v0, p1}, Lk/a/b/a/f/d/a;->setMessageAnnotations(Lk/a/b/a/b/k/m;)V

    return-object v0
.end method

.method public protonMessageToIoTHubMessage(Lk/a/b/a/f/d/a;)Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->protonMessageToIoTHubMessage(Lk/a/b/a/f/d/a;)Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_TWIN:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/Message;->setMessageType(Lcom/microsoft/azure/sdk/iot/device/MessageType;)V

    .line 3
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_UNKNOWN:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setDeviceOperationType(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;)V

    .line 4
    invoke-virtual {p1}, Lk/a/b/a/f/d/a;->getMessageAnnotations()Lk/a/b/a/b/k/m;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5
    iget-object v1, v1, Lk/a/b/a/b/k/m;->a:Ljava/util/Map;

    .line 6
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/a/b/a/b/f;

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 9
    iget-object v4, v3, Lk/a/b/a/b/f;->x:Ljava/lang/String;

    const-string v5, "status"

    .line 10
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v4, v3, Lk/a/b/a/b/f;->x:Ljava/lang/String;

    const-string v5, "version"

    .line 13
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setVersion(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object v3, v3, Lk/a/b/a/b/f;->x:Ljava/lang/String;

    const-string v4, "resource"

    .line 16
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/properties/desired"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 17
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_TWIN_SUBSCRIBE_DESIRED_PROPERTIES_RESPONSE:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    invoke-virtual {v0, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setDeviceOperationType(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;)V

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {p1}, Lk/a/b/a/f/d/a;->getProperties()Lk/a/b/a/b/k/p;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 19
    iget-object v1, p1, Lk/a/b/a/b/k/p;->f:Ljava/lang/Object;

    if-eqz v1, :cond_8

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/Message;->setCorrelationId(Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceTwin;->correlationIdList:Ljava/util/Map;

    .line 22
    iget-object v2, p1, Lk/a/b/a/b/k/p;->f:Ljava/lang/Object;

    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 24
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceTwin;->correlationIdList:Ljava/util/Map;

    .line 25
    iget-object v2, p1, Lk/a/b/a/b/k/p;->f:Ljava/lang/Object;

    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    const/4 v2, 0x6

    if-eq v1, v2, :cond_4

    .line 28
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;->TWIN:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    const-string v2, "Invalid device operation type in protonMessageToIoTHubMessage!"

    invoke-static {v2, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/TransportUtils;->throwTransportExceptionWithIotHubServiceType(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;)V

    goto :goto_1

    .line 29
    :cond_4
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_TWIN_UNSUBSCRIBE_DESIRED_PROPERTIES_RESPONSE:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setDeviceOperationType(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;)V

    goto :goto_1

    .line 30
    :cond_5
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_TWIN_SUBSCRIBE_DESIRED_PROPERTIES_RESPONSE:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setDeviceOperationType(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;)V

    goto :goto_1

    .line 31
    :cond_6
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_TWIN_UPDATE_REPORTED_PROPERTIES_RESPONSE:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setDeviceOperationType(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;)V

    goto :goto_1

    .line 32
    :cond_7
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_TWIN_GET_RESPONSE:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setDeviceOperationType(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;)V

    .line 33
    :goto_1
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceTwin;->correlationIdList:Ljava/util/Map;

    .line 34
    iget-object p1, p1, Lk/a/b/a/b/k/p;->f:Ljava/lang/Object;

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 36
    :cond_8
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getDeviceOperationType()Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    move-result-object p1

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_UNKNOWN:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    if-ne p1, v1, :cond_a

    .line 37
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_TWIN_SUBSCRIBE_DESIRED_PROPERTIES_RESPONSE:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setDeviceOperationType(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;)V

    .line 38
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getStatus()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    const-string p1, "200"

    .line 39
    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setStatus(Ljava/lang/String;)V

    :cond_a
    :goto_2
    return-object v0
.end method

.method public declared-synchronized sendMessageAndGetDeliveryTag(Lcom/microsoft/azure/sdk/iot/device/MessageType;[BII[B)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSendReturnValue;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_TWIN:Lcom/microsoft/azure/sdk/iot/device/MessageType;

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
