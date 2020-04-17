.class public Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertToProtonReturnValue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public messageImpl:Lk/a/b/a/f/d/a;

.field public messageType:Lcom/microsoft/azure/sdk/iot/device/MessageType;


# direct methods
.method public constructor <init>(Lk/a/b/a/f/d/a;Lcom/microsoft/azure/sdk/iot/device/MessageType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertToProtonReturnValue;->messageImpl:Lk/a/b/a/f/d/a;

    .line 3
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertToProtonReturnValue;->messageType:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    return-void
.end method


# virtual methods
.method public getMessageImpl()Lk/a/b/a/f/d/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertToProtonReturnValue;->messageImpl:Lk/a/b/a/f/d/a;

    return-object v0
.end method

.method public getMessageType()Lcom/microsoft/azure/sdk/iot/device/MessageType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertToProtonReturnValue;->messageType:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    return-object v0
.end method
