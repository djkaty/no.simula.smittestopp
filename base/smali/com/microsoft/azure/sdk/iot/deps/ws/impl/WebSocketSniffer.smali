.class public Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketSniffer;
.super Lk/a/b/a/d/g0/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/a/b/a/d/g0/l<",
        "Lk/a/b/a/d/g0/l0;",
        "Lk/a/b/a/d/g0/l0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lk/a/b/a/d/g0/l0;Lk/a/b/a/d/g0/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lk/a/b/a/d/g0/l;-><init>(Lk/a/b/a/d/g0/l0;Lk/a/b/a/d/g0/l0;)V

    return-void
.end method


# virtual methods
.method public bufferSize()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getSelectedTransportWrapper()Lk/a/b/a/d/g0/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/l;->_selectedTransportWrapper:Lk/a/b/a/d/g0/l0;

    return-object v0
.end method

.method public makeDetermination([B)V
    .locals 2

    .line 1
    array-length v0, p1

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/deps/ws/impl/WebSocketSniffer;->bufferSize()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    aget-byte p1, p1, v0

    const/16 v0, -0x7e

    if-eq p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lk/a/b/a/d/g0/l;->_wrapper2:Lk/a/b/a/d/g0/l0;

    iput-object p1, p0, Lk/a/b/a/d/g0/l;->_selectedTransportWrapper:Lk/a/b/a/d/g0/l0;

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lk/a/b/a/d/g0/l;->_wrapper1:Lk/a/b/a/d/g0/l0;

    iput-object p1, p0, Lk/a/b/a/d/g0/l;->_selectedTransportWrapper:Lk/a/b/a/d/g0/l0;

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "insufficient bytes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
