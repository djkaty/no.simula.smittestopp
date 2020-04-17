.class public Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationX509;
.super Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthentication;
.source "SourceFile"


# static fields
.field public static final log:Lk/f/b;


# instance fields
.field public final deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationX509;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationX509;->log:Lk/f/b;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthentication;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationX509;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    .line 3
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;->OPENED:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->amqpsSendLinkState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    .line 4
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;->amqpsRecvLinkState:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperationLinkState;

    return-void
.end method


# virtual methods
.method public authenticate(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;Ljava/util/UUID;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    const-string p2, "Cannot authenticate on demand with x509 auth"

    invoke-direct {p1, p2}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLinkInstanceType()Ljava/lang/String;
    .locals 1

    const-string v0, "x509"

    return-object v0
.end method

.method public getMessageFromReceiverLink(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public handleAuthenticationMessage(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;Ljava/util/UUID;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLinkRemoteOpen(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public operationLinksOpened()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public sendMessageAndGetDeliveryTag(Lcom/microsoft/azure/sdk/iot/device/MessageType;[BII[B)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSendReturnValue;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public setSslDomain(Lk/a/b/a/d/c0;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationX509;->deviceClientConfig:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getAuthenticationProvider()Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthentication;->makeDomain(Ljavax/net/ssl/SSLContext;)Lk/a/b/a/d/a0;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-interface {p1, v0}, Lk/a/b/a/d/c0;->a(Lk/a/b/a/d/a0;)Lk/a/b/a/d/z;

    return-void

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthenticationX509;->log:Lk/f/b;

    const-string v1, "setSslDomain has thrown exception"

    invoke-interface {v0, v1, p1}, Lk/f/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Input parameter transport cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
