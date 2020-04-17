.class public Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/d/g0/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebSocketTransportWrapper"
.end annotation


# instance fields
.field public final HEX_DIGITS:[C

.field public final _head:Ljava/nio/ByteBuffer;

.field public final _underlyingInput:Lk/a/b/a/d/g0/b0;

.field public final _underlyingOutput:Lk/a/b/a/d/g0/f0;

.field public final synthetic this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;Lk/a/b/a/d/g0/b0;Lk/a/b/a/d/g0/f0;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 3
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->HEX_DIGITS:[C

    .line 4
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_underlyingInput:Lk/a/b/a/d/g0/b0;

    .line 5
    iput-object p3, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_underlyingOutput:Lk/a/b/a/d/g0/f0;

    .line 6
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_head:Ljava/nio/ByteBuffer;

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;Lk/a/b/a/d/g0/b0;Lk/a/b/a/d/g0/f0;Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;-><init>(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;Lk/a/b/a/d/g0/b0;Lk/a/b/a/d/g0/f0;)V

    return-void
.end method

.method private convertToBinary(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 1

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 8
    invoke-direct {p0, v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->convertToBinary([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private convertToBinary([B)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p1, v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    and-int/lit16 v4, v4, 0xff

    .line 3
    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "%8s"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x20

    const/16 v6, 0x30

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x7c

    .line 4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private convertToHex(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 1

    .line 9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 11
    invoke-direct {p0, v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->convertToHex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private convertToHex([B)Ljava/lang/String;
    .locals 7

    .line 1
    array-length v0, p1

    mul-int/lit8 v1, v0, 0x5

    .line 2
    new-array v1, v1, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x30

    .line 3
    aput-char v5, v1, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x78

    .line 4
    aput-char v5, v1, v4

    add-int/lit8 v4, v3, 0x1

    .line 5
    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->HEX_DIGITS:[C

    aget-byte v6, p1, v2

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v6, v5, v6

    aput-char v6, v1, v3

    add-int/lit8 v3, v4, 0x1

    .line 6
    aget-byte v6, p1, v2

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v1, v4

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x7c

    .line 7
    aput-char v5, v1, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method private processInput()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$800(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    goto/16 :goto_a

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$200(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_f

    const/4 v0, 0x0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_f

    .line 3
    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v5}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1000(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_d

    if-eq v5, v1, :cond_b

    if-eq v5, v3, :cond_7

    if-eq v5, v2, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->readInputBuffer()V

    .line 5
    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v4}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$300(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 6
    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v4}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$300(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->unwrapBuffer(Ljava/nio/ByteBuffer;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebsocketTuple;

    move-result-object v4

    .line 7
    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-virtual {v4}, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebsocketTuple;->getType()Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$402(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    .line 8
    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-virtual {v4}, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebsocketTuple;->getLength()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1202(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;J)J

    .line 9
    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v4}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$400(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    move-result-object v5

    sget-object v6, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;->WEB_SOCKET_MESSAGE_TYPE_HEADER_CHUNK:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    if-ne v5, v6, :cond_3

    sget-object v5, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;->CHUNK_READ:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;->CONTINUED_FRAME_READ:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    :goto_1
    invoke-static {v4, v5}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1002(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    .line 10
    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v4}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1000(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    move-result-object v4

    sget-object v5, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;->CHUNK_READ:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v4}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$300(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v5}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$300(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    if-ne v4, v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v4, 0x1

    .line 11
    :goto_3
    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v5}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1000(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    move-result-object v5

    sget-object v6, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;->CONTINUED_FRAME_READ:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    if-ne v5, v6, :cond_6

    .line 12
    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v5}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$300(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto/16 :goto_0

    .line 13
    :cond_6
    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v5}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$300(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v6}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$300(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 14
    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v5}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$300(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v6}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$300(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 15
    :cond_7
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->readInputBuffer()V

    .line 16
    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v4}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$300(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 17
    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v4}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$300(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v6}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1200(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v8}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v8, v4, v6

    if-ltz v8, :cond_8

    .line 18
    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v4}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1200(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v6}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v5, v4

    new-array v4, v5, [B

    .line 19
    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v5}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$300(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v6}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1200(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v8}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-int v7, v6

    invoke-virtual {v5, v4, v0, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 20
    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v5}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 21
    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v4}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v7}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1200(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)J

    move-result-wide v7

    iget-object v9, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v9}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    add-long/2addr v7, v5

    invoke-static {v4, v7, v8}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1102(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;J)J

    goto :goto_4

    .line 22
    :cond_8
    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v4}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$300(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v5, v4, [B

    .line 23
    iget-object v6, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v6}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$300(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 24
    iget-object v6, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v6}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 25
    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v5}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)J

    move-result-wide v6

    int-to-long v8, v4

    add-long/2addr v6, v8

    invoke-static {v5, v6, v7}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1102(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;J)J

    .line 26
    :goto_4
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->sendToUnderlyingInput()Z

    .line 27
    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v4}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v7}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1200(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_9

    sget-object v5, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;->INIT_READ:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    goto :goto_5

    :cond_9
    sget-object v5, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;->CONTINUED_FRAME_READ:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    :goto_5
    invoke-static {v4, v5}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1002(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    .line 28
    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v4}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$300(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-nez v4, :cond_a

    const/4 v4, 0x1

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    .line 29
    :goto_6
    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v5}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$300(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto/16 :goto_0

    .line 30
    :cond_b
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->readInputBuffer()V

    .line 31
    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v4}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$300(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    if-ge v5, v3, :cond_c

    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v5}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1000(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    move-result-object v5

    goto :goto_7

    :cond_c
    sget-object v5, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;->HEADER_READ:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    :goto_7
    invoke-static {v4, v5}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1002(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    .line 32
    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v4}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1000(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    move-result-object v4

    sget-object v5, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;->CHUNK_READ:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    if-ne v4, v5, :cond_1

    :goto_8
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 33
    :cond_d
    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    const-wide/16 v5, 0x0

    invoke-static {v4, v5, v6}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1102(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;J)J

    .line 34
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->readInputBuffer()V

    .line 35
    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v4}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$300(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    if-ge v5, v3, :cond_e

    sget-object v5, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;->CHUNK_READ:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    goto :goto_9

    :cond_e
    sget-object v5, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;->HEADER_READ:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    :goto_9
    invoke-static {v4, v5}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1002(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    .line 36
    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v4}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1000(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    move-result-object v4

    sget-object v5, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;->CHUNK_READ:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    if-ne v4, v5, :cond_1

    goto :goto_8

    .line 37
    :cond_f
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$200(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_a

    .line 38
    :cond_10
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$900(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v1}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$200(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler;->validateUpgradeReply(Ljava/nio/ByteBuffer;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 39
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;->PN_WS_CONNECTED_FLOW:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    invoke-static {v0, v1}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$802(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    .line 40
    :cond_11
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$200(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    :goto_a
    return-void
.end method

.method private readInputBuffer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$200(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v1}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$300(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Le/c/a/a/b/l/c;->a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method private sendToUnderlyingInput()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$400(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$700(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v2}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    sget-object v2, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;->PN_WS_CONNECTED_CLOSING:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    invoke-static {v0, v2}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$802(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto/16 :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 8
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$700(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v2}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 9
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    sget-object v2, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;->PN_WS_CONNECTED_PONG:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    invoke-static {v0, v2}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$802(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    .line 10
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 11
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto/16 :goto_1

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 13
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_underlyingInput:Lk/a/b/a/d/g0/b0;

    invoke-static {v0, v2}, Le/c/a/a/b/l/c;->a(Ljava/nio/ByteBuffer;Lk/a/b/a/d/g0/b0;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 14
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0, v1}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$602(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;Z)Z

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 16
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_1

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v1}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 18
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v1}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v1}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 20
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v1}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :goto_0
    const/4 v1, 0x0

    .line 21
    :goto_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v2}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 22
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v2}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return v1
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    iget-object v0, v0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_isWebSocketEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$600(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$200(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_underlyingInput:Lk/a/b/a/d/g0/b0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->capacity()I

    move-result v0

    return v0
.end method

.method public close_head()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_underlyingOutput:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/f0;->close_head()V

    return-void
.end method

.method public close_tail()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$602(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;Z)Z

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    iget-object v0, v0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_isWebSocketEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0, v1}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1302(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;Z)Z

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_underlyingInput:Lk/a/b/a/d/g0/b0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->close_tail()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_underlyingInput:Lk/a/b/a/d/g0/b0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->close_tail()V

    :goto_0
    return-void
.end method

.method public head()Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    iget-object v0, v0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_isWebSocketEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$800(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_underlyingOutput:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/f0;->head()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_underlyingOutput:Lk/a/b/a/d/g0/f0;

    invoke-interface {v1}, Lk/a/b/a/d/g0/f0;->pending()I

    move-result v1

    invoke-static {v0, v1}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1402(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;I)I

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1400(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)I

    move-result v0

    if-lez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_underlyingOutput:Lk/a/b/a/d/g0/f0;

    invoke-interface {v1}, Lk/a/b/a/d/g0/f0;->head()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v2}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->wrapBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 7
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v2}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1400(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1502(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;I)I

    .line 8
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_head:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v1}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_head:Ljava/nio/ByteBuffer;

    return-object v0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_head:Ljava/nio/ByteBuffer;

    return-object v0

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_underlyingOutput:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/f0;->head()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public pending()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    iget-object v0, v0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_isWebSocketEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$800(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    sget-object v2, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;->PN_WS_CLOSED:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    invoke-static {v0, v2}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$802(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->writeClose()V

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_head:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v2}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1300(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    sget-object v2, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;->PN_WS_FAILED:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    invoke-static {v0, v2}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$802(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    return v1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    sget-object v2, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;->PN_WS_CONNECTED_FLOW:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    invoke-static {v0, v2}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$802(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    .line 10
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->writePong()V

    .line 11
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_head:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v2}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 12
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1300(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    sget-object v2, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;->PN_WS_FAILED:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    invoke-static {v0, v2}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$802(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    return v1

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_underlyingOutput:Lk/a/b/a/d/g0/f0;

    invoke-interface {v1}, Lk/a/b/a/d/g0/f0;->pending()I

    move-result v1

    invoke-static {v0, v1}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1402(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;I)I

    .line 16
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1400(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)I

    move-result v0

    if-lez v0, :cond_5

    .line 17
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$900(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v2}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1400(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler;->calculateHeaderSize(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1502(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;I)I

    .line 18
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1400(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)I

    move-result v0

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v1}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)I

    move-result v1

    add-int/2addr v1, v0

    return v1

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1400(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)I

    move-result v0

    return v0

    .line 20
    :cond_6
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1300(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_7

    .line 21
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    sget-object v2, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;->PN_WS_FAILED:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    invoke-static {v0, v2}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$802(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    return v1

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0

    .line 23
    :cond_8
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_a

    .line 24
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    sget-object v2, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;->PN_WS_CONNECTING:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    invoke-static {v0, v2}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$802(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    .line 25
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->writeUpgradeRequest()V

    .line 26
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_head:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v2}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 27
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1300(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 28
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    sget-object v2, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;->PN_WS_FAILED:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    invoke-static {v0, v2}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$802(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    return v1

    .line 29
    :cond_9
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0

    .line 30
    :cond_a
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0

    .line 31
    :cond_b
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_underlyingOutput:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/f0;->pending()I

    move-result v0

    return v0
.end method

.method public pop(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    iget-object v0, v0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_isWebSocketEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$800(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 3
    :pswitch_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_underlyingOutput:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0, p1}, Lk/a/b/a/d/g0/f0;->pop(I)V

    goto/16 :goto_0

    .line 4
    :pswitch_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 8
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_head:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 9
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_head:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v2}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 10
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_underlyingOutput:Lk/a/b/a/d/g0/f0;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v2}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)I

    move-result v2

    sub-int/2addr p1, v2

    invoke-interface {v0, p1}, Lk/a/b/a/d/g0/f0;->pop(I)V

    .line 11
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {p1, v1}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1502(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;I)I

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 12
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)I

    move-result v1

    sub-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$1502(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;I)I

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_underlyingOutput:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0, p1}, Lk/a/b/a/d/g0/f0;->pop(I)V

    goto :goto_0

    .line 15
    :pswitch_2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 17
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 18
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 19
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_head:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 20
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_head:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_underlyingOutput:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0, p1}, Lk/a/b/a/d/g0/f0;->pop(I)V

    goto :goto_0

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_underlyingOutput:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0, p1}, Lk/a/b/a/d/g0/f0;->pop(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public position()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    iget-object v0, v0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_isWebSocketEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$600(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$200(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_underlyingInput:Lk/a/b/a/d/g0/b0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->position()I

    move-result v0

    return v0
.end method

.method public process()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    iget-object v0, v0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_isWebSocketEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$200(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$800(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_underlyingInput:Lk/a/b/a/d/g0/b0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->process()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->processInput()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_underlyingInput:Lk/a/b/a/d/g0/b0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->process()V

    :goto_0
    return-void
.end method

.method public tail()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    iget-object v0, v0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_isWebSocketEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->this$0:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->access$200(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;->_underlyingInput:Lk/a/b/a/d/g0/b0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->tail()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
