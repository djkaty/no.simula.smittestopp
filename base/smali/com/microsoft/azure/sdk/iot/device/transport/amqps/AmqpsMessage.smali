.class public Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;
.super Lk/a/b/a/f/d/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;
    }
.end annotation


# instance fields
.field public _delivery:Lk/a/b/a/d/e;

.field public amqpsMessageType:Lcom/microsoft/azure/sdk/iot/device/MessageType;

.field public deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk/a/b/a/f/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public acknowledge(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;->_delivery:Lk/a/b/a/d/e;

    new-instance v0, Lk/a/b/a/b/k/r;

    invoke-direct {v0}, Lk/a/b/a/b/k/r;-><init>()V

    invoke-interface {p1, v0}, Lk/a/b/a/d/e;->a(Lk/a/b/a/b/n/e;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ack type given. Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;->_delivery:Lk/a/b/a/d/e;

    .line 5
    sget-object v0, Lk/a/b/a/b/k/s;->a:Lk/a/b/a/b/k/s;

    .line 6
    invoke-interface {p1, v0}, Lk/a/b/a/d/e;->a(Lk/a/b/a/b/n/e;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;->_delivery:Lk/a/b/a/d/e;

    .line 8
    sget-object v0, Lk/a/b/a/b/k/a;->a:Lk/a/b/a/b/k/a;

    .line 9
    invoke-interface {p1, v0}, Lk/a/b/a/d/e;->a(Lk/a/b/a/b/n/e;)V

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;->_delivery:Lk/a/b/a/d/e;

    invoke-interface {p1}, Lk/a/b/a/d/e;->R()V

    return-void
.end method

.method public getAmqpsMessageType()Lcom/microsoft/azure/sdk/iot/device/MessageType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;->amqpsMessageType:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    return-object v0
.end method

.method public getDeviceClientConfig()Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    return-object v0
.end method

.method public setAmqpsMessageType(Lcom/microsoft/azure/sdk/iot/device/MessageType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;->amqpsMessageType:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    return-void
.end method

.method public setDelivery(Lk/a/b/a/d/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;->_delivery:Lk/a/b/a/d/e;

    return-void
.end method

.method public setDeviceClientConfig(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    return-void
.end method
