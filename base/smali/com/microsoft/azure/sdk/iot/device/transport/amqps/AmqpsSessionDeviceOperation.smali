.class public Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final log:Lk/f/b;

.field public static nextTag:J


# instance fields
.field public amqpsAuthenticatorState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationState;

.field public final amqpsDeviceAuthentication:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthentication;

.field public amqpsDeviceOperationsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/microsoft/azure/sdk/iot/device/MessageType;",
            "Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;",
            ">;"
        }
    .end annotation
.end field

.field public cbsCorrelationIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field public final deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

.field public openLock:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->log:Lk/f/b;

    const-wide/16 v0, 0x0

    .line 2
    sput-wide v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->nextTag:J

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthentication;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationState;->UNKNOWN:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationState;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->amqpsAuthenticatorState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationState;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->amqpsDeviceOperationsMap:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->openLock:Ljava/lang/Integer;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->cbsCorrelationIdList:Ljava/util/List;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 6
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    .line 7
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->amqpsDeviceAuthentication:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthentication;

    .line 8
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->amqpsDeviceOperationsMap:Ljava/util/Map;

    sget-object p2, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_TELEMETRY:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceTelemetry;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-direct {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceTelemetry;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getAuthenticationType()Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    move-result-object p1

    sget-object p2, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;->SAS_TOKEN:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    if-ne p1, p2, :cond_0

    .line 10
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationState;->NOT_AUTHENTICATED:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationState;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->amqpsAuthenticatorState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationState;

    goto :goto_0

    .line 11
    :cond_0
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationState;->AUTHENTICATED:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationState;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->amqpsAuthenticatorState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationState;

    :goto_0
    return-void

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "amqpsDeviceAuthentication cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "deviceClientConfig cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private sendMessageAndGetDeliveryTag(Lcom/microsoft/azure/sdk/iot/device/MessageType;[BII[B)Ljava/lang/Integer;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->amqpsDeviceOperationsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->amqpsDeviceOperationsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->sendMessageAndGetDeliveryTag(Lcom/microsoft/azure/sdk/iot/device/MessageType;[BII[B)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSendReturnValue;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSendReturnValue;->isDeliverySuccessful()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    new-instance p2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSendReturnValue;->getDeliveryTag()[B

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, -0x1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public authenticate()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getAuthenticationType()Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;->SAS_TOKEN:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->cbsCorrelationIdList:Ljava/util/List;

    monitor-enter v1

    .line 4
    :try_start_0
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->log:Lk/f/b;

    const-string v3, "Adding correlation id to cbs correlation id list {}"

    invoke-interface {v2, v3, v0}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->cbsCorrelationIdList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->amqpsDeviceAuthentication:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthentication;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v1, v2, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthentication;->authenticate(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;Ljava/util/UUID;)V

    .line 8
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->log:Lk/f/b;

    const-string v1, "Setting amqps device authentication state to AUTHENTICATING"

    invoke-interface {v0, v1}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationState;->AUTHENTICATING:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationState;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->amqpsAuthenticatorState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationState;

    .line 10
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->log:Lk/f/b;

    const-string v1, "Amqp session now waiting for service to acknowledge the sent authentication message"

    invoke-interface {v0, v1}, Lk/f/b;->e(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->closeLinks()V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getAuthenticationType()Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;->SAS_TOKEN:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationState;->NOT_AUTHENTICATED:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationState;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->amqpsAuthenticatorState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationState;

    .line 4
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->log:Lk/f/b;

    const-string v1, "Setting amqps device authentication state to NOT_AUTHENTICATED"

    invoke-interface {v0, v1}, Lk/f/b;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public closeLinks()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->amqpsDeviceOperationsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->closeLinks()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public convertFromProton(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertFromProtonReturnValue;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->amqpsDeviceOperationsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;->getAmqpsMessageType()Lcom/microsoft/azure/sdk/iot/device/MessageType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->amqpsDeviceOperationsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;->getAmqpsMessageType()Lcom/microsoft/azure/sdk/iot/device/MessageType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->convertFromProton(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertFromProtonReturnValue;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public convertToProton(Lcom/microsoft/azure/sdk/iot/device/Message;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertToProtonReturnValue;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageType()Lcom/microsoft/azure/sdk/iot/device/MessageType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_TELEMETRY:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageType()Lcom/microsoft/azure/sdk/iot/device/MessageType;

    move-result-object v0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->amqpsDeviceOperationsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->amqpsDeviceOperationsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->convertToProton(Lcom/microsoft/azure/sdk/iot/device/Message;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertToProtonReturnValue;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpectedWorkerLinkCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->amqpsDeviceOperationsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public declared-synchronized getMessageFromReceiverLink(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->amqpsDeviceOperationsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getMessageFromReceiverLink(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 3
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public handleAuthenticationMessage(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->cbsCorrelationIdList:Ljava/util/List;

    monitor-enter v1

    const/4 v2, 0x0

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->cbsCorrelationIdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/UUID;

    .line 3
    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->amqpsDeviceAuthentication:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthentication;

    invoke-virtual {v5, p1, v4}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthentication;->handleAuthenticationMessage(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;Ljava/util/UUID;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->log:Lk/f/b;

    const-string v2, "Setting amqps device authentication state to AUTHENTICATED"

    invoke-interface {p1, v2}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 5
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationState;->AUTHENTICATED:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationState;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->amqpsAuthenticatorState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationState;

    move-object v2, v4

    :cond_1
    if-eqz v2, :cond_2

    .line 6
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->cbsCorrelationIdList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    const/4 v0, 0x1

    .line 7
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return v0
.end method

.method public initLink(Lk/a/b/a/d/n;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->amqpsAuthenticatorState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationState;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationState;->AUTHENTICATED:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationState;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->amqpsDeviceOperationsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;

    invoke-virtual {v1, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->initLink(Lk/a/b/a/d/n;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLinkRemoteClose(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->amqpsDeviceOperationsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;

    invoke-virtual {v1, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->onLinkRemoteClose(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onLinkRemoteOpen(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->amqpsAuthenticatorState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationState;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationState;->AUTHENTICATED:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationState;

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->amqpsDeviceOperationsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;

    invoke-virtual {v1, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->onLinkRemoteOpen(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public openLinks(Lk/a/b/a/d/y;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->amqpsAuthenticatorState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationState;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationState;->AUTHENTICATED:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationState;

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->openLock:Ljava/lang/Integer;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->amqpsDeviceOperationsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;

    .line 4
    invoke-virtual {v2, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->openLinks(Lk/a/b/a/d/y;)V

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method public sendMessage(Lk/a/b/a/f/a;Lcom/microsoft/azure/sdk/iot/device/MessageType;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->amqpsAuthenticatorState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationState;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationState;->AUTHENTICATED:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationState;

    const/4 v2, -0x1

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-ne v0, v1, :cond_3

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const/16 p3, 0x400

    new-array p3, p3, [B

    move-object v2, p3

    :goto_0
    const/4 p3, 0x0

    .line 4
    :try_start_0
    array-length v0, v2

    invoke-interface {p1, v2, p3, v0}, Lk/a/b/a/f/a;->encode([BII)I

    move-result v4
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    sget-wide v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->nextTag:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 6
    sget-wide v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->nextTag:J

    const-wide/32 v6, 0x7fffffff

    const-wide/16 v8, 0x0

    cmp-long p1, v0, v6

    if-eqz p1, :cond_1

    cmp-long p1, v0, v8

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    .line 7
    sput-wide v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->nextTag:J

    goto :goto_2

    .line 8
    :cond_1
    :goto_1
    sput-wide v8, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->nextTag:J

    :goto_2
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->sendMessageAndGetDeliveryTag(Lcom/microsoft/azure/sdk/iot/device/MessageType;[BII[B)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 10
    :catch_0
    array-length p3, v2

    mul-int/lit8 p3, p3, 0x2

    new-array v2, p3, [B

    goto :goto_0

    :cond_2
    return-object v2

    .line 11
    :cond_3
    sget-object p2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->log:Lk/f/b;

    const-string p3, "Attempted to send a message while state was not AUTHENTICATED, returning delivery tag of -1 ({})"

    invoke-interface {p2, p3, p1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2
.end method

.method public subscribeToMessageType(Lk/a/b/a/d/y;Lcom/microsoft/azure/sdk/iot/device/MessageType;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_METHODS:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->amqpsDeviceOperationsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_METHODS:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->amqpsDeviceOperationsMap:Ljava/util/Map;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_METHODS:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    new-instance v2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceMethods;

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-direct {v2, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceMethods;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->openLinks(Lk/a/b/a/d/y;)V

    .line 4
    :cond_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_TWIN:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->amqpsDeviceOperationsMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_TWIN:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 5
    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->amqpsDeviceOperationsMap:Ljava/util/Map;

    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_TWIN:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceTwin;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-direct {v1, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceTwin;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->openLinks(Lk/a/b/a/d/y;)V

    :cond_1
    return-void
.end method
