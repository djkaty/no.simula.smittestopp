.class public Lk/a/b/a/d/g0/x;
.super Lk/a/b/a/d/g0/m;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/d/x;


# instance fields
.field public Z:I

.field public a0:Lk/a/b/a/d/g0/j0;


# direct methods
.method public constructor <init>(Lk/a/b/a/d/g0/y;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lk/a/b/a/d/g0/m;-><init>(Lk/a/b/a/d/g0/y;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public V()Lk/a/b/a/d/g0/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/x;->a0:Lk/a/b/a/d/g0/j0;

    return-object v0
.end method

.method public a([BII)I
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/f;->x:Lk/a/b/a/d/g;

    .line 2
    sget-object v1, Lk/a/b/a/d/g;->CLOSED:Lk/a/b/a/d/g;

    if-eq v0, v1, :cond_3

    .line 3
    iget-object v0, p0, Lk/a/b/a/d/g0/m;->K:Lk/a/b/a/d/g0/e;

    if-eqz v0, :cond_2

    .line 4
    iget-object v1, v0, Lk/a/b/a/d/g0/e;->H:Lk/a/b/a/d/g0/m;

    if-ne v1, p0, :cond_2

    .line 5
    new-array v1, p3, [B

    const/4 v2, 0x0

    .line 6
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget-object p1, v0, Lk/a/b/a/d/g0/e;->T:Lk/a/b/a/c/l;

    if-nez p1, :cond_0

    .line 8
    new-instance p1, Lk/a/b/a/c/l;

    invoke-direct {p1}, Lk/a/b/a/c/l;-><init>()V

    iput-object p1, v0, Lk/a/b/a/d/g0/e;->T:Lk/a/b/a/c/l;

    iput-object p1, v0, Lk/a/b/a/d/g0/e;->U:Lk/a/b/a/c/k0;

    .line 9
    :cond_0
    iget-object p1, v0, Lk/a/b/a/d/g0/e;->T:Lk/a/b/a/c/l;

    .line 10
    invoke-virtual {p1, v1}, Lk/a/b/a/c/l;->b([B)Lk/a/b/a/c/l;

    .line 11
    invoke-virtual {v0}, Lk/a/b/a/d/g0/e;->h()V

    if-lez p3, :cond_1

    .line 12
    iget-object p1, p0, Lk/a/b/a/d/g0/m;->H:Lk/a/b/a/d/g0/y;

    .line 13
    iget p2, p1, Lk/a/b/a/d/g0/y;->O:I

    add-int/2addr p2, p3

    iput p2, p1, Lk/a/b/a/d/g0/y;->O:I

    :cond_1
    return p3

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 15
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "send not allowed after the sender is closed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lk/a/b/a/d/g0/m;->R:I

    return-void
.end method

.method public d()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/m;->K:Lk/a/b/a/d/g0/e;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, v0, Lk/a/b/a/d/g0/e;->Q:Z

    .line 3
    :cond_0
    invoke-super {p0}, Lk/a/b/a/d/g0/m;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget v3, p0, Lk/a/b/a/d/g0/x;->Z:I

    if-lez v3, :cond_1

    sub-int/2addr v3, v1

    .line 5
    iput v3, p0, Lk/a/b/a/d/g0/x;->Z:I

    :cond_1
    if-eqz v2, :cond_2

    .line 6
    iget v3, p0, Lk/a/b/a/d/g0/m;->R:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lk/a/b/a/d/g0/m;->R:I

    .line 7
    invoke-virtual {v0}, Lk/a/b/a/d/g0/e;->h()V

    .line 8
    iget-object v0, p0, Lk/a/b/a/d/g0/m;->H:Lk/a/b/a/d/g0/y;

    .line 9
    iget v3, v0, Lk/a/b/a/d/g0/y;->Q:I

    add-int/2addr v3, v1

    iput v3, v0, Lk/a/b/a/d/g0/y;->Q:I

    :cond_2
    return v2
.end method

.method public n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/m;->H:Lk/a/b/a/d/g0/y;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lk/a/b/a/d/g0/m;->L:Ljava/lang/String;

    .line 3
    iget-object v2, v0, Lk/a/b/a/d/g0/y;->I:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/a/b/a/d/g0/x;

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v0, v0, Lk/a/b/a/d/g0/y;->I:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, v0, Lk/a/b/a/d/g0/y;->K:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    :goto_0
    invoke-super {p0}, Lk/a/b/a/d/g0/m;->n()V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 8
    throw v0
.end method
