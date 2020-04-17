.class public abstract Li/a/b/l/c;
.super Li/a/b/l/b;
.source "SourceFile"


# instance fields
.field public w:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Li/a/b/l/b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a([Z)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Li/a/b/l/b;->f:I

    .line 2
    invoke-virtual/range {p0 .. p0}, Li/a/b/l/b;->c()V

    .line 3
    invoke-virtual/range {p0 .. p0}, Li/a/b/l/b;->f()V

    .line 4
    iget-char v2, v0, Li/a/b/l/b;->a:C

    const/16 v3, 0x2d

    const/16 v4, 0x65

    const/16 v5, 0x2e

    const/16 v6, 0x1a

    const/16 v7, 0x7e

    const/16 v8, 0x30

    const/16 v9, 0x45

    const/4 v10, 0x1

    if-eq v2, v5, :cond_13

    if-eq v2, v9, :cond_13

    if-eq v2, v4, :cond_13

    .line 5
    invoke-virtual/range {p0 .. p0}, Li/a/b/l/b;->g()V

    .line 6
    iget-char v2, v0, Li/a/b/l/b;->a:C

    if-ltz v2, :cond_1

    if-ge v2, v7, :cond_1

    aget-boolean v4, p1, v2

    if-nez v4, :cond_1

    if-eq v2, v6, :cond_1

    .line 7
    invoke-virtual/range {p0 .. p1}, Li/a/b/l/b;->b([Z)V

    .line 8
    iget v2, v0, Li/a/b/l/b;->f:I

    invoke-virtual {v0, v1, v2}, Li/a/b/l/c;->a(II)V

    .line 9
    iget-boolean v1, v0, Li/a/b/l/b;->i:Z

    if-eqz v1, :cond_0

    .line 10
    iget-object v1, v0, Li/a/b/l/b;->e:Ljava/lang/String;

    return-object v1

    .line 11
    :cond_0
    new-instance v1, Li/a/b/l/e;

    iget v2, v0, Li/a/b/l/b;->f:I

    iget-object v3, v0, Li/a/b/l/b;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v10, v3}, Li/a/b/l/e;-><init>(IILjava/lang/Object;)V

    throw v1

    .line 12
    :cond_1
    iget v2, v0, Li/a/b/l/b;->f:I

    invoke-virtual {v0, v1, v2}, Li/a/b/l/c;->a(II)V

    .line 13
    iget-object v2, v0, Li/a/b/l/b;->e:Ljava/lang/String;

    .line 14
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v11, 0x0

    .line 15
    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v3, :cond_4

    const/16 v3, 0x14

    .line 16
    iget-boolean v4, v0, Li/a/b/l/b;->g:Z

    if-nez v4, :cond_3

    const/4 v4, 0x3

    if-lt v1, v4, :cond_3

    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_2

    goto :goto_0

    .line 17
    :cond_2
    new-instance v1, Li/a/b/l/e;

    iget v3, v0, Li/a/b/l/b;->f:I

    invoke-direct {v1, v3, v5, v2}, Li/a/b/l/e;-><init>(IILjava/lang/Object;)V

    throw v1

    :cond_3
    :goto_0
    const/4 v4, 0x1

    const/4 v12, 0x1

    goto :goto_2

    .line 18
    :cond_4
    iget-boolean v3, v0, Li/a/b/l/b;->g:Z

    if-nez v3, :cond_6

    const/4 v3, 0x2

    if-lt v1, v3, :cond_6

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v8, :cond_5

    goto :goto_1

    .line 19
    :cond_5
    new-instance v1, Li/a/b/l/e;

    iget v3, v0, Li/a/b/l/b;->f:I

    invoke-direct {v1, v3, v5, v2}, Li/a/b/l/e;-><init>(IILjava/lang/Object;)V

    throw v1

    :cond_6
    :goto_1
    const/16 v3, 0x13

    const/4 v4, 0x0

    const/4 v12, 0x0

    :goto_2
    const/16 v13, 0xa

    if-ge v1, v3, :cond_7

    move v14, v1

    const/4 v15, 0x0

    goto :goto_3

    :cond_7
    if-le v1, v3, :cond_8

    .line 20
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v2, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_7

    :cond_8
    add-int/lit8 v1, v1, -0x1

    move v14, v1

    const/4 v15, 0x1

    :goto_3
    const-wide/16 v5, 0x0

    :goto_4
    const-wide/16 v16, 0xa

    if-lt v4, v14, :cond_12

    if-eqz v15, :cond_e

    const-wide v14, -0xcccccccccccccccL

    cmp-long v1, v5, v14

    if-lez v1, :cond_9

    goto :goto_5

    :cond_9
    if-gez v1, :cond_a

    goto :goto_6

    :cond_a
    if-eqz v12, :cond_b

    .line 21
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x38

    if-le v1, v3, :cond_c

    goto :goto_6

    .line 22
    :cond_b
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x37

    if-le v1, v3, :cond_c

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v10, 0x0

    :goto_6
    if-eqz v10, :cond_d

    .line 23
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v2, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    goto :goto_7

    :cond_d
    mul-long v5, v5, v16

    .line 24
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int/2addr v8, v1

    int-to-long v1, v8

    add-long/2addr v5, v1

    :cond_e
    if-eqz v12, :cond_10

    .line 25
    iget-boolean v1, v0, Li/a/b/l/b;->p:Z

    if-eqz v1, :cond_f

    const-wide/32 v1, -0x80000000

    cmp-long v3, v5, v1

    if-ltz v3, :cond_f

    long-to-int v1, v5

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_7

    .line 27
    :cond_f
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_7

    :cond_10
    neg-long v1, v5

    .line 28
    iget-boolean v3, v0, Li/a/b/l/b;->p:Z

    if-eqz v3, :cond_11

    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v1, v3

    if-gtz v5, :cond_11

    long-to-int v2, v1

    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_7

    .line 30
    :cond_11
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_7
    return-object v1

    :cond_12
    mul-long v5, v5, v16

    add-int/lit8 v1, v4, 0x1

    .line 31
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    rsub-int/lit8 v3, v3, 0x30

    int-to-long v3, v3

    add-long/2addr v5, v3

    move v4, v1

    goto :goto_4

    .line 32
    :cond_13
    iget-char v2, v0, Li/a/b/l/b;->a:C

    if-ne v2, v5, :cond_14

    .line 33
    invoke-virtual/range {p0 .. p0}, Li/a/b/l/b;->c()V

    .line 34
    invoke-virtual/range {p0 .. p0}, Li/a/b/l/b;->f()V

    .line 35
    :cond_14
    iget-char v2, v0, Li/a/b/l/b;->a:C

    if-eq v2, v9, :cond_17

    if-eq v2, v4, :cond_17

    .line 36
    invoke-virtual/range {p0 .. p0}, Li/a/b/l/b;->g()V

    .line 37
    iget-char v2, v0, Li/a/b/l/b;->a:C

    if-ltz v2, :cond_16

    if-ge v2, v7, :cond_16

    aget-boolean v3, p1, v2

    if-nez v3, :cond_16

    if-eq v2, v6, :cond_16

    .line 38
    invoke-virtual/range {p0 .. p1}, Li/a/b/l/b;->b([Z)V

    .line 39
    iget v2, v0, Li/a/b/l/b;->f:I

    invoke-virtual {v0, v1, v2}, Li/a/b/l/c;->a(II)V

    .line 40
    iget-boolean v1, v0, Li/a/b/l/b;->i:Z

    if-eqz v1, :cond_15

    .line 41
    iget-object v1, v0, Li/a/b/l/b;->e:Ljava/lang/String;

    return-object v1

    .line 42
    :cond_15
    new-instance v1, Li/a/b/l/e;

    iget v2, v0, Li/a/b/l/b;->f:I

    iget-object v3, v0, Li/a/b/l/b;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v10, v3}, Li/a/b/l/e;-><init>(IILjava/lang/Object;)V

    throw v1

    .line 43
    :cond_16
    iget v2, v0, Li/a/b/l/b;->f:I

    invoke-virtual {v0, v1, v2}, Li/a/b/l/c;->a(II)V

    .line 44
    invoke-virtual/range {p0 .. p0}, Li/a/b/l/b;->b()Ljava/lang/Number;

    move-result-object v1

    return-object v1

    .line 45
    :cond_17
    iget-object v2, v0, Li/a/b/l/b;->c:Li/a/b/l/b$a;

    invoke-virtual {v2, v9}, Li/a/b/l/b$a;->a(C)V

    .line 46
    invoke-virtual/range {p0 .. p0}, Li/a/b/l/b;->c()V

    .line 47
    iget-char v2, v0, Li/a/b/l/b;->a:C

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_1b

    if-eq v2, v3, :cond_1b

    if-lt v2, v8, :cond_18

    const/16 v3, 0x39

    if-gt v2, v3, :cond_18

    goto :goto_8

    .line 48
    :cond_18
    invoke-virtual/range {p0 .. p1}, Li/a/b/l/b;->b([Z)V

    .line 49
    iget v2, v0, Li/a/b/l/b;->f:I

    invoke-virtual {v0, v1, v2}, Li/a/b/l/c;->a(II)V

    .line 50
    iget-boolean v1, v0, Li/a/b/l/b;->i:Z

    if-eqz v1, :cond_1a

    .line 51
    iget-boolean v1, v0, Li/a/b/l/b;->g:Z

    if-nez v1, :cond_19

    .line 52
    invoke-virtual/range {p0 .. p0}, Li/a/b/l/b;->a()V

    .line 53
    :cond_19
    iget-object v1, v0, Li/a/b/l/b;->e:Ljava/lang/String;

    return-object v1

    .line 54
    :cond_1a
    new-instance v1, Li/a/b/l/e;

    iget v2, v0, Li/a/b/l/b;->f:I

    iget-object v3, v0, Li/a/b/l/b;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v10, v3}, Li/a/b/l/e;-><init>(IILjava/lang/Object;)V

    throw v1

    .line 55
    :cond_1b
    :goto_8
    iget-object v2, v0, Li/a/b/l/b;->c:Li/a/b/l/b$a;

    iget-char v3, v0, Li/a/b/l/b;->a:C

    invoke-virtual {v2, v3}, Li/a/b/l/b$a;->a(C)V

    .line 56
    invoke-virtual/range {p0 .. p0}, Li/a/b/l/b;->c()V

    .line 57
    invoke-virtual/range {p0 .. p0}, Li/a/b/l/b;->f()V

    .line 58
    invoke-virtual/range {p0 .. p0}, Li/a/b/l/b;->g()V

    .line 59
    iget-char v2, v0, Li/a/b/l/b;->a:C

    if-ltz v2, :cond_1d

    if-ge v2, v7, :cond_1d

    aget-boolean v3, p1, v2

    if-nez v3, :cond_1d

    if-eq v2, v6, :cond_1d

    .line 60
    invoke-virtual/range {p0 .. p1}, Li/a/b/l/b;->b([Z)V

    .line 61
    iget v2, v0, Li/a/b/l/b;->f:I

    invoke-virtual {v0, v1, v2}, Li/a/b/l/c;->a(II)V

    .line 62
    iget-boolean v1, v0, Li/a/b/l/b;->i:Z

    if-eqz v1, :cond_1c

    .line 63
    iget-object v1, v0, Li/a/b/l/b;->e:Ljava/lang/String;

    return-object v1

    .line 64
    :cond_1c
    new-instance v1, Li/a/b/l/e;

    iget v2, v0, Li/a/b/l/b;->f:I

    iget-object v3, v0, Li/a/b/l/b;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v10, v3}, Li/a/b/l/e;-><init>(IILjava/lang/Object;)V

    throw v1

    .line 65
    :cond_1d
    iget v2, v0, Li/a/b/l/b;->f:I

    invoke-virtual {v0, v1, v2}, Li/a/b/l/c;->a(II)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Li/a/b/l/b;->b()Ljava/lang/Number;

    move-result-object v1

    return-object v1
.end method

.method public abstract a(II)V
.end method

.method public e()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Li/a/b/l/b;->j:Z

    const/4 v1, 0x0

    const/16 v2, 0x27

    if-nez v0, :cond_1

    iget-char v0, p0, Li/a/b/l/b;->a:C

    if-ne v0, v2, :cond_1

    .line 2
    iget-boolean v0, p0, Li/a/b/l/b;->i:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Li/a/b/l/b;->r:[Z

    .line 4
    iget v1, p0, Li/a/b/l/b;->f:I

    .line 5
    invoke-virtual {p0, v0}, Li/a/b/l/b;->b([Z)V

    .line 6
    iget v0, p0, Li/a/b/l/b;->f:I

    invoke-virtual {p0, v1, v0}, Li/a/b/l/c;->a(II)V

    return-void

    .line 7
    :cond_0
    new-instance v0, Li/a/b/l/e;

    iget v2, p0, Li/a/b/l/b;->f:I

    iget-char v3, p0, Li/a/b/l/b;->a:C

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Li/a/b/l/e;-><init>(IILjava/lang/Object;)V

    throw v0

    .line 8
    :cond_1
    iget-char v0, p0, Li/a/b/l/b;->a:C

    iget v3, p0, Li/a/b/l/b;->f:I

    add-int/lit8 v3, v3, 0x1

    move-object v4, p0

    check-cast v4, Li/a/b/l/d;

    .line 9
    iget-object v5, v4, Li/a/b/l/d;->x:Ljava/lang/String;

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, -0x1

    if-eq v0, v6, :cond_1b

    .line 10
    iget v7, p0, Li/a/b/l/b;->f:I

    add-int/lit8 v7, v7, 0x1

    .line 11
    iget-object v8, v4, Li/a/b/l/d;->x:Ljava/lang/String;

    invoke-virtual {v8, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Li/a/b/l/b;->e:Ljava/lang/String;

    .line 12
    iget-object v4, p0, Li/a/b/l/b;->e:Ljava/lang/String;

    const/16 v7, 0x5c

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/16 v8, 0x7f

    if-ne v4, v6, :cond_8

    .line 13
    iget-boolean v2, p0, Li/a/b/l/b;->n:Z

    if-eqz v2, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    iget-object v2, p0, Li/a/b/l/b;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_3

    .line 15
    :goto_1
    iput v0, p0, Li/a/b/l/b;->f:I

    .line 16
    invoke-virtual {p0}, Li/a/b/l/b;->c()V

    return-void

    .line 17
    :cond_3
    iget-object v4, p0, Li/a/b/l/b;->e:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gez v4, :cond_4

    goto :goto_2

    :cond_4
    const/16 v5, 0x1f

    if-le v4, v5, :cond_7

    if-ne v4, v8, :cond_6

    .line 18
    iget-boolean v5, p0, Li/a/b/l/b;->q:Z

    if-nez v5, :cond_5

    goto :goto_2

    .line 19
    :cond_5
    new-instance v0, Li/a/b/l/e;

    iget v2, p0, Li/a/b/l/b;->f:I

    add-int/2addr v2, v3

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Li/a/b/l/e;-><init>(IILjava/lang/Object;)V

    throw v0

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 20
    :cond_7
    new-instance v0, Li/a/b/l/e;

    iget v2, p0, Li/a/b/l/b;->f:I

    add-int/2addr v2, v3

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Li/a/b/l/e;-><init>(IILjava/lang/Object;)V

    throw v0

    .line 21
    :cond_8
    iget-object v0, p0, Li/a/b/l/b;->c:Li/a/b/l/b$a;

    .line 22
    iput v6, v0, Li/a/b/l/b$a;->b:I

    .line 23
    iget-char v0, p0, Li/a/b/l/b;->a:C

    .line 24
    :goto_3
    invoke-virtual {p0}, Li/a/b/l/b;->c()V

    .line 25
    iget-char v4, p0, Li/a/b/l/b;->a:C

    const/16 v9, 0x22

    if-eq v4, v9, :cond_19

    if-eq v4, v2, :cond_19

    if-eq v4, v7, :cond_d

    if-eq v4, v8, :cond_a

    packed-switch v4, :pswitch_data_0

    goto :goto_4

    .line 26
    :pswitch_0
    new-instance v0, Li/a/b/l/e;

    iget v1, p0, Li/a/b/l/b;->f:I

    add-int/2addr v1, v6

    invoke-direct {v0, v1, v5, v3}, Li/a/b/l/e;-><init>(IILjava/lang/Object;)V

    throw v0

    .line 27
    :pswitch_1
    iget-boolean v4, p0, Li/a/b/l/b;->n:Z

    if-eqz v4, :cond_9

    goto :goto_3

    .line 28
    :cond_9
    new-instance v0, Li/a/b/l/e;

    iget v2, p0, Li/a/b/l/b;->f:I

    iget-char v3, p0, Li/a/b/l/b;->a:C

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Li/a/b/l/e;-><init>(IILjava/lang/Object;)V

    throw v0

    .line 29
    :cond_a
    iget-boolean v4, p0, Li/a/b/l/b;->n:Z

    if-eqz v4, :cond_b

    goto :goto_3

    .line 30
    :cond_b
    iget-boolean v4, p0, Li/a/b/l/b;->q:Z

    if-nez v4, :cond_c

    .line 31
    :goto_4
    iget-object v4, p0, Li/a/b/l/b;->c:Li/a/b/l/b$a;

    iget-char v9, p0, Li/a/b/l/b;->a:C

    invoke-virtual {v4, v9}, Li/a/b/l/b$a;->a(C)V

    goto :goto_3

    .line 32
    :cond_c
    new-instance v0, Li/a/b/l/e;

    iget v2, p0, Li/a/b/l/b;->f:I

    iget-char v3, p0, Li/a/b/l/b;->a:C

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Li/a/b/l/e;-><init>(IILjava/lang/Object;)V

    throw v0

    .line 33
    :cond_d
    invoke-virtual {p0}, Li/a/b/l/b;->c()V

    .line 34
    iget-char v4, p0, Li/a/b/l/b;->a:C

    if-eq v4, v9, :cond_18

    if-eq v4, v2, :cond_17

    const/16 v9, 0x2f

    if-eq v4, v9, :cond_16

    if-eq v4, v7, :cond_15

    const/16 v9, 0x62

    if-eq v4, v9, :cond_14

    const/16 v9, 0x66

    if-eq v4, v9, :cond_13

    const/16 v9, 0x6e

    if-eq v4, v9, :cond_12

    const/16 v9, 0x72

    if-eq v4, v9, :cond_11

    const/16 v9, 0x78

    if-eq v4, v9, :cond_10

    const/16 v9, 0x74

    if-eq v4, v9, :cond_f

    const/16 v9, 0x75

    if-eq v4, v9, :cond_e

    goto :goto_3

    .line 35
    :cond_e
    iget-object v4, p0, Li/a/b/l/b;->c:Li/a/b/l/b$a;

    const/4 v9, 0x4

    invoke-virtual {p0, v9}, Li/a/b/l/b;->a(I)C

    move-result v9

    invoke-virtual {v4, v9}, Li/a/b/l/b$a;->a(C)V

    goto/16 :goto_3

    .line 36
    :cond_f
    iget-object v4, p0, Li/a/b/l/b;->c:Li/a/b/l/b$a;

    const/16 v9, 0x9

    invoke-virtual {v4, v9}, Li/a/b/l/b$a;->a(C)V

    goto/16 :goto_3

    .line 37
    :cond_10
    iget-object v4, p0, Li/a/b/l/b;->c:Li/a/b/l/b$a;

    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Li/a/b/l/b;->a(I)C

    move-result v9

    invoke-virtual {v4, v9}, Li/a/b/l/b$a;->a(C)V

    goto/16 :goto_3

    .line 38
    :cond_11
    iget-object v4, p0, Li/a/b/l/b;->c:Li/a/b/l/b$a;

    const/16 v9, 0xd

    invoke-virtual {v4, v9}, Li/a/b/l/b$a;->a(C)V

    goto/16 :goto_3

    .line 39
    :cond_12
    iget-object v4, p0, Li/a/b/l/b;->c:Li/a/b/l/b$a;

    const/16 v9, 0xa

    invoke-virtual {v4, v9}, Li/a/b/l/b$a;->a(C)V

    goto/16 :goto_3

    .line 40
    :cond_13
    iget-object v4, p0, Li/a/b/l/b;->c:Li/a/b/l/b$a;

    const/16 v9, 0xc

    invoke-virtual {v4, v9}, Li/a/b/l/b$a;->a(C)V

    goto/16 :goto_3

    .line 41
    :cond_14
    iget-object v4, p0, Li/a/b/l/b;->c:Li/a/b/l/b$a;

    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Li/a/b/l/b$a;->a(C)V

    goto/16 :goto_3

    .line 42
    :cond_15
    iget-object v4, p0, Li/a/b/l/b;->c:Li/a/b/l/b$a;

    invoke-virtual {v4, v7}, Li/a/b/l/b$a;->a(C)V

    goto/16 :goto_3

    .line 43
    :cond_16
    iget-object v4, p0, Li/a/b/l/b;->c:Li/a/b/l/b$a;

    invoke-virtual {v4, v9}, Li/a/b/l/b$a;->a(C)V

    goto/16 :goto_3

    .line 44
    :cond_17
    iget-object v4, p0, Li/a/b/l/b;->c:Li/a/b/l/b$a;

    invoke-virtual {v4, v2}, Li/a/b/l/b$a;->a(C)V

    goto/16 :goto_3

    .line 45
    :cond_18
    iget-object v4, p0, Li/a/b/l/b;->c:Li/a/b/l/b$a;

    invoke-virtual {v4, v9}, Li/a/b/l/b$a;->a(C)V

    goto/16 :goto_3

    .line 46
    :cond_19
    iget-char v4, p0, Li/a/b/l/b;->a:C

    if-ne v0, v4, :cond_1a

    .line 47
    invoke-virtual {p0}, Li/a/b/l/b;->c()V

    .line 48
    iget-object v0, p0, Li/a/b/l/b;->c:Li/a/b/l/b$a;

    invoke-virtual {v0}, Li/a/b/l/b$a;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li/a/b/l/b;->e:Ljava/lang/String;

    return-void

    .line 49
    :cond_1a
    iget-object v9, p0, Li/a/b/l/b;->c:Li/a/b/l/b$a;

    invoke-virtual {v9, v4}, Li/a/b/l/b$a;->a(C)V

    goto/16 :goto_3

    .line 50
    :cond_1b
    new-instance v0, Li/a/b/l/e;

    iget v1, p0, Li/a/b/l/c;->w:I

    invoke-direct {v0, v1, v5, v3}, Li/a/b/l/e;-><init>(IILjava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
