.class public interface abstract Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onConnectionEstablished(Ljava/lang/String;)V
.end method

.method public abstract onConnectionLost(Ljava/lang/Throwable;Ljava/lang/String;)V
.end method

.method public abstract onMessageReceived(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;Ljava/lang/Throwable;)V
.end method

.method public abstract onMessageSent(Lcom/microsoft/azure/sdk/iot/device/Message;Ljava/lang/Throwable;)V
.end method
