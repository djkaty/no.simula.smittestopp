.class public final enum Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WebSocketFrameReadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

.field public static final enum CHUNK_READ:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

.field public static final enum CONTINUED_FRAME_READ:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

.field public static final enum HEADER_READ:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

.field public static final enum INIT_READ:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

.field public static final enum READ_ERROR:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    const/4 v1, 0x0

    const-string v2, "INIT_READ"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;->INIT_READ:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    const/4 v2, 0x1

    const-string v3, "CHUNK_READ"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;->CHUNK_READ:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    .line 3
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    const/4 v3, 0x2

    const-string v4, "CONTINUED_FRAME_READ"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;->CONTINUED_FRAME_READ:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    .line 4
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    const/4 v4, 0x3

    const-string v5, "HEADER_READ"

    invoke-direct {v0, v5, v4}, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;->HEADER_READ:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    .line 5
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    const/4 v5, 0x4

    const-string v6, "READ_ERROR"

    invoke-direct {v0, v6, v5}, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;->READ_ERROR:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    .line 6
    sget-object v7, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;->INIT_READ:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    aput-object v7, v6, v1

    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;->CHUNK_READ:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    aput-object v1, v6, v2

    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;->CONTINUED_FRAME_READ:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    aput-object v1, v6, v3

    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;->HEADER_READ:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;->$VALUES:[Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;->$VALUES:[Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    invoke-virtual {v0}, [Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketFrameReadState;

    return-object v0
.end method
