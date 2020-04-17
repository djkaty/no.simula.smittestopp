.class public Lk/b/a/l2/u;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public x:Lk/b/a/u;

.field public y:Lk/b/a/l;

.field public z:Lk/b/a/l2/k;


# direct methods
.method public constructor <init>(Lk/b/a/u;)V
    .locals 8

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    iput-object p1, p0, Lk/b/a/l2/u;->x:Lk/b/a/u;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v1

    instance-of v1, v1, Lk/b/a/b0;

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v1

    check-cast v1, Lk/b/a/b0;

    invoke-static {v1, v4}, Lk/b/a/l;->a(Lk/b/a/b0;Z)Lk/b/a/l;

    move-result-object v1

    iput-object v1, p0, Lk/b/a/l2/u;->y:Lk/b/a/l;

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lk/b/a/l;

    invoke-direct {v1, v2, v3}, Lk/b/a/l;-><init>(J)V

    iput-object v1, p0, Lk/b/a/l2/u;->y:Lk/b/a/l;

    const/4 v1, -0x1

    :goto_0
    iget-object v5, p0, Lk/b/a/l2/u;->y:Lk/b/a/l;

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v5, v2}, Lk/b/a/l;->a(Ljava/math/BigInteger;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lk/b/a/l2/u;->y:Lk/b/a/l;

    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Lk/b/a/l;->a(Ljava/math/BigInteger;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lk/b/a/l2/u;->y:Lk/b/a/l;

    const-wide/16 v5, 0x2

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Lk/b/a/l;->a(Ljava/math/BigInteger;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x0

    :goto_2
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v5

    invoke-static {v5}, Lk/b/a/l;->a(Ljava/lang/Object;)Lk/b/a/l;

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {p1, v5}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v5

    invoke-static {v5}, Lk/b/a/l2/a;->a(Ljava/lang/Object;)Lk/b/a/l2/a;

    add-int/lit8 v5, v1, 0x3

    invoke-virtual {p1, v5}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v5

    invoke-static {v5}, Lk/b/a/k2/c;->a(Ljava/lang/Object;)Lk/b/a/k2/c;

    add-int/lit8 v5, v1, 0x4

    invoke-virtual {p1, v5}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v5

    check-cast v5, Lk/b/a/u;

    invoke-virtual {v5, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v6

    invoke-static {v6}, Lk/b/a/l2/v;->a(Ljava/lang/Object;)Lk/b/a/l2/v;

    invoke-virtual {v5, v4}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v5

    invoke-static {v5}, Lk/b/a/l2/v;->a(Ljava/lang/Object;)Lk/b/a/l2/v;

    add-int/lit8 v5, v1, 0x5

    invoke-virtual {p1, v5}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v5

    invoke-static {v5}, Lk/b/a/k2/c;->a(Ljava/lang/Object;)Lk/b/a/k2/c;

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {p1, v1}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v5

    invoke-static {v5}, Lk/b/a/l2/s;->a(Ljava/lang/Object;)Lk/b/a/l2/s;

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v5

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    if-eqz v5, :cond_4

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "version 1 certificate contains extra data"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_3
    if-lez v5, :cond_8

    add-int v2, v1, v5

    invoke-virtual {p1, v2}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v2

    check-cast v2, Lk/b/a/b0;

    .line 1
    iget v6, v2, Lk/b/a/b0;->x:I

    if-eq v6, v4, :cond_7

    const/4 v7, 0x2

    if-eq v6, v7, :cond_7

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    if-nez v3, :cond_5

    .line 2
    invoke-static {v2, v4}, Lk/b/a/u;->a(Lk/b/a/b0;Z)Lk/b/a/u;

    move-result-object v2

    invoke-static {v2}, Lk/b/a/l2/k;->a(Ljava/lang/Object;)Lk/b/a/l2/k;

    move-result-object v2

    iput-object v2, p0, Lk/b/a/l2/u;->z:Lk/b/a/l2/k;

    goto :goto_4

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "version 2 certificate cannot contain extensions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown tag encountered in structure: "

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    iget v1, v2, Lk/b/a/b0;->x:I

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-static {v2, v0}, Lk/b/a/r0;->a(Lk/b/a/b0;Z)Lk/b/a/r0;

    :goto_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_8
    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "version number not recognised"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 1

    iget-object v0, p0, Lk/b/a/l2/u;->x:Lk/b/a/u;

    return-object v0
.end method
