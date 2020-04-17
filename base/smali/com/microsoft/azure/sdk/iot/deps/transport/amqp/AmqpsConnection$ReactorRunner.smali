.class public Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection$ReactorRunner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReactorRunner"
.end annotation


# static fields
.field public static final THREAD_NAME:Ljava/lang/String; = "azure-iot-sdk-ReactorRunner"


# instance fields
.field public final amqpReactor:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpReactor;

.field public final logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

.field public final synthetic this$0:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpReactor;Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection$ReactorRunner;->this$0:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection$ReactorRunner;->amqpReactor:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpReactor;

    .line 3
    iput-object p3, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection$ReactorRunner;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "azure-iot-sdk-ReactorRunner"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection$ReactorRunner;->amqpReactor:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpReactor;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpReactor;->run()V
    :try_end_0
    .catch Lk/a/b/a/d/m; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpsConnection$ReactorRunner;->logger:Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;

    invoke-virtual {v1, v0}, Lcom/microsoft/azure/sdk/iot/deps/util/CustomLogger;->LogError(Ljava/lang/Throwable;)V

    .line 4
    throw v0
.end method
