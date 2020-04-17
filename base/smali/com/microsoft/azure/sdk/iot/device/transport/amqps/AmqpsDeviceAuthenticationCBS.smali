.class public final Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationCBS;
.super Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthentication;
.source "SourceFile"


# static fields
.field public static final CBS_REPLY:Ljava/lang/String; = "cbs"

.field public static final CBS_TO:Ljava/lang/String; = "$cbs"

.field public static final DEVICES_PATH:Ljava/lang/String; = "/devices/"

.field public static final NAME_KEY:Ljava/lang/String; = "name"

.field public static final OPERATION_KEY:Ljava/lang/String; = "operation"

.field public static final OPERATION_VALUE:Ljava/lang/String; = "put-token"

.field public static final RECEIVER_LINK_ENDPOINT_PATH:Ljava/lang/String; = "$cbs"

.field public static final RECEIVER_LINK_TAG_PREFIX:Ljava/lang/String; = "cbs-receiver-"

.field public static final SENDER_LINK_ENDPOINT_PATH:Ljava/lang/String; = "$cbs"

.field public static final SENDER_LINK_TAG_PREFIX:Ljava/lang/String; = "cbs-sender-"

.field public static final TYPE_KEY:Ljava/lang/String; = "type"

.field public static final TYPE_VALUE:Ljava/lang/String; = "servicebus.windows.net:sastoken"

.field public static final log:Lk/f/b;


# instance fields
.field public PROP_KEY_STATUS_CODE:Ljava/lang/String;

.field public final deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

