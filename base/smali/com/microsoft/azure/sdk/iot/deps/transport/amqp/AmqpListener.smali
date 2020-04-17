.class public interface abstract Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract connectionEstablished()V
.end method

.method public abstract connectionLost()V
.end method

.method public abstract messageReceived(Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpMessage;)V
.end method

.method public abstract messageSent()V
.end method
