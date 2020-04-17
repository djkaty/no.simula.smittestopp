.class public Lk/a/b/a/d/g0/v$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/d/g0/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/d/g0/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final a:Lk/a/b/a/d/g0/b0;

.field public final b:Lk/a/b/a/d/g0/f0;

.field public c:Lk/a/b/a/d/g0/b0;

.field public d:Lk/a/b/a/d/g0/f0;


# direct methods
.method public synthetic constructor <init>(Lk/a/b/a/d/g0/v;Lk/a/b/a/d/g0/b0;Lk/a/b/a/d/g0/f0;Lk/a/b/a/d/g0/v$a;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lk/a/b/a/d/g0/v$d;->a:Lk/a/b/a/d/g0/b0;

    .line 3
    iput-object p3, p0, Lk/a/b/a/d/g0/v$d;->b:Lk/a/b/a/d/g0/f0;

    .line 4
    new-instance p4, Lk/a/b/a/d/g0/v$c;

    const/4 v5, 0x0

    move-object v0, p4

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lk/a/b/a/d/g0/v$c;-><init>(Lk/a/b/a/d/g0/v;Lk/a/b/a/d/g0/v$d;Lk/a/b/a/d/g0/b0;Lk/a/b/a/d/g0/f0;Lk/a/b/a/d/g0/v$a;)V

    .line 5
    iput-object p4, p0, Lk/a/b/a/d/g0/v$d;->c:Lk/a/b/a/d/g0/b0;

    .line 6
    iput-object p4, p0, Lk/a/b/a/d/g0/v$d;->d:Lk/a/b/a/d/g0/f0;

    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/v$d;->c:Lk/a/b/a/d/g0/b0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->capacity()I

    move-result v0

    return v0
.end method

.method public close_head()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/v$d;->d:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/f0;->close_head()V

    return-void
.end method

.method public close_tail()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/v$d;->c:Lk/a/b/a/d/g0/b0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->close_tail()V

    return-void
.end method

.method public head()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/v$d;->d:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/f0;->head()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public pending()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/v$d;->d:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/f0;->pending()I

    move-result v0

    return v0
.end method

.method public pop(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/v$d;->d:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0, p1}, Lk/a/b/a/d/g0/f0;->pop(I)V

    return-void
.end method

.method public position()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/v$d;->c:Lk/a/b/a/d/g0/b0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->position()I

    move-result v0

    return v0
.end method

.method public process()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/v$d;->c:Lk/a/b/a/d/g0/b0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->process()V

    return-void
.end method

.method public tail()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/v$d;->c:Lk/a/b/a/d/g0/b0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->tail()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
