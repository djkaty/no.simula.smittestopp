.class public final Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodResponseCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/sdk/iot/device/MessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "deviceMethodResponseCallback"
.end annotation


# instance fields
.field public nestedConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

.field public final synthetic this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodResponseCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodResponseCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;

    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->access$000(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;)Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodResponseCallback;->nestedConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodResponseCallback;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/microsoft/azure/sdk/iot/device/Message;Ljava/lang/Object;)Lcom/microsoft/azure/sdk/iot/device/IotHubMessageResult;
    .locals 5

    .line 1
    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodResponseCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;

    invoke-static {p2}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->access$100(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;)Lcom/microsoft/azure/sdk/iot/device/ObjectLock;

    move-result-object p2

    monitor-enter p2

    .line 2
    :try_start_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->ERROR:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    .line 3
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/IotHubMessageResult;->ABANDON:Lcom/microsoft/azure/sdk/iot/device/IotHubMessageResult;

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageType()Lcom/microsoft/azure/sdk/iot/device/MessageType;

    move-result-object v2

    sget-object v3, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_METHODS:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    if-eq v2, v3, :cond_0

    .line 5
    invoke-static {}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->access$200()Lk/f/b;

    move-result-object v1

    const-string v2, "Unexpected message type received {}"

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageType()Lcom/microsoft/azure/sdk/iot/device/MessageType;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lk/f/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodResponseCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;

    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->access$400(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;)Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;

    move-result-object p1

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodResponseCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;

    invoke-static {v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->access$300(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;->execute(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;Ljava/lang/Object;)V

    .line 7
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/IotHubMessageResult;->ABANDON:Lcom/microsoft/azure/sdk/iot/device/IotHubMessageResult;

    monitor-exit p2

    return-object p1

    .line 8
    :cond_0
    check-cast p1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getDeviceOperationType()Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    .line 10
    invoke-static {}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->access$200()Lk/f/b;

    move-result-object p1

    const-string v0, "Received unknown type message for device methods"

    invoke-interface {p1, v0}, Lk/f/b;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 11
    :cond_1
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodResponseCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;

    invoke-static {v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->access$500(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;)Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethodCallback;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 12
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodResponseCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;

    invoke-static {v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->access$600(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 13
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodResponseCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->access$602(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->access$200()Lk/f/b;

    move-result-object v1

    const-string v2, "Executing method invocation callback for method name {} for message {}"

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p1}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodResponseCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;

    invoke-static {v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->access$500(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;)Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethodCallback;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getBytes()[B

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodResponseCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;

    invoke-static {v4}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->access$700(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethodCallback;->call(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethodData;

    move-result-object v1

    .line 16
    invoke-static {}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->access$200()Lk/f/b;

    move-result-object v2

    const-string v3, "Method invocation callback returned for method name {} for message {}"

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, p1}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v1, :cond_3

    .line 17
    new-instance v2, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethodData;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;-><init>(Ljava/lang/Object;)V

    .line 18
    new-instance v3, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/deps/serializer/MethodParser;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sget-object v4, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_METHODS:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    invoke-direct {v3, v2, v4}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;-><init>([BLcom/microsoft/azure/sdk/iot/device/MessageType;)V

    .line 19
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setRequestId(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodResponseCallback;->nestedConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->setConnectionDeviceId(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethodData;->getStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setStatus(Ljava/lang/String;)V

    .line 22
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_METHOD_SEND_RESPONSE:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    invoke-virtual {v3, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setDeviceOperationType(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;)V

    .line 23
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodResponseCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;

    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->access$900(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;)Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    move-result-object p1

    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodRequestMessageCallback;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodResponseCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodRequestMessageCallback;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$1;)V

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodResponseCallback;->nestedConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v1, v4, v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->sendEventAsync(Lcom/microsoft/azure/sdk/iot/device/Message;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/IotHubMessageResult;->COMPLETE:Lcom/microsoft/azure/sdk/iot/device/IotHubMessageResult;

    goto :goto_0

    .line 25
    :cond_3
    invoke-static {}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->access$200()Lk/f/b;

    move-result-object p1

    const-string v1, "User callback did not send any data for response"

    invoke-interface {p1, v1}, Lk/f/b;->c(Ljava/lang/String;)V

    .line 26
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/IotHubMessageResult;->REJECT:Lcom/microsoft/azure/sdk/iot/device/IotHubMessageResult;

    .line 27
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodResponseCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;

    invoke-static {v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->access$400(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;)Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodResponseCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;

    invoke-static {v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->access$300(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;->execute(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    move-object v1, p1

    goto :goto_1

    .line 28
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->access$200()Lk/f/b;

    move-result-object p1

    const-string v1, "User callback did not succeed"

    invoke-interface {p1, v1}, Lk/f/b;->c(Ljava/lang/String;)V

    .line 29
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/IotHubMessageResult;->REJECT:Lcom/microsoft/azure/sdk/iot/device/IotHubMessageResult;

    .line 30
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodResponseCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;

    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->access$400(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;)Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;

    move-result-object p1

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod$deviceMethodResponseCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;

    invoke-static {v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->access$300(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;->execute(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;Ljava/lang/Object;)V

    goto :goto_1

    .line 31
    :cond_4
    invoke-static {}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceMethod;->access$200()Lk/f/b;

    move-result-object p1

    const-string v0, "Received device method request, but device has not setup device method"

    invoke-interface {p1, v0}, Lk/f/b;->d(Ljava/lang/String;)V

    .line 32
    :goto_1
    monitor-exit p2

    return-object v1

    :catchall_0
    move-exception p1

    .line 33
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
