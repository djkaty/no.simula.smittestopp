.class public Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebsocketTuple;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebsocketTuple"
.end annotation


# instance fields
.field public length:J

.field public type:Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebSocketMessageType;


# direct methods
.method public constructor <init>(JLcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebSocketMessageType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebsocketTuple;->length:J

    .line 3
    iput-object p3, p0, Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebsocketTuple;->type:Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebSocketMessageType;

    return-void
.end method


# virtual methods
.method public getLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebsocketTuple;->length:J

    return-wide v0
.end method

.method public getType()Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebSocketMessageType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebsocketTuple;->type:Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebSocketMessageType;

    return-object v0
.end method

.method public setLength(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebsocketTuple;->length:J

    return-void
.end method

.method public setType(Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebSocketMessageType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebsocketTuple;->type:Lcom/microsoft/azure/proton/transport/ws/WebSocketHandler$WebSocketMessageType;

    return-void
.end method
