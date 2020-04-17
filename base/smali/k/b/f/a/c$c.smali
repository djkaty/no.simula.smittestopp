.class public Lk/b/f/a/c$c;
.super Lk/b/f/a/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/f/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public d:I

.field public e:I

.field public f:[I

.field public g:Lk/b/f/a/e;


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;)V
    .locals 4

    invoke-direct {p0}, Lk/b/f/a/c$a;-><init>()V

    if-eqz p5, :cond_3

    invoke-virtual {p5}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p5}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v0, p1, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    iput v2, p0, Lk/b/f/a/c$c;->d:I

    new-array p3, v1, [I

    aput p2, p3, v0

    iput-object p3, p0, Lk/b/f/a/c$c;->f:[I

    goto :goto_0

    :cond_0
    if-ge p3, p4, :cond_2

    if-lez p3, :cond_1

    const/4 v3, 0x3

    iput v3, p0, Lk/b/f/a/c$c;->d:I

    new-array v3, v3, [I

    aput p2, v3, v0

    aput p3, v3, v1

    aput p4, v3, v2

    iput-object v3, p0, Lk/b/f/a/c$c;->f:[I

    :goto_0
    iput p1, p0, Lk/b/f/a/c$c;->e:I

    new-instance p1, Lk/b/f/a/e;

    invoke-direct {p1, p5}, Lk/b/f/a/e;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lk/b/f/a/c$c;->g:Lk/b/f/a/e;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "k2 must be larger than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "k2 must be smaller than k3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "x value invalid in F2m field element"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(I[ILk/b/f/a/e;)V
    .locals 1

    invoke-direct {p0}, Lk/b/f/a/c$a;-><init>()V

    iput p1, p0, Lk/b/f/a/c$c;->e:I

    array-length p1, p2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    iput p1, p0, Lk/b/f/a/c$c;->d:I

    iput-object p2, p0, Lk/b/f/a/c$c;->f:[I

    iput-object p3, p0, Lk/b/f/a/c$c;->g:Lk/b/f/a/e;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lk/b/f/a/c$c;->g:Lk/b/f/a/e;

    invoke-virtual {v0}, Lk/b/f/a/e;->a()I

    move-result v0

    return v0
.end method

.method public a(Lk/b/f/a/c;)Lk/b/f/a/c;
    .locals 7

    iget-object v0, p0, Lk/b/f/a/c$c;->g:Lk/b/f/a/e;

    invoke-virtual {v0}, Lk/b/f/a/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/b/f/a/e;

    check-cast p1, Lk/b/f/a/c$c;

    iget-object p1, p1, Lk/b/f/a/c$c;->g:Lk/b/f/a/e;

    .line 1
    invoke-virtual {p1}, Lk/b/f/a/e;->b()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v1, 0x0

    iget-object v3, v0, Lk/b/f/a/e;->x:[J

    array-length v4, v3

    const/4 v5, 0x0

    if-le v2, v4, :cond_1

    .line 2
    new-array v4, v2, [J

    array-length v6, v3

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iput-object v4, v0, Lk/b/f/a/e;->x:[J

    :cond_1
    iget-object v2, v0, Lk/b/f/a/e;->x:[J

    iget-object p1, p1, Lk/b/f/a/e;->x:[J

    invoke-static {v2, v5, p1, v5, v1}, Lk/b/f/a/e;->a([JI[JII)V

    .line 4
    :goto_0
    new-instance p1, Lk/b/f/a/c$c;

    iget v1, p0, Lk/b/f/a/c$c;->e:I

    iget-object v2, p0, Lk/b/f/a/c$c;->f:[I

    invoke-direct {p1, v1, v2, v0}, Lk/b/f/a/c$c;-><init>(I[ILk/b/f/a/e;)V

    return-object p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lk/b/f/a/c$c;->e:I

    return v0
.end method

.method public b(Lk/b/f/a/c;)Lk/b/f/a/c;
    .locals 0

    invoke-virtual {p1}, Lk/b/f/a/c;->c()Lk/b/f/a/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk/b/f/a/c$c;->c(Lk/b/f/a/c;)Lk/b/f/a/c;

    move-result-object p1

    return-object p1
.end method

.method public c()Lk/b/f/a/c;
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Lk/b/f/a/c$c;

    iget v2, v0, Lk/b/f/a/c$c;->e:I

    iget-object v3, v0, Lk/b/f/a/c$c;->f:[I

    iget-object v4, v0, Lk/b/f/a/c$c;->g:Lk/b/f/a/e;

    .line 1
    invoke-virtual {v4}, Lk/b/f/a/e;->a()I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lk/b/f/a/e;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk/b/f/a/e;

    add-int/lit8 v7, v2, 0x3f

    ushr-int/lit8 v7, v7, 0x6

    new-instance v8, Lk/b/f/a/e;

    invoke-direct {v8, v7}, Lk/b/f/a/e;-><init>(I)V

    iget-object v9, v8, Lk/b/f/a/e;->x:[J

    const/4 v10, 0x0

    invoke-static {v9, v10, v2, v2, v3}, Lk/b/f/a/e;->a([JIII[I)V

    new-instance v9, Lk/b/f/a/e;

    invoke-direct {v9, v7}, Lk/b/f/a/e;-><init>(I)V

    iget-object v11, v9, Lk/b/f/a/e;->x:[J

    const-wide/16 v12, 0x1

    aput-wide v12, v11, v10

    new-instance v11, Lk/b/f/a/e;

    invoke-direct {v11, v7}, Lk/b/f/a/e;-><init>(I)V

    const/4 v7, 0x2

    new-array v12, v7, [I

    aput v5, v12, v10

    add-int/lit8 v5, v2, 0x1

    aput v5, v12, v6

    new-array v5, v7, [Lk/b/f/a/e;

    aput-object v4, v5, v10

    aput-object v8, v5, v6

    new-array v4, v7, [I

    fill-array-data v4, :array_0

    new-array v7, v7, [Lk/b/f/a/e;

    aput-object v9, v7, v10

    aput-object v11, v7, v6

    aget v8, v12, v6

    aget v9, v4, v6

    aget v10, v12, v10

    sub-int v10, v8, v10

    const/4 v11, 0x1

    :goto_0
    if-gez v10, :cond_1

    neg-int v10, v10

    aput v8, v12, v11

    aput v9, v4, v11

    rsub-int/lit8 v11, v11, 0x1

    aget v8, v12, v11

    aget v9, v4, v11

    :cond_1
    aget-object v13, v5, v11

    rsub-int/lit8 v14, v11, 0x1

    aget-object v15, v5, v14

    aget v6, v12, v14

    invoke-virtual {v13, v15, v6, v10}, Lk/b/f/a/e;->a(Lk/b/f/a/e;II)V

    aget-object v6, v5, v11

    invoke-virtual {v6, v8}, Lk/b/f/a/e;->a(I)I

    move-result v6

    if-nez v6, :cond_2

    aget-object v4, v7, v14

    .line 2
    :goto_1
    invoke-direct {v1, v2, v3, v4}, Lk/b/f/a/c$c;-><init>(I[ILk/b/f/a/e;)V

    return-object v1

    .line 3
    :cond_2
    aget v13, v4, v14

    aget-object v15, v7, v11

    aget-object v14, v7, v14

    invoke-virtual {v15, v14, v13, v10}, Lk/b/f/a/e;->a(Lk/b/f/a/e;II)V

    add-int/2addr v13, v10

    if-le v13, v9, :cond_3

    move v9, v13

    goto :goto_2

    :cond_3
    if-ne v13, v9, :cond_4

    aget-object v13, v7, v11

    invoke-virtual {v13, v9}, Lk/b/f/a/e;->a(I)I

    move-result v9

    :cond_4
    :goto_2
    sub-int v8, v6, v8

    add-int/2addr v10, v8

    move v8, v6

    const/4 v6, 0x1

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method public c(Lk/b/f/a/c;)Lk/b/f/a/c;
    .locals 30

    move-object/from16 v0, p0

    new-instance v1, Lk/b/f/a/c$c;

    iget v2, v0, Lk/b/f/a/c$c;->e:I

    iget-object v3, v0, Lk/b/f/a/c$c;->f:[I

    iget-object v4, v0, Lk/b/f/a/c$c;->g:Lk/b/f/a/e;

    move-object/from16 v5, p1

    check-cast v5, Lk/b/f/a/c$c;

    iget-object v5, v5, Lk/b/f/a/c$c;->g:Lk/b/f/a/e;

    .line 4
    invoke-virtual {v4}, Lk/b/f/a/e;->a()I

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_b

    :cond_0
    invoke-virtual {v5}, Lk/b/f/a/e;->a()I

    move-result v7

    if-nez v7, :cond_1

    :goto_0
    move-object v4, v5

    goto/16 :goto_b

    :cond_1
    if-le v6, v7, :cond_2

    move/from16 v29, v7

    move v7, v6

    move/from16 v6, v29

    goto :goto_1

    :cond_2
    move-object/from16 v29, v5

    move-object v5, v4

    move-object/from16 v4, v29

    :goto_1
    add-int/lit8 v8, v6, 0x3f

    ushr-int/lit8 v8, v8, 0x6

    add-int/lit8 v9, v7, 0x3f

    ushr-int/lit8 v9, v9, 0x6

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x3e

    ushr-int/lit8 v6, v6, 0x6

    const-wide/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x1

    if-ne v8, v14, :cond_8

    iget-object v5, v5, Lk/b/f/a/e;->x:[J

    aget-wide v7, v5, v15

    const-wide/16 v18, 0x1

    cmp-long v5, v7, v18

    if-nez v5, :cond_3

    goto/16 :goto_b

    :cond_3
    new-array v5, v6, [J

    iget-object v4, v4, Lk/b/f/a/e;->x:[J

    and-long v10, v7, v18

    cmp-long v12, v10, v16

    if-eqz v12, :cond_4

    .line 5
    invoke-static {v5, v15, v4, v15, v9}, Lk/b/f/a/e;->a([JI[JII)V

    :cond_4
    const/16 v20, 0x1

    :goto_2
    ushr-long/2addr v7, v14

    cmp-long v10, v7, v16

    if-eqz v10, :cond_7

    and-long v10, v7, v18

    cmp-long v12, v10, v16

    if-eqz v12, :cond_5

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object v10, v5

    move-object v12, v4

    const/16 v21, 0x1

    move v14, v9

    const/4 v0, 0x0

    move/from16 v15, v20

    invoke-static/range {v10 .. v15}, Lk/b/f/a/e;->a([JI[JIII)J

    move-result-wide v10

    cmp-long v12, v10, v16

    if-eqz v12, :cond_6

    add-int/lit8 v12, v9, 0x0

    aget-wide v13, v5, v12

    xor-long/2addr v10, v13

    aput-wide v10, v5, v12

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    const/16 v21, 0x1

    :cond_6
    :goto_3
    add-int/lit8 v20, v20, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    .line 6
    invoke-static {v5, v0, v6, v2, v3}, Lk/b/f/a/e;->b([JIII[I)I

    move-result v4

    new-instance v6, Lk/b/f/a/e;

    invoke-direct {v6, v5, v0, v4}, Lk/b/f/a/e;-><init>([JII)V

    move-object v4, v6

    goto/16 :goto_b

    :cond_8
    const/4 v0, 0x0

    const/16 v21, 0x1

    add-int/lit8 v7, v7, 0x7

    add-int/lit8 v7, v7, 0x3f

    ushr-int/lit8 v7, v7, 0x6

    const/16 v15, 0x10

    new-array v14, v15, [I

    shl-int/lit8 v13, v7, 0x4

    .line 7
    new-array v12, v13, [J

    aput v7, v14, v21

    iget-object v4, v4, Lk/b/f/a/e;->x:[J

    invoke-static {v4, v0, v12, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x2

    move v9, v7

    :goto_4
    if-ge v4, v15, :cond_b

    add-int/2addr v9, v7

    aput v9, v14, v4

    and-int/lit8 v10, v4, 0x1

    if-nez v10, :cond_9

    ushr-int/lit8 v11, v9, 0x1

    const/16 v18, 0x1

    move-object v10, v12

    move-object/from16 v19, v12

    move v0, v13

    move v13, v9

    move-object/from16 v21, v14

    move v14, v7

    const/16 v22, 0x10

    move/from16 v15, v18

    invoke-static/range {v10 .. v15}, Lk/b/f/a/e;->c([JI[JIII)J

    goto :goto_6

    :cond_9
    move-object/from16 v19, v12

    move v0, v13

    move-object/from16 v21, v14

    const/16 v22, 0x10

    sub-int v10, v9, v7

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v7, :cond_a

    add-int v11, v9, v15

    add-int v12, v7, v15

    .line 8
    aget-wide v12, v19, v12

    add-int v14, v10, v15

    aget-wide v23, v19, v14

    xor-long v12, v12, v23

    aput-wide v12, v19, v11

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    add-int/lit8 v4, v4, 0x1

    move v13, v0

    move-object/from16 v12, v19

    move-object/from16 v14, v21

    const/4 v0, 0x0

    const/16 v15, 0x10

    goto :goto_4

    :cond_b
    move-object/from16 v19, v12

    move v0, v13

    move-object/from16 v21, v14

    .line 9
    new-array v4, v0, [J

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x4

    move-object/from16 v22, v19

    move-object/from16 v24, v4

    move/from16 v26, v0

    invoke-static/range {v22 .. v27}, Lk/b/f/a/e;->c([JI[JIII)J

    iget-object v0, v5, Lk/b/f/a/e;->x:[J

    shl-int/lit8 v5, v6, 0x3

    new-array v9, v5, [J

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v8, :cond_e

    aget-wide v10, v0, v15

    move v12, v15

    :goto_8
    long-to-int v13, v10

    and-int/lit8 v13, v13, 0xf

    const/4 v14, 0x4

    ushr-long/2addr v10, v14

    long-to-int v14, v10

    and-int/lit8 v14, v14, 0xf

    aget v13, v21, v13

    aget v14, v21, v14

    move-object/from16 v18, v0

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v7, :cond_c

    add-int v22, v12, v0

    .line 10
    aget-wide v23, v9, v22

    add-int v25, v13, v0

    aget-wide v25, v19, v25

    add-int v27, v14, v0

    aget-wide v27, v4, v27

    xor-long v25, v25, v27

    xor-long v23, v23, v25

    aput-wide v23, v9, v22

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_c
    const/4 v0, 0x4

    ushr-long/2addr v10, v0

    cmp-long v0, v10, v16

    if-nez v0, :cond_d

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v18

    goto :goto_7

    :cond_d
    add-int/2addr v12, v6

    move-object/from16 v0, v18

    goto :goto_8

    :cond_e
    :goto_a
    sub-int/2addr v5, v6

    if-eqz v5, :cond_f

    sub-int v11, v5, v6

    const/16 v15, 0x8

    move-object v10, v9

    move-object v12, v9

    move v13, v5

    move v14, v6

    .line 11
    invoke-static/range {v10 .. v15}, Lk/b/f/a/e;->a([JI[JIII)J

    goto :goto_a

    :cond_f
    const/4 v0, 0x0

    .line 12
    invoke-static {v9, v0, v6, v2, v3}, Lk/b/f/a/e;->b([JIII[I)I

    move-result v4

    new-instance v5, Lk/b/f/a/e;

    invoke-direct {v5, v9, v0, v4}, Lk/b/f/a/e;-><init>([JII)V

    goto/16 :goto_0

    .line 13
    :goto_b
    invoke-direct {v1, v2, v3, v4}, Lk/b/f/a/c$c;-><init>(I[ILk/b/f/a/e;)V

    return-object v1
.end method

.method public d()Z
    .locals 9

    iget-object v0, p0, Lk/b/f/a/c$c;->g:Lk/b/f/a/e;

    .line 1
    iget-object v0, v0, Lk/b/f/a/e;->x:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-wide v3, v0, v2

    const-wide/16 v7, 0x0

    cmp-long v5, v3, v7

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public e()Z
    .locals 8

    iget-object v0, p0, Lk/b/f/a/c$c;->g:Lk/b/f/a/e;

    .line 1
    iget-object v0, v0, Lk/b/f/a/e;->x:[J

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-wide v3, v0, v2

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lk/b/f/a/c$c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lk/b/f/a/c$c;

    iget v1, p0, Lk/b/f/a/c$c;->e:I

    iget v3, p1, Lk/b/f/a/c$c;->e:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lk/b/f/a/c$c;->d:I

    iget v3, p1, Lk/b/f/a/c$c;->d:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lk/b/f/a/c$c;->f:[I

    iget-object v3, p1, Lk/b/f/a/c$c;->f:[I

    .line 1
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    iget-object v1, p0, Lk/b/f/a/c$c;->g:Lk/b/f/a/e;

    iget-object p1, p1, Lk/b/f/a/c$c;->g:Lk/b/f/a/e;

    invoke-virtual {v1, p1}, Lk/b/f/a/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Lk/b/f/a/c;
    .locals 0

    return-object p0
.end method

.method public g()Lk/b/f/a/c;
    .locals 13

    new-instance v0, Lk/b/f/a/c$c;

    iget v1, p0, Lk/b/f/a/c$c;->e:I

    iget-object v2, p0, Lk/b/f/a/c$c;->f:[I

    iget-object v3, p0, Lk/b/f/a/c$c;->g:Lk/b/f/a/e;

    .line 1
    invoke-virtual {v3}, Lk/b/f/a/e;->b()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    shl-int/lit8 v4, v4, 0x1

    new-array v5, v4, [J

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_1

    iget-object v8, v3, Lk/b/f/a/e;->x:[J

    ushr-int/lit8 v9, v7, 0x1

    aget-wide v9, v8, v9

    add-int/lit8 v8, v7, 0x1

    long-to-int v11, v9

    invoke-static {v11}, Lk/b/f/a/e;->b(I)J

    move-result-wide v11

    aput-wide v11, v5, v7

    add-int/lit8 v7, v8, 0x1

    const/16 v11, 0x20

    ushr-long/2addr v9, v11

    long-to-int v10, v9

    invoke-static {v10}, Lk/b/f/a/e;->b(I)J

    move-result-wide v9

    aput-wide v9, v5, v8

    goto :goto_0

    :cond_1
    new-instance v3, Lk/b/f/a/e;

    invoke-static {v5, v6, v4, v1, v2}, Lk/b/f/a/e;->b([JIII[I)I

    move-result v4

    invoke-direct {v3, v5, v6, v4}, Lk/b/f/a/e;-><init>([JII)V

    .line 2
    :goto_1
    invoke-direct {v0, v1, v2, v3}, Lk/b/f/a/c$c;-><init>(I[ILk/b/f/a/e;)V

    return-object v0
.end method

.method public h()Ljava/math/BigInteger;
    .locals 15

    iget-object v0, p0, Lk/b/f/a/c$c;->g:Lk/b/f/a/e;

    .line 1
    invoke-virtual {v0}, Lk/b/f/a/e;->b()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lk/b/f/a/a;->a:Ljava/math/BigInteger;

    goto :goto_4

    :cond_0
    iget-object v2, v0, Lk/b/f/a/e;->x:[J

    add-int/lit8 v3, v1, -0x1

    aget-wide v4, v2, v3

    const/16 v2, 0x8

    new-array v6, v2, [B

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v9, 0x7

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const/4 v12, 0x1

    if-ltz v9, :cond_3

    mul-int/lit8 v13, v9, 0x8

    ushr-long v13, v4, v13

    long-to-int v14, v13

    int-to-byte v13, v14

    if-nez v11, :cond_1

    if-eqz v13, :cond_2

    :cond_1
    add-int/lit8 v11, v10, 0x1

    aput-byte v13, v6, v10

    move v10, v11

    const/4 v11, 0x1

    :cond_2
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_3
    mul-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v10

    new-array v2, v3, [B

    :goto_1
    if-ge v8, v10, :cond_4

    aget-byte v3, v6, v8

    aput-byte v3, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, -0x2

    :goto_2
    if-ltz v1, :cond_6

    iget-object v3, v0, Lk/b/f/a/e;->x:[J

    aget-wide v4, v3, v1

    const/4 v3, 0x7

    :goto_3
    if-ltz v3, :cond_5

    add-int/lit8 v6, v10, 0x1

    mul-int/lit8 v8, v3, 0x8

    ushr-long v8, v4, v8

    long-to-int v9, v8

    int-to-byte v8, v9

    aput-byte v8, v2, v10

    add-int/lit8 v3, v3, -0x1

    move v10, v6

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v12, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    :goto_4
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lk/b/f/a/c$c;->g:Lk/b/f/a/e;

    invoke-virtual {v0}, Lk/b/f/a/e;->hashCode()I

    move-result v0

    iget v1, p0, Lk/b/f/a/c$c;->e:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lk/b/f/a/c$c;->f:[I

    invoke-static {v1}, Lk/b/c/e/a;->b([I)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
