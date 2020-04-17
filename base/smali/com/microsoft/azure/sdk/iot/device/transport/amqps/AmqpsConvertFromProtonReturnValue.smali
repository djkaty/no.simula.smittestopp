.class public Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertFromProtonReturnValue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public message:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

.field public messageCallback:Lcom/microsoft/azure/sdk/iot/device/MessageCallback;

.field public messageContext:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;Lcom/microsoft/azure/sdk/iot/device/MessageCallback;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertFromProtonReturnValue;->message:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    .line 3
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertFromProtonReturnValue;->messageCallback:Lcom/microsoft/azure/sdk/iot/device/MessageCallback;

    .line 4
    iput-object p3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertFromProtonReturnValue;->messageContext:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getMessage()Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertFromProtonReturnValue;->message:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    return-object v0
.end method

.method public getMessageCallback()Lcom/microsoft/azure/sdk/iot/device/MessageCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertFromProtonReturnValue;->messageCallback:Lcom/microsoft/azure/sdk/iot/device/MessageCallback;

    return-object v0
.end method

.method public getMessageContext()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertFromProtonReturnValue;->messageContext:Ljava/lang/Object;

    return-object v0
.end method
