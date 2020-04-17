.class public interface abstract Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebsocketTuple;,
        Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;
    }
.end annotation


# virtual methods
.method public abstract calculateHeaderSize(I)I
.end method

.method public abstract createPong(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
.end method

.method public abstract createUpgradeRequest(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
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
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract unwrapBuffer(Ljava/nio/ByteBuffer;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebsocketTuple;
.end method

.method public abstract validateUpgradeReply(Ljava/nio/ByteBuffer;)Ljava/lang/Boolean;
.end method

.method public abstract wrapBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
.end method
