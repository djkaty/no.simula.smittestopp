.class public interface abstract Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract close()V
.end method

.method public abstract getConnectionId()Ljava/lang/String;
.end method

.method public abstract open(Ljava/util/Queue;Ljava/util/concurrent/ScheduledExecutorService;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;",
            ">;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation
.end method

.method public abstract sendMessage(Lcom/microsoft/azure/sdk/iot/device/Message;)Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;
.end method

.method public abstract sendMessageResult(Lcom/microsoft/azure/sdk/iot/device/Message;Lcom/microsoft/azure/sdk/iot/device/IotHubMessageResult;)Z
.end method

.method public abstract setListener(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;)V
.end method
