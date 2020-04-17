.class public abstract Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthentication;
.super Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;
.source "SourceFile"


# static fields
.field public static final log:Lk/f/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthentication;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceAuthentication;->log:Lk/f/b;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V
    .locals 8

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsDeviceOperations;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract authenticate(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;Ljava/util/UUID;)V
.end method

.method public convertFromProton(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertFromProtonReturnValue;
    .locals 0

    .line 1
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    const-string p2, "Should not be called"

    invoke-direct {p1, p2}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public convertToProton(Lcom/microsoft/azure/sdk/iot/device/Message;)Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsConvertToProtonReturnValue;
    .locals 1

    .line 1
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    const-string v0, "Should not be called"

    invoke-direct {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract handleAuthenticationMessage(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsMessage;Ljava/util/UUID;)Z
.end method

.method public makeDomain(Ljavax/net/ssl/SSLContext;)Lk/a/b/a/d/a0;
    .locals 3

    .line 1
    new-instance v0, Lk/a/b/a/d/g0/m0/e;

    invoke-direct {v0}, Lk/a/b/a/d/g0/m0/e;-><init>()V

    .line 2
    iput-object p1, v0, Lk/a/b/a/d/g0/m0/e;->c:Ljavax/net/ssl/SSLContext;

    .line 3
    sget-object p1, Lk/a/b/a/d/a0$b;->VERIFY_PEER:Lk/a/b/a/d/a0$b;

    .line 4
    iput-object p1, v0, Lk/a/b/a/d/g0/m0/e;->b:Lk/a/b/a/d/a0$b;

    .line 5
    iget-object p1, v0, Lk/a/b/a/d/g0/m0/e;->d:Lk/a/b/a/d/g0/m0/f;

    const/4 v1, 0x0

    .line 6
    iput-object v1, p1, Lk/a/b/a/d/g0/m0/f;->a:Ljavax/net/ssl/SSLContext;

    .line 7
    sget-object v2, Lk/a/b/a/d/a0$a;->CLIENT:Lk/a/b/a/d/a0$a;

    .line 8
    iput-object v1, p1, Lk/a/b/a/d/g0/m0/f;->a:Ljavax/net/ssl/SSLContext;

    .line 9
    iput-object v2, v0, Lk/a/b/a/d/g0/m0/e;->a:Lk/a/b/a/d/a0$a;

    return-object v0
.end method

.method public abstract setSslDomain(Lk/a/b/a/d/c0;)V
.end method
