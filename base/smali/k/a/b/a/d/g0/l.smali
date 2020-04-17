.class public abstract Lk/a/b/a/d/g0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/d/g0/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1::",
        "Lk/a/b/a/d/g0/l0;",
        "T2::",
        "Lk/a/b/a/d/g0/l0;",
        ">",
        "Ljava/lang/Object;",
        "Lk/a/b/a/d/g0/l0;"
    }
.end annotation


# static fields
.field public static final EMPTY:Ljava/nio/ByteBuffer;


# instance fields
.field public final _determinationBuffer:Ljava/nio/ByteBuffer;

.field public _head_closed:Z

.field public _selectedTransportWrapper:Lk/a/b/a/d/g0/l0;

.field public _tail_closed:Z

.field public final _wrapper1:Lk/a/b/a/d/g0/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT1;"
        }
    .end annotation
.end field

.field public final _wrapper2:Lk/a/b/a/d/g0/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT2;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lk/a/b/a/d/g0/l;->EMPTY:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Lk/a/b/a/d/g0/l0;Lk/a/b/a/d/g0/l0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lk/a/b/a/d/g0/l;->_tail_closed:Z

    .line 3
    iput-boolean v0, p0, Lk/a/b/a/d/g0/l;->_head_closed:Z

    .line 4
    iput-object p1, p0, Lk/a/b/a/d/g0/l;->_wrapper1:Lk/a/b/a/d/g0/l0;

    .line 5
    iput-object p2, p0, Lk/a/b/a/d/g0/l;->_wrapper2:Lk/a/b/a/d/g0/l0;

    .line 6
    invoke-virtual {p0}, Lk/a/b/a/d/g0/l;->bufferSize()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lk/a/b/a/d/g0/l;->_determinationBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public abstract bufferSize()I
.end method

.method public capacity()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/d/g0/l;->isDeterminationMade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/l;->_selectedTransportWrapper:Lk/a/b/a/d/g0/l0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->capacity()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lk/a/b/a/d/g0/l;->_tail_closed:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    return v0

    .line 4
    :cond_1
    iget-object v0, p0, Lk/a/b/a/d/g0/l;->_determinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public close_head()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/d/g0/l;->isDeterminationMade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/l;->_selectedTransportWrapper:Lk/a/b/a/d/g0/l0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/f0;->close_head()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lk/a/b/a/d/g0/l;->_head_closed:Z

    :goto_0
    return-void
.end method

.method public close_tail()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lk/a/b/a/d/g0/l;->isDeterminationMade()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lk/a/b/a/d/g0/l;->_selectedTransportWrapper:Lk/a/b/a/d/g0/l0;

    invoke-interface {v1}, Lk/a/b/a/d/g0/b0;->close_tail()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    iput-boolean v0, p0, Lk/a/b/a/d/g0/l;->_tail_closed:Z

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lk/a/b/a/d/g0/l;->_tail_closed:Z

    .line 4
    throw v1
.end method

.method public head()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/d/g0/l;->isDeterminationMade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/l;->_selectedTransportWrapper:Lk/a/b/a/d/g0/l0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/f0;->head()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lk/a/b/a/d/g0/l;->EMPTY:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public isDeterminationMade()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/l;->_selectedTransportWrapper:Lk/a/b/a/d/g0/l0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract makeDetermination([B)V
.end method

.method public pending()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk/a/b/a/d/g0/l;->_head_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lk/a/b/a/d/g0/l;->isDeterminationMade()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lk/a/b/a/d/g0/l;->_selectedTransportWrapper:Lk/a/b/a/d/g0/l0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/f0;->pending()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public pop(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/d/g0/l;->isDeterminationMade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/l;->_selectedTransportWrapper:Lk/a/b/a/d/g0/l0;

    invoke-interface {v0, p1}, Lk/a/b/a/d/g0/f0;->pop(I)V

    goto :goto_0

    :cond_0
    if-gtz p1, :cond_1

    :goto_0
    return-void

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no bytes have been read"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public position()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/d/g0/l;->isDeterminationMade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/l;->_selectedTransportWrapper:Lk/a/b/a/d/g0/l0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->position()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lk/a/b/a/d/g0/l;->_tail_closed:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    return v0

    .line 4
    :cond_1
    iget-object v0, p0, Lk/a/b/a/d/g0/l;->_determinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public process()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/d/g0/l;->isDeterminationMade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/l;->_selectedTransportWrapper:Lk/a/b/a/d/g0/l0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->process()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lk/a/b/a/d/g0/l;->_determinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lk/a/b/a/d/g0/l;->_determinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 5
    iget-object v0, p0, Lk/a/b/a/d/g0/l;->_determinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 6
    iget-object v1, p0, Lk/a/b/a/d/g0/l;->_determinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {p0, v0}, Lk/a/b/a/d/g0/l;->makeDetermination([B)V

    .line 8
    iget-object v0, p0, Lk/a/b/a/d/g0/l;->_determinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 9
    iget-object v0, p0, Lk/a/b/a/d/g0/l;->_selectedTransportWrapper:Lk/a/b/a/d/g0/l0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->tail()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lk/a/b/a/d/g0/l;->_determinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 10
    iget-object v0, p0, Lk/a/b/a/d/g0/l;->_selectedTransportWrapper:Lk/a/b/a/d/g0/l0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->process()V

    goto :goto_0

    .line 11
    :cond_1
    iget-boolean v0, p0, Lk/a/b/a/d/g0/l;->_tail_closed:Z

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 12
    :cond_2
    new-instance v0, Lk/a/b/a/d/d0;

    const-string v1, "connection aborted"

    invoke-direct {v0, v1}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tail()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/d/g0/l;->isDeterminationMade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/l;->_selectedTransportWrapper:Lk/a/b/a/d/g0/l0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->tail()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lk/a/b/a/d/g0/l;->_determinationBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method
