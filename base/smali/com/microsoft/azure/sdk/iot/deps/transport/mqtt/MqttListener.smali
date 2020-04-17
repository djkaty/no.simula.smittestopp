.class public interface abstract Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract connectionEstablished()V
.end method

.method public abstract connectionLost(Ljava/lang/Throwable;)V
.end method

.method public abstract messageReceived(Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;)V
.end method
