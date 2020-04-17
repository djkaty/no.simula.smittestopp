.class public Lk/b/i/b/a/b;
.super Lk/b/i/b/a/a;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:Lk/b/i/d/a/b;

.field public e:Lk/b/i/d/a/e;

.field public f:Lk/b/i/d/a/d;

.field public g:Lk/b/i/d/a/a;


# direct methods
.method public constructor <init>(IILk/b/i/d/a/b;Lk/b/i/d/a/e;Lk/b/i/d/a/d;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static/range {p3 .. p4}, Lk/b/c/e/a;->a(Lk/b/i/d/a/b;Lk/b/i/d/a/e;)Lk/b/i/d/a/a;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v5, p6

    .line 1
    invoke-direct {v0, v4, v5}, Lk/b/i/b/a/a;-><init>(ZLjava/lang/String;)V

    move/from16 v5, p1

    iput v5, v0, Lk/b/i/b/a/b;->b:I

    move/from16 v5, p2

    iput v5, v0, Lk/b/i/b/a/b;->c:I

    iput-object v1, v0, Lk/b/i/b/a/b;->d:Lk/b/i/d/a/b;

    iput-object v2, v0, Lk/b/i/b/a/b;->e:Lk/b/i/d/a/e;

    iput-object v3, v0, Lk/b/i/b/a/b;->g:Lk/b/i/d/a/a;

    move-object/from16 v3, p5

    iput-object v3, v0, Lk/b/i/b/a/b;->f:Lk/b/i/d/a/d;

    .line 2
    invoke-virtual/range {p4 .. p4}, Lk/b/i/d/a/e;->b()I

    move-result v3

    new-array v5, v3, [Lk/b/i/d/a/e;

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    shr-int/lit8 v8, v3, 0x1

    if-ge v7, v8, :cond_0

    shl-int/lit8 v8, v7, 0x1

    add-int/lit8 v9, v8, 0x1

    new-array v9, v9, [I

    aput v4, v9, v8

    new-instance v8, Lk/b/i/d/a/e;

    invoke-direct {v8, v1, v9}, Lk/b/i/d/a/e;-><init>(Lk/b/i/d/a/b;[I)V

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v8, v3, :cond_6

    shl-int/lit8 v7, v8, 0x1

    add-int/lit8 v9, v7, 0x1

    new-array v9, v9, [I

    aput v4, v9, v7

    new-instance v7, Lk/b/i/d/a/e;

    invoke-direct {v7, v1, v9}, Lk/b/i/d/a/e;-><init>(Lk/b/i/d/a/b;[I)V

    .line 3
    iget-object v9, v7, Lk/b/i/d/a/e;->c:[I

    iget-object v10, v2, Lk/b/i/d/a/e;->c:[I

    .line 4
    invoke-static {v10}, Lk/b/i/d/a/e;->a([I)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    array-length v13, v9

    new-array v14, v13, [I

    .line 5
    invoke-static {v10}, Lk/b/i/d/a/e;->a([I)I

    move-result v15

    if-ne v15, v12, :cond_1

    const/4 v15, 0x0

    goto :goto_2

    :cond_1
    aget v15, v10, v15

    .line 6
    :goto_2
    iget-object v4, v7, Lk/b/i/d/a/e;->a:Lk/b/i/d/a/b;

    invoke-virtual {v4, v15}, Lk/b/i/d/a/b;->a(I)I

    move-result v4

    invoke-static {v9, v6, v14, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    invoke-static {v14}, Lk/b/i/d/a/e;->a([I)I

    move-result v9

    if-gt v11, v9, :cond_4

    iget-object v9, v7, Lk/b/i/d/a/e;->a:Lk/b/i/d/a/b;

    .line 7
    invoke-static {v14}, Lk/b/i/d/a/e;->a([I)I

    move-result v13

    if-ne v13, v12, :cond_2

    const/4 v13, 0x0

    goto :goto_4

    :cond_2
    aget v13, v14, v13

    .line 8
    :goto_4
    invoke-virtual {v9, v13, v4}, Lk/b/i/d/a/b;->a(II)I

    move-result v9

    invoke-static {v14}, Lk/b/i/d/a/e;->a([I)I

    move-result v13

    sub-int/2addr v13, v11

    .line 9
    invoke-static {v10}, Lk/b/i/d/a/e;->a([I)I

    move-result v15

    if-ne v15, v12, :cond_3

    const/4 v12, 0x1

    new-array v13, v12, [I

    const/4 v12, 0x0

    goto :goto_5

    :cond_3
    const/4 v12, 0x1

    add-int v16, v15, v13

    add-int/lit8 v6, v16, 0x1

    new-array v6, v6, [I

    add-int/lit8 v15, v15, 0x1

    const/4 v12, 0x0

    invoke-static {v10, v12, v6, v13, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v13, v6

    .line 10
    :goto_5
    invoke-virtual {v7, v13, v9}, Lk/b/i/d/a/e;->a([II)[I

    move-result-object v6

    invoke-virtual {v7, v6, v14}, Lk/b/i/d/a/e;->a([I[I)[I

    move-result-object v14

    const/4 v6, 0x0

    const/4 v12, -0x1

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    .line 11
    new-instance v4, Lk/b/i/d/a/e;

    iget-object v6, v7, Lk/b/i/d/a/e;->a:Lk/b/i/d/a/b;

    invoke-direct {v4, v6, v14}, Lk/b/i/d/a/e;-><init>(Lk/b/i/d/a/b;[I)V

    .line 12
    aput-object v4, v5, v8

    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    goto :goto_1

    .line 13
    :cond_5
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Division by zero"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const/4 v12, 0x0

    .line 14
    invoke-virtual/range {p4 .. p4}, Lk/b/i/d/a/e;->b()I

    move-result v2

    new-array v3, v2, [Lk/b/i/d/a/e;

    add-int/lit8 v4, v2, -0x1

    move v6, v4

    :goto_6
    if-ltz v6, :cond_7

    new-instance v7, Lk/b/i/d/a/e;

    aget-object v8, v5, v6

    invoke-direct {v7, v8}, Lk/b/i/d/a/e;-><init>(Lk/b/i/d/a/e;)V

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    :cond_7
    new-array v5, v2, [Lk/b/i/d/a/e;

    :goto_7
    if-ltz v4, :cond_8

    new-instance v6, Lk/b/i/d/a/e;

    invoke-direct {v6, v1, v4}, Lk/b/i/d/a/e;-><init>(Lk/b/i/d/a/b;I)V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_7

    :cond_8
    const/4 v4, 0x0

    :goto_8
    if-ge v4, v2, :cond_f

    aget-object v6, v3, v4

    invoke-virtual {v6, v4}, Lk/b/i/d/a/e;->a(I)I

    move-result v6

    if-nez v6, :cond_c

    add-int/lit8 v6, v4, 0x1

    const/4 v7, 0x0

    :goto_9
    if-ge v6, v2, :cond_a

    aget-object v8, v3, v6

    invoke-virtual {v8, v4}, Lk/b/i/d/a/e;->a(I)I

    move-result v8

    if-eqz v8, :cond_9

    .line 15
    aget-object v7, v3, v4

    aget-object v8, v3, v6

    aput-object v8, v3, v4

    aput-object v7, v3, v6

    aget-object v7, v5, v4

    aget-object v8, v5, v6

    aput-object v8, v5, v4

    aput-object v7, v5, v6

    move v6, v2

    const/4 v7, 0x1

    :cond_9
    const/4 v8, 0x1

    add-int/2addr v6, v8

    goto :goto_9

    :cond_a
    const/4 v8, 0x1

    if-eqz v7, :cond_b

    goto :goto_a

    .line 16
    :cond_b
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Squaring matrix is not invertible."

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    const/4 v8, 0x1

    :goto_a
    aget-object v6, v3, v4

    invoke-virtual {v6, v4}, Lk/b/i/d/a/e;->a(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lk/b/i/d/a/b;->a(I)I

    move-result v6

    aget-object v7, v3, v4

    invoke-virtual {v7, v6}, Lk/b/i/d/a/e;->b(I)V

    aget-object v7, v5, v4

    invoke-virtual {v7, v6}, Lk/b/i/d/a/e;->b(I)V

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v2, :cond_e

    if-eq v6, v4, :cond_d

    aget-object v7, v3, v6

    invoke-virtual {v7, v4}, Lk/b/i/d/a/e;->a(I)I

    move-result v7

    if-eqz v7, :cond_d

    aget-object v9, v3, v4

    invoke-virtual {v9, v7}, Lk/b/i/d/a/e;->c(I)Lk/b/i/d/a/e;

    move-result-object v9

    aget-object v10, v5, v4

    invoke-virtual {v10, v7}, Lk/b/i/d/a/e;->c(I)Lk/b/i/d/a/e;

    move-result-object v7

    aget-object v10, v3, v6

    .line 17
    iget-object v11, v10, Lk/b/i/d/a/e;->c:[I

    iget-object v9, v9, Lk/b/i/d/a/e;->c:[I

    invoke-virtual {v10, v11, v9}, Lk/b/i/d/a/e;->a([I[I)[I

    move-result-object v9

    iput-object v9, v10, Lk/b/i/d/a/e;->c:[I

    invoke-virtual {v10}, Lk/b/i/d/a/e;->a()V

    .line 18
    aget-object v9, v5, v6

    .line 19
    iget-object v10, v9, Lk/b/i/d/a/e;->c:[I

    iget-object v7, v7, Lk/b/i/d/a/e;->c:[I

    invoke-virtual {v9, v10, v7}, Lk/b/i/d/a/e;->a([I[I)[I

    move-result-object v7

    iput-object v7, v9, Lk/b/i/d/a/e;->c:[I

    invoke-virtual {v9}, Lk/b/i/d/a/e;->a()V

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    :cond_f
    return-void
.end method
