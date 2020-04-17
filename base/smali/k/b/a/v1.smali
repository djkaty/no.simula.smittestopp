.class public Lk/b/a/v1;
.super Lk/b/a/b0;
.source "SourceFile"


# direct methods
.method public constructor <init>(ZILk/b/a/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lk/b/a/b0;-><init>(ZILk/b/a/e;)V

    return-void
.end method


# virtual methods
.method public a(Lk/b/a/r;Z)V
    .locals 3

    iget-object v0, p0, Lk/b/a/b0;->z:Lk/b/a/e;

    invoke-interface {v0}, Lk/b/a/e;->c()Lk/b/a/t;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/t;->i()Lk/b/a/t;

    move-result-object v0

    iget-boolean v1, p0, Lk/b/a/b0;->y:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lk/b/a/t;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x80

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0xa0

    :goto_1
    iget v2, p0, Lk/b/a/b0;->x:I

    invoke-virtual {p1, p2, v1, v2}, Lk/b/a/r;->a(ZII)V

    iget-boolean p2, p0, Lk/b/a/b0;->y:Z

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lk/b/a/t;->f()I

    move-result p2

    invoke-virtual {p1, p2}, Lk/b/a/r;->a(I)V

    :cond_2
    invoke-virtual {p1}, Lk/b/a/r;->b()Lk/b/a/r;

    move-result-object p1

    iget-boolean p2, p0, Lk/b/a/b0;->y:Z

    invoke-virtual {p1, v0, p2}, Lk/b/a/r;->a(Lk/b/a/t;Z)V

    return-void
.end method

.method public f()I
    .locals 3

    iget-object v0, p0, Lk/b/a/b0;->z:Lk/b/a/e;

    invoke-interface {v0}, Lk/b/a/e;->c()Lk/b/a/t;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/t;->i()Lk/b/a/t;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/t;->f()I

    move-result v0

    iget-boolean v1, p0, Lk/b/a/b0;->y:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lk/b/a/b0;->x:I

    invoke-static {v1}, Lk/b/a/d2;->b(I)I

    move-result v1

    invoke-static {v0}, Lk/b/a/d2;->a(I)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    return v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lk/b/a/b0;->x:I

    invoke-static {v1}, Lk/b/a/d2;->b(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lk/b/a/b0;->y:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lk/b/a/b0;->z:Lk/b/a/e;

    invoke-interface {v0}, Lk/b/a/e;->c()Lk/b/a/t;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/t;->i()Lk/b/a/t;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/t;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public i()Lk/b/a/t;
    .locals 0

    return-object p0
.end method
