.class public interface abstract Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportManager;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract close()V
.end method

.method public abstract open()V
.end method

.method public abstract open([Ljava/lang/String;)V
.end method

.method public abstract receive()Lcom/microsoft/azure/sdk/iot/device/Message;
.end method

.method public abstract send(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;Ljava/util/Map;)Lcom/microsoft/azure/sdk/iot/device/ResponseMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/azure/sdk/iot/device/ResponseMessage;"
        }
    .end annotation
.end method
