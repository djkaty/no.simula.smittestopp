.class public final Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public callbackContext:Ljava/lang/Object;

.field public currentRetryAttempt:I

.field public eventCallback:Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;

.field public message:Lcom/microsoft/azure/sdk/iot/device/Message;

.field public final startTimeMillis:J

.field public status:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/Message;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    cmp-long v2, p5, v0

    if-ltz v2, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->message:Lcom/microsoft/azure/sdk/iot/device/Message;

    .line 3
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->eventCallback:Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;

    .line 4
    iput-object p3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->callbackContext:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->status:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    .line 6
    iput-wide p5, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->startTimeMillis:J

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Message cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "start time cannot be 0 or negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getCallback()Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->eventCallback:Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;

    return-object v0
.end method

.method public getContext()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->callbackContext:Ljava/lang/Object;

    return-object v0
.end method

.method public getCurrentRetryAttempt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->currentRetryAttempt:I

    return v0
.end method

.method public getMessage()Lcom/microsoft/azure/sdk/iot/device/Message;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->message:Lcom/microsoft/azure/sdk/iot/device/Message;

    return-object v0
.end method

.method public getStartTimeMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->startTimeMillis:J

    return-wide v0
.end method

.method public getStatus()Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->status:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    return-object v0
.end method

.method public incrementRetryAttempt()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->currentRetryAttempt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->currentRetryAttempt:I

    return-void
.end method

.method public setStatus(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;->status:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    return-void
.end method
