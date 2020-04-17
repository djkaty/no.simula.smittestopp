.class public Lcom/microsoft/azure/sdk/iot/device/TransportClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;
    }
.end annotation


# static fields
.field public static RECEIVE_PERIOD_MILLIS_AMQPS:J

.field public static SEND_PERIOD_MILLIS:J

.field public static final log:Lk/f/b;


# instance fields
.field public deviceClientList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceClient;",
            ">;"
        }
    .end annotation
.end field

.field public deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

.field public iotHubClientProtocol:Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;

.field public transportClientState:Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->log:Lk/f/b;

    const-wide/16 v0, 0xa

    .line 2
    sput-wide v0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->SEND_PERIOD_MILLIS:J

    .line 3
    sput-wide v0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->RECEIVE_PERIOD_MILLIS_AMQPS:J

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    .line 3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid client protocol specified."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->iotHubClientProtocol:Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->deviceClientList:Ljava/util/ArrayList;

    .line 7
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;->CLOSED:Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->transportClientState:Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;

    return-void

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Multiplexing is only supported for AMQPS and AMQPS_WS"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public closeNow()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->deviceClientList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->deviceClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->closeFileUpload()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->multiplexClose()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    .line 6
    :cond_1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->log:Lk/f/b;

    const-string v1, "Transport client closed successfully"

    invoke-interface {v0, v1}, Lk/f/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public getIotHubClientProtocol()Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->iotHubClientProtocol:Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;

    return-object v0
.end method

.method public getTransportClientState()Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->transportClientState:Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;

    return-object v0
.end method

.method public open()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The transport client connection is already open."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->deviceClientList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 4
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->deviceClientList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->getConfig()Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    move-result-object v2

    sget-wide v3, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->SEND_PERIOD_MILLIS:J

    sget-wide v5, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->RECEIVE_PERIOD_MILLIS_AMQPS:J

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;JJ)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->deviceClientList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->setDeviceIO(Lcom/microsoft/azure/sdk/iot/device/DeviceIO;)V

    const/4 v0, 0x1

    .line 6
    :goto_1
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->deviceClientList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->deviceClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    invoke-virtual {v1, v2}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->setDeviceIO(Lcom/microsoft/azure/sdk/iot/device/DeviceIO;)V

    .line 8
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->deviceClientList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->getConfig()Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->addClient(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->open()V

    .line 10
    :cond_3
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;->OPENED:Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->transportClientState:Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;

    .line 11
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->log:Lk/f/b;

    const-string v1, "Transport client opened successfully"

    invoke-interface {v0, v1}, Lk/f/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public registerDeviceClient(Lcom/microsoft/azure/sdk/iot/device/DeviceClient;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "deviceClient cannot be registered if the connection is open."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->deviceClientList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->log:Lk/f/b;

    const-string v0, "DeviceClient instance successfully added to the transport client"

    invoke-interface {p1, v0}, Lk/f/b;->b(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "deviceClient parameter cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRetryPolicy(Lcom/microsoft/azure/sdk/iot/device/transport/RetryPolicy;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->deviceClientList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->deviceClientList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->deviceClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->getConfig()Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->setRetryPolicy(Lcom/microsoft/azure/sdk/iot/device/transport/RetryPolicy;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->log:Lk/f/b;

    const-string v0, "Retry policy updated successfully in the transport client"

    invoke-interface {p1, v0}, Lk/f/b;->b(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "TransportClient.setRetryPolicy only works when there is at least one registered device client."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSendInterval(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->transportClientState:Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;->OPENED:Lcom/microsoft/azure/sdk/iot/device/TransportClient$TransportClientState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->deviceIO:Lcom/microsoft/azure/sdk/iot/device/DeviceIO;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/DeviceIO;->setSendPeriodInMilliseconds(J)V

    .line 3
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/TransportClient;->log:Lk/f/b;

    const-string p2, "Send interval updated successfully in the transport client"

    invoke-interface {p1, p2}, Lk/f/b;->b(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "TransportClient.setSendInterval only works when the transport client is opened"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "send interval can not be zero or negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
