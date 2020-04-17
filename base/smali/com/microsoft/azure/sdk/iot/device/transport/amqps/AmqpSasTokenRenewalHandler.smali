.class public Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpSasTokenRenewalHandler;
.super Lk/a/b/a/d/a;
.source "SourceFile"


# static fields
.field public static final log:Lk/f/b;


# instance fields
.field public amqpsSessionManager:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;

.field public config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

.field public retryPeriodMilliseconds:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpSasTokenRenewalHandler;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpSasTokenRenewalHandler;->log:Lk/f/b;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk/a/b/a/d/a;-><init>()V

    const/16 v0, 0x1388

    .line 2
    iput v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpSasTokenRenewalHandler;->retryPeriodMilliseconds:I

    .line 3
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpSasTokenRenewalHandler;->amqpsSessionManager:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;

    .line 4
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpSasTokenRenewalHandler;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    return-void
.end method


# virtual methods
.method public onTimerTask(Lk/a/b/a/d/h;)V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpSasTokenRenewalHandler;->log:Lk/f/b;

    const-string v1, "AmqpSasTokenRenewalHandler OnTimerTask called, sending authentication message"

    invoke-interface {v0, v1}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpSasTokenRenewalHandler;->amqpsSessionManager:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsSessionManager;->authenticate()V
    :try_end_0
    .catch Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    move-object v0, p1

    check-cast v0, Lk/a/b/a/d/g0/g;

    :try_start_1
    invoke-virtual {v0}, Lk/a/b/a/d/g0/g;->b()Lk/a/b/a/g/d;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpSasTokenRenewalHandler;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getSasTokenAuthentication()Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->getMillisecondsBeforeProactiveRenewal()I

    move-result v1

    invoke-interface {v0, v1, p0}, Lk/a/b/a/g/d;->a(ILk/a/b/a/d/l;)Lk/a/b/a/g/h;
    :try_end_1
    .catch Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->isRetryable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpSasTokenRenewalHandler;->log:Lk/f/b;

    iget v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpSasTokenRenewalHandler;->retryPeriodMilliseconds:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Failed to send authentication message, trying again in {} milliseconds"

    invoke-interface {v1, v3, v2, v0}, Lk/f/b;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->b()Lk/a/b/a/g/d;

    move-result-object p1

    iget v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpSasTokenRenewalHandler;->retryPeriodMilliseconds:I

    invoke-interface {p1, v0, p0}, Lk/a/b/a/g/d;->a(ILk/a/b/a/d/l;)Lk/a/b/a/g/h;

    goto :goto_0

    .line 7
    :cond_0
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpSasTokenRenewalHandler;->log:Lk/f/b;

    const-string v1, "Failed to send authentication message, unable to try again"

    invoke-interface {p1, v1, v0}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
