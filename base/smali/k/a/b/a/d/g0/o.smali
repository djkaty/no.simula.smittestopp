.class public Lk/a/b/a/d/g0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/d/g0/l0;


# instance fields
.field public final a:Lk/a/b/a/d/g0/f0;

.field public final b:Lk/a/b/a/d/g0/b0;


# direct methods
.method public constructor <init>(Lk/a/b/a/d/g0/f0;Lk/a/b/a/d/g0/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk/a/b/a/d/g0/o;->a:Lk/a/b/a/d/g0/f0;

    .line 3
    iput-object p2, p0, Lk/a/b/a/d/g0/o;->b:Lk/a/b/a/d/g0/b0;

    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/o;->b:Lk/a/b/a/d/g0/b0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->capacity()I

    move-result v0

    return v0
.end method

.method public close_head()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/o;->a:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/f0;->close_head()V

    return-void
.end method

.method public close_tail()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/o;->b:Lk/a/b/a/d/g0/b0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->close_tail()V

    return-void
.end method

.method public head()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/o;->a:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/f0;->head()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public pending()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/o;->a:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/f0;->pending()I

    move-result v0

    return v0
.end method

.method public pop(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/o;->a:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0, p1}, Lk/a/b/a/d/g0/f0;->pop(I)V

    return-void
.end method

.method public position()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/o;->b:Lk/a/b/a/d/g0/b0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->position()I

    move-result v0

    return v0
.end method

.method public process()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/o;->b:Lk/a/b/a/d/g0/b0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->process()V

    return-void
.end method

.method public tail()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/o;->b:Lk/a/b/a/d/g0/b0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->tail()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
