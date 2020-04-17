.class public final enum Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WebSocketState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

.field public static final enum PN_WS_CLOSED:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

.field public static final enum PN_WS_CONNECTED_CLOSING:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

.field public static final enum PN_WS_CONNECTED_FLOW:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

.field public static final enum PN_WS_CONNECTED_PONG:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

.field public static final enum PN_WS_CONNECTING:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

.field public static final enum PN_WS_FAILED:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

.field public static final enum PN_WS_NOT_STARTED:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    const/4 v1, 0x0

    const-string v2, "PN_WS_NOT_STARTED"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;->PN_WS_NOT_STARTED:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    const/4 v2, 0x1

    const-string v3, "PN_WS_CONNECTING"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;->PN_WS_CONNECTING:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    .line 3
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    const/4 v3, 0x2

    const-string v4, "PN_WS_CONNECTED_FLOW"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;->PN_WS_CONNECTED_FLOW:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    .line 4
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    const/4 v4, 0x3

    const-string v5, "PN_WS_CONNECTED_PONG"

    invoke-direct {v0, v5, v4}, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;->PN_WS_CONNECTED_PONG:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    .line 5
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    const/4 v5, 0x4

    const-string v6, "PN_WS_CONNECTED_CLOSING"

    invoke-direct {v0, v6, v5}, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;->PN_WS_CONNECTED_CLOSING:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    .line 6
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    const/4 v6, 0x5

    const-string v7, "PN_WS_CLOSED"

    invoke-direct {v0, v7, v6}, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;->PN_WS_CLOSED:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    .line 7
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    const/4 v7, 0x6

    const-string v8, "PN_WS_FAILED"

    invoke-direct {v0, v8, v7}, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;->PN_WS_FAILED:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    .line 8
    sget-object v9, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;->PN_WS_NOT_STARTED:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    aput-object v9, v8, v1

    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;->PN_WS_CONNECTING:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    aput-object v1, v8, v2

    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;->PN_WS_CONNECTED_FLOW:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    aput-object v1, v8, v3

    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;->PN_WS_CONNECTED_PONG:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    aput-object v1, v8, v4

    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;->PN_WS_CONNECTED_CLOSING:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    aput-object v1, v8, v5

    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;->PN_WS_CLOSED:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;->$VALUES:[Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;->$VALUES:[Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    invoke-virtual {v0}, [Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocket$WebSocketState;

    return-object v0
.end method
