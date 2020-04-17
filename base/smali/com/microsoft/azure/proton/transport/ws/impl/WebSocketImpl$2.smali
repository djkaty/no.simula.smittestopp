.class public synthetic Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocket$WebSocketFrameReadState:[I

.field public static final synthetic $SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocket$WebSocketState:[I

.field public static final synthetic $SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocketHandler$WebSocketMessageType:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketState;->values()[Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl$2;->$SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocket$WebSocketState:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketState;->PN_WS_CONNECTING:Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketState;

    aput v1, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl$2;->$SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocket$WebSocketState:[I

    sget-object v3, Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketState;->PN_WS_CONNECTED_FLOW:Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketState;

    aput v0, v2, v0
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl$2;->$SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocket$WebSocketState:[I

    sget-object v4, Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketState;->PN_WS_CONNECTED_PONG:Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketState;

    aput v2, v3, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x0

    const/4 v4, 0x4

    :try_start_3
    sget-object v5, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl$2;->$SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocket$WebSocketState:[I

    sget-object v6, Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketState;->PN_WS_NOT_STARTED:Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketState;

    aput v4, v5, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v5, 0x5

    :try_start_4
    sget-object v6, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl$2;->$SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocket$WebSocketState:[I

    sget-object v7, Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketState;->PN_WS_CLOSED:Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketState;

    aput v5, v6, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v6, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl$2;->$SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocket$WebSocketState:[I

    sget-object v7, Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketState;->PN_WS_FAILED:Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketState;

    const/4 v7, 0x6

    aput v7, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v6, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl$2;->$SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocket$WebSocketState:[I

    sget-object v7, Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketState;->PN_WS_CONNECTED_CLOSING:Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketState;

    const/4 v7, 0x7

    aput v7, v6, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 2
    :catch_6
    invoke-static {}, Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketFrameReadState;->values()[Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketFrameReadState;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl$2;->$SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocket$WebSocketFrameReadState:[I

    :try_start_7
    sget-object v7, Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketFrameReadState;->INIT_READ:Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketFrameReadState;

    aput v1, v6, v3
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v6, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl$2;->$SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocket$WebSocketFrameReadState:[I

    sget-object v7, Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketFrameReadState;->CHUNK_READ:Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketFrameReadState;

    aput v0, v6, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v6, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl$2;->$SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocket$WebSocketFrameReadState:[I

    sget-object v7, Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketFrameReadState;->HEADER_READ:Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketFrameReadState;

    aput v2, v6, v2
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v6, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl$2;->$SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocket$WebSocketFrameReadState:[I

    sget-object v7, Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketFrameReadState;->CONTINUED_FRAME_READ:Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketFrameReadState;

    aput v4, v6, v0
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v6, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl$2;->$SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocket$WebSocketFrameReadState:[I

    sget-object v7, Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketFrameReadState;->READ_ERROR:Lcom/microsoft/azure/proton/transport/ws/WebSocket$WebSocketFrameReadState;

    aput v5, v6, v4
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 3
    :catch_b
    invoke-static {}, Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebSocketMessageType;->values()[Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebSocketMessageType;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl$2;->$SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocketHandler$WebSocketMessageType:[I

    :try_start_c
    sget-object v7, Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebSocketMessageType;->WEB_SOCKET_MESSAGE_TYPE_UNKNOWN:Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebSocketMessageType;

    aput v1, v6, v3
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v3, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl$2;->$SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocketHandler$WebSocketMessageType:[I

    sget-object v6, Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebSocketMessageType;->WEB_SOCKET_MESSAGE_TYPE_CHUNK:Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebSocketMessageType;

    aput v0, v3, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl$2;->$SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocketHandler$WebSocketMessageType:[I

    sget-object v1, Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebSocketMessageType;->WEB_SOCKET_MESSAGE_TYPE_AMQP:Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebSocketMessageType;

    aput v2, v0, v2
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl$2;->$SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocketHandler$WebSocketMessageType:[I

    sget-object v1, Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebSocketMessageType;->WEB_SOCKET_MESSAGE_TYPE_CLOSE:Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebSocketMessageType;

    aput v4, v0, v5
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl$2;->$SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocketHandler$WebSocketMessageType:[I

    sget-object v1, Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebSocketMessageType;->WEB_SOCKET_MESSAGE_TYPE_PING:Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebSocketMessageType;

    aput v5, v0, v4
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    return-void
.end method
