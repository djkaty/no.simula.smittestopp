.class public final Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$deviceTwinResponseMessageCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/sdk/iot/device/MessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "deviceTwinResponseMessageCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$deviceTwinResponseMessageCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$deviceTwinResponseMessageCallback;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/microsoft/azure/sdk/iot/device/Message;Ljava/lang/Object;)Lcom/microsoft/azure/sdk/iot/device/IotHubMessageResult;
    .locals 5

    .line 1
    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$deviceTwinResponseMessageCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    invoke-static {p2}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->access$000(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 2
    :try_start_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->ERROR:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageType()Lcom/microsoft/azure/sdk/iot/device/MessageType;

    move-result-object v1

    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_TWIN:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    if-eq v1, v2, :cond_0

    .line 4
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Unexpected message type received"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$deviceTwinResponseMessageCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->access$200(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;)Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;

    move-result-object p1

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$deviceTwinResponseMessageCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    invoke-static {v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->access$100(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;->execute(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;Ljava/lang/Object;)V

    .line 6
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/IotHubMessageResult;->ABANDON:Lcom/microsoft/azure/sdk/iot/device/IotHubMessageResult;

    monitor-exit p2

    return-object p1

    .line 7
    :cond_0
    check-cast p1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getStatus()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getDeviceOperationType()Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    const/4 v0, 0x5

    if-eq v2, v0, :cond_1

    goto/16 :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$deviceTwinResponseMessageCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    invoke-static {v0, v3}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->access$602(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;Z)Z

    .line 11
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getBytes()[B

    move-result-object p1

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/Message;->DEFAULT_IOTHUB_MESSAGE_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;->createFromDesiredPropertyJson(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;->getDesiredProperty()Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 13
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$deviceTwinResponseMessageCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;->getDesiredProperty()Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->access$400(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;)V

    goto/16 :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->getIotHubStatusCode(I)Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    move-result-object v0

    .line 15
    :cond_3
    invoke-static {}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->access$300()Lk/f/b;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing twin status callback for device operation twin update reported properties response with status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$deviceTwinResponseMessageCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->access$200(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;)Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;

    move-result-object p1

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$deviceTwinResponseMessageCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    invoke-static {v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->access$100(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;->execute(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->getIotHubStatusCode(I)Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    move-result-object v0

    .line 18
    :cond_5
    invoke-static {}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->access$300()Lk/f/b;

    move-result-object v1

    const-string v2, "Executing twin callback for message {}"

    invoke-interface {v1, v2, p1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$deviceTwinResponseMessageCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    invoke-static {v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->access$200(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;)Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$deviceTwinResponseMessageCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    invoke-static {v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->access$100(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;->execute(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;Ljava/lang/Object;)V

    .line 20
    invoke-static {}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->access$300()Lk/f/b;

    move-result-object v1

    const-string v2, "Twin callback returned for message {}"

    invoke-interface {v1, v2, p1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    if-ne v0, v1, :cond_7

    .line 22
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getBytes()[B

    move-result-object p1

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/Message;->DEFAULT_IOTHUB_MESSAGE_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;->createFromPropertiesJson(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;->getDesiredProperty()Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 24
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$deviceTwinResponseMessageCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;->getDesiredProperty()Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->access$400(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;)V

    .line 25
    :cond_6
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;->getReportedProperty()Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 26
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin$deviceTwinResponseMessageCallback;->this$0:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/twin/TwinState;->getReportedProperty()Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;->access$500(Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceTwin;Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;)V

    .line 27
    :cond_7
    :goto_0
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/IotHubMessageResult;->COMPLETE:Lcom/microsoft/azure/sdk/iot/device/IotHubMessageResult;

    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    .line 28
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
