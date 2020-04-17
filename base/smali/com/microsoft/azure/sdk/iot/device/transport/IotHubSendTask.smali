.class public final Lcom/microsoft/azure/sdk/iot/device/transport/IotHubSendTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final THREAD_NAME:Ljava/lang/String; = "azure-iot-sdk-IotHubSendTask"

.field public static final log:Lk/f/b;


# instance fields
.field public final transport:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubSendTask;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubSendTask;->log:Lk/f/b;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubSendTask;->transport:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parameter \'transport\' must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "azure-iot-sdk-IotHubSendTask"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubSendTask;->transport:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->sendMessages()V

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubSendTask;->transport:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;->invokeCallbacks()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubSendTask;->log:Lk/f/b;

    const-string v2, "Send task encountered exception while sending messages"

    invoke-interface {v1, v2, v0}, Lk/f/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
