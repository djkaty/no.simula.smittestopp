.class public Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;
.super Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;
.source "SourceFile"


# static fields
.field public static final log:Lk/f/b;


# instance fields
.field public final AND:Ljava/lang/String;

.field public final BACKSLASH:Ljava/lang/String;

.field public final DESIRED:Ljava/lang/String;

.field public final DESIRED_TOKEN:I

.field public final GET:Ljava/lang/String;

.field public final PATCH:Ljava/lang/String;

.field public final PATCH_TOKEN:I

.field public final PATCH_VERSION_TOKEN:I

.field public final POUND:Ljava/lang/String;

.field public final PROPERTIES:Ljava/lang/String;

.field public final PROPERTIES_TOKEN:I

.field public final QUESTION:Ljava/lang/String;

.field public final REPORTED:Ljava/lang/String;

.field public final REQID_TOKEN:I

.field public final REQ_ID:Ljava/lang/String;

.field public final RES:Ljava/lang/String;

.field public final RES_TOKEN:I

.field public final STATUS_TOKEN:I

.field public final TWIN:Ljava/lang/String;

.field public final VERSION:Ljava/lang/String;

.field public final VERSION_TOKEN:I

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

.field public subscribeTopic:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->log:Lk/f/b;

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

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->requestMap:Ljava/util/Map;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->isStarted:Z

    const-string p1, "/"

    .line 4
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->BACKSLASH:Ljava/lang/String;

    const-string p1, "&"

    .line 5
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->AND:Ljava/lang/String;

    const-string p1, "?"

    .line 6
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->QUESTION:Ljava/lang/String;

    const-string p1, "#"

    .line 7
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->POUND:Ljava/lang/String;

    const-string p1, "$iothub/twin"

    .line 8
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->TWIN:Ljava/lang/String;

    const-string p1, "$iothub/twin/GET"

    .line 9
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->GET:Ljava/lang/String;

    const-string p1, "$iothub/twin/res"

    .line 10
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->RES:Ljava/lang/String;

    const-string p1, "$iothub/twin/PATCH"

    .line 11
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->PATCH:Ljava/lang/String;

    const-string p1, "properties"

    .line 12
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->PROPERTIES:Ljava/lang/String;

    const-string p1, "desired"

    .line 13
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->DESIRED:Ljava/lang/String;

    const-string p1, "reported"

    .line 14
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->REPORTED:Ljava/lang/String;

    const-string p1, "?$rid="

    .line 15
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->REQ_ID:Ljava/lang/String;

    const-string p1, "$version="

    .line 16
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->VERSION:Ljava/lang/String;

    const/4 p1, 0x2

    .line 17
    iput p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->RES_TOKEN:I

    const/4 p2, 0x3

    .line 18
    iput p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->STATUS_TOKEN:I

    const/4 p3, 0x4

    .line 19
    iput p3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->REQID_TOKEN:I

    .line 20
    iput p3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->VERSION_TOKEN:I

    .line 21
    iput p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->PATCH_TOKEN:I

    .line 22
    iput p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->PROPERTIES_TOKEN:I

    .line 23
    iput p3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->DESIRED_TOKEN:I

    const/4 p1, 0x5

    .line 24
    iput p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->PATCH_VERSION_TOKEN:I

    const-string p1, "$iothub/twin/res/#"

    .line 25
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->subscribeTopic:Ljava/lang/String;

    return-void
.end method

.method private buildTopic(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;)Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getDeviceOperationType()Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "?$rid="

    const-string v3, "Request Id is Mandatory"

    const-string v4, "/"

    if-eqz v1, :cond_3

    const/4 v5, 0x2

    const-string v6, "$version="

    const-string v7, "properties"

    const-string v8, "$iothub/twin/PATCH"

    if-eq v1, v5, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 3
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "desired"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getVersion()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Device Twin Operation is not supported - "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getDeviceOperationType()Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "reported"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getRequestId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 21
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getVersion()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v1, "&"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 28
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string v1, "$iothub/twin/GET"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getRequestId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 32
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    :cond_4
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 36
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getRequestId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "?$rid="

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "$version="

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 6
    :cond_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "\\d{3}"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Status could not be parsed"

    .line 2
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->throwDeviceTwinTransportException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "$version="

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 4
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private throwDeviceTwinTransportException(Ljava/lang/Exception;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/Throwable;)V

    .line 5
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;->TWIN:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->setIotHubService(Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;)V

    .line 6
    throw v0
.end method

