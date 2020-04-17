.class public abstract Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AMQPS_APP_PROPERTY_PREFIX:Ljava/lang/String; = "iothub-app-"

.field public static final API_VERSION_KEY:Ljava/lang/String; = "com.microsoft:api-version"

.field public static final INPUT_NAME_PROPERTY_KEY:Ljava/lang/String; = "x-opt-input-name"

.field public static final TO_KEY:Ljava/lang/String; = "to"

.field public static final USER_ID_KEY:Ljava/lang/String; = "userId"

.field public static final VERSION_IDENTIFIER_KEY:Ljava/lang/String; = "com.microsoft:client-version"

.field public static final log:Lk/f/b;


# instance fields
.field public amqpProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lk/a/b/a/b/f;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public amqpsRecvLinkState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

.field public amqpsSendLinkState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

.field public linkCorrelationId:Ljava/lang/String;

.field public receiverLink:Lk/a/b/a/d/t;

.field public receiverLinkAddress:Ljava/lang/String;

.field public receiverLinkEndpointPath:Ljava/lang/String;

.field public receiverLinkTag:Ljava/lang/String;

.field public senderLink:Lk/a/b/a/d/x;

.field public senderLinkAddress:Ljava/lang/String;

.field public senderLinkEndpointPath:Ljava/lang/String;

