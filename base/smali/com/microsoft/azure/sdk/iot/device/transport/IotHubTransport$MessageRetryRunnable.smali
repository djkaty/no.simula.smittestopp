.class public Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport$MessageRetryRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageRetryRunnable"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;

.field public final transportPacket:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;

.field public final waitingPacketsQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;Ljava/util/Queue;Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;",
            ">;",
            "Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport$MessageRetryRunnable;->this$0:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport$MessageRetryRunnable;->waitingPacketsQueue:Ljava/util/Queue;

    .line 3
    iput-object p3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport$MessageRetryRunnable;->transportPacket:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport$MessageRetryRunnable;->waitingPacketsQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransport$MessageRetryRunnable;->transportPacket:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportPacket;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method