.method private throwDeviceTwinTransportException(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;->TWIN:Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException$IotHubService;

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

    if-eqz v2, :cond_b

    .line 3
    invoke-virtual {v2}, Lk/a/a/b/e/b;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b

    .line 5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xc

    if-le v4, v5, :cond_b

    const-string v4, "$iothub/twin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 6
    invoke-virtual {v2}, Lk/a/a/b/e/b;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 7
    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->allReceivedMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 8
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x10

    if-le v4, v5, :cond_7

    const-string v4, "$iothub/twin/res"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v1, "/"

    .line 9
    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_0

    .line 10
    array-length v3, v2

    if-lez v3, :cond_0

    .line 11
    new-instance v3, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    sget-object v4, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_TWIN:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    invoke-direct {v3, v2, v4}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;-><init>([BLcom/microsoft/azure/sdk/iot/device/MessageType;)V

    .line 12
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_UNKNOWN:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    invoke-virtual {v3, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setDeviceOperationType(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;)V

    move-object v2, v3

    goto :goto_0

    .line 13
    :cond_0
    new-instance v2, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    const/4 v3, 0x0

    new-array v3, v3, [B

    sget-object v4, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_TWIN:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    invoke-direct {v2, v3, v4}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;-><init>([BLcom/microsoft/azure/sdk/iot/device/MessageType;)V

    .line 14
    sget-object v3, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_UNKNOWN:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    invoke-virtual {v2, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setDeviceOperationType(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;)V

    .line 15
    :goto_0
    array-length v3, v1

    const/4 v4, 0x3

    if-le v3, v4, :cond_1

    .line 16
    aget-object v3, v1, v4

    invoke-direct {p0, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->getStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setStatus(Ljava/lang/String;)V

    goto :goto_1

    .line 17
    :cond_1
    new-instance v3, Lcom/microsoft/azure/sdk/iot/device/exceptions/IotHubServiceException;

    const-string v4, "Message received without status"

    invoke-direct {v3, v4}, Lcom/microsoft/azure/sdk/iot/device/exceptions/IotHubServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->throwDeviceTwinTransportException(Ljava/lang/Exception;)V

    .line 18
    :goto_1
    array-length v3, v1

    const/4 v4, 0x4

    if-le v3, v4, :cond_5

    .line 19
    aget-object v3, v1, v4

    invoke-direct {p0, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->getRequestId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setRequestId(Ljava/lang/String;)V

    .line 21
    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->requestMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 22
    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->requestMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    .line 23
    sget-object v3, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_UNKNOWN:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    invoke-virtual {v2, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setDeviceOperationType(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;)V

    goto :goto_2

    .line 24
    :cond_2
    sget-object v3, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_TWIN_UPDATE_REPORTED_PROPERTIES_RESPONSE:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    invoke-virtual {v2, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setDeviceOperationType(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;)V

    goto :goto_2

    .line 25
    :cond_3
    sget-object v3, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_TWIN_GET_RESPONSE:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    invoke-virtual {v2, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setDeviceOperationType(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;)V

    goto :goto_2

    .line 26
    :cond_4
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Request Id is mandatory"

    invoke-direct {v3, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->throwDeviceTwinTransportException(Ljava/lang/Exception;)V

    .line 27
    :cond_5
    :goto_2
    array-length v3, v1

    if-le v3, v4, :cond_6

    .line 28
    aget-object v1, v1, v4

    invoke-direct {p0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setVersion(Ljava/lang/String;)V

    :cond_6
    move-object v1, v2

    goto :goto_4

    .line 29
    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x12

    if-le v4, v5, :cond_a

    const-string v4, "$iothub/twin/PATCH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "$iothub/twin/PATCH/properties/desired"

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz v2, :cond_8

    .line 31
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    sget-object v4, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_TWIN:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    invoke-direct {v1, v2, v4}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;-><init>([BLcom/microsoft/azure/sdk/iot/device/MessageType;)V

    .line 32
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_TWIN_SUBSCRIBE_DESIRED_PROPERTIES_RESPONSE:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    invoke-virtual {v1, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setDeviceOperationType(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;)V

    goto :goto_3

    .line 33
    :cond_8
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-direct {p0, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->throwDeviceTwinTransportException(Ljava/lang/Exception;)V

    :goto_3
    const-string v2, "/"

    .line 34
    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 35
    array-length v3, v2

    const/4 v4, 0x5

    if-le v3, v4, :cond_b

    if-eqz v1, :cond_b

    .line 36
    aget-object v2, v2, v4

    invoke-direct {p0, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setVersion(Ljava/lang/String;)V

    goto :goto_4

    .line 37
    :cond_9
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-direct {p0, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->throwDeviceTwinTransportException(Ljava/lang/Exception;)V

    goto :goto_4

    .line 38
    :cond_a
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-direct {p0, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->throwDeviceTwinTransportException(Ljava/lang/Exception;)V

    .line 39
    :cond_b
    :goto_4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public send(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getBytes()[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    iget-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->isStarted:Z

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageType()Lcom/microsoft/azure/sdk/iot/device/MessageType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_TWIN:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    if-eq v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->buildTopic(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->requestMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getDeviceOperationType()Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getDeviceOperationType()Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    move-result-object v1

    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_TWIN_SUBSCRIBE_DESIRED_PROPERTIES_REQUEST:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    if-ne v1, v2, :cond_1

    const-string p1, "$iothub/twin/PATCH/properties/desired/#"

    .line 7
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->subscribe(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->publish(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/device/Message;)V

    :goto_0
    return-void

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Start device twin before using it"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public start()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->isStarted:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->subscribeTopic:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->subscribe(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->isStarted:Z

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->isStarted:Z

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->requestMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->log:Lk/f/b;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->requestMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Pending {} responses from IotHub yet unsubscribed"

    invoke-interface {v0, v2, v1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
