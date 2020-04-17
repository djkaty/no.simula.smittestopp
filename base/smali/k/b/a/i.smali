.class public abstract Lk/b/a/i;
.super Lk/b/a/t;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:Lk/b/a/t;

.field public x:Lk/b/a/o;

.field public y:Lk/b/a/l;

.field public z:Lk/b/a/t;


# direct methods
.method public constructor <init>(Lk/b/a/f;)V
    .locals 4

    invoke-direct {p0}, Lk/b/a/t;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lk/b/a/i;->a(Lk/b/a/f;I)Lk/b/a/t;

    move-result-object v1

    instance-of v2, v1, Lk/b/a/o;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    check-cast v1, Lk/b/a/o;

    iput-object v1, p0, Lk/b/a/i;->x:Lk/b/a/o;

    invoke-virtual {p0, p1, v3}, Lk/b/a/i;->a(Lk/b/a/f;I)Lk/b/a/t;

    move-result-object v1

    const/4 v0, 0x1

    :cond_0
    instance-of v2, v1, Lk/b/a/l;

    if-eqz v2, :cond_1

    check-cast v1, Lk/b/a/l;

    iput-object v1, p0, Lk/b/a/i;->y:Lk/b/a/l;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lk/b/a/i;->a(Lk/b/a/f;I)Lk/b/a/t;

    move-result-object v1

    :cond_1
    instance-of v2, v1, Lk/b/a/b0;

    if-nez v2, :cond_2

    iput-object v1, p0, Lk/b/a/i;->z:Lk/b/a/t;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lk/b/a/i;->a(Lk/b/a/f;I)Lk/b/a/t;

    move-result-object v1

    .line 1
    :cond_2
    iget p1, p1, Lk/b/a/f;->b:I

    add-int/2addr v0, v3

    if-ne p1, v0, :cond_4

    .line 2
    instance-of p1, v1, Lk/b/a/b0;

    if-eqz p1, :cond_3

    check-cast v1, Lk/b/a/b0;

    .line 3
    iget p1, v1, Lk/b/a/b0;->x:I

    .line 4
    invoke-virtual {p0, p1}, Lk/b/a/i;->a(I)V

    invoke-virtual {v1}, Lk/b/a/b0;->j()Lk/b/a/t;

    move-result-object p1

    iput-object p1, p0, Lk/b/a/i;->B:Lk/b/a/t;

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No tagged object found in vector. Structure doesn\'t seem to be of type External"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "input vector too large"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lk/b/a/o;Lk/b/a/l;Lk/b/a/t;ILk/b/a/t;)V
    .locals 0

    invoke-direct {p0}, Lk/b/a/t;-><init>()V

    .line 5
    iput-object p1, p0, Lk/b/a/i;->x:Lk/b/a/o;

    .line 6
    iput-object p2, p0, Lk/b/a/i;->y:Lk/b/a/l;

    .line 7
    iput-object p3, p0, Lk/b/a/i;->z:Lk/b/a/t;

    .line 8
    invoke-virtual {p0, p4}, Lk/b/a/i;->a(I)V

    if-eqz p5, :cond_0

    .line 9
    iput-object p5, p0, Lk/b/a/i;->B:Lk/b/a/t;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 10
    throw p1
.end method


# virtual methods
.method public final a(Lk/b/a/f;I)Lk/b/a/t;
    .locals 1

    .line 1
    iget v0, p1, Lk/b/a/f;->b:I

    if-le v0, p2, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Lk/b/a/f;->a(I)Lk/b/a/e;

    move-result-object p1

    invoke-interface {p1}, Lk/b/a/e;->c()Lk/b/a/t;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "too few objects in input vector"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    iput p1, p0, Lk/b/a/i;->A:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid encoding value: "

    invoke-static {v1, p1}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lk/b/a/t;)Z
    .locals 3

    instance-of v0, p1, Lk/b/a/i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    check-cast p1, Lk/b/a/i;

    iget-object v0, p0, Lk/b/a/i;->x:Lk/b/a/o;

    if-eqz v0, :cond_3

    iget-object v2, p1, Lk/b/a/i;->x:Lk/b/a/o;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return v1

    :cond_3
    iget-object v0, p0, Lk/b/a/i;->y:Lk/b/a/l;

    if-eqz v0, :cond_5

    iget-object v2, p1, Lk/b/a/i;->y:Lk/b/a/l;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v0}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    return v1

    :cond_5
    iget-object v0, p0, Lk/b/a/i;->z:Lk/b/a/t;

    if-eqz v0, :cond_7

    iget-object v2, p1, Lk/b/a/i;->z:Lk/b/a/t;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v0}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    return v1

    :cond_7
    iget-object v0, p0, Lk/b/a/i;->B:Lk/b/a/t;

    iget-object p1, p1, Lk/b/a/i;->B:Lk/b/a/t;

    invoke-virtual {v0, p1}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result p1

    return p1
.end method

.method public f()I
    .locals 1

    invoke-virtual {p0}, Lk/b/a/n;->e()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h()Lk/b/a/t;
    .locals 7

    new-instance v6, Lk/b/a/s0;

    iget-object v1, p0, Lk/b/a/i;->x:Lk/b/a/o;

    iget-object v2, p0, Lk/b/a/i;->y:Lk/b/a/l;

    iget-object v3, p0, Lk/b/a/i;->z:Lk/b/a/t;

    iget v4, p0, Lk/b/a/i;->A:I

    iget-object v5, p0, Lk/b/a/i;->B:Lk/b/a/t;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lk/b/a/s0;-><init>(Lk/b/a/o;Lk/b/a/l;Lk/b/a/t;ILk/b/a/t;)V

    return-object v6
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lk/b/a/i;->x:Lk/b/a/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lk/b/a/o;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lk/b/a/i;->y:Lk/b/a/l;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lk/b/a/l;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lk/b/a/i;->z:Lk/b/a/t;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lk/b/a/n;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lk/b/a/i;->B:Lk/b/a/t;

    invoke-virtual {v1}, Lk/b/a/n;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public i()Lk/b/a/t;
    .locals 7

    new-instance v6, Lk/b/a/o1;

    iget-object v1, p0, Lk/b/a/i;->x:Lk/b/a/o;

    iget-object v2, p0, Lk/b/a/i;->y:Lk/b/a/l;

    iget-object v3, p0, Lk/b/a/i;->z:Lk/b/a/t;

    iget v4, p0, Lk/b/a/i;->A:I

    iget-object v5, p0, Lk/b/a/i;->B:Lk/b/a/t;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lk/b/a/o1;-><init>(Lk/b/a/o;Lk/b/a/l;Lk/b/a/t;ILk/b/a/t;)V

    return-object v6
.end method
