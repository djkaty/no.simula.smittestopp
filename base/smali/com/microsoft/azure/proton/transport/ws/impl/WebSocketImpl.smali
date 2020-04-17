.class public Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/proton/transport/ws/WebSocket;
.implements Lk/a/b/a/d/g0/d0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl$WebSocketTransportWrapper;
    }
.end annotation


# static fields
.field public static final TRACE_LOGGER:Lk/f/b;


# instance fields
.field public additionalHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public bytesRead:J

.field public frameReadState:Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketFrameReadState;

.field public headClosed:Z

.field public host:Ljava/lang/String;

.field public final inputBuffer:Ljava/nio/ByteBuffer;

.field public isWebSocketEnabled:Ljava/lang/Boolean;

.field public lastLength:J

.field public lastType:Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebSocketMessageType;

.field public final maxFrameSize:I

.field public final outputBuffer:Ljava/nio/ByteBuffer;

.field public path:Ljava/lang/String;

.field public pingBuffer:Ljava/nio/ByteBuffer;

.field public port:I

.field public protocol:Ljava/lang/String;

.field public query:Ljava/lang/String;

.field public tailClosed:Z

.field public tempBuffer:Ljava/nio/ByteBuffer;

.field public underlyingOutputSize:I

.field public webSocketHandler:Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler;

.field public webSocketHeaderSize:I

.field public webSocketState:Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketState;

