.class public Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;
.super Lcom/microsoft/azure/sdk/iot/device/Message;
.source "SourceFile"


# instance fields
.field public iotHubMethod:Lcom/microsoft/azure/sdk/iot/device/IotHubMethod;

.field public messageCallback:Lcom/microsoft/azure/sdk/iot/device/MessageCallback;

.field public messageCallbackContext:Ljava/lang/Object;

.field public methodName:Ljava/lang/String;

.field public operationType:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

.field public requestId:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public uriPath:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/Message;-><init>(Ljava/lang/String;)V

    .line 9
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/MessageType;->UNKNOWN:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    invoke-super {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->setMessageType(Lcom/microsoft/azure/sdk/iot/device/MessageType;)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->methodName:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->version:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->requestId:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->status:Ljava/lang/String;

    .line 14
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_UNKNOWN:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->operationType:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    return-void
.end method

.method public constructor <init>([BLcom/microsoft/azure/sdk/iot/device/MessageType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/Message;-><init>([B)V

    .line 2
    invoke-super {p0, p2}, Lcom/microsoft/azure/sdk/iot/device/Message;->setMessageType(Lcom/microsoft/azure/sdk/iot/device/MessageType;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->methodName:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->version:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->requestId:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->status:Ljava/lang/String;

    .line 7
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_UNKNOWN:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->operationType:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    return-void
.end method

.method public constructor <init>([BLcom/microsoft/azure/sdk/iot/device/MessageType;Ljava/lang/String;Ljava/lang/String;[Lcom/microsoft/azure/sdk/iot/device/MessageProperty;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/Message;-><init>([B)V

    .line 16
    invoke-super {p0, p2}, Lcom/microsoft/azure/sdk/iot/device/Message;->setMessageType(Lcom/microsoft/azure/sdk/iot/device/MessageType;)V

    .line 17
    invoke-virtual {p0, p3}, Lcom/microsoft/azure/sdk/iot/device/Message;->setMessageId(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p4}, Lcom/microsoft/azure/sdk/iot/device/Message;->setCorrelationId(Ljava/lang/String;)V

    .line 19
    array-length p1, p5

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object p3, p5, p2

    .line 20
    invoke-virtual {p3}, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p4, p3}, Lcom/microsoft/azure/sdk/iot/device/Message;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getDeviceOperationType()Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->operationType:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    return-object v0
.end method

.method public getIotHubMethod()Lcom/microsoft/azure/sdk/iot/device/IotHubMethod;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->iotHubMethod:Lcom/microsoft/azure/sdk/iot/device/IotHubMethod;

    return-object v0
.end method

.method public getMessageCallback()Lcom/microsoft/azure/sdk/iot/device/MessageCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->messageCallback:Lcom/microsoft/azure/sdk/iot/device/MessageCallback;

    return-object v0
.end method

.method public getMessageCallbackContext()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->messageCallbackContext:Ljava/lang/Object;

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUriPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->uriPath:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isMessageAckNeeded(Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;->MQTT:Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;->MQTT_WS:Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;

    if-ne p1, v0, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->operationType:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_TWIN_SUBSCRIBE_DESIRED_PROPERTIES_REQUEST:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_METHOD_SUBSCRIBE_REQUEST:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_TWIN_UNSUBSCRIBE_DESIRED_PROPERTIES_REQUEST:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setDeviceOperationType(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->operationType:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    return-void
.end method

.method public setIotHubMethod(Lcom/microsoft/azure/sdk/iot/device/IotHubMethod;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->iotHubMethod:Lcom/microsoft/azure/sdk/iot/device/IotHubMethod;

    return-void
.end method

.method public setMessageCallback(Lcom/microsoft/azure/sdk/iot/device/MessageCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->messageCallback:Lcom/microsoft/azure/sdk/iot/device/MessageCallback;

    return-void
.end method

.method public setMessageCallbackContext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->messageCallbackContext:Ljava/lang/Object;

    return-void
.end method

.method public setMethodName(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->methodName:Ljava/lang/String;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Method name cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->requestId:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->status:Ljava/lang/String;

    return-void
.end method

.method public setUriPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->uriPath:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->version:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/microsoft/azure/sdk/iot/device/Message;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->requestId:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Request Id ["

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
