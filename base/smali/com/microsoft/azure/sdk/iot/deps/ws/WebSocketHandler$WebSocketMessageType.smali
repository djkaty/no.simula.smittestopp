.class public final enum Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WebSocketMessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

.field public static final enum WEB_SOCKET_MESSAGE_TYPE_AMQP:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

.field public static final enum WEB_SOCKET_MESSAGE_TYPE_CHUNK:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

.field public static final enum WEB_SOCKET_MESSAGE_TYPE_CLOSE:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

.field public static final enum WEB_SOCKET_MESSAGE_TYPE_HEADER_CHUNK:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

.field public static final enum WEB_SOCKET_MESSAGE_TYPE_PING:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

.field public static final enum WEB_SOCKET_MESSAGE_TYPE_UNKNOWN:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    const/4 v1, 0x0

    const-string v2, "WEB_SOCKET_MESSAGE_TYPE_UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;->WEB_SOCKET_MESSAGE_TYPE_UNKNOWN:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    const/4 v2, 0x1

    const-string v3, "WEB_SOCKET_MESSAGE_TYPE_CHUNK"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;->WEB_SOCKET_MESSAGE_TYPE_CHUNK:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    .line 3
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    const/4 v3, 0x2

    const-string v4, "WEB_SOCKET_MESSAGE_TYPE_HEADER_CHUNK"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;->WEB_SOCKET_MESSAGE_TYPE_HEADER_CHUNK:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    .line 4
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    const/4 v4, 0x3

    const-string v5, "WEB_SOCKET_MESSAGE_TYPE_AMQP"

    invoke-direct {v0, v5, v4}, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;->WEB_SOCKET_MESSAGE_TYPE_AMQP:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    .line 5
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    const/4 v5, 0x4

    const-string v6, "WEB_SOCKET_MESSAGE_TYPE_PING"

    invoke-direct {v0, v6, v5}, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;->WEB_SOCKET_MESSAGE_TYPE_PING:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    .line 6
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    const/4 v6, 0x5

    const-string v7, "WEB_SOCKET_MESSAGE_TYPE_CLOSE"

    invoke-direct {v0, v7, v6}, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;->WEB_SOCKET_MESSAGE_TYPE_CLOSE:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    .line 7
    sget-object v8, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;->WEB_SOCKET_MESSAGE_TYPE_UNKNOWN:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    aput-object v8, v7, v1

    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;->WEB_SOCKET_MESSAGE_TYPE_CHUNK:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    aput-object v1, v7, v2

    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;->WEB_SOCKET_MESSAGE_TYPE_HEADER_CHUNK:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    aput-object v1, v7, v3

    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;->WEB_SOCKET_MESSAGE_TYPE_AMQP:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    aput-object v1, v7, v4

    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;->WEB_SOCKET_MESSAGE_TYPE_PING:Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;->$VALUES:[Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;->$VALUES:[Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    invoke-virtual {v0}, [Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/sdk/iot/deps/ws/WebSocketHandler$WebSocketMessageType;

    return-object v0
.end method
