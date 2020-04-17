.class public Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket;
.implements Lk/a/b/a/d/g0/d0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;
    }
.end annotation


# instance fields
.field public _additionalHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public _bytesRead:J

.field public _dataStart:I

.field public _frameReadState:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

.field public _head_closed:Z

.field public _host:Ljava/lang/String;

.field public final _inputBuffer:Ljava/nio/ByteBuffer;

.field public _isWebSocketEnabled:Ljava/lang/Boolean;

.field public _lastLength:J

.field public _lastType:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

.field public _maxFrameSize:I

.field public final _outputBuffer:Ljava/nio/ByteBuffer;

.field public _path:Ljava/lang/String;

.field public _pingBuffer:Ljava/nio/ByteBuffer;

.field public _port:I

.field public _protocol:Ljava/lang/String;

.field public _state:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

.field public _tail_closed:Z

.field public _temp:Ljava/nio/ByteBuffer;

.field public _underlyingOutputSize:I

.field public _webSocketHandler:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler;

.field public _webSocketHeaderSize:I

.field public _wsInputBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1080

    .line 2
    iput v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_maxFrameSize:I

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 4
    iput-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_tail_closed:Z

    .line 5
    iput-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_head_closed:Z

    .line 6
    iput v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_underlyingOutputSize:I

    .line 7
    iput v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_webSocketHeaderSize:I

    .line 8
    sget-object v2, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;->PN_WS_NOT_STARTED:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    iput-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_state:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    const-string v2, ""

    .line 9
    iput-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_host:Ljava/lang/String;

    .line 10
    iput-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_path:Ljava/lang/String;

    .line 11
    iput v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_port:I

    .line 12
    iput-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_protocol:Ljava/lang/String;

    const/4 v2, 0x0

    .line 13
    iput-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_additionalHeaders:Ljava/util/Map;

    .line 14
    iput-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_isWebSocketEnabled:Ljava/lang/Boolean;

    const-wide/16 v2, 0x0

    .line 15
    iput-wide v2, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_bytesRead:J

    .line 16
    iput v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_dataStart:I

    .line 17
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;->INIT_READ:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_frameReadState:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    .line 18
    iget v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_maxFrameSize:I

    .line 19
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_inputBuffer:Ljava/nio/ByteBuffer;

    .line 21
    iget v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_maxFrameSize:I

    .line 22
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_outputBuffer:Ljava/nio/ByteBuffer;

    .line 24
    iget v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_maxFrameSize:I

    .line 25
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_pingBuffer:Ljava/nio/ByteBuffer;

    .line 27
    iget v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_maxFrameSize:I

    .line 28
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_wsInputBuffer:Ljava/nio/ByteBuffer;

    .line 30
    iget v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_maxFrameSize:I

    .line 31
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_temp:Ljava/nio/ByteBuffer;

    .line 33
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;->WEB_SOCKET_MESSAGE_TYPE_UNKNOWN:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_lastType:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    .line 34
    iput-wide v2, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_lastLength:J

    .line 35
    iput-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_isWebSocketEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic access$100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_outputBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_frameReadState:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    return-object p0
.end method

