.class public Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection$ReactorRunner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReactorRunner"
.end annotation


# static fields
.field public static final THREAD_NAME:Ljava/lang/String; = "azure-iot-sdk-ReactorRunner"


# instance fields
.field public connectionId:Ljava/lang/String;

.field public final iotHubReactor:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IotHubReactor;

.field public final listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

.field public final synthetic this$0:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IotHubReactor;Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection$ReactorRunner;->this$0:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection$ReactorRunner;->listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

    .line 3
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection$ReactorRunner;->iotHubReactor:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IotHubReactor;

    .line 4
    iput-object p4, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection$ReactorRunner;->connectionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "azure-iot-sdk-ReactorRunner"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection$ReactorRunner;->iotHubReactor:Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IotHubReactor;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/IotHubReactor;->run()V
    :try_end_0
    .catch Lk/a/b/a/d/m; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection$ReactorRunner;->listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

    new-instance v2, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    invoke-direct {v2, v0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsIotHubConnection$ReactorRunner;->connectionId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;->onConnectionLost(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