.field public senderLinkTag:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->log:Lk/f/b;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;->UNKNOWN:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->amqpsSendLinkState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->amqpsRecvLinkState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    if-eqz p1, :cond_1

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->amqpProperties:Ljava/util/Map;

    const-string v1, "com.microsoft:client-version"

    .line 5
    invoke-static {v1}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getProductInfo()Lcom/microsoft/azure/sdk/iot/device/ProductInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/ProductInfo;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->linkCorrelationId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->senderLink:Lk/a/b/a/d/x;

    .line 8
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->receiverLink:Lk/a/b/a/d/t;

    .line 9
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;->CLOSED:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->amqpsSendLinkState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    .line 10
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->amqpsRecvLinkState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    .line 11
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getModuleId()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "-"

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 14
    iput-object p4, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->senderLinkEndpointPath:Ljava/lang/String;

    .line 15
    iput-object p5, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->receiverLinkEndpointPath:Ljava/lang/String;

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->linkCorrelationId:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->senderLinkTag:Ljava/lang/String;

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->linkCorrelationId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->receiverLinkTag:Ljava/lang/String;

    .line 18
    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->senderLinkEndpointPath:Ljava/lang/String;

    const/4 p3, 0x2

    new-array p4, p3, [Ljava/lang/Object;

    aput-object p1, p4, v1

    aput-object v0, p4, v2

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->senderLinkAddress:Ljava/lang/String;

    .line 19
    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->receiverLinkEndpointPath:Ljava/lang/String;

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, v1

    aput-object v0, p3, v2

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->receiverLinkAddress:Ljava/lang/String;

    goto :goto_0

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->senderLinkEndpointPath:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->receiverLinkEndpointPath:Ljava/lang/String;

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->linkCorrelationId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->senderLinkTag:Ljava/lang/String;

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->linkCorrelationId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->receiverLinkTag:Ljava/lang/String;

    .line 24
    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->senderLinkEndpointPath:Ljava/lang/String;

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v1

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->senderLinkAddress:Ljava/lang/String;

    .line 25
    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->receiverLinkEndpointPath:Ljava/lang/String;

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v1

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->receiverLinkAddress:Ljava/lang/String;

    :goto_0
    return-void

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "device config cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public closeLinks()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->senderLink:Lk/a/b/a/d/x;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lk/a/b/a/d/f;->close()V

    .line 3
    iput-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->senderLink:Lk/a/b/a/d/x;

    .line 4
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->log:Lk/f/b;

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getLinkInstanceType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->linkCorrelationId:Ljava/lang/String;

    const-string v4, "Closed {} sender link with link correlation id {}"

    invoke-interface {v0, v4, v2, v3}, Lk/f/b;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->log:Lk/f/b;

    const-string v2, "Sender link was already closed, so nothing was done to the link"

    invoke-interface {v0, v2}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->receiverLink:Lk/a/b/a/d/t;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Lk/a/b/a/d/f;->close()V

    .line 8
    iput-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->receiverLink:Lk/a/b/a/d/t;

    .line 9
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->log:Lk/f/b;

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getLinkInstanceType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->linkCorrelationId:Ljava/lang/String;

    const-string v3, "Closed {} receiver link with link correlation id {}"

    invoke-interface {v0, v3, v1, v2}, Lk/f/b;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->log:Lk/f/b;

    const-string v1, "Receiver link was already closed, so nothing was done to the link"

    invoke-interface {v0, v1}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 11
    :goto_1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;->CLOSED:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->amqpsSendLinkState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    .line 12
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->amqpsRecvLinkState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    return-void
.end method

.method public abstract convertFromProton(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertFromProtonReturnValue;
.end method

.method public abstract convertToProton(Lcom/microsoft/azure/sdk/iot/device/Message;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertToProtonReturnValue;
.end method

.method public getAmqpProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lk/a/b/a/b/f;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->amqpProperties:Ljava/util/Map;

    return-object v0
.end method

.method public abstract getLinkInstanceType()Ljava/lang/String;
.end method

.method public getMessageFromReceiverLink(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getReceiverLinkTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->receiverLink:Lk/a/b/a/d/t;

    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1}, Lk/a/b/a/d/n;->k()Lk/a/b/a/d/e;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-interface {p1}, Lk/a/b/a/d/e;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lk/a/b/a/d/e;->O()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    invoke-interface {p1}, Lk/a/b/a/d/e;->pending()I

    move-result v0

    .line 6
    new-array v1, v0, [B

    .line 7
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->receiverLink:Lk/a/b/a/d/t;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3, v0}, Lk/a/b/a/d/t;->b([BII)I

    move-result v2

    .line 8
    sget-object v4, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->log:Lk/f/b;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->receiverLinkTag:Ljava/lang/String;

    const-string v7, "read {} bytes from receiver link {}"

    invoke-interface {v4, v7, v5, v6}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->receiverLink:Lk/a/b/a/d/t;

    invoke-interface {v4}, Lk/a/b/a/d/t;->d()Z

    move-result v4

    if-nez v4, :cond_0

    .line 10
    sget-object v4, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->log:Lk/f/b;

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getLinkInstanceType()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->linkCorrelationId:Ljava/lang/String;

    const-string v7, "{} receiver link with link correlation id {} did not advance after bytes were read from it"

    invoke-interface {v4, v7, v5, v6}, Lk/f/b;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eq v0, v2, :cond_1

    .line 11
    sget-object v4, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->log:Lk/f/b;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getLinkInstanceType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->linkCorrelationId:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const-string v0, "Amqp read from {} receiver link with link correlation id {} did not read the expected amount of bytes. Read {} but expected {}"

    invoke-interface {v4, v0, v5}, Lk/f/b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    :cond_1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;-><init>()V

    .line 13
    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;->setDelivery(Lk/a/b/a/d/e;)V

    .line 14
    invoke-virtual {v0, v1, v3, v2}, Lk/a/b/a/f/d/a;->decode([BII)I

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1

    .line 15
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The linkName cannot be empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getReceiverLinkAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->receiverLinkAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverLinkTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->receiverLinkTag:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderLinkAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->senderLinkAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderLinkTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->senderLinkTag:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized initLink(Lk/a/b/a/d/n;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    invoke-interface {p1}, Lk/a/b/a/d/n;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getSenderLinkTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->amqpsSendLinkState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;->OPENING:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    if-ne v1, v2, :cond_0

    .line 3
    new-instance v0, Lk/a/b/a/b/k/v;

    invoke-direct {v0}, Lk/a/b/a/b/k/v;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getSenderLinkAddress()Ljava/lang/String;

    move-result-object v1

    .line 5
    iput-object v1, v0, Lk/a/b/a/b/k/w;->a:Ljava/lang/String;

    .line 6
    invoke-interface {p1, v0}, Lk/a/b/a/d/n;->a(Lk/a/b/a/b/n/r;)V

    .line 7
    sget-object v0, Lk/a/b/a/b/n/p;->UNSETTLED:Lk/a/b/a/b/n/p;

    invoke-interface {p1, v0}, Lk/a/b/a/d/n;->a(Lk/a/b/a/b/n/p;)V

    .line 8
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->log:Lk/f/b;

    const-string v0, "Initializing sender link with correlation id {}"

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->linkCorrelationId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getReceiverLinkTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->amqpsRecvLinkState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;->OPENING:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    if-ne v1, v2, :cond_1

    .line 10
    new-instance v0, Lk/a/b/a/b/k/u;

    invoke-direct {v0}, Lk/a/b/a/b/k/u;-><init>()V

    .line 11
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getReceiverLinkAddress()Ljava/lang/String;

    move-result-object v1

    .line 12
    iput-object v1, v0, Lk/a/b/a/b/k/w;->a:Ljava/lang/String;

    .line 13
    invoke-interface {p1, v0}, Lk/a/b/a/d/n;->a(Lk/a/b/a/b/n/q;)V

    .line 14
    sget-object v0, Lk/a/b/a/b/n/n;->FIRST:Lk/a/b/a/b/n/n;

    invoke-interface {p1, v0}, Lk/a/b/a/d/n;->a(Lk/a/b/a/b/n/n;)V

    .line 15
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->log:Lk/f/b;

    const-string v0, "Initializing receiver link with correlation id {}"

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->linkCorrelationId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 16
    :cond_1
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->log:Lk/f/b;

    const-string v1, "InitLink called, but no link names matched {} or the link was not opening yet"

    invoke-interface {p1, v1, v0}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 18
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The link cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public iotHubMessageToProtonMessage(Lcom/microsoft/azure/sdk/iot/device/Message;)Lk/a/b/a/f/d/a;
    .locals 8

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->log:Lk/f/b;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getLinkInstanceType()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->linkCorrelationId:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getCorrelationId()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const-string v2, "Converting IoT Hub message to proton message for {} sender link with link correlation id {}. IoT Hub message correlationId {}"

    invoke-interface {v0, v2, v1}, Lk/f/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lk/a/b/a/f/d/a;

    invoke-direct {v0}, Lk/a/b/a/f/d/a;-><init>()V

    .line 3
    new-instance v1, Lk/a/b/a/b/k/p;

    invoke-direct {v1}, Lk/a/b/a/b/k/p;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageId()Ljava/lang/String;

    move-result-object v2

    .line 6
    iput-object v2, v1, Lk/a/b/a/b/k/p;->a:Ljava/lang/Object;

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getCorrelationId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getCorrelationId()Ljava/lang/String;

    move-result-object v2

    .line 9
    iput-object v2, v1, Lk/a/b/a/b/k/p;->f:Ljava/lang/Object;

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getContentType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-static {v2}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v2

    .line 13
    iput-object v2, v1, Lk/a/b/a/b/k/p;->g:Lk/a/b/a/b/f;

    .line 14
    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 15
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-static {v2}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v2

    .line 17
    iput-object v2, v1, Lk/a/b/a/b/k/p;->h:Lk/a/b/a/b/f;

    .line 18
    :cond_3
    invoke-virtual {v0, v1}, Lk/a/b/a/f/d/a;->setProperties(Lk/a/b/a/b/k/p;)V

    .line 19
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 20
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getProperties()[Lcom/microsoft/azure/sdk/iot/device/MessageProperty;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_5

    .line 21
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getProperties()[Lcom/microsoft/azure/sdk/iot/device/MessageProperty;

    move-result-object v2

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_5

    aget-object v5, v2, v3

    .line 22
    sget-object v6, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;->RESERVED_PROPERTY_NAMES:Ljava/util/Set;

    invoke-virtual {v5}, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 23
    invoke-virtual {v5}, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 24
    :cond_5
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getConnectionDeviceId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 25
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getConnectionDeviceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "iothub-connection-device-id"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_6
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getConnectionModuleId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 27
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getConnectionModuleId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "iothub-connection-module-id"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_7
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getCreationTimeUTC()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 29
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getCreationTimeUTCString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "iothub-creation-time-utc"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_8
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->isSecurityMessage()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "iothub-interface-id"

    const-string v3, "urn:azureiot:Security:SecurityAgent:1"

    .line 31
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_9
    new-instance v2, Lk/a/b/a/b/k/d;

    invoke-direct {v2, v1}, Lk/a/b/a/b/k/d;-><init>(Ljava/util/Map;)V

    .line 33
    invoke-virtual {v0, v2}, Lk/a/b/a/f/d/a;->setApplicationProperties(Lk/a/b/a/b/k/d;)V

    .line 34
    new-instance v1, Lk/a/b/a/b/a;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getBytes()[B

    move-result-object p1

    invoke-direct {v1, p1}, Lk/a/b/a/b/a;-><init>([B)V

    .line 35
    new-instance p1, Lk/a/b/a/b/k/e;

    invoke-direct {p1, v1}, Lk/a/b/a/b/k/e;-><init>(Lk/a/b/a/b/a;)V

    .line 36
    invoke-virtual {v0, p1}, Lk/a/b/a/f/d/a;->setBody(Lk/a/b/a/b/k/t;)V

    return-object v0
.end method

.method public onLinkRemoteClose(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getSenderLinkTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;->CLOSED:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->amqpsSendLinkState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    .line 3
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->log:Lk/f/b;

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getLinkInstanceType()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->linkCorrelationId:Ljava/lang/String;

    const-string v3, "{} sender link with link correlation id {} was closed"

    invoke-interface {p1, v3, v0, v2}, Lk/f/b;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getReceiverLinkTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;->CLOSED:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->amqpsRecvLinkState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    .line 6
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->log:Lk/f/b;

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getLinkInstanceType()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->linkCorrelationId:Ljava/lang/String;

    const-string v3, "{} receiver link with link correlation id {} was closed"

    invoke-interface {p1, v3, v0, v2}, Lk/f/b;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onLinkRemoteOpen(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getSenderLinkTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;->OPENED:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->amqpsSendLinkState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    .line 3
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->log:Lk/f/b;

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getLinkInstanceType()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->linkCorrelationId:Ljava/lang/String;

    const-string v3, "{} sender link with link correlation id {} was successfully opened {}"

    invoke-interface {p1, v3, v0, v2}, Lk/f/b;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getReceiverLinkTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;->OPENED:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->amqpsRecvLinkState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    .line 6
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->log:Lk/f/b;

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getLinkInstanceType()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->linkCorrelationId:Ljava/lang/String;

    const-string v3, "{} receiver link with link correlation id {} was successfully opened"

    invoke-interface {p1, v3, v0, v2}, Lk/f/b;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized openLinks(Lk/a/b/a/d/y;)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->senderLink:Lk/a/b/a/d/x;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->amqpsSendLinkState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;->CLOSED:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getSenderLinkTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lk/a/b/a/d/y;->a(Ljava/lang/String;)Lk/a/b/a/d/x;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->senderLink:Lk/a/b/a/d/x;

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getAmqpProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lk/a/b/a/d/n;->a(Ljava/util/Map;)V

    .line 4
    new-instance v0, Lk/a/b/a/b/k/v;

    invoke-direct {v0}, Lk/a/b/a/b/k/v;-><init>()V

    .line 5
    new-instance v1, Lk/a/b/a/b/k/u;

    invoke-direct {v1}, Lk/a/b/a/b/k/u;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getSenderLinkAddress()Ljava/lang/String;

    move-result-object v2

    .line 7
    iput-object v2, v0, Lk/a/b/a/b/k/w;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getReceiverLinkAddress()Ljava/lang/String;

    move-result-object v2

    .line 9
    iput-object v2, v1, Lk/a/b/a/b/k/w;->a:Ljava/lang/String;

    .line 10
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->senderLink:Lk/a/b/a/d/x;

    invoke-interface {v2, v0}, Lk/a/b/a/d/n;->a(Lk/a/b/a/b/n/r;)V

    .line 11
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->senderLink:Lk/a/b/a/d/x;

    invoke-interface {v0, v1}, Lk/a/b/a/d/n;->a(Lk/a/b/a/b/n/q;)V

    .line 12
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;->OPENING:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->amqpsSendLinkState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    .line 13
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->senderLink:Lk/a/b/a/d/x;

    invoke-interface {v0}, Lk/a/b/a/d/f;->open()V

    .line 14
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->log:Lk/f/b;

    const-string v1, "Opening {} sender link with link correlation id {}"

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getLinkInstanceType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->linkCorrelationId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lk/f/b;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->receiverLink:Lk/a/b/a/d/t;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->amqpsRecvLinkState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;->CLOSED:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    if-ne v0, v1, :cond_1

    .line 16
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getReceiverLinkTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lk/a/b/a/d/y;->b(Ljava/lang/String;)Lk/a/b/a/d/t;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->receiverLink:Lk/a/b/a/d/t;

    .line 17
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getAmqpProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Lk/a/b/a/d/n;->a(Ljava/util/Map;)V

    .line 18
    new-instance p1, Lk/a/b/a/b/k/v;

    invoke-direct {p1}, Lk/a/b/a/b/k/v;-><init>()V

    .line 19
    new-instance v0, Lk/a/b/a/b/k/u;

    invoke-direct {v0}, Lk/a/b/a/b/k/u;-><init>()V

    .line 20
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getSenderLinkAddress()Ljava/lang/String;

    move-result-object v1

    .line 21
    iput-object v1, p1, Lk/a/b/a/b/k/w;->a:Ljava/lang/String;

    .line 22
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getReceiverLinkAddress()Ljava/lang/String;

    move-result-object v1

    .line 23
    iput-object v1, v0, Lk/a/b/a/b/k/w;->a:Ljava/lang/String;

    .line 24
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->receiverLink:Lk/a/b/a/d/t;

    invoke-interface {v1, p1}, Lk/a/b/a/d/n;->a(Lk/a/b/a/b/n/r;)V

    .line 25
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->receiverLink:Lk/a/b/a/d/t;

    invoke-interface {p1, v0}, Lk/a/b/a/d/n;->a(Lk/a/b/a/b/n/q;)V

    .line 26
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;->OPENING:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->amqpsRecvLinkState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    .line 27
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->receiverLink:Lk/a/b/a/d/t;

    invoke-interface {p1}, Lk/a/b/a/d/f;->open()V

    .line 28
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->log:Lk/f/b;

    const-string v0, "Opening {} receiver link with link correlation id {}"

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getLinkInstanceType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->linkCorrelationId:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lk/f/b;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 30
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The session cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public operationLinksOpened()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->amqpsSendLinkState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;->OPENED:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->amqpsRecvLinkState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public protonMessageToIoTHubMessage(Lk/a/b/a/f/d/a;)Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;
    .locals 5

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->log:Lk/f/b;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getLinkInstanceType()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->linkCorrelationId:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p1}, Lk/a/b/a/f/d/a;->getCorrelationId()Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const-string v2, "Converting proton message to iot hub message for {} receiver link with link correlation id {}. Proton message correlation id {}"

    invoke-interface {v0, v2, v1}, Lk/f/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lk/a/b/a/f/d/a;->getBody()Lk/a/b/a/b/k/t;

    move-result-object v0

    check-cast v0, Lk/a/b/a/b/k/e;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lk/a/b/a/b/k/e;->a:Lk/a/b/a/b/a;

    .line 4
    iget v1, v0, Lk/a/b/a/b/a;->c:I

    .line 5
    new-array v1, v1, [B

    .line 6
    invoke-virtual {v0}, Lk/a/b/a/b/a;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    new-array v1, v3, [B

    .line 8
    :goto_0
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/MessageType;->UNKNOWN:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    invoke-direct {v0, v1, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;-><init>([BLcom/microsoft/azure/sdk/iot/device/MessageType;)V

    .line 9
    invoke-virtual {p1}, Lk/a/b/a/f/d/a;->getProperties()Lk/a/b/a/b/k/p;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 10
    iget-object v2, v1, Lk/a/b/a/b/k/p;->f:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/azure/sdk/iot/device/Message;->setCorrelationId(Ljava/lang/String;)V

    .line 12
    :cond_1
    iget-object v2, v1, Lk/a/b/a/b/k/p;->a:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/azure/sdk/iot/device/Message;->setMessageId(Ljava/lang/String;)V

    .line 14
    :cond_2
    iget-object v2, v1, Lk/a/b/a/b/k/p;->c:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v3, "iothub-app-to"

    .line 15
    invoke-virtual {v0, v3, v2}, Lcom/microsoft/azure/sdk/iot/device/Message;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_3
    iget-object v2, v1, Lk/a/b/a/b/k/p;->b:Lk/a/b/a/b/a;

    if-eqz v2, :cond_4

    .line 17
    invoke-virtual {v2}, Lk/a/b/a/b/a;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "iothub-app-userId"

    invoke-virtual {v0, v3, v2}, Lcom/microsoft/azure/sdk/iot/device/Message;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_4
    iget-object v2, v1, Lk/a/b/a/b/k/p;->h:Lk/a/b/a/b/f;

    if-eqz v2, :cond_5

    .line 19
    iget-object v2, v2, Lk/a/b/a/b/f;->x:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v2}, Lcom/microsoft/azure/sdk/iot/device/Message;->setContentEncoding(Ljava/lang/String;)V

    .line 21
    :cond_5
    iget-object v1, v1, Lk/a/b/a/b/k/p;->g:Lk/a/b/a/b/f;

    if-eqz v1, :cond_6

    .line 22
    iget-object v1, v1, Lk/a/b/a/b/f;->x:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/Message;->setContentType(Ljava/lang/String;)V

    .line 24
    :cond_6
    invoke-virtual {p1}, Lk/a/b/a/f/d/a;->getApplicationProperties()Lk/a/b/a/b/k/d;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 25
    invoke-virtual {p1}, Lk/a/b/a/f/d/a;->getApplicationProperties()Lk/a/b/a/b/k/d;

    move-result-object p1

    .line 26
    iget-object p1, p1, Lk/a/b/a/b/k/d;->a:Ljava/util/Map;

    .line 27
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "iothub-connection-device-id"

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/Message;->setConnectionDeviceId(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string v3, "iothub-connection-module-id"

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 32
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/Message;->setConnectionModuleId(Ljava/lang/String;)V

    goto :goto_1

    .line 33
    :cond_9
    sget-object v3, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;->RESERVED_PROPERTY_NAMES:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/azure/sdk/iot/device/Message;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    return-object v0
.end method

.method public declared-synchronized sendMessageAndGetDeliveryTag(Lcom/microsoft/azure/sdk/iot/device/MessageType;[BII[B)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSendReturnValue;
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->senderLink:Lk/a/b/a/d/x;

    if-eqz p1, :cond_3

    .line 2
    array-length p1, p5

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->senderLink:Lk/a/b/a/d/x;

    invoke-interface {p1, p5}, Lk/a/b/a/d/n;->a([B)Lk/a/b/a/d/e;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4
    :try_start_1
    sget-object v4, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->log:Lk/f/b;

    const-string v5, "Sending {} bytes over the amqp {} sender link with link correlation id {}"

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getLinkInstanceType()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v7, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->linkCorrelationId:Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-interface {v4, v5, v6}, Lk/f/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->senderLink:Lk/a/b/a/d/x;

    invoke-interface {v4, p2, p3, p4}, Lk/a/b/a/d/x;->a([BII)I

    move-result p2

    .line 6
    sget-object p3, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->log:Lk/f/b;

    const-string v4, "{} bytes sent over the amqp {} sender link with link correlation id {}"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getLinkInstanceType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->linkCorrelationId:Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-interface {p3, v4, v5}, Lk/f/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne p2, p4, :cond_1

    .line 7
    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->senderLink:Lk/a/b/a/d/x;

    invoke-interface {p2}, Lk/a/b/a/d/x;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 8
    sget-object p2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->log:Lk/f/b;

    const-string p3, "Message was sent over {} sender link with delivery tag {} and hash {}"

    new-array p4, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getLinkInstanceType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p4, v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    aput-object v4, p4, v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p4, v1

    invoke-interface {p2, p3, p4}, Lk/f/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    new-instance p2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSendReturnValue;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-direct {p2, v2, p3, p5}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSendReturnValue;-><init>(ZI[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p2

    .line 10
    :cond_0
    :try_start_2
    new-instance p2, Lcom/microsoft/azure/sdk/iot/device/exceptions/ProtocolException;

    const-string p3, "Failed to advance the senderLink after sending a message on %s sender link with link correlation id %s, retrying to send the message"

    new-array p4, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getLinkInstanceType()Ljava/lang/String;

    move-result-object p5

    aput-object p5, p4, v3

    iget-object p5, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->linkCorrelationId:Ljava/lang/String;

    aput-object p5, p4, v2

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/microsoft/azure/sdk/iot/device/exceptions/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 11
    throw p2

    .line 12
    :cond_1
    new-instance p2, Lcom/microsoft/azure/sdk/iot/device/exceptions/ProtocolException;

    const-string p3, "Amqp send operation did not send all of the expected bytes for %s sender link with link correlation id %s, retrying to send the message"

    new-array p4, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getLinkInstanceType()Ljava/lang/String;

    move-result-object p5

    aput-object p5, p4, v3

    iget-object p5, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->linkCorrelationId:Ljava/lang/String;

    aput-object p5, p4, v2

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/microsoft/azure/sdk/iot/device/exceptions/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception p2

    .line 14
    :try_start_3
    sget-object p3, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->log:Lk/f/b;

    const-string p4, "Encountered a problem while sending a message on {} sender link with link correlation id {}"

    new-array p5, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getLinkInstanceType()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p5, v3

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->linkCorrelationId:Ljava/lang/String;

    aput-object v0, p5, v2

    aput-object p2, p5, v1

    invoke-interface {p3, p4, p5}, Lk/f/b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->senderLink:Lk/a/b/a/d/x;

    invoke-interface {p2}, Lk/a/b/a/d/x;->d()Z

    .line 16
    invoke-interface {p1}, Lk/a/b/a/d/e;->a()V

    .line 17
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSendReturnValue;

    const/4 p2, -0x1

    invoke-direct {p1, v3, p2}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSendReturnValue;-><init>(ZI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    .line 18
    :cond_2
    :try_start_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Trying deliveryTag cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Trying to send but Sender link is not initialized."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