.method public static synthetic access$1002(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_frameReadState:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    return-object p1
.end method

.method public static synthetic access$1100(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_bytesRead:J

    return-wide v0
.end method

.method public static synthetic access$1102(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_bytesRead:J

    return-wide p1
.end method

.method public static synthetic access$1200(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_lastLength:J

    return-wide v0
.end method

.method public static synthetic access$1202(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_lastLength:J

    return-wide p1
.end method

.method public static synthetic access$1300(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_head_closed:Z

    return p0
.end method

.method public static synthetic access$1302(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_head_closed:Z

    return p1
.end method

.method public static synthetic access$1400(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_underlyingOutputSize:I

    return p0
.end method

.method public static synthetic access$1402(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_underlyingOutputSize:I

    return p1
.end method

.method public static synthetic access$1500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_webSocketHeaderSize:I

    return p0
.end method

.method public static synthetic access$1502(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_webSocketHeaderSize:I

    return p1
.end method

.method public static synthetic access$200(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_inputBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_temp:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_lastType:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_lastType:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_wsInputBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_tail_closed:Z

    return p0
.end method

.method public static synthetic access$602(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_tail_closed:Z

    return p1
.end method

.method public static synthetic access$700(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_pingBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_state:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    return-object p0
.end method

.method public static synthetic access$802(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_state:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    return-object p1
.end method

.method public static synthetic access$900(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_webSocketHandler:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler;

    return-object p0
.end method


# virtual methods
.method public configure(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler;)V
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
            ">;",
            "Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_host:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_path:Ljava/lang/String;

    .line 3
    iput p3, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_port:I

    .line 4
    iput-object p4, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_protocol:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_additionalHeaders:Ljava/util/Map;

    if-eqz p6, :cond_0

    .line 6
    iput-object p6, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_webSocketHandler:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler;

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketHandlerImpl;

    invoke-direct {p1}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketHandlerImpl;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_webSocketHandler:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler;

    :goto_0
    const/4 p1, 0x1

    .line 8
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_isWebSocketEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public getEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_isWebSocketEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getInputBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_inputBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getOutputBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_outputBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getPingBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_pingBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getState()Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_state:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    return-object v0
.end method

.method public getWebSocketHandler()Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_webSocketHandler:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler;

    return-object v0
.end method

.method public getWsInputBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_wsInputBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const-string v0, "WebSocketImpl [isWebSocketEnabled="

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_isWebSocketEnabled:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_state:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", protocol="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", host="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", path="

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", port="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_additionalHeaders:Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ", additionalHeaders="

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_additionalHeaders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ", "

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v2, v1, 0x2

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "]"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrapBuffer(Ljava/nio/ByteBuffer;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebsocketTuple;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_isWebSocketEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_webSocketHandler:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler;

    invoke-interface {v0, p1}, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler;->unwrapBuffer(Ljava/nio/ByteBuffer;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebsocketTuple;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebsocketTuple;

    const-wide/16 v0, 0x0

    sget-object v2, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;->WEB_SOCKET_MESSAGE_TYPE_UNKNOWN:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    invoke-direct {p1, v0, v1, v2}, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebsocketTuple;-><init>(JLcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;)V

    return-object p1
.end method

.method public wrap(Lk/a/b/a/d/g0/b0;Lk/a/b/a/d/g0/f0;)Lk/a/b/a/d/g0/l0;
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$1;

    new-instance v1, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$WebSocketTransportWrapper;-><init>(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;Lk/a/b/a/d/g0/b0;Lk/a/b/a/d/g0/f0;Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$1;)V

    new-instance v2, Lk/a/b/a/d/g0/o;

    invoke-direct {v2, p2, p1}, Lk/a/b/a/d/g0/o;-><init>(Lk/a/b/a/d/g0/f0;Lk/a/b/a/d/g0/b0;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl$1;-><init>(Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;Lk/a/b/a/d/g0/l0;Lk/a/b/a/d/g0/l0;)V

    return-object v0
.end method

.method public wrapBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_isWebSocketEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_webSocketHandler:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler;

    invoke-interface {v0, p1, p2}, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler;->wrapBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 4
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :goto_0
    return-void
.end method

.method public writeClose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_pingBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_outputBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_pingBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writePong()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_webSocketHandler:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_pingBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_outputBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1, v2}, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler;->createPong(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public writeUpgradeRequest()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_webSocketHandler:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_host:Ljava/lang/String;

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_path:Ljava/lang/String;

    iget v4, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_port:I

    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_protocol:Ljava/lang/String;

    iget-object v6, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_additionalHeaders:Ljava/util/Map;

    invoke-interface/range {v1 .. v6}, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler;->createUpgradeRequest(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketImpl;->_outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method
