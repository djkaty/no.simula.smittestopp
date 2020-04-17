.class public Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketHandlerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler;


# instance fields
.field public _webSocketUpgrade:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketUpgrade;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketHandlerImpl;->_webSocketUpgrade:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketUpgrade;

    return-void
.end method


# virtual methods
.method public calculateHeaderSize(I)I
    .locals 1

    if-lez p1, :cond_2

    const/16 v0, 0x7d

    if-gt p1, v0, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    const v0, 0xffff

    if-gt p1, v0, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/16 p1, 0xe

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public createPong(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const/16 v0, -0x76

    .line 4
    aput-byte v0, p1, v1

    .line 5
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 6
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 8
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :goto_0
    return-void

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "insufficient output buffer size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input parameter cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createRandomMaskingKey()[B
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 1
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 2
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    return-object v0
.end method

.method public createUpgradeRequest(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
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

    .line 1
    invoke-virtual/range {p0 .. p5}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketHandlerImpl;->createWebSocketUpgrade(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketUpgrade;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketHandlerImpl;->_webSocketUpgrade:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketUpgrade;

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketUpgrade;->createUpgradeRequest()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public createWebSocketUpgrade(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketUpgrade;
    .locals 7
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
            "Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketUpgrade;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketUpgrade;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketUpgrade;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    return-object v6
.end method

.method public unwrapBuffer(Ljava/nio/ByteBuffer;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebsocketTuple;
    .locals 9

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebsocketTuple;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;->WEB_SOCKET_MESSAGE_TYPE_UNKNOWN:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebsocketTuple;-><init>(JLcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;)V

    if-eqz p1, :cond_9

    .line 2
    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;->WEB_SOCKET_MESSAGE_TYPE_UNKNOWN:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_8

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/16 v5, 0x7f

    and-int/2addr v4, v5

    int-to-byte v4, v4

    const-wide/16 v6, -0x1

    const/16 v8, 0x7d

    if-gt v4, v8, :cond_0

    int-to-long v6, v4

    goto :goto_0

    :cond_0
    const/16 v8, 0x7e

    if-ne v4, v8, :cond_1

    .line 6
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    const v4, 0xffff

    and-int/2addr p1, v4

    int-to-long v6, p1

    goto :goto_0

    .line 7
    :catch_0
    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;->WEB_SOCKET_MESSAGE_TYPE_HEADER_CHUNK:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    goto :goto_0

    :cond_1
    if-ne v4, v5, :cond_2

    .line 8
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 9
    :catch_1
    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;->WEB_SOCKET_MESSAGE_TYPE_HEADER_CHUNK:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    .line 10
    :cond_2
    :goto_0
    sget-object p1, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;->WEB_SOCKET_MESSAGE_TYPE_UNKNOWN:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    if-ne v1, p1, :cond_7

    if-ne v2, v3, :cond_3

    .line 11
    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;->WEB_SOCKET_MESSAGE_TYPE_AMQP:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    goto :goto_1

    :cond_3
    const/16 v1, 0x9

    if-ne v2, v1, :cond_4

    .line 12
    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;->WEB_SOCKET_MESSAGE_TYPE_PING:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    goto :goto_1

    :cond_4
    const/16 v1, 0x8

    if-ne v2, v1, :cond_5

    .line 13
    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;->WEB_SOCKET_MESSAGE_TYPE_CLOSE:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    goto :goto_1

    :cond_5
    if-nez v2, :cond_6

    .line 14
    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;->WEB_SOCKET_MESSAGE_TYPE_CHUNK:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    goto :goto_1

    :cond_6
    move-object v1, p1

    .line 15
    :cond_7
    :goto_1
    invoke-virtual {v0, v6, v7}, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebsocketTuple;->setLength(J)V

    .line 16
    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebsocketTuple;->setType(Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;)V

    :cond_8
    return-object v0

    .line 17
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "input parameter is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public validateUpgradeReply(Ljava/nio/ByteBuffer;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketHandlerImpl;->_webSocketUpgrade:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketUpgrade;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 5
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 6
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketHandlerImpl;->_webSocketUpgrade:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketUpgrade;

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketUpgrade;->validateUpgradeReply([B)Ljava/lang/Boolean;

    move-result-object v0

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketHandlerImpl;->_webSocketUpgrade:Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketUpgrade;

    :cond_0
    return-object v0
.end method

.method public wrapBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 6

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_4

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketHandlerImpl;->createRandomMaskingKey()[B

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 4
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    add-int/lit8 v3, v1, 0x6

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v3, -0x7e

    .line 5
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v3, 0x7d

    if-gt v1, v3, :cond_0

    or-int/lit8 v3, v1, -0x80

    int-to-byte v3, v3

    .line 6
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_0
    const v3, 0xffff

    if-gt v1, v3, :cond_1

    const/4 v3, -0x2

    int-to-byte v3, v3

    .line 7
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    .line 8
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v3, v1

    .line 9
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    int-to-byte v3, v3

    .line 10
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v3, v1, 0x38

    int-to-byte v3, v3

    .line 11
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v3, v1, 0x30

    int-to-byte v3, v3

    .line 12
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v3, v1, 0x28

    int-to-byte v3, v3

    .line 13
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v3, v1, 0x20

    int-to-byte v3, v3

    .line 14
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v3, v1, 0x18

    int-to-byte v3, v3

    .line 15
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    .line 16
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    .line 17
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v3, v1

    .line 18
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_0
    const/4 v3, 0x0

    .line 19
    aget-byte v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v4, 0x1

    .line 20
    aget-byte v4, v0, v4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v4, 0x2

    .line 21
    aget-byte v4, v0, v4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v4, 0x3

    .line 22
    aget-byte v4, v0, v4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    if-ge v3, v1, :cond_2

    .line 23
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 24
    rem-int/lit8 v5, v3, 0x4

    aget-byte v5, v0, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    .line 25
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 26
    :cond_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 27
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 28
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 29
    :cond_3
    new-instance p1, Ljava/lang/OutOfMemoryError;

    const-string p2, "insufficient output buffer size"

    invoke-direct {p1, p2}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_4
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_2
    return-void

    .line 31
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input parameter is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
