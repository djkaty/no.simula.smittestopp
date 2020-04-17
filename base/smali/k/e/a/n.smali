.class public Lk/e/a/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lk/e/a/q;

.field public b:[I

.field public c:[I

.field public d:[I

.field public e:[I

.field public f:S

.field public g:S

.field public h:I

.field public i:[I


# direct methods
.method public constructor <init>(Lk/e/a/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk/e/a/n;->a:Lk/e/a/q;

    return-void
.end method

.method public static a(Lk/e/a/x;Ljava/lang/Object;)I
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/high16 p0, 0x400000

    .line 2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    or-int/2addr p0, p1

    return p0

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lk/e/a/y;->c(Ljava/lang/String;)Lk/e/a/y;

    move-result-object p1

    invoke-virtual {p1}, Lk/e/a/y;->a()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, p1, v0}, Lk/e/a/n;->a(Lk/e/a/x;Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_1
    const/high16 v0, 0xc00000

    .line 6
    check-cast p1, Lk/e/a/q;

    iget p1, p1, Lk/e/a/q;->d:I

    const-string v1, ""

    .line 7
    invoke-virtual {p0, v1, p1}, Lk/e/a/x;->a(Ljava/lang/String;I)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public static a(Lk/e/a/x;Ljava/lang/String;I)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 8
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v3, 0x400002

    const/16 v4, 0x46

    if-eq v2, v4, :cond_c

    const/high16 v5, 0x800000

    const/16 v6, 0x4c

    if-eq v2, v6, :cond_b

    const v7, 0x400001

    const/16 v8, 0x53

    if-eq v2, v8, :cond_a

    const/16 v9, 0x56

    if-eq v2, v9, :cond_9

    const/16 v9, 0x49

    if-eq v2, v9, :cond_a

    const v10, 0x400004

    const/16 v11, 0x4a

    if-eq v2, v11, :cond_8

    const/16 v12, 0x5a

    if-eq v2, v12, :cond_a

    const v13, 0x400003

    const/16 v14, 0x5b

    if-eq v2, v14, :cond_0

    packed-switch v2, :pswitch_data_0

    .line 9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    return v13

    :cond_0
    add-int/lit8 v2, p2, 0x1

    .line 10
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v15, v14, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v14, v4, :cond_7

    if-eq v14, v6, :cond_6

    if-eq v14, v8, :cond_5

    if-eq v14, v12, :cond_4

    if-eq v14, v9, :cond_3

    if-eq v14, v11, :cond_2

    packed-switch v14, :pswitch_data_1

    .line 12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_1
    const v3, 0x400003

    goto :goto_1

    :pswitch_2
    const v3, 0x40000b

    goto :goto_1

    :pswitch_3
    const v3, 0x40000a

    goto :goto_1

    :cond_2
    const v3, 0x400004

    goto :goto_1

    :cond_3
    const v3, 0x400001

    goto :goto_1

    :cond_4
    const v3, 0x400009

    goto :goto_1

    :cond_5
    const v3, 0x40000c

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v2, 0x1

    .line 13
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lk/e/a/x;->d(Ljava/lang/String;)I

    move-result v0

    or-int v3, v0, v5

    :cond_7
    :goto_1
    sub-int v2, v2, p2

    shl-int/lit8 v0, v2, 0x1a

    or-int/2addr v0, v3

    return v0

    :cond_8
    return v10

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_a
    :pswitch_4
    return v7

    :cond_b
    add-int/lit8 v2, p2, 0x1

    .line 15
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lk/e/a/x;->d(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v5

    return v0

    :cond_c
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Lk/e/a/x;I[II)Z
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 241
    aget v2, p2, p3

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    return v3

    :cond_0
    const v4, 0x3ffffff

    and-int/2addr v4, v1

    const v5, 0x400005

    if-ne v4, v5, :cond_2

    if-ne v2, v5, :cond_1

    return v3

    :cond_1
    const v1, 0x400005

    :cond_2
    const/4 v4, 0x1

    if-nez v2, :cond_3

    .line 242
    aput v1, p2, p3

    return v4

    :cond_3
    const/high16 v6, -0x4000000

    and-int v7, v2, v6

    const/high16 v8, 0x400000

    const/high16 v9, 0x3c00000

    const/high16 v10, 0x800000

    if-nez v7, :cond_7

    and-int v11, v2, v9

    if-ne v11, v10, :cond_4

    goto :goto_1

    :cond_4
    if-ne v2, v5, :cond_16

    and-int v0, v1, v6

    if-nez v0, :cond_6

    and-int v0, v1, v9

    if-ne v0, v10, :cond_5

    goto :goto_0

    :cond_5
    const/high16 v1, 0x400000

    :cond_6
    :goto_0
    move v8, v1

    goto/16 :goto_7

    :cond_7
    :goto_1
    if-ne v1, v5, :cond_8

    return v3

    :cond_8
    const/high16 v5, -0x400000

    and-int v11, v1, v5

    and-int/2addr v5, v2

    const-string v12, "java/lang/Object"

    if-ne v11, v5, :cond_12

    and-int v5, v2, v9

    if-ne v5, v10, :cond_11

    and-int v5, v1, v6

    or-int/2addr v5, v10

    const v6, 0xfffff

    and-int/2addr v1, v6

    and-int/2addr v6, v2

    const/16 v7, 0x20

    if-ge v1, v6, :cond_9

    int-to-long v8, v1

    int-to-long v10, v6

    goto :goto_2

    :cond_9
    int-to-long v8, v6

    int-to-long v10, v1

    :goto_2
    shl-long/2addr v10, v7

    or-long v16, v8, v10

    add-int v7, v1, v6

    const/16 v8, 0x82

    .line 243
    invoke-static {v8, v7}, Lk/e/a/x;->b(II)I

    move-result v7

    .line 244
    invoke-virtual {v0, v7}, Lk/e/a/x;->b(I)Lk/e/a/x$a;

    move-result-object v9

    :goto_3
    if-eqz v9, :cond_b

    .line 245
    iget v10, v9, Lk/e/a/w;->b:I

    if-ne v10, v8, :cond_a

    iget v10, v9, Lk/e/a/x$a;->h:I

    if-ne v10, v7, :cond_a

    iget-wide v10, v9, Lk/e/a/w;->f:J

    cmp-long v13, v10, v16

    if-nez v13, :cond_a

    .line 246
    iget v0, v9, Lk/e/a/w;->g:I

    goto/16 :goto_5

    .line 247
    :cond_a
    iget-object v9, v9, Lk/e/a/x$a;->i:Lk/e/a/x$a;

    goto :goto_3

    .line 248
    :cond_b
    iget-object v8, v0, Lk/e/a/x;->l:[Lk/e/a/x$a;

    aget-object v1, v8, v1

    iget-object v1, v1, Lk/e/a/w;->e:Ljava/lang/String;

    .line 249
    aget-object v6, v8, v6

    iget-object v6, v6, Lk/e/a/w;->e:Ljava/lang/String;

    .line 250
    iget-object v8, v0, Lk/e/a/x;->a:Lk/e/a/g;

    if-eqz v8, :cond_10

    .line 251
    const-class v8, Lk/e/a/g;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const/16 v9, 0x2e

    const/16 v10, 0x2f

    .line 252
    :try_start_0
    invoke-virtual {v1, v10, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v3, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 253
    :try_start_1
    invoke-virtual {v6, v10, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v3, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 254
    invoke-virtual {v11, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_c

    move-object v12, v1

    goto :goto_4

    .line 255
    :cond_c
    invoke-virtual {v8, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object v12, v6

    goto :goto_4

    .line 256
    :cond_d
    invoke-virtual {v11}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v8}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_4

    .line 257
    :cond_e
    invoke-virtual {v11}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v11

    .line 258
    invoke-virtual {v11, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 259
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    .line 260
    :cond_f
    :goto_4
    invoke-virtual {v0, v12}, Lk/e/a/x;->d(Ljava/lang/String;)I

    move-result v1

    .line 261
    new-instance v6, Lk/e/a/x$a;

    iget v14, v0, Lk/e/a/x;->k:I

    const/16 v15, 0x82

    move-object v13, v6

    move/from16 v18, v7

    invoke-direct/range {v13 .. v18}, Lk/e/a/x$a;-><init>(IIJI)V

    invoke-virtual {v0, v6}, Lk/e/a/x;->b(Lk/e/a/x$a;)Lk/e/a/x$a;

    iput v1, v6, Lk/e/a/w;->g:I

    move v0, v1

    :goto_5
    or-int v8, v5, v0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 262
    new-instance v1, Ljava/lang/TypeNotPresentException;

    invoke-direct {v1, v6, v0}, Ljava/lang/TypeNotPresentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 263
    new-instance v2, Ljava/lang/TypeNotPresentException;

    invoke-direct {v2, v1, v0}, Ljava/lang/TypeNotPresentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_10
    const/4 v0, 0x0

    .line 264
    throw v0

    :cond_11
    and-int/2addr v1, v6

    add-int/2addr v1, v6

    or-int/2addr v1, v10

    .line 265
    invoke-virtual {v0, v12}, Lk/e/a/x;->d(Ljava/lang/String;)I

    move-result v0

    :goto_6
    or-int v8, v1, v0

    goto :goto_7

    :cond_12
    and-int v5, v1, v6

    if-nez v5, :cond_13

    and-int v11, v1, v9

    if-ne v11, v10, :cond_16

    :cond_13
    if-eqz v5, :cond_14

    and-int/2addr v1, v9

    if-eq v1, v10, :cond_14

    add-int/2addr v5, v6

    :cond_14
    if-eqz v7, :cond_15

    and-int v1, v2, v9

    if-eq v1, v10, :cond_15

    add-int/2addr v7, v6

    .line 266
    :cond_15
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    or-int/2addr v1, v10

    invoke-virtual {v0, v12}, Lk/e/a/x;->d(Ljava/lang/String;)I

    move-result v0

    goto :goto_6

    :cond_16
    :goto_7
    if-eq v8, v2, :cond_17

    .line 267
    aput v8, p2, p3

    return v4

    :cond_17
    return v3
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 34
    iget-short v0, p0, Lk/e/a/n;->g:S

    if-lez v0, :cond_0

    .line 35
    iget-object v1, p0, Lk/e/a/n;->e:[I

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lk/e/a/n;->g:S

    aget v0, v1, v0

    return v0

    :cond_0
    const/high16 v0, 0x1400000

    .line 36
    iget-short v1, p0, Lk/e/a/n;->f:S

    add-int/lit8 v1, v1, -0x1

    int-to-short v1, v1

    iput-short v1, p0, Lk/e/a/n;->f:S

    neg-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public final a(I)I
    .locals 3

    .line 27
    iget-object v0, p0, Lk/e/a/n;->d:[I

    const/high16 v1, 0x1000000

    if-eqz v0, :cond_2

    array-length v2, v0

    if-lt p1, v2, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    aget v2, v0, p1

    if-nez v2, :cond_1

    or-int v2, p1, v1

    .line 29
    aput v2, v0, p1

    :cond_1
    return v2

    :cond_2
    :goto_0
    or-int/2addr p1, v1

    return p1
.end method

.method public final a(II)I
    .locals 8

    const/high16 v0, -0x4000000

    and-int/2addr v0, p1

    const/high16 v1, 0x3c00000

    and-int/2addr v1, p1

    const v2, 0x400003

    const/high16 v3, 0x400000

    const v4, 0x400004

    const/high16 v5, 0x100000

    const v6, 0xfffff

    const/high16 v7, 0x1000000

    if-ne v1, v7, :cond_2

    .line 209
    iget-object p2, p0, Lk/e/a/n;->b:[I

    and-int v1, p1, v6

    aget p2, p2, v1

    add-int/2addr v0, p2

    and-int/2addr p1, v5

    if-eqz p1, :cond_0

    if-eq v0, v4, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    :cond_1
    :goto_0
    return v3

    :cond_2
    const/high16 v7, 0x1400000

    if-ne v1, v7, :cond_5

    .line 210
    iget-object v1, p0, Lk/e/a/n;->c:[I

    and-int/2addr v6, p1

    sub-int/2addr p2, v6

    aget p2, v1, p2

    add-int/2addr v0, p2

    and-int/2addr p1, v5

    if-eqz p1, :cond_3

    if-eq v0, v4, :cond_4

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    move v3, v0

    :cond_4
    :goto_1
    return v3

    :cond_5
    return p1
.end method

.method public final a(Lk/e/a/x;I)I
    .locals 8

    const v0, 0x400006

    if-eq p2, v0, :cond_0

    const/high16 v1, -0x400000

    and-int/2addr v1, p2

    const/high16 v2, 0xc00000

    if-ne v1, v2, :cond_5

    :cond_0
    const/4 v1, 0x0

    .line 41
    :goto_0
    iget v2, p0, Lk/e/a/n;->h:I

    if-ge v1, v2, :cond_5

    .line 42
    iget-object v2, p0, Lk/e/a/n;->i:[I

    aget v2, v2, v1

    const/high16 v3, -0x4000000

    and-int/2addr v3, v2

    const/high16 v4, 0x3c00000

    and-int/2addr v4, v2

    const v5, 0xfffff

    and-int v6, v2, v5

    const/high16 v7, 0x1000000

    if-ne v4, v7, :cond_1

    .line 43
    iget-object v2, p0, Lk/e/a/n;->b:[I

    aget v2, v2, v6

    :goto_1
    add-int/2addr v2, v3

    goto :goto_2

    :cond_1
    const/high16 v7, 0x1400000

    if-ne v4, v7, :cond_2

    .line 44
    iget-object v2, p0, Lk/e/a/n;->c:[I

    array-length v4, v2

    sub-int/2addr v4, v6

    aget v2, v2, v4

    goto :goto_1

    :cond_2
    :goto_2
    if-ne p2, v2, :cond_4

    const/high16 v1, 0x800000

    if-ne p2, v0, :cond_3

    .line 45
    iget-object p2, p1, Lk/e/a/x;->d:Ljava/lang/String;

    .line 46
    invoke-virtual {p1, p2}, Lk/e/a/x;->d(Ljava/lang/String;)I

    move-result p1

    :goto_3
    or-int/2addr p1, v1

    return p1

    :cond_3
    and-int/2addr p2, v5

    .line 47
    iget-object v0, p1, Lk/e/a/x;->l:[Lk/e/a/x$a;

    aget-object p2, v0, p2

    .line 48
    iget-object p2, p2, Lk/e/a/w;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lk/e/a/x;->d(Ljava/lang/String;)I

    move-result p1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return p2
.end method

.method public a(IILk/e/a/w;Lk/e/a/x;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const v6, 0x400002

    const/high16 v7, 0x800000

    const v8, 0x400001

    const v9, 0x400003

    const v10, 0x400004

    const/high16 v11, 0x400000

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    const/high16 v12, 0x1400000

    const/high16 v14, 0x1000000

    const/high16 v15, 0x3c00000

    const/4 v5, 0x2

    const/4 v13, 0x1

    packed-switch v1, :pswitch_data_2

    const/16 v14, 0x5b

    const/4 v15, 0x0

    const/4 v12, 0x4

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    .line 49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 50
    :pswitch_0
    invoke-virtual {v0, v2}, Lk/e/a/n;->b(I)V

    .line 51
    iget-object v1, v3, Lk/e/a/w;->e:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lk/e/a/n;->a(Lk/e/a/x;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 52
    :pswitch_1
    iget-object v1, v3, Lk/e/a/w;->e:Ljava/lang/String;

    .line 53
    invoke-virtual/range {p0 .. p0}, Lk/e/a/n;->a()I

    .line 54
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v14, :cond_0

    .line 55
    invoke-virtual {v0, v4, v1}, Lk/e/a/n;->a(Lk/e/a/x;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 56
    :cond_0
    invoke-virtual {v4, v1}, Lk/e/a/x;->d(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lk/e/a/n;->c(I)V

    goto/16 :goto_3

    .line 57
    :pswitch_2
    iget-object v1, v3, Lk/e/a/w;->e:Ljava/lang/String;

    .line 58
    invoke-virtual/range {p0 .. p0}, Lk/e/a/n;->a()I

    .line 59
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v14, :cond_1

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lk/e/a/n;->a(Lk/e/a/x;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    const/high16 v2, 0x4800000

    .line 61
    invoke-virtual {v4, v1}, Lk/e/a/x;->d(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lk/e/a/n;->c(I)V

    goto/16 :goto_3

    .line 62
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lk/e/a/n;->a()I

    packed-switch v2, :pswitch_data_5

    .line 63
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_4
    const v1, 0x4400004

    .line 64
    invoke-virtual {v0, v1}, Lk/e/a/n;->c(I)V

    goto/16 :goto_3

    :pswitch_5
    const v1, 0x4400001

    .line 65
    invoke-virtual {v0, v1}, Lk/e/a/n;->c(I)V

    goto/16 :goto_3

    :pswitch_6
    const v1, 0x440000c

    .line 66
    invoke-virtual {v0, v1}, Lk/e/a/n;->c(I)V

    goto/16 :goto_3

    :pswitch_7
    const v1, 0x440000a

    .line 67
    invoke-virtual {v0, v1}, Lk/e/a/n;->c(I)V

    goto/16 :goto_3

    :pswitch_8
    const v1, 0x4400003

    .line 68
    invoke-virtual {v0, v1}, Lk/e/a/n;->c(I)V

    goto/16 :goto_3

    :pswitch_9
    const v1, 0x4400002

    .line 69
    invoke-virtual {v0, v1}, Lk/e/a/n;->c(I)V

    goto/16 :goto_3

    :pswitch_a
    const v1, 0x440000b

    .line 70
    invoke-virtual {v0, v1}, Lk/e/a/n;->c(I)V

    goto/16 :goto_3

    :pswitch_b
    const v1, 0x4400009

    .line 71
    invoke-virtual {v0, v1}, Lk/e/a/n;->c(I)V

    goto/16 :goto_3

    :pswitch_c
    const/high16 v1, 0xc00000

    .line 72
    iget-object v3, v3, Lk/e/a/w;->e:Ljava/lang/String;

    invoke-virtual {v4, v3, v2}, Lk/e/a/x;->a(Ljava/lang/String;I)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lk/e/a/n;->c(I)V

    goto/16 :goto_3

    .line 73
    :pswitch_d
    iget-object v1, v3, Lk/e/a/w;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lk/e/a/n;->a(Ljava/lang/String;)V

    .line 74
    iget-object v1, v3, Lk/e/a/w;->e:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lk/e/a/n;->a(Lk/e/a/x;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 75
    :pswitch_e
    iget-object v2, v3, Lk/e/a/w;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lk/e/a/n;->a(Ljava/lang/String;)V

    const/16 v2, 0xb8

    if-eq v1, v2, :cond_4

    .line 76
    invoke-virtual/range {p0 .. p0}, Lk/e/a/n;->a()I

    move-result v2

    const/16 v6, 0xb7

    if-ne v1, v6, :cond_4

    .line 77
    iget-object v1, v3, Lk/e/a/w;->d:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v6, 0x3c

    if-ne v1, v6, :cond_4

    .line 78
    iget-object v1, v0, Lk/e/a/n;->i:[I

    if-nez v1, :cond_2

    new-array v1, v5, [I

    .line 79
    iput-object v1, v0, Lk/e/a/n;->i:[I

    .line 80
    :cond_2
    iget-object v1, v0, Lk/e/a/n;->i:[I

    array-length v1, v1

    .line 81
    iget v5, v0, Lk/e/a/n;->h:I

    if-lt v5, v1, :cond_3

    add-int/2addr v5, v13

    mul-int/lit8 v6, v1, 0x2

    .line 82
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    new-array v5, v5, [I

    .line 83
    iget-object v6, v0, Lk/e/a/n;->i:[I

    invoke-static {v6, v15, v5, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iput-object v5, v0, Lk/e/a/n;->i:[I

    .line 85
    :cond_3
    iget-object v1, v0, Lk/e/a/n;->i:[I

    iget v5, v0, Lk/e/a/n;->h:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lk/e/a/n;->h:I

    aput v2, v1, v5

    .line 86
    :cond_4
    iget-object v1, v3, Lk/e/a/w;->e:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lk/e/a/n;->a(Lk/e/a/x;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 87
    :pswitch_f
    iget-object v1, v3, Lk/e/a/w;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lk/e/a/n;->a(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p0 .. p0}, Lk/e/a/n;->a()I

    goto/16 :goto_3

    .line 89
    :pswitch_10
    invoke-virtual {v0, v13}, Lk/e/a/n;->b(I)V

    .line 90
    iget-object v1, v3, Lk/e/a/w;->e:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lk/e/a/n;->a(Lk/e/a/x;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 91
    :pswitch_11
    iget-object v1, v3, Lk/e/a/w;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lk/e/a/n;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 92
    :pswitch_12
    iget-object v1, v3, Lk/e/a/w;->e:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lk/e/a/n;->a(Lk/e/a/x;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 93
    :pswitch_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "JSR/RET are not supported with computeFrames option"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :pswitch_14
    invoke-virtual {v0, v12}, Lk/e/a/n;->b(I)V

    .line 95
    invoke-virtual {v0, v8}, Lk/e/a/n;->c(I)V

    goto/16 :goto_3

    .line 96
    :pswitch_15
    invoke-virtual {v0, v13}, Lk/e/a/n;->b(I)V

    .line 97
    invoke-virtual {v0, v8}, Lk/e/a/n;->c(I)V

    goto/16 :goto_3

    .line 98
    :pswitch_16
    invoke-virtual {v0, v13}, Lk/e/a/n;->b(I)V

    .line 99
    invoke-virtual {v0, v9}, Lk/e/a/n;->c(I)V

    .line 100
    invoke-virtual {v0, v11}, Lk/e/a/n;->c(I)V

    goto/16 :goto_3

    .line 101
    :pswitch_17
    invoke-virtual {v0, v13}, Lk/e/a/n;->b(I)V

    .line 102
    invoke-virtual {v0, v6}, Lk/e/a/n;->c(I)V

    goto/16 :goto_3

    .line 103
    :pswitch_18
    invoke-virtual {v0, v13}, Lk/e/a/n;->b(I)V

    .line 104
    invoke-virtual {v0, v10}, Lk/e/a/n;->c(I)V

    .line 105
    invoke-virtual {v0, v11}, Lk/e/a/n;->c(I)V

    goto/16 :goto_3

    .line 106
    :pswitch_19
    invoke-virtual {v0, v2, v8}, Lk/e/a/n;->b(II)V

    goto/16 :goto_3

    :pswitch_1a
    const/4 v1, 0x3

    .line 107
    invoke-virtual {v0, v1}, Lk/e/a/n;->b(I)V

    .line 108
    invoke-virtual {v0, v10}, Lk/e/a/n;->c(I)V

    .line 109
    invoke-virtual {v0, v11}, Lk/e/a/n;->c(I)V

    goto/16 :goto_3

    .line 110
    :pswitch_1b
    invoke-virtual {v0, v12}, Lk/e/a/n;->b(I)V

    .line 111
    invoke-virtual {v0, v9}, Lk/e/a/n;->c(I)V

    .line 112
    invoke-virtual {v0, v11}, Lk/e/a/n;->c(I)V

    goto/16 :goto_3

    .line 113
    :pswitch_1c
    invoke-virtual {v0, v12}, Lk/e/a/n;->b(I)V

    .line 114
    invoke-virtual {v0, v10}, Lk/e/a/n;->c(I)V

    .line 115
    invoke-virtual {v0, v11}, Lk/e/a/n;->c(I)V

    goto/16 :goto_3

    .line 116
    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Lk/e/a/n;->a()I

    move-result v1

    .line 117
    invoke-virtual/range {p0 .. p0}, Lk/e/a/n;->a()I

    move-result v2

    .line 118
    invoke-virtual {v0, v1}, Lk/e/a/n;->c(I)V

    .line 119
    invoke-virtual {v0, v2}, Lk/e/a/n;->c(I)V

    goto/16 :goto_3

    .line 120
    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Lk/e/a/n;->a()I

    move-result v1

    .line 121
    invoke-virtual/range {p0 .. p0}, Lk/e/a/n;->a()I

    move-result v2

    .line 122
    invoke-virtual/range {p0 .. p0}, Lk/e/a/n;->a()I

    move-result v3

    .line 123
    invoke-virtual/range {p0 .. p0}, Lk/e/a/n;->a()I

    move-result v4

    .line 124
    invoke-virtual {v0, v2}, Lk/e/a/n;->c(I)V

    .line 125
    invoke-virtual {v0, v1}, Lk/e/a/n;->c(I)V

    .line 126
    invoke-virtual {v0, v4}, Lk/e/a/n;->c(I)V

    .line 127
    invoke-virtual {v0, v3}, Lk/e/a/n;->c(I)V

    .line 128
    invoke-virtual {v0, v2}, Lk/e/a/n;->c(I)V

    .line 129
    invoke-virtual {v0, v1}, Lk/e/a/n;->c(I)V

    goto/16 :goto_3

    .line 130
    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Lk/e/a/n;->a()I

    move-result v1

    .line 131
    invoke-virtual/range {p0 .. p0}, Lk/e/a/n;->a()I

    move-result v2

    .line 132
    invoke-virtual/range {p0 .. p0}, Lk/e/a/n;->a()I

    move-result v3

    .line 133
    invoke-virtual {v0, v2}, Lk/e/a/n;->c(I)V

    .line 134
    invoke-virtual {v0, v1}, Lk/e/a/n;->c(I)V

    .line 135
    invoke-virtual {v0, v3}, Lk/e/a/n;->c(I)V

    .line 136
    invoke-virtual {v0, v2}, Lk/e/a/n;->c(I)V

    .line 137
    invoke-virtual {v0, v1}, Lk/e/a/n;->c(I)V

    goto/16 :goto_3

    .line 138
    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Lk/e/a/n;->a()I

    move-result v1

    .line 139
    invoke-virtual/range {p0 .. p0}, Lk/e/a/n;->a()I

    move-result v2

    .line 140
    invoke-virtual {v0, v2}, Lk/e/a/n;->c(I)V

    .line 141
    invoke-virtual {v0, v1}, Lk/e/a/n;->c(I)V

    .line 142
    invoke-virtual {v0, v2}, Lk/e/a/n;->c(I)V

    .line 143
    invoke-virtual {v0, v1}, Lk/e/a/n;->c(I)V

    goto/16 :goto_3

    .line 144
    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Lk/e/a/n;->a()I

    move-result v1

    .line 145
    invoke-virtual/range {p0 .. p0}, Lk/e/a/n;->a()I

    move-result v2

    .line 146
    invoke-virtual/range {p0 .. p0}, Lk/e/a/n;->a()I

    move-result v3

    .line 147
    invoke-virtual {v0, v1}, Lk/e/a/n;->c(I)V

    .line 148
    invoke-virtual {v0, v3}, Lk/e/a/n;->c(I)V

    .line 149
    invoke-virtual {v0, v2}, Lk/e/a/n;->c(I)V

    .line 150
    invoke-virtual {v0, v1}, Lk/e/a/n;->c(I)V

    goto/16 :goto_3

    .line 151
    :pswitch_22
    invoke-virtual/range {p0 .. p0}, Lk/e/a/n;->a()I

    move-result v1

    .line 152
    invoke-virtual/range {p0 .. p0}, Lk/e/a/n;->a()I

    move-result v2

    .line 153
    invoke-virtual {v0, v1}, Lk/e/a/n;->c(I)V

    .line 154
    invoke-virtual {v0, v2}, Lk/e/a/n;->c(I)V

    .line 155
    invoke-virtual {v0, v1}, Lk/e/a/n;->c(I)V

    goto/16 :goto_3

    .line 156
    :pswitch_23
    invoke-virtual/range {p0 .. p0}, Lk/e/a/n;->a()I

    move-result v1

    .line 157
    invoke-virtual {v0, v1}, Lk/e/a/n;->c(I)V

    .line 158
    invoke-virtual {v0, v1}, Lk/e/a/n;->c(I)V

    goto/16 :goto_3

    .line 159
    :pswitch_24
    invoke-virtual {v0, v5}, Lk/e/a/n;->b(I)V

    goto/16 :goto_3

    .line 160
    :pswitch_25
    invoke-virtual {v0, v13}, Lk/e/a/n;->b(I)V

    goto/16 :goto_3

    .line 161
    :pswitch_26
    invoke-virtual {v0, v12}, Lk/e/a/n;->b(I)V

    goto/16 :goto_3

    :pswitch_27
    const/4 v1, 0x3

    .line 162
    invoke-virtual {v0, v1}, Lk/e/a/n;->b(I)V

    goto/16 :goto_3

    .line 163
    :pswitch_28
    invoke-virtual {v0, v13}, Lk/e/a/n;->b(I)V

    .line 164
    invoke-virtual/range {p0 .. p0}, Lk/e/a/n;->a()I

    move-result v1

    .line 165
    invoke-virtual {v0, v2, v1}, Lk/e/a/n;->b(II)V

    add-int/lit8 v1, v2, 0x1

    .line 166
    invoke-virtual {v0, v1, v11}, Lk/e/a/n;->b(II)V

    if-lez v2, :cond_c

    add-int/lit8 v1, v2, -0x1

    .line 167
    invoke-virtual {v0, v1}, Lk/e/a/n;->a(I)I

    move-result v2

    if-eq v2, v10, :cond_7

    if-ne v2, v9, :cond_5

    goto :goto_0

    :cond_5
    and-int v3, v2, v15

    if-eq v3, v14, :cond_6

    if-ne v3, v12, :cond_c

    :cond_6
    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    .line 168
    invoke-virtual {v0, v1, v2}, Lk/e/a/n;->b(II)V

    goto/16 :goto_3

    .line 169
    :cond_7
    :goto_0
    invoke-virtual {v0, v1, v11}, Lk/e/a/n;->b(II)V

    goto/16 :goto_3

    .line 170
    :pswitch_29
    invoke-virtual/range {p0 .. p0}, Lk/e/a/n;->a()I

    move-result v1

    .line 171
    invoke-virtual {v0, v2, v1}, Lk/e/a/n;->b(II)V

    if-lez v2, :cond_c

    add-int/lit8 v1, v2, -0x1

    .line 172
    invoke-virtual {v0, v1}, Lk/e/a/n;->a(I)I

    move-result v2

    if-eq v2, v10, :cond_a

    if-ne v2, v9, :cond_8

    goto :goto_1

    :cond_8
    and-int v3, v2, v15

    if-eq v3, v14, :cond_9

    if-ne v3, v12, :cond_c

    :cond_9
    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    .line 173
    invoke-virtual {v0, v1, v2}, Lk/e/a/n;->b(II)V

    goto/16 :goto_3

    .line 174
    :cond_a
    :goto_1
    invoke-virtual {v0, v1, v11}, Lk/e/a/n;->b(II)V

    goto/16 :goto_3

    .line 175
    :pswitch_2a
    invoke-virtual {v0, v13}, Lk/e/a/n;->b(I)V

    .line 176
    invoke-virtual/range {p0 .. p0}, Lk/e/a/n;->a()I

    move-result v1

    const v2, 0x400005

    if-ne v1, v2, :cond_b

    goto :goto_2

    :cond_b
    const/high16 v2, -0x4000000

    add-int/2addr v1, v2

    .line 177
    :goto_2
    invoke-virtual {v0, v1}, Lk/e/a/n;->c(I)V

    goto/16 :goto_3

    .line 178
    :pswitch_2b
    invoke-virtual {v0, v5}, Lk/e/a/n;->b(I)V

    .line 179
    invoke-virtual {v0, v9}, Lk/e/a/n;->c(I)V

    .line 180
    invoke-virtual {v0, v11}, Lk/e/a/n;->c(I)V

    goto/16 :goto_3

    .line 181
    :pswitch_2c
    invoke-virtual {v0, v5}, Lk/e/a/n;->b(I)V

    .line 182
    invoke-virtual {v0, v6}, Lk/e/a/n;->c(I)V

    goto/16 :goto_3

    .line 183
    :pswitch_2d
    invoke-virtual {v0, v5}, Lk/e/a/n;->b(I)V

    .line 184
    invoke-virtual {v0, v10}, Lk/e/a/n;->c(I)V

    .line 185
    invoke-virtual {v0, v11}, Lk/e/a/n;->c(I)V

    goto/16 :goto_3

    .line 186
    :pswitch_2e
    invoke-virtual {v0, v5}, Lk/e/a/n;->b(I)V

    .line 187
    invoke-virtual {v0, v8}, Lk/e/a/n;->c(I)V

    goto/16 :goto_3

    .line 188
    :pswitch_2f
    invoke-virtual {v0, v2}, Lk/e/a/n;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lk/e/a/n;->c(I)V

    goto/16 :goto_3

    .line 189
    :pswitch_30
    iget v1, v3, Lk/e/a/w;->b:I

    packed-switch v1, :pswitch_data_6

    packed-switch v1, :pswitch_data_7

    .line 190
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 191
    :pswitch_31
    iget-object v1, v3, Lk/e/a/w;->e:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lk/e/a/n;->a(Lk/e/a/x;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_32
    const-string v1, "java/lang/invoke/MethodType"

    .line 192
    invoke-virtual {v4, v1}, Lk/e/a/x;->d(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lk/e/a/n;->c(I)V

    goto :goto_3

    :pswitch_33
    const-string v1, "java/lang/invoke/MethodHandle"

    .line 193
    invoke-virtual {v4, v1}, Lk/e/a/x;->d(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lk/e/a/n;->c(I)V

    goto :goto_3

    :pswitch_34
    const-string v1, "java/lang/String"

    .line 194
    invoke-virtual {v4, v1}, Lk/e/a/x;->d(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lk/e/a/n;->c(I)V

    goto :goto_3

    :pswitch_35
    const-string v1, "java/lang/Class"

    .line 195
    invoke-virtual {v4, v1}, Lk/e/a/x;->d(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lk/e/a/n;->c(I)V

    goto :goto_3

    .line 196
    :pswitch_36
    invoke-virtual {v0, v9}, Lk/e/a/n;->c(I)V

    .line 197
    invoke-virtual {v0, v11}, Lk/e/a/n;->c(I)V

    goto :goto_3

    .line 198
    :pswitch_37
    invoke-virtual {v0, v10}, Lk/e/a/n;->c(I)V

    .line 199
    invoke-virtual {v0, v11}, Lk/e/a/n;->c(I)V

    goto :goto_3

    .line 200
    :pswitch_38
    invoke-virtual {v0, v6}, Lk/e/a/n;->c(I)V

    goto :goto_3

    .line 201
    :pswitch_39
    invoke-virtual {v0, v8}, Lk/e/a/n;->c(I)V

    goto :goto_3

    .line 202
    :pswitch_3a
    invoke-virtual {v0, v9}, Lk/e/a/n;->c(I)V

    .line 203
    invoke-virtual {v0, v11}, Lk/e/a/n;->c(I)V

    goto :goto_3

    .line 204
    :pswitch_3b
    invoke-virtual {v0, v6}, Lk/e/a/n;->c(I)V

    goto :goto_3

    .line 205
    :pswitch_3c
    invoke-virtual {v0, v10}, Lk/e/a/n;->c(I)V

    .line 206
    invoke-virtual {v0, v11}, Lk/e/a/n;->c(I)V

    goto :goto_3

    .line 207
    :pswitch_3d
    invoke-virtual {v0, v8}, Lk/e/a/n;->c(I)V

    goto :goto_3

    :pswitch_3e
    const v1, 0x400005

    .line 208
    invoke-virtual {v0, v1}, Lk/e/a/n;->c(I)V

    :cond_c
    :goto_3
    :pswitch_3f
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3c
        :pswitch_3c
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3a
        :pswitch_3a
        :pswitch_3d
        :pswitch_3d
        :pswitch_30
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_2f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2e
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_29
        :pswitch_28
        :pswitch_29
        :pswitch_28
        :pswitch_29
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4f
        :pswitch_27
        :pswitch_26
        :pswitch_27
        :pswitch_26
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_2e
        :pswitch_1c
        :pswitch_2c
        :pswitch_1b
        :pswitch_2e
        :pswitch_1c
        :pswitch_2c
        :pswitch_1b
        :pswitch_2e
        :pswitch_1c
        :pswitch_2c
        :pswitch_1b
        :pswitch_2e
        :pswitch_1c
        :pswitch_2c
        :pswitch_1b
        :pswitch_2e
        :pswitch_1c
        :pswitch_2c
        :pswitch_1b
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_2e
        :pswitch_1a
        :pswitch_2e
        :pswitch_1a
        :pswitch_2e
        :pswitch_1a
        :pswitch_2e
        :pswitch_1c
        :pswitch_2e
        :pswitch_1c
        :pswitch_2e
        :pswitch_1c
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_2e
        :pswitch_2c
        :pswitch_2b
        :pswitch_15
        :pswitch_18
        :pswitch_16
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_14
        :pswitch_2e
        :pswitch_2e
        :pswitch_14
        :pswitch_14
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_3f
        :pswitch_13
        :pswitch_13
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_25
        :pswitch_24
        :pswitch_25
        :pswitch_3f
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_3
        :pswitch_2
        :pswitch_15
        :pswitch_25
        :pswitch_1
        :pswitch_15
        :pswitch_25
        :pswitch_25
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xc5
        :pswitch_0
        :pswitch_25
        :pswitch_25
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x4
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x3
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xf
        :pswitch_33
        :pswitch_32
        :pswitch_31
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x28

    if-ne v0, v3, :cond_0

    .line 38
    invoke-static {p1}, Lk/e/a/y;->b(Ljava/lang/String;)I

    move-result p1

    shr-int/2addr p1, v2

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lk/e/a/n;->b(I)V

    goto :goto_1

    :cond_0
    const/16 p1, 0x4a

    if-eq v0, p1, :cond_2

    const/16 p1, 0x44

    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0, v1}, Lk/e/a/n;->b(I)V

    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Lk/e/a/n;->b(I)V

    :goto_1
    return-void
.end method

.method public final a(Lk/e/a/t;)V
    .locals 14

    .line 268
    iget-object v0, p0, Lk/e/a/n;->b:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    .line 269
    :goto_1
    array-length v5, v0

    const v6, 0x400003

    const v7, 0x400004

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ge v2, v5, :cond_3

    .line 270
    aget v5, v0, v2

    if-eq v5, v7, :cond_1

    if-ne v5, v6, :cond_0

    goto :goto_2

    :cond_0
    const/4 v8, 0x1

    :cond_1
    :goto_2
    add-int/2addr v2, v8

    const/high16 v6, 0x400000

    add-int/lit8 v4, v4, 0x1

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr v3, v4

    goto :goto_0

    .line 271
    :cond_3
    iget-object v2, p0, Lk/e/a/n;->c:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 272
    :goto_3
    array-length v10, v2

    if-ge v4, v10, :cond_6

    .line 273
    aget v10, v2, v4

    if-eq v10, v7, :cond_5

    if-ne v10, v6, :cond_4

    goto :goto_4

    :cond_4
    const/4 v10, 0x1

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v10, 0x2

    :goto_5
    add-int/2addr v4, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 274
    :cond_6
    iget-object v4, p0, Lk/e/a/n;->a:Lk/e/a/q;

    iget v4, v4, Lk/e/a/q;->d:I

    invoke-virtual {p1, v4, v3, v5}, Lk/e/a/t;->a(III)I

    const/4 v4, 0x3

    const/4 v10, 0x0

    :goto_6
    add-int/lit8 v11, v3, -0x1

    if-lez v3, :cond_9

    .line 275
    aget v3, v0, v10

    if-eq v3, v7, :cond_8

    if-ne v3, v6, :cond_7

    goto :goto_7

    :cond_7
    const/4 v12, 0x1

    goto :goto_8

    :cond_8
    :goto_7
    const/4 v12, 0x2

    :goto_8
    add-int/2addr v10, v12

    add-int/lit8 v12, v4, 0x1

    .line 276
    iget-object v13, p1, Lk/e/a/t;->W:[I

    aput v3, v13, v4

    move v3, v11

    move v4, v12

    goto :goto_6

    :cond_9
    :goto_9
    add-int/lit8 v0, v5, -0x1

    if-lez v5, :cond_c

    .line 277
    aget v3, v2, v1

    if-eq v3, v7, :cond_b

    if-ne v3, v6, :cond_a

    goto :goto_a

    :cond_a
    const/4 v5, 0x1

    goto :goto_b

    :cond_b
    :goto_a
    const/4 v5, 0x2

    :goto_b
    add-int/2addr v1, v5

    add-int/lit8 v5, v4, 0x1

    .line 278
    iget-object v10, p1, Lk/e/a/t;->W:[I

    aput v3, v10, v4

    move v4, v5

    move v5, v0

    goto :goto_9

    .line 279
    :cond_c
    invoke-virtual {p1}, Lk/e/a/t;->b()V

    return-void
.end method

.method public final a(Lk/e/a/x;ILjava/lang/String;I)V
    .locals 7

    .line 17
    new-array v0, p4, [I

    iput-object v0, p0, Lk/e/a/n;->b:[I

    const/4 v1, 0x0

    new-array v2, v1, [I

    .line 18
    iput-object v2, p0, Lk/e/a/n;->c:[I

    and-int/lit8 v2, p2, 0x8

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const/high16 v2, 0x40000

    and-int/2addr p2, v2

    if-nez p2, :cond_0

    const/high16 p2, 0x800000

    .line 19
    iget-object v2, p1, Lk/e/a/x;->d:Ljava/lang/String;

    .line 20
    invoke-virtual {p1, v2}, Lk/e/a/x;->d(Ljava/lang/String;)I

    move-result v2

    or-int/2addr p2, v2

    aput p2, v0, v1

    goto :goto_0

    :cond_0
    const p2, 0x400006

    .line 21
    aput p2, v0, v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 22
    :goto_0
    invoke-static {p3}, Lk/e/a/y;->a(Ljava/lang/String;)[Lk/e/a/y;

    move-result-object p2

    array-length p3, p2

    const/4 v0, 0x0

    :goto_1
    const/high16 v2, 0x400000

    if-ge v0, p3, :cond_4

    aget-object v4, p2, v0

    .line 23
    invoke-virtual {v4}, Lk/e/a/y;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v1}, Lk/e/a/n;->a(Lk/e/a/x;Ljava/lang/String;I)I

    move-result v4

    .line 24
    iget-object v5, p0, Lk/e/a/n;->b:[I

    add-int/lit8 v6, v3, 0x1

    aput v4, v5, v3

    const v3, 0x400004

    if-eq v4, v3, :cond_3

    const v3, 0x400003

    if-ne v4, v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v6

    goto :goto_3

    .line 25
    :cond_3
    :goto_2
    iget-object v3, p0, Lk/e/a/n;->b:[I

    add-int/lit8 v4, v6, 0x1

    aput v2, v3, v6

    move v3, v4

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_4
    if-ge v3, p4, :cond_5

    .line 26
    iget-object p1, p0, Lk/e/a/n;->b:[I

    add-int/lit8 p2, v3, 0x1

    aput v2, p1, v3

    move v3, p2

    goto :goto_4

    :cond_5
    return-void
.end method

.method public final a(Lk/e/a/x;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_0

    invoke-static {p2}, Lk/e/a/y;->d(Ljava/lang/String;)I

    move-result v0

    .line 31
    :cond_0
    invoke-static {p1, p2, v0}, Lk/e/a/n;->a(Lk/e/a/x;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_2

    .line 32
    invoke-virtual {p0, p1}, Lk/e/a/n;->c(I)V

    const p2, 0x400004

    if-eq p1, p2, :cond_1

    const p2, 0x400003

    if-ne p1, p2, :cond_2

    :cond_1
    const/high16 p1, 0x400000

    .line 33
    invoke-virtual {p0, p1}, Lk/e/a/n;->c(I)V

    :cond_2
    return-void
.end method

.method public final a(Lk/e/a/x;Lk/e/a/n;I)Z
    .locals 8

    .line 211
    iget-object v0, p0, Lk/e/a/n;->b:[I

    array-length v0, v0

    .line 212
    iget-object v1, p0, Lk/e/a/n;->c:[I

    array-length v1, v1

    .line 213
    iget-object v2, p2, Lk/e/a/n;->b:[I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 214
    new-array v2, v0, [I

    iput-object v2, p2, Lk/e/a/n;->b:[I

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_4

    .line 215
    iget-object v6, p0, Lk/e/a/n;->d:[I

    if-eqz v6, :cond_2

    array-length v7, v6

    if-ge v5, v7, :cond_2

    .line 216
    aget v6, v6, v5

    if-nez v6, :cond_1

    .line 217
    iget-object v6, p0, Lk/e/a/n;->b:[I

    aget v6, v6, v5

    goto :goto_2

    .line 218
    :cond_1
    invoke-virtual {p0, v6, v1}, Lk/e/a/n;->a(II)I

    move-result v6

    goto :goto_2

    .line 219
    :cond_2
    iget-object v6, p0, Lk/e/a/n;->b:[I

    aget v6, v6, v5

    .line 220
    :goto_2
    iget-object v7, p0, Lk/e/a/n;->i:[I

    if-eqz v7, :cond_3

    .line 221
    invoke-virtual {p0, p1, v6}, Lk/e/a/n;->a(Lk/e/a/x;I)I

    move-result v6

    .line 222
    :cond_3
    iget-object v7, p2, Lk/e/a/n;->b:[I

    invoke-static {p1, v6, v7, v5}, Lk/e/a/n;->a(Lk/e/a/x;I[II)Z

    move-result v6

    or-int/2addr v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-lez p3, :cond_7

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_5

    .line 223
    iget-object v5, p0, Lk/e/a/n;->b:[I

    aget v5, v5, v1

    iget-object v6, p2, Lk/e/a/n;->b:[I

    invoke-static {p1, v5, v6, v1}, Lk/e/a/n;->a(Lk/e/a/x;I[II)Z

    move-result v5

    or-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 224
    :cond_5
    iget-object v0, p2, Lk/e/a/n;->c:[I

    if-nez v0, :cond_6

    new-array v0, v4, [I

    .line 225
    iput-object v0, p2, Lk/e/a/n;->c:[I

    goto :goto_4

    :cond_6
    move v4, v2

    .line 226
    :goto_4
    iget-object p2, p2, Lk/e/a/n;->c:[I

    invoke-static {p1, p3, p2, v3}, Lk/e/a/n;->a(Lk/e/a/x;I[II)Z

    move-result p1

    or-int/2addr p1, v4

    return p1

    .line 227
    :cond_7
    iget-object p3, p0, Lk/e/a/n;->c:[I

    array-length p3, p3

    iget-short v0, p0, Lk/e/a/n;->f:S

    add-int/2addr p3, v0

    .line 228
    iget-object v0, p2, Lk/e/a/n;->c:[I

    if-nez v0, :cond_8

    .line 229
    iget-short v0, p0, Lk/e/a/n;->g:S

    add-int/2addr v0, p3

    new-array v0, v0, [I

    iput-object v0, p2, Lk/e/a/n;->c:[I

    goto :goto_5

    :cond_8
    move v4, v2

    :goto_5
    const/4 v0, 0x0

    :goto_6
    if-ge v0, p3, :cond_a

    .line 230
    iget-object v2, p0, Lk/e/a/n;->c:[I

    aget v2, v2, v0

    .line 231
    iget-object v5, p0, Lk/e/a/n;->i:[I

    if-eqz v5, :cond_9

    .line 232
    invoke-virtual {p0, p1, v2}, Lk/e/a/n;->a(Lk/e/a/x;I)I

    move-result v2

    .line 233
    :cond_9
    iget-object v5, p2, Lk/e/a/n;->c:[I

    invoke-static {p1, v2, v5, v0}, Lk/e/a/n;->a(Lk/e/a/x;I[II)Z

    move-result v2

    or-int/2addr v4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 234
    :cond_a
    :goto_7
    iget-short v0, p0, Lk/e/a/n;->g:S

    if-ge v3, v0, :cond_c

    .line 235
    iget-object v0, p0, Lk/e/a/n;->e:[I

    aget v0, v0, v3

    .line 236
    invoke-virtual {p0, v0, v1}, Lk/e/a/n;->a(II)I

    move-result v0

    .line 237
    iget-object v2, p0, Lk/e/a/n;->i:[I

    if-eqz v2, :cond_b

    .line 238
    invoke-virtual {p0, p1, v0}, Lk/e/a/n;->a(Lk/e/a/x;I)I

    move-result v0

    .line 239
    :cond_b
    iget-object v2, p2, Lk/e/a/n;->c:[I

    add-int v5, p3, v3

    .line 240
    invoke-static {p1, v0, v2, v5}, Lk/e/a/n;->a(Lk/e/a/x;I[II)Z

    move-result v0

    or-int/2addr v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_c
    return v4
.end method

.method public final b(I)V
    .locals 2

    .line 8
    iget-short v0, p0, Lk/e/a/n;->g:S

    if-lt v0, p1, :cond_0

    sub-int/2addr v0, p1

    int-to-short p1, v0

    .line 9
    iput-short p1, p0, Lk/e/a/n;->g:S

    goto :goto_0

    .line 10
    :cond_0
    iget-short v1, p0, Lk/e/a/n;->f:S

    sub-int/2addr p1, v0

    sub-int/2addr v1, p1

    int-to-short p1, v1

    iput-short p1, p0, Lk/e/a/n;->f:S

    const/4 p1, 0x0

    .line 11
    iput-short p1, p0, Lk/e/a/n;->g:S

    :goto_0
    return-void
.end method

.method public final b(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lk/e/a/n;->d:[I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lk/e/a/n;->d:[I

    .line 3
    :cond_0
    iget-object v0, p0, Lk/e/a/n;->d:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v2, v0, 0x2

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    .line 5
    iget-object v2, p0, Lk/e/a/n;->d:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iput-object v1, p0, Lk/e/a/n;->d:[I

    .line 7
    :cond_1
    iget-object v0, p0, Lk/e/a/n;->d:[I

    aput p2, v0, p1

    return-void
.end method

.method public final c(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lk/e/a/n;->e:[I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lk/e/a/n;->e:[I

    .line 3
    :cond_0
    iget-object v0, p0, Lk/e/a/n;->e:[I

    array-length v0, v0

    .line 4
    iget-short v1, p0, Lk/e/a/n;->g:S

    if-lt v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x2

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    .line 6
    iget-object v2, p0, Lk/e/a/n;->e:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iput-object v1, p0, Lk/e/a/n;->e:[I

    .line 8
    :cond_1
    iget-object v0, p0, Lk/e/a/n;->e:[I

    iget-short v1, p0, Lk/e/a/n;->g:S

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lk/e/a/n;->g:S

    aput p1, v0, v1

    .line 9
    iget-short p1, p0, Lk/e/a/n;->f:S

    add-int/2addr p1, v2

    int-to-short p1, p1

    .line 10
    iget-object v0, p0, Lk/e/a/n;->a:Lk/e/a/q;

    iget-short v1, v0, Lk/e/a/q;->h:S

    if-le p1, v1, :cond_2

    .line 11
    iput-short p1, v0, Lk/e/a/q;->h:S

    :cond_2
    return-void
.end method
