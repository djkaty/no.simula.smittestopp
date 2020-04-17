.class public interface abstract Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;,
        Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;
    }
.end annotation


# virtual methods
.method public abstract configure(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getEnabled()Ljava/lang/Boolean;
.end method

.method public abstract getInputBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract getOutputBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract getPingBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract getState()Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;
.end method

.method public abstract getWebSocketHandler()Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler;
.end method

.method public abstract getWsInputBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract unwrapBuffer(Ljava/nio/ByteBuffer;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebsocketTuple;
.end method

.method public abstract wrapBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
.end method
