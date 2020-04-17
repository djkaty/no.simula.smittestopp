.class public Lk/b/f/a/c$d;
.super Lk/b/f/a/c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/f/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public d:Ljava/math/BigInteger;

.field public e:Ljava/math/BigInteger;

.field public f:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lk/b/f/a/c$b;-><init>()V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    iput-object p1, p0, Lk/b/f/a/c$d;->d:Ljava/math/BigInteger;

    iput-object p2, p0, Lk/b/f/a/c$d;->e:Ljava/math/BigInteger;

    iput-object p3, p0, Lk/b/f/a/c$d;->f:Ljava/math/BigInteger;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "x value invalid in Fp field element"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static b(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 6

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x60

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x40

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    sget-object v1, Lk/b/f/a/a;->b:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 18

    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lk/b/f/a/c$d;->d:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v2, v1, 0x1f

    shr-int/lit8 v2, v2, 0x5

    .line 4
    iget-object v3, v0, Lk/b/f/a/c$d;->d:Ljava/math/BigInteger;

    invoke-static {v1, v3}, Lk/b/c/e/a;->a(ILjava/math/BigInteger;)[I

    move-result-object v3

    move-object/from16 v4, p1

    invoke-static {v1, v4}, Lk/b/c/e/a;->a(ILjava/math/BigInteger;)[I

    move-result-object v1

    .line 5
    new-array v4, v2, [I

    .line 6
    array-length v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x1

    if-ge v7, v5, :cond_1

    .line 7
    aget v9, v1, v7

    if-eqz v9, :cond_0

    const/4 v7, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x1

    :goto_1
    if-nez v7, :cond_d

    .line 8
    invoke-static {v5, v1}, Lk/b/c/e/a;->a(I[I)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v1, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_8

    .line 9
    :cond_2
    new-array v7, v5, [I

    invoke-static {v1, v6, v7, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    new-array v1, v5, [I

    .line 11
    aput v8, v1, v6

    aget v9, v7, v6

    and-int/2addr v9, v8

    if-nez v9, :cond_3

    invoke-static {v3, v7, v5, v1, v6}, Lk/b/c/e/a;->a([I[II[II)I

    move-result v9

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    invoke-static {v5, v7}, Lk/b/c/e/a;->a(I[I)Z

    move-result v10

    if-eqz v10, :cond_4

    :goto_3
    invoke-static {v3, v9, v1, v4}, Lk/b/c/e/a;->a([II[I[I)V

    goto :goto_8

    .line 12
    :cond_4
    new-array v10, v5, [I

    invoke-static {v3, v6, v10, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    new-array v11, v5, [I

    move v12, v5

    const/4 v13, 0x0

    :goto_4
    add-int/lit8 v14, v12, -0x1

    .line 14
    aget v15, v7, v14

    if-nez v15, :cond_5

    aget v15, v10, v14

    if-nez v15, :cond_5

    move v12, v14

    goto :goto_4

    :cond_5
    :goto_5
    if-ltz v14, :cond_8

    .line 15
    aget v15, v7, v14

    const/high16 v16, -0x80000000

    xor-int v15, v15, v16

    aget v17, v10, v14

    xor-int v6, v17, v16

    if-ge v15, v6, :cond_6

    const/4 v6, 0x0

    goto :goto_7

    :cond_6
    if-le v15, v6, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v14, v14, -0x1

    const/4 v6, 0x0

    goto :goto_5

    :cond_8
    :goto_6
    const/4 v6, 0x1

    :goto_7
    if-eqz v6, :cond_9

    .line 16
    invoke-static {v12, v10, v7}, Lk/b/c/e/a;->a(I[I[I)I

    invoke-static {v5, v11, v1}, Lk/b/c/e/a;->a(I[I[I)I

    move-result v6

    sub-int/2addr v6, v13

    add-int/2addr v6, v9

    invoke-static {v3, v7, v12, v1, v6}, Lk/b/c/e/a;->a([I[II[II)I

    move-result v9

    invoke-static {v12, v7}, Lk/b/c/e/a;->a(I[I)Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_3

    :cond_9
    invoke-static {v12, v7, v10}, Lk/b/c/e/a;->a(I[I[I)I

    invoke-static {v5, v1, v11}, Lk/b/c/e/a;->a(I[I[I)I

    move-result v6

    sub-int/2addr v6, v9

    add-int/2addr v6, v13

    invoke-static {v3, v10, v12, v11, v6}, Lk/b/c/e/a;->a([I[II[II)I

    move-result v13

    invoke-static {v12, v10}, Lk/b/c/e/a;->a(I[I)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {v3, v13, v11, v4}, Lk/b/c/e/a;->a([II[I[I)V

    :goto_8
    shl-int/lit8 v1, v2, 0x2

    .line 17
    new-array v1, v1, [B

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v2, :cond_b

    aget v3, v4, v6

    if-eqz v3, :cond_a

    add-int/lit8 v5, v2, -0x1

    sub-int/2addr v5, v6

    shl-int/lit8 v5, v5, 0x2

    invoke-static {v3, v1, v5}, Lk/b/c/e/a;->b(I[BI)V

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_b
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v8, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v2

    :cond_c
    const/4 v6, 0x0

    goto :goto_4

    .line 18
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'x\' cannot be 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 19
    iget-object p2, p0, Lk/b/f/a/c$d;->e:Ljava/math/BigInteger;

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result p2

    if-gez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lk/b/f/a/c$d;->d:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iget-object v1, p0, Lk/b/f/a/c$d;->e:Ljava/math/BigInteger;

    sget-object v2, Lk/b/f/a/a;->b:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    if-le v2, v3, :cond_3

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    if-nez v1, :cond_2

    iget-object v3, p0, Lk/b/f/a/c$d;->e:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    :cond_2
    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v0, p0, Lk/b/f/a/c$d;->d:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Lk/b/f/a/c$d;->d:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_6

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lk/b/f/a/c$d;->d:Ljava/math/BigInteger;

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_3

    :cond_5
    iget-object p2, p0, Lk/b/f/a/c$d;->d:Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :cond_6
    :goto_3
    return-object p1
.end method

.method public a(Lk/b/f/a/c;)Lk/b/f/a/c;
    .locals 4

    new-instance v0, Lk/b/f/a/c$d;

    iget-object v1, p0, Lk/b/f/a/c$d;->d:Ljava/math/BigInteger;

    iget-object v2, p0, Lk/b/f/a/c$d;->e:Ljava/math/BigInteger;

    iget-object v3, p0, Lk/b/f/a/c$d;->f:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lk/b/f/a/c;->h()Ljava/math/BigInteger;

    move-result-object p1

    .line 1
    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v3, p0, Lk/b/f/a/c$d;->d:Ljava/math/BigInteger;

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_0

    iget-object v3, p0, Lk/b/f/a/c$d;->d:Ljava/math/BigInteger;

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 2
    :cond_0
    invoke-direct {v0, v1, v2, p1}, Lk/b/f/a/c$d;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lk/b/f/a/c$d;->d:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public b(Lk/b/f/a/c;)Lk/b/f/a/c;
    .locals 4

    new-instance v0, Lk/b/f/a/c$d;

    iget-object v1, p0, Lk/b/f/a/c$d;->d:Ljava/math/BigInteger;

    iget-object v2, p0, Lk/b/f/a/c$d;->e:Ljava/math/BigInteger;

    iget-object v3, p0, Lk/b/f/a/c$d;->f:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lk/b/f/a/c;->h()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk/b/f/a/c$d;->a(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lk/b/f/a/c$d;->a(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lk/b/f/a/c$d;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public c()Lk/b/f/a/c;
    .locals 4

    new-instance v0, Lk/b/f/a/c$d;

    iget-object v1, p0, Lk/b/f/a/c$d;->d:Ljava/math/BigInteger;

    iget-object v2, p0, Lk/b/f/a/c$d;->e:Ljava/math/BigInteger;

    iget-object v3, p0, Lk/b/f/a/c$d;->f:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Lk/b/f/a/c$d;->a(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lk/b/f/a/c$d;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public c(Lk/b/f/a/c;)Lk/b/f/a/c;
    .locals 4

    new-instance v0, Lk/b/f/a/c$d;

    iget-object v1, p0, Lk/b/f/a/c$d;->d:Ljava/math/BigInteger;

    iget-object v2, p0, Lk/b/f/a/c$d;->e:Ljava/math/BigInteger;

    iget-object v3, p0, Lk/b/f/a/c$d;->f:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lk/b/f/a/c;->h()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lk/b/f/a/c$d;->a(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lk/b/f/a/c$d;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lk/b/f/a/c$d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lk/b/f/a/c$d;

    iget-object v1, p0, Lk/b/f/a/c$d;->d:Ljava/math/BigInteger;

    iget-object v3, p1, Lk/b/f/a/c$d;->d:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lk/b/f/a/c$d;->f:Ljava/math/BigInteger;

    iget-object p1, p1, Lk/b/f/a/c$d;->f:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Lk/b/f/a/c;
    .locals 4

    iget-object v0, p0, Lk/b/f/a/c$d;->f:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lk/b/f/a/c$d;

    iget-object v1, p0, Lk/b/f/a/c$d;->d:Ljava/math/BigInteger;

    iget-object v2, p0, Lk/b/f/a/c$d;->e:Ljava/math/BigInteger;

    iget-object v3, p0, Lk/b/f/a/c$d;->f:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lk/b/f/a/c$d;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_0
    return-object v0
.end method

.method public g()Lk/b/f/a/c;
    .locals 4

    new-instance v0, Lk/b/f/a/c$d;

    iget-object v1, p0, Lk/b/f/a/c$d;->d:Ljava/math/BigInteger;

    iget-object v2, p0, Lk/b/f/a/c$d;->e:Ljava/math/BigInteger;

    iget-object v3, p0, Lk/b/f/a/c$d;->f:Ljava/math/BigInteger;

    invoke-virtual {p0, v3, v3}, Lk/b/f/a/c$d;->a(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lk/b/f/a/c$d;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public h()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lk/b/f/a/c$d;->f:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lk/b/f/a/c$d;->d:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lk/b/f/a/c$d;->f:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