.field public wsInputBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->TRACE_LOGGER:Lk/f/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1080

    .line 2
    iput v0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->maxFrameSize:I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->tailClosed:Z

    .line 4
    iput-boolean v1, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->headClosed:Z

    .line 5
    iput v1, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->underlyingOutputSize:I

    .line 6
    iput v1, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->webSocketHeaderSize:I

    .line 7
    sget-object v2, Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketState;->PN_WS_NOT_STARTED:Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketState;

    iput-object v2, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->webSocketState:Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketState;

    const-string v2, ""

    .line 8
    iput-object v2, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->host:Ljava/lang/String;

    .line 9
    iput-object v2, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->path:Ljava/lang/String;

    .line 10
    iput-object v2, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->query:Ljava/lang/String;

    .line 11
    iput v1, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->port:I

    .line 12
    iput-object v2, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->protocol:Ljava/lang/String;

    const/4 v2, 0x0

    .line 13
    iput-object v2, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->additionalHeaders:Ljava/util/Map;

    const-wide/16 v2, 0x0

    .line 14
    iput-wide v2, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->bytesRead:J

    .line 15
    sget-object v4, Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketFrameReadState;->INIT_READ:Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketFrameReadState;

    iput-object v4, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->frameReadState:Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketFrameReadState;

    .line 16
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 17
    iput-object v4, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 18
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 19
    iput-object v4, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 20
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 21
    iput-object v4, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->pingBuffer:Ljava/nio/ByteBuffer;

    .line 22
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 23
    iput-object v4, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->wsInputBuffer:Ljava/nio/ByteBuffer;

    .line 24
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->tempBuffer:Ljava/nio/ByteBuffer;

    .line 26
    sget-object v0, Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebSocketMessageType;->WEB_SOCKET_MESSAGE_TYPE_UNKNOWN:Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebSocketMessageType;

    iput-object v0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->lastType:Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebSocketMessageType;

    .line 27
    iput-wide v2, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->lastLength:J

    .line 28
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->isWebSocketEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic access$100(Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->outputBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static synthetic access$1000()Lk/f/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->TRACE_LOGGER:Lk/f/b;

    return-object v0
.end method

.method public static synthetic access$1100(Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;)Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketFrameReadState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->frameReadState:Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketFrameReadState;

    return-object p0
.end method

.method public static synthetic access$1102(Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketFrameReadState;)Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketFrameReadState;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->frameReadState:Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketFrameReadState;

    return-object p1
.end method

.method public static synthetic access$1200(Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->bytesRead:J

    return-wide v0
.end method

.method public static synthetic access$1202(Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->bytesRead:J

    return-wide p1
.end method

.method public static synthetic access$1300(Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->lastLength:J

    return-wide v0
.end method

.method public static synthetic access$1302(Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->lastLength:J

    return-wide p1
.end method

.method public static synthetic access$1400(Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->headClosed:Z

    return p0
.end method

.method public static synthetic access$1402(Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->headClosed:Z

    return p1
.end method

.method public static synthetic access$1500(Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->underlyingOutputSize:I

    return p0
.end method

.method public static synthetic access$1502(Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->underlyingOutputSize:I

    return p1
.end method

.method public static synthetic access$1600(Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->webSocketHeaderSize:I

    return p0
.end method

.method public static synthetic access$1602(Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->webSocketHeaderSize:I

    return p1
.end method

.method public static synthetic access$200(Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->tempBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;)Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebSocketMessageType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->lastType:Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebSocketMessageType;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebSocketMessageType;)Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebSocketMessageType;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->lastType:Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebSocketMessageType;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->wsInputBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->tailClosed:Z

    return p0
.end method

.method public static synthetic access$602(Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->tailClosed:Z

    return p1
.end method

.method public static synthetic access$700(Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->pingBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;)Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->webSocketState:Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketState;

    return-object p0
.end method

.method public static synthetic access$802(Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketState;)Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketState;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->webSocketState:Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketState;

    return-object p1
.end method

.method public static synthetic access$900(Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;)Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->webSocketHandler:Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler;

    return-object p0
.end method


# virtual methods
.method public configure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->host:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->path:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->query:Ljava/lang/String;

    .line 4
    iput p4, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->port:I

    .line 5
    iput-object p5, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->protocol:Ljava/lang/String;

    .line 6
    iput-object p6, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->additionalHeaders:Ljava/util/Map;

    if-eqz p7, :cond_0

    .line 7
    iput-object p7, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->webSocketHandler:Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler;

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketHandlerImpl;

    invoke-direct {p1}, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketHandlerImpl;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->webSocketHandler:Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler;

    :goto_0
    const/4 p1, 0x1

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->isWebSocketEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public getEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->isWebSocketEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getInputBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getOutputBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->outputBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getPingBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->pingBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getState()Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->webSocketState:Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketState;

    return-object v0
.end method

.method public getWebSocketHandler()Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->webSocketHandler:Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler;

    return-object v0
.end method

.method public getWsInputBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->wsInputBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const-string v0, "WebSocketImpl [isWebSocketEnabled="

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->isWebSocketEnabled:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->webSocketState:Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", protocol="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", host="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", path="

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", query="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", port="

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->additionalHeaders:Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ", additionalHeaders="

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v1, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->additionalHeaders:Ljava/util/Map;

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

    .line 13
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

    .line 14
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v2, v1, 0x2

    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "]"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrapBuffer(Ljava/nio/ByteBuffer;)Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebsocketTuple;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->isWebSocketEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->webSocketHandler:Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler;

    invoke-interface {v0, p1}, Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler;->unwrapBuffer(Ljava/nio/ByteBuffer;)Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebsocketTuple;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebsocketTuple;

    const-wide/16 v0, 0x0

    sget-object v2, Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebSocketMessageType;->WEB_SOCKET_MESSAGE_TYPE_UNKNOWN:Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebSocketMessageType;

    invoke-direct {p1, v0, v1, v2}, Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebsocketTuple;-><init>(JLcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebSocketMessageType;)V

    return-object p1
.end method

.method public wrap(Lk/a/b/a/d/g0/b0;Lk/a/b/a/d/g0/f0;)Lk/a/b/a/d/g0/l0;
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl$1;

    new-instance v1, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl$WebSocketTransportWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl$WebSocketTransportWrapper;-><init>(Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;Lk/a/b/a/d/g0/b0;Lk/a/b/a/d/g0/f0;Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl$1;)V

    new-instance v2, Lk/a/b/a/d/g0/o;

    invoke-direct {v2, p2, p1}, Lk/a/b/a/d/g0/o;-><init>(Lk/a/b/a/d/g0/f0;Lk/a/b/a/d/g0/b0;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl$1;-><init>(Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;Lk/a/b/a/d/g0/l0;Lk/a/b/a/d/g0/l0;)V

    return-object v0
.end method

.method public wrapBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->isWebSocketEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->webSocketHandler:Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler;

    invoke-interface {v0, p1, p2}, Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler;->wrapBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

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
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->pingBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->outputBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->pingBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writePong()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->webSocketHandler:Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler;

    iget-object v1, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->pingBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1, v2}, Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler;->createPong(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public writeUpgradeRequest()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2
    iget-object v1, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->webSocketHandler:Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler;

    iget-object v2, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->host:Ljava/lang/String;

    iget-object v3, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->path:Ljava/lang/String;

    iget-object v4, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->query:Ljava/lang/String;

    iget v5, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->port:I

    iget-object v6, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->protocol:Ljava/lang/String;

    iget-object v7, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->additionalHeaders:Ljava/util/Map;

    invoke-interface/range {v1 .. v7}, Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler;->createUpgradeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method
