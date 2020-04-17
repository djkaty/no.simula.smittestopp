.class public Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl$1;
.super Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketSniffer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;->wrap(Lk/a/b/a/d/g0/b0;Lk/a/b/a/d/g0/f0;)Lk/a/b/a/d/g0/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;Lk/a/b/a/d/g0/l0;Lk/a/b/a/d/g0/l0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl$1;->this$0:Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketImpl;

    invoke-direct {p0, p2, p3}, Lcom/microsoft/azure/proton/transport/ws/impl/WebSocketSniffer;-><init>(Lk/a/b/a/d/g0/l0;Lk/a/b/a/d/g0/l0;)V

    return-void
.end method


# virtual methods
.method public isDeterminationMade()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/l;->_wrapper1:Lk/a/b/a/d/g0/l0;

    iput-object v0, p0, Lk/a/b/a/d/g0/l;->_selectedTransportWrapper:Lk/a/b/a/d/g0/l0;

    const/4 v0, 0x1

    return v0
.end method
