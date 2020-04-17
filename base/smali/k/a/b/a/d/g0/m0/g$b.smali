.class public Lk/a/b/a/d/g0/m0/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/d/g0/m0/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/d/g0/m0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Lk/a/b/a/d/g0/b0;

.field public final b:Lk/a/b/a/d/g0/f0;

.field public c:Lk/a/b/a/d/g0/m0/h;

.field public final synthetic d:Lk/a/b/a/d/g0/m0/g;


# direct methods
.method public synthetic constructor <init>(Lk/a/b/a/d/g0/m0/g;Lk/a/b/a/d/g0/b0;Lk/a/b/a/d/g0/f0;Lk/a/b/a/d/g0/m0/g$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/a/b/a/d/g0/m0/g$b;->d:Lk/a/b/a/d/g0/m0/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lk/a/b/a/d/g0/m0/g$b;->a:Lk/a/b/a/d/g0/b0;

    .line 3
    iput-object p3, p0, Lk/a/b/a/d/g0/m0/g$b;->b:Lk/a/b/a/d/g0/f0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/g$b;->d:Lk/a/b/a/d/g0/m0/g;

    .line 2
    iget-object v0, v0, Lk/a/b/a/d/g0/m0/g;->f:Lk/a/b/a/d/d0;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/g$b;->c:Lk/a/b/a/d/g0/m0/h;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lk/a/b/a/d/g0/m0/d;

    iget-object v1, p0, Lk/a/b/a/d/g0/m0/g$b;->d:Lk/a/b/a/d/g0/m0/g;

    .line 5
    iget-object v1, v1, Lk/a/b/a/d/g0/m0/g;->d:Lk/a/b/a/d/g0/m0/c;

    .line 6
    iget-object v2, p0, Lk/a/b/a/d/g0/m0/g$b;->d:Lk/a/b/a/d/g0/m0/g;

    .line 7
    iget-object v2, v2, Lk/a/b/a/d/g0/m0/g;->e:Lk/a/b/a/d/b0;

    .line 8
    invoke-interface {v1, v2}, Lk/a/b/a/d/g0/m0/c;->a(Lk/a/b/a/d/b0;)Lk/a/b/a/d/g0/m0/b;

    move-result-object v1

    iget-object v2, p0, Lk/a/b/a/d/g0/m0/g$b;->a:Lk/a/b/a/d/g0/b0;

    iget-object v3, p0, Lk/a/b/a/d/g0/m0/g$b;->b:Lk/a/b/a/d/g0/f0;

    invoke-direct {v0, v1, v2, v3}, Lk/a/b/a/d/g0/m0/d;-><init>(Lk/a/b/a/d/g0/m0/b;Lk/a/b/a/d/g0/b0;Lk/a/b/a/d/g0/f0;)V

    .line 9
    iget-object v1, p0, Lk/a/b/a/d/g0/m0/g$b;->d:Lk/a/b/a/d/g0/m0/g;

    .line 10
    iget-object v1, v1, Lk/a/b/a/d/g0/m0/g;->c:Lk/a/b/a/d/a0;

    .line 11
    check-cast v1, Lk/a/b/a/d/g0/m0/e;

    if-eqz v1, :cond_0

    .line 12
    iput-object v0, p0, Lk/a/b/a/d/g0/m0/g$b;->c:Lk/a/b/a/d/g0/m0/h;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 13
    throw v0
    :try_end_0
    .catch Lk/a/b/a/d/d0; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 14
    iget-object v1, p0, Lk/a/b/a/d/g0/m0/g$b;->d:Lk/a/b/a/d/g0/m0/g;

    .line 15
    iput-object v0, v1, Lk/a/b/a/d/g0/m0/g;->f:Lk/a/b/a/d/d0;

    :cond_1
    :goto_0
    return-void
.end method

.method public capacity()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/d/g0/m0/g$b;->a()V

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/g$b;->d:Lk/a/b/a/d/g0/m0/g;

    .line 3
    iget-object v0, v0, Lk/a/b/a/d/g0/m0/g;->f:Lk/a/b/a/d/d0;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/g$b;->c:Lk/a/b/a/d/g0/m0/h;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->capacity()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public close_head()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/d/g0/m0/g$b;->a()V

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/g$b;->d:Lk/a/b/a/d/g0/m0/g;

    .line 3
    iget-object v0, v0, Lk/a/b/a/d/g0/m0/g;->f:Lk/a/b/a/d/d0;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/g$b;->c:Lk/a/b/a/d/g0/m0/h;

    invoke-interface {v0}, Lk/a/b/a/d/g0/f0;->close_head()V

    :cond_0
    return-void
.end method

.method public close_tail()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/d/g0/m0/g$b;->a()V

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/g$b;->d:Lk/a/b/a/d/g0/m0/g;

    .line 3
    iget-object v0, v0, Lk/a/b/a/d/g0/m0/g;->f:Lk/a/b/a/d/d0;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/g$b;->c:Lk/a/b/a/d/g0/m0/h;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->close_tail()V

    :cond_0
    return-void
.end method

.method public head()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/d/g0/m0/g$b;->a()V

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/g$b;->d:Lk/a/b/a/d/g0/m0/g;

    .line 3
    iget-object v0, v0, Lk/a/b/a/d/g0/m0/g;->f:Lk/a/b/a/d/d0;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/g$b;->c:Lk/a/b/a/d/g0/m0/h;

    invoke-interface {v0}, Lk/a/b/a/d/g0/f0;->head()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public pending()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/d/g0/m0/g$b;->a()V

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/g$b;->d:Lk/a/b/a/d/g0/m0/g;

    .line 3
    iget-object v0, v0, Lk/a/b/a/d/g0/m0/g;->f:Lk/a/b/a/d/d0;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/g$b;->c:Lk/a/b/a/d/g0/m0/h;

    invoke-interface {v0}, Lk/a/b/a/d/g0/f0;->pending()I

    move-result v0

    return v0

    .line 5
    :cond_0
    new-instance v0, Lk/a/b/a/d/d0;

    iget-object v1, p0, Lk/a/b/a/d/g0/m0/g$b;->d:Lk/a/b/a/d/g0/m0/g;

    .line 6
    iget-object v1, v1, Lk/a/b/a/d/g0/m0/g;->f:Lk/a/b/a/d/d0;

    .line 7
    invoke-direct {v0, v1}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public pop(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/d/g0/m0/g$b;->a()V

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/g$b;->d:Lk/a/b/a/d/g0/m0/g;

    .line 3
    iget-object v0, v0, Lk/a/b/a/d/g0/m0/g;->f:Lk/a/b/a/d/d0;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/g$b;->c:Lk/a/b/a/d/g0/m0/h;

    invoke-interface {v0, p1}, Lk/a/b/a/d/g0/f0;->pop(I)V

    :cond_0
    return-void
.end method

.method public position()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/d/g0/m0/g$b;->a()V

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/g$b;->d:Lk/a/b/a/d/g0/m0/g;

    .line 3
    iget-object v0, v0, Lk/a/b/a/d/g0/m0/g;->f:Lk/a/b/a/d/d0;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/g$b;->c:Lk/a/b/a/d/g0/m0/h;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->position()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public process()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/d/g0/m0/g$b;->a()V

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/g$b;->d:Lk/a/b/a/d/g0/m0/g;

    .line 3
    iget-object v0, v0, Lk/a/b/a/d/g0/m0/g;->f:Lk/a/b/a/d/d0;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/g$b;->c:Lk/a/b/a/d/g0/m0/h;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->process()V

    return-void

    .line 5
    :cond_0
    new-instance v0, Lk/a/b/a/d/d0;

    iget-object v1, p0, Lk/a/b/a/d/g0/m0/g$b;->d:Lk/a/b/a/d/g0/m0/g;

    .line 6
    iget-object v1, v1, Lk/a/b/a/d/g0/m0/g;->f:Lk/a/b/a/d/d0;

    .line 7
    invoke-direct {v0, v1}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public tail()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/d/g0/m0/g$b;->a()V

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/g$b;->d:Lk/a/b/a/d/g0/m0/g;

    .line 3
    iget-object v0, v0, Lk/a/b/a/d/g0/m0/g;->f:Lk/a/b/a/d/d0;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/g$b;->c:Lk/a/b/a/d/g0/m0/h;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->tail()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
