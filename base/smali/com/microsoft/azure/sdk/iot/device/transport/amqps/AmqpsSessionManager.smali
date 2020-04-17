.class public Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final log:Lk/f/b;


# instance fields
.field public amqpsDeviceAuthentication:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthentication;

.field public amqpsDeviceSessionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;",
            ">;"
        }
    .end annotation
.end field

.field public final deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

.field public session:Lk/a/b/a/d/y;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->log:Lk/f/b;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->session:Lk/a/b/a/d/y;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceSessionList:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    .line 4
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getAuthenticationType()Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationCBS;

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-direct {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationCBS;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceAuthentication:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthentication;

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationX509;

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-direct {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationX509;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceAuthentication:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthentication;

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->addDeviceOperationSession(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V

    return-void

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "deviceClientConfig cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final addDeviceOperationSession(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceAuthentication:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthentication;

    invoke-direct {v0, p1, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthentication;)V

    .line 2
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceSessionList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "deviceClientConfig cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public authenticate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getAuthenticationType()Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;->SAS_TOKEN:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->authenticate()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public closeNow()V
    .locals 2

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->log:Lk/f/b;

    const-string v1, "Closing AMQP session"

    invoke-interface {v0, v1}, Lk/f/b;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->close()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceAuthentication:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthentication;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->closeLinks()V

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->session:Lk/a/b/a/d/y;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0}, Lk/a/b/a/d/f;->close()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->session:Lk/a/b/a/d/y;

    :cond_2
    return-void
.end method

.method public convertFromProton(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertFromProtonReturnValue;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceSessionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->convertFromProton(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertFromProtonReturnValue;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public convertToProton(Lcom/microsoft/azure/sdk/iot/device/Message;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertToProtonReturnValue;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceSessionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->convertToProton(Lcom/microsoft/azure/sdk/iot/device/Message;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertToProtonReturnValue;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public getExpectedWorkerLinkCount()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;

    .line 2
    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->getExpectedWorkerLinkCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getMessageFromReceiverLink(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->session:Lk/a/b/a/d/y;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-string v0, "cbs-receiver-"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const-string v0, "cbs-sender-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->getMessageFromReceiverLink(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceAuthentication:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthentication;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->getMessageFromReceiverLink(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;

    move-result-object v1

    .line 6
    :goto_2
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceSessionList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceSessionList:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;

    invoke-virtual {p1, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->handleAuthenticationMessage(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-object v1
.end method

.method public isAuthenticationOpened()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceAuthentication:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthentication;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->operationLinksOpened()Z

    move-result v0

    return v0
.end method

.method public onConnectionBound(Lk/a/b/a/d/c0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->session:Lk/a/b/a/d/y;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceAuthentication:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthentication;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthentication;->setSslDomain(Lk/a/b/a/d/c0;)V

    :cond_0
    return-void
.end method

.method public onConnectionInit(Lk/a/b/a/d/c;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->session:Lk/a/b/a/d/y;

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1}, Lk/a/b/a/d/c;->D()Lk/a/b/a/d/y;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->session:Lk/a/b/a/d/y;

    .line 3
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->log:Lk/f/b;

    const-string v0, "Opening session..."

    invoke-interface {p1, v0}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->session:Lk/a/b/a/d/y;

    invoke-interface {p1}, Lk/a/b/a/d/f;->open()V

    :cond_0
    return-void
.end method

.method public onLinkInit(Lk/a/b/a/d/n;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->session:Lk/a/b/a/d/y;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->isAuthenticationOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;

    invoke-virtual {v1, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->initLink(Lk/a/b/a/d/n;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceAuthentication:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthentication;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->initLink(Lk/a/b/a/d/n;)V

    :cond_1
    return-void
.end method

.method public onLinkRemoteClose(Lk/a/b/a/d/n;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lk/a/b/a/d/n;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;

    invoke-virtual {v1, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->onLinkRemoteClose(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceAuthentication:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthentication;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->onLinkRemoteClose(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 5
    :cond_2
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->log:Lk/f/b;

    const-string v0, "onLinkRemoteClose could not be correlated with a local link, ignoring it"

    invoke-interface {p1, v0}, Lk/f/b;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onLinkRemoteOpen(Lk/a/b/a/d/n;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Lk/a/b/a/d/n;->getName()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->isAuthenticationOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceSessionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceSessionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;

    invoke-virtual {v2, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->onLinkRemoteOpen(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->log:Lk/f/b;

    const-string v1, "onLinkRemoteOpen could not be correlated with a local link, ignoring it"

    invoke-interface {p1, v1}, Lk/f/b;->d(Ljava/lang/String;)V

    return v0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceAuthentication:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthentication;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->onLinkRemoteOpen(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onSessionRemoteOpen(Lk/a/b/a/d/y;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceAuthentication:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthentication;

    instance-of v1, v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationCBS;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->openLinks(Lk/a/b/a/d/y;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->openWorkerLinks()V

    :goto_0
    return-void
.end method

.method public openWorkerLinks()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->session:Lk/a/b/a/d/y;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->session:Lk/a/b/a/d/y;

    invoke-virtual {v1, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->openLinks(Lk/a/b/a/d/y;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sendMessage(Lk/a/b/a/f/a;Lcom/microsoft/azure/sdk/iot/device/MessageType;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    const/4 v0, -0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->session:Lk/a/b/a/d/y;

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceSessionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;

    invoke-virtual {v1, p1, p2, p3}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->sendMessage(Lk/a/b/a/f/a;Lcom/microsoft/azure/sdk/iot/device/MessageType;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    sget-object p2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->log:Lk/f/b;

    const-string p3, "Attempt to send message over amqp failed because no session handled it ({})"

    invoke-interface {p2, p3, p1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-object v1
.end method

.method public subscribeDeviceToMessageType(Lcom/microsoft/azure/sdk/iot/device/MessageType;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->log:Lk/f/b;

    const-string v1, "Subscribing to {}"

    invoke-interface {v0, v1, p1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->session:Lk/a/b/a/d/y;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->amqpsDeviceSessionList:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->session:Lk/a/b/a/d/y;

    invoke-virtual {p2, v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionDeviceOperation;->subscribeToMessageType(Lk/a/b/a/d/y;Lcom/microsoft/azure/sdk/iot/device/MessageType;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