.field public nextTag:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationCBS;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationCBS;->log:Lk/f/b;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthentication;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V

    const-string v0, "status-code"

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationCBS;->PROP_KEY_STATUS_CODE:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationCBS;->nextTag:J

    .line 4
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationCBS;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    const-string v0, "$cbs"

    .line 5
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->senderLinkEndpointPath:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->receiverLinkEndpointPath:Ljava/lang/String;

    const-string v0, "cbs-sender-"

    .line 7
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->senderLinkTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->senderLinkTag:Ljava/lang/String;

    const-string v0, "cbs-receiver-"

    .line 8
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->receiverLinkTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->receiverLinkTag:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->senderLinkEndpointPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->senderLinkAddress:Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->receiverLinkEndpointPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->receiverLinkAddress:Ljava/lang/String;

    .line 11
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->amqpProperties:Ljava/util/Map;

    const-string v1, "com.microsoft:api-version"

    invoke-static {v1}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v1

    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/TransportUtils;->IOTHUB_API_VERSION:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->amqpProperties:Ljava/util/Map;

    const-string v1, "iothub-connection-device-id"

    invoke-static {v1}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private createCBSAuthenticationMessage(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;Ljava/util/UUID;)Lk/a/b/a/f/d/a;
    .locals 3

    .line 1
    new-instance v0, Lk/a/b/a/f/d/a;

    invoke-direct {v0}, Lk/a/b/a/f/d/a;-><init>()V

    .line 2
    new-instance v1, Lk/a/b/a/b/k/p;

    invoke-direct {v1}, Lk/a/b/a/b/k/p;-><init>()V

    .line 3
    iput-object p2, v1, Lk/a/b/a/b/k/p;->a:Ljava/lang/Object;

    const-string p2, "$cbs"

    .line 4
    iput-object p2, v1, Lk/a/b/a/b/k/p;->c:Ljava/lang/String;

    const-string p2, "cbs"

    .line 5
    iput-object p2, v1, Lk/a/b/a/b/k/p;->e:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Lk/a/b/a/f/d/a;->setProperties(Lk/a/b/a/b/k/p;)V

    .line 7
    new-instance p2, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {p2, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "operation"

    const-string v2, "put-token"

    .line 8
    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    const-string v2, "servicebus.windows.net:sastoken"

    .line 9
    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getGatewayHostname()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getIotHubHostname()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v2, "/devices/"

    .line 13
    invoke-static {v1, v2}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v1, Lk/a/b/a/b/k/d;

    invoke-direct {v1, p2}, Lk/a/b/a/b/k/d;-><init>(Ljava/util/Map;)V

    .line 15
    invoke-virtual {v0, v1}, Lk/a/b/a/f/d/a;->setApplicationProperties(Lk/a/b/a/b/k/d;)V

    .line 16
    :try_start_0
    new-instance p2, Lk/a/b/a/b/k/c;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getSasTokenAuthentication()Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v1}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->getRenewedSasToken(ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lk/a/b/a/b/k/c;-><init>(Ljava/lang/Object;)V

    .line 17
    invoke-virtual {v0, p2}, Lk/a/b/a/f/d/a;->setBody(Lk/a/b/a/b/k/t;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 18
    sget-object p2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationCBS;->log:Lk/f/b;

    const-string v0, "getRenewedSasToken has thrown exception while building new cbs authentication message"

    invoke-interface {p2, v0, p1}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    new-instance p2, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    invoke-direct {p2, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public authenticate(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;Ljava/util/UUID;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationCBS;->log:Lk/f/b;

    const-string v1, "authenticate called in AmqpsDeviceAuthenticationCBS"

    invoke-interface {v0, v1}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationCBS;->createCBSAuthenticationMessage(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;Ljava/util/UUID;)Lk/a/b/a/f/d/a;

    move-result-object p1

    const/16 p2, 0x400

    new-array p2, p2, [B

    move-object v2, p2

    :goto_0
    const/4 p2, 0x0

    .line 3
    :try_start_0
    array-length v0, v2

    invoke-virtual {p1, v2, p2, v0}, Lk/a/b/a/f/d/a;->encode([BII)I

    move-result v4
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    iget-wide p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationCBS;->nextTag:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 5
    iget-wide p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationCBS;->nextTag:J

    const-wide/32 v0, 0x7fffffff

    const-wide/16 v6, 0x0

    cmp-long v3, p1, v0

    if-eqz v3, :cond_1

    cmp-long v0, p1, v6

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    .line 6
    iput-wide p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationCBS;->nextTag:J

    goto :goto_2

    .line 7
    :cond_1
    :goto_1
    iput-wide v6, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationCBS;->nextTag:J

    .line 8
    :goto_2
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/MessageType;->CBS_AUTHENTICATION:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->sendMessageAndGetDeliveryTag(Lcom/microsoft/azure/sdk/iot/device/MessageType;[BII[B)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSendReturnValue;

    return-void

    .line 9
    :catch_0
    array-length p2, v2

    mul-int/lit8 p2, p2, 0x2

    new-array v2, p2, [B

    goto :goto_0
.end method

.method public getLinkInstanceType()Ljava/lang/String;
    .locals 1

    const-string v0, "cbs"

    return-object v0
.end method

.method public getMessageFromReceiverLink(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getMessageFromReceiverLink(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/MessageType;->CBS_AUTHENTICATION:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;->setAmqpsMessageType(Lcom/microsoft/azure/sdk/iot/device/MessageType;)V

    .line 3
    invoke-virtual {p1}, Lk/a/b/a/f/d/a;->getCorrelationId()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationCBS;->log:Lk/f/b;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->linkCorrelationId:Ljava/lang/String;

    invoke-virtual {p1}, Lk/a/b/a/f/d/a;->getCorrelationId()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Received amqp message on cbs receiver link with link correlation id {} and message correlation id {}"

    invoke-interface {v0, v3, v1, v2}, Lk/f/b;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationCBS;->log:Lk/f/b;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->linkCorrelationId:Ljava/lang/String;

    const-string v2, "Received amqp message on cbs receiver link with link correlation id {}"

    invoke-interface {v0, v2, v1}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public handleAuthenticationMessage(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;Ljava/util/UUID;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1
    invoke-virtual {p1}, Lk/a/b/a/f/d/a;->getApplicationProperties()Lk/a/b/a/b/k/d;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lk/a/b/a/f/d/a;->getProperties()Lk/a/b/a/b/k/p;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2
    invoke-virtual {p1}, Lk/a/b/a/f/d/a;->getProperties()Lk/a/b/a/b/k/p;

    move-result-object v1

    .line 3
    iget-object v1, v1, Lk/a/b/a/b/k/p;->f:Ljava/lang/Object;

    .line 4
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 5
    invoke-virtual {p1}, Lk/a/b/a/f/d/a;->getApplicationProperties()Lk/a/b/a/b/k/d;

    move-result-object p2

    .line 6
    iget-object p2, p2, Lk/a/b/a/b/k/d;->a:Ljava/util/Map;

    .line 7
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9
    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationCBS;->PROP_KEY_STATUS_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_1

    .line 11
    sget-object p2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationCBS;->log:Lk/f/b;

    const-string v0, "CBS authentication message was acknowledged with status 200, authentication for one cbs link pair was successful"

    invoke-interface {p2, v0}, Lk/f/b;->b(Ljava/lang/String;)V

    .line 12
    sget-object p2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;->COMPLETE:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;->acknowledge(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage$ACK_TYPE;)V

    const/4 p1, 0x1

    return p1

    .line 13
    :cond_1
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationCBS;->log:Lk/f/b;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "CBS authentication message was rejected with status {}, authentication has failed"

    invoke-interface {p1, v1, p2}, Lk/f/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 14
    :cond_2
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationCBS;->log:Lk/f/b;

    const-string p2, "Could not handle authentication message because the received message did not contain a status code even though the correlation id was the expected value"

    invoke-interface {p1, p2}, Lk/f/b;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_3
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationCBS;->log:Lk/f/b;

    const-string p2, "Could not handle authentication message because the received correlation id did not match the expected value"

    invoke-interface {p1, p2}, Lk/f/b;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_4
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationCBS;->log:Lk/f/b;

    const-string p2, "Could not handle authentication message because it had no application properties or had no system properties"

    invoke-interface {p1, p2}, Lk/f/b;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_5
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationCBS;->log:Lk/f/b;

    const-string p2, "Could not handle authentication message because it was null"

    invoke-interface {p1, p2}, Lk/f/b;->d(Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method public setSslDomain(Lk/a/b/a/d/c0;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lk/a/b/a/d/c0;->E()Lk/a/b/a/d/v;

    move-result-object v0

    const-string v1, "ANONYMOUS"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lk/a/b/a/d/g0/v;

    invoke-virtual {v0, v1}, Lk/a/b/a/d/g0/v;->a([Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationCBS;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getAuthenticationProvider()Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthentication;->makeDomain(Ljavax/net/ssl/SSLContext;)Lk/a/b/a/d/a0;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-interface {p1, v0}, Lk/a/b/a/d/c0;->a(Lk/a/b/a/d/a0;)Lk/a/b/a/d/z;

    return-void

    :catch_0
    move-exception p1

    .line 5
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationCBS;->log:Lk/f/b;

    const-string v1, "setSslDomain has thrown an exception"

    invoke-interface {v0, v1, p1}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
