.class public Lk/a/b/a/d/g0/q;
.super Lk/a/b/a/d/g0/m;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/d/t;


# instance fields
.field public Z:Z

.field public a0:Lk/a/b/a/d/g0/i0;

.field public b0:I


# direct methods
.method public constructor <init>(Lk/a/b/a/d/g0/y;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lk/a/b/a/d/g0/m;-><init>(Lk/a/b/a/d/g0/y;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lk/a/b/a/d/g0/q;->Z:Z

    return-void
.end method


# virtual methods
.method public V()Lk/a/b/a/d/g0/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/q;->a0:Lk/a/b/a/d/g0/i0;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .line 1
    iget v0, p0, Lk/a/b/a/d/g0/m;->R:I

    add-int/2addr v0, p1

    iput v0, p0, Lk/a/b/a/d/g0/m;->R:I

    .line 2
    iget v0, p0, Lk/a/b/a/d/g0/q;->b0:I

    add-int/2addr v0, p1

    iput v0, p0, Lk/a/b/a/d/g0/q;->b0:I

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lk/a/b/a/d/g0/f;->c(Z)V

    .line 4
    iget-boolean v0, p0, Lk/a/b/a/d/g0/q;->Z:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lk/a/b/a/d/g0/m;->X:Z

    .line 6
    invoke-virtual {p0, p1}, Lk/a/b/a/d/g0/f;->c(Z)V

    .line 7
    iput-boolean p1, p0, Lk/a/b/a/d/g0/q;->Z:Z

    .line 8
    iput-boolean v0, p0, Lk/a/b/a/d/g0/q;->Z:Z

    :cond_0
    return-void
.end method

.method public b([BII)I
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/m;->K:Lk/a/b/a/d/g0/e;

    if-eqz v0, :cond_3

    .line 2
    iget-object v1, v0, Lk/a/b/a/d/g0/e;->T:Lk/a/b/a/c/l;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lk/a/b/a/c/l;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v0, Lk/a/b/a/d/g0/e;->T:Lk/a/b/a/c/l;

    invoke-virtual {v1}, Lk/a/b/a/c/l;->c()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 4
    iget-object v1, v0, Lk/a/b/a/d/g0/e;->T:Lk/a/b/a/c/l;

    invoke-virtual {v1, p1, p2, p3}, Lk/a/b/a/c/l;->a([BII)Lk/a/b/a/c/l;

    .line 5
    iget-object p1, v0, Lk/a/b/a/d/g0/e;->T:Lk/a/b/a/c/l;

    invoke-virtual {p1}, Lk/a/b/a/c/l;->n()Lk/a/b/a/c/l;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 6
    :goto_0
    iget-boolean p1, v0, Lk/a/b/a/d/g0/e;->Q:Z

    if-eqz p1, :cond_1

    if-nez p3, :cond_1

    const/4 p3, -0x1

    :cond_1
    if-lez p3, :cond_2

    .line 7
    iget-object p1, p0, Lk/a/b/a/d/g0/m;->H:Lk/a/b/a/d/g0/y;

    neg-int p2, p3

    .line 8
    invoke-virtual {p1, p2}, Lk/a/b/a/d/g0/y;->b(I)V

    .line 9
    iget-object p1, p0, Lk/a/b/a/d/g0/m;->H:Lk/a/b/a/d/g0/y;

    .line 10
    iget-object p1, p1, Lk/a/b/a/d/g0/y;->L:Lk/a/b/a/d/g0/k0;

    .line 11
    iget-object p1, p1, Lk/a/b/a/d/g0/k0;->g:Lk/a/b/a/b/h;

    .line 12
    sget-object p2, Lk/a/b/a/b/h;->z:Lk/a/b/a/b/h;

    invoke-virtual {p1, p2}, Lk/a/b/a/b/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Lk/a/b/a/d/g0/f;->c(Z)V

    :cond_2
    return p3

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "no current delivery"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/m;->K:Lk/a/b/a/d/g0/e;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, v0, Lk/a/b/a/d/g0/e;->S:Z

    .line 3
    :cond_0
    invoke-super {p0}, Lk/a/b/a/d/g0/m;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget v3, p0, Lk/a/b/a/d/g0/m;->Q:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lk/a/b/a/d/g0/m;->Q:I

    .line 5
    iget v3, p0, Lk/a/b/a/d/g0/m;->R:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lk/a/b/a/d/g0/m;->R:I

    .line 6
    iget-object v3, p0, Lk/a/b/a/d/g0/m;->H:Lk/a/b/a/d/g0/y;

    .line 7
    invoke-virtual {v0}, Lk/a/b/a/d/g0/e;->pending()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {v3, v0}, Lk/a/b/a/d/g0/y;->b(I)V

    .line 8
    iget-object v0, p0, Lk/a/b/a/d/g0/m;->H:Lk/a/b/a/d/g0/y;

    .line 9
    iget v3, v0, Lk/a/b/a/d/g0/y;->P:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lk/a/b/a/d/g0/y;->P:I

    .line 10
    iget-object v0, v0, Lk/a/b/a/d/g0/y;->L:Lk/a/b/a/d/g0/k0;

    .line 11
    iget-object v0, v0, Lk/a/b/a/d/g0/k0;->g:Lk/a/b/a/b/h;

    .line 12
    sget-object v3, Lk/a/b/a/b/h;->z:Lk/a/b/a/b/h;

    invoke-virtual {v0, v3}, Lk/a/b/a/b/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p0, v1}, Lk/a/b/a/d/g0/f;->c(Z)V

    :cond_1
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
    iget-object v2, v0, Lk/a/b/a/d/g0/y;->J:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/a/b/a/d/g0/q;

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v0, v0, Lk/a/b/a/d/g0/y;->J:Ljava/util/Map;

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
