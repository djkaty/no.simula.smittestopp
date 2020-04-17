.class public Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSendReturnValue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public deliveryHash:I

.field public deliverySuccessful:Z

.field public deliveryTag:[B

.field public failedDeliveryTag:[B


# direct methods
.method public constructor <init>(ZI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "-1"

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSendReturnValue;->failedDeliveryTag:[B

    .line 3
    iput-boolean p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSendReturnValue;->deliverySuccessful:Z

    .line 4
    iput p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSendReturnValue;->deliveryHash:I

    .line 5
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSendReturnValue;->deliveryTag:[B

    return-void
.end method

.method public constructor <init>(ZI[B)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "-1"

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSendReturnValue;->failedDeliveryTag:[B

    .line 8
    iput-boolean p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSendReturnValue;->deliverySuccessful:Z

    .line 9
    iput p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSendReturnValue;->deliveryHash:I

    .line 10
    iput-object p3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSendReturnValue;->deliveryTag:[B

    return-void
.end method


# virtual methods
.method public getDeliveryHash()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSendReturnValue;->deliveryHash:I

    return v0
.end method

.method public getDeliveryTag()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSendReturnValue;->deliveryTag:[B

    return-object v0
.end method

.method public isDeliverySuccessful()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSendReturnValue;->deliverySuccessful:Z

    return v0
.end method
