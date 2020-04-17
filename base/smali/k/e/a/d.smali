.class public Lk/e/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public final b:[I

.field public final c:[Ljava/lang/String;

.field public final d:[Lk/e/a/h;

.field public final e:[I

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>([BIZ)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk/e/a/d;->a:[B

    if-eqz p3, :cond_1

    add-int/lit8 p3, p2, 0x6

    .line 3
    invoke-virtual {p0, p3}, Lk/e/a/d;->d(I)S

    move-result v0

    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported class file major version "

    invoke-static {p2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 5
    invoke-virtual {p0, p3}, Lk/e/a/d;->d(I)S

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    add-int/lit8 p3, p2, 0x8

    .line 6
    invoke-virtual {p0, p3}, Lk/e/a/d;->e(I)I

    move-result p3

    .line 7
    new-array v0, p3, [I

    iput-object v0, p0, Lk/e/a/d;->b:[I

    .line 8
    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Lk/e/a/d;->c:[Ljava/lang/String;

    add-int/lit8 p2, p2, 0xa

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x4

    if-ge v1, p3, :cond_3

    .line 9
    iget-object v6, p0, Lk/e/a/d;->b:[I

    add-int/lit8 v7, v1, 0x1

    add-int/lit8 v8, p2, 0x1

    aput v8, v6, v1

    .line 10
    aget-byte v1, p1, p2

    packed-switch v1, :pswitch_data_0

    .line 11
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_1
    const/4 v3, 0x1

    :pswitch_2
    const/4 v4, 0x1

    goto :goto_2

    :pswitch_3
    const/4 v1, 0x3

    goto :goto_4

    :pswitch_4
    const/16 v5, 0x9

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :goto_2
    :pswitch_5
    const/4 v1, 0x5

    goto :goto_4

    .line 12
    :pswitch_6
    invoke-virtual {p0, v8}, Lk/e/a/d;->e(I)I

    move-result v1

    add-int/lit8 v5, v1, 0x3

    if-le v5, v2, :cond_2

    move v2, v5

    :cond_2
    :goto_3
    :pswitch_7
    move v1, v5

    :goto_4
    add-int/2addr p2, v1

    move v1, v7

    goto :goto_1

    .line 13
    :cond_3
    iput v2, p0, Lk/e/a/d;->f:I

    .line 14
    iput p2, p0, Lk/e/a/d;->g:I

    const/4 p1, 0x0

    if-eqz v3, :cond_4

    .line 15
    new-array p2, p3, [Lk/e/a/h;

    goto :goto_5

    :cond_4
    move-object p2, p1

    :goto_5
    iput-object p2, p0, Lk/e/a/d;->d:[Lk/e/a/h;

    if-eqz v4, :cond_8

    .line 16
    new-array p1, v2, [C

    .line 17
    invoke-virtual {p0}, Lk/e/a/d;->a()I

    move-result p2

    add-int/lit8 p3, p2, -0x2

    .line 18
    invoke-virtual {p0, p3}, Lk/e/a/d;->e(I)I

    move-result p3

    :goto_6
    if-lez p3, :cond_7

    .line 19
    invoke-virtual {p0, p2, p1}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p2, 0x2

    .line 20
    invoke-virtual {p0, v2}, Lk/e/a/d;->b(I)I

    move-result v2

    add-int/lit8 p2, p2, 0x6

    const-string v3, "BootstrapMethods"

    .line 21
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 22
    invoke-virtual {p0, p2}, Lk/e/a/d;->e(I)I

    move-result p1

    new-array p3, p1, [I

    add-int/lit8 p2, p2, 0x2

    :goto_7
    if-ge v0, p1, :cond_5

    .line 23
    aput p2, p3, v0

    add-int/lit8 v1, p2, 0x2

    .line 24
    invoke-virtual {p0, v1}, Lk/e/a/d;->e(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v5

    add-int/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_5
    move-object p1, p3

    goto :goto_8

    :cond_6
    add-int/2addr p2, v2

    add-int/lit8 p3, p3, -0x1

    goto :goto_6

    .line 25
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 26
    :cond_8
    :goto_8
    iput-object p1, p0, Lk/e/a/d;->e:[I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 434
    iget v0, p0, Lk/e/a/d;->g:I

    add-int/lit8 v1, v0, 0x8

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0, v0}, Lk/e/a/d;->e(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    .line 435
    invoke-virtual {p0, v0}, Lk/e/a/d;->e(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_1

    add-int/lit8 v1, v0, 0x6

    .line 436
    invoke-virtual {p0, v1}, Lk/e/a/d;->e(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x8

    :goto_1
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_0

    add-int/lit8 v1, v0, 0x2

    .line 437
    invoke-virtual {p0, v1}, Lk/e/a/d;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    move v1, v3

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 438
    :cond_1
    invoke-virtual {p0, v0}, Lk/e/a/d;->e(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    :goto_2
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_3

    add-int/lit8 v1, v0, 0x6

    .line 439
    invoke-virtual {p0, v1}, Lk/e/a/d;->e(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x8

    :goto_3
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_2

    add-int/lit8 v1, v0, 0x2

    .line 440
    invoke-virtual {p0, v1}, Lk/e/a/d;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    move v1, v3

    goto :goto_3

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public a(I)I
    .locals 1

    .line 449
    iget-object v0, p0, Lk/e/a/d;->a:[B

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public final a(I[Ljava/lang/Object;I[C[Lk/e/a/q;)I
    .locals 2

    .line 423
    iget-object v0, p0, Lk/e/a/d;->a:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    packed-switch p1, :pswitch_data_0

    .line 424
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 425
    :pswitch_0
    invoke-virtual {p0, v1}, Lk/e/a/d;->e(I)I

    move-result p1

    invoke-virtual {p0, p1, p5}, Lk/e/a/d;->b(I[Lk/e/a/q;)Lk/e/a/q;

    move-result-object p1

    aput-object p1, p2, p3

    goto :goto_0

    .line 426
    :pswitch_1
    invoke-virtual {p0, v1, p4}, Lk/e/a/d;->a(I[C)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, p3

    :goto_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 427
    :pswitch_2
    sget-object p1, Lk/e/a/v;->g:Ljava/lang/Integer;

    aput-object p1, p2, p3

    goto :goto_1

    .line 428
    :pswitch_3
    sget-object p1, Lk/e/a/v;->f:Ljava/lang/Integer;

    aput-object p1, p2, p3

    goto :goto_1

    .line 429
    :pswitch_4
    sget-object p1, Lk/e/a/v;->e:Ljava/lang/Integer;

    aput-object p1, p2, p3

    goto :goto_1

    .line 430
    :pswitch_5
    sget-object p1, Lk/e/a/v;->d:Ljava/lang/Integer;

    aput-object p1, p2, p3

    goto :goto_1

    .line 431
    :pswitch_6
    sget-object p1, Lk/e/a/v;->c:Ljava/lang/Integer;

    aput-object p1, p2, p3

    goto :goto_1

    .line 432
    :pswitch_7
    sget-object p1, Lk/e/a/v;->b:Ljava/lang/Integer;

    aput-object p1, p2, p3

    goto :goto_1

    .line 433
    :pswitch_8
    sget-object p1, Lk/e/a/v;->a:Ljava/lang/Integer;

    aput-object p1, p2, p3

    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lk/e/a/a;ILjava/lang/String;[C)I
    .locals 9

    const/16 v0, 0x5b

    const/4 v1, 0x0

    const/16 v2, 0x65

    const/16 v3, 0x40

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p1, :cond_3

    .line 353
    iget-object p1, p0, Lk/e/a/d;->a:[B

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    if-eq p1, v3, :cond_2

    if-eq p1, v0, :cond_1

    if-eq p1, v2, :cond_0

    add-int/lit8 p2, p2, 0x3

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x5

    return p2

    :cond_1
    add-int/2addr p2, v5

    .line 354
    invoke-virtual {p0, v1, p2, v4, p4}, Lk/e/a/d;->a(Lk/e/a/a;IZ[C)I

    move-result p1

    return p1

    :cond_2
    add-int/lit8 p2, p2, 0x3

    .line 355
    invoke-virtual {p0, v1, p2, v5, p4}, Lk/e/a/d;->a(Lk/e/a/a;IZ[C)I

    move-result p1

    return p1

    .line 356
    :cond_3
    iget-object v6, p0, Lk/e/a/d;->a:[B

    add-int/lit8 v7, p2, 0x1

    aget-byte p2, v6, p2

    and-int/lit16 p2, p2, 0xff

    if-eq p2, v3, :cond_1c

    const/16 v1, 0x46

    if-eq p2, v1, :cond_1b

    const/16 v3, 0x53

    if-eq p2, v3, :cond_1a

    const/16 v6, 0x63

    if-eq p2, v6, :cond_19

    if-eq p2, v2, :cond_17

    const/16 v2, 0x73

    if-eq p2, v2, :cond_16

    const/16 v2, 0x49

    if-eq p2, v2, :cond_1b

    const/16 v6, 0x4a

    if-eq p2, v6, :cond_1b

    const/16 v8, 0x5a

    if-eq p2, v8, :cond_14

    if-eq p2, v0, :cond_4

    packed-switch p2, :pswitch_data_0

    .line 357
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 358
    :pswitch_0
    iget-object p2, p0, Lk/e/a/d;->b:[I

    .line 359
    invoke-virtual {p0, v7}, Lk/e/a/d;->e(I)I

    move-result p4

    aget p2, p2, p4

    invoke-virtual {p0, p2}, Lk/e/a/d;->b(I)I

    move-result p2

    int-to-char p2, p2

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    .line 360
    invoke-virtual {p1, p3, p2}, Lk/e/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 361
    :pswitch_1
    iget-object p2, p0, Lk/e/a/d;->b:[I

    .line 362
    invoke-virtual {p0, v7}, Lk/e/a/d;->e(I)I

    move-result p4

    aget p2, p2, p4

    invoke-virtual {p0, p2}, Lk/e/a/d;->b(I)I

    move-result p2

    int-to-byte p2, p2

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    .line 363
    invoke-virtual {p1, p3, p2}, Lk/e/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    add-int/lit8 v7, v7, 0x2

    goto/16 :goto_b

    .line 364
    :cond_4
    invoke-virtual {p0, v7}, Lk/e/a/d;->e(I)I

    move-result p2

    add-int/lit8 v7, v7, 0x2

    if-nez p2, :cond_5

    .line 365
    invoke-virtual {p1, p3}, Lk/e/a/a;->b(Ljava/lang/String;)Lk/e/a/a;

    move-result-object p1

    add-int/lit8 v7, v7, -0x2

    .line 366
    invoke-virtual {p0, p1, v7, v4, p4}, Lk/e/a/d;->a(Lk/e/a/a;IZ[C)I

    move-result p1

    return p1

    .line 367
    :cond_5
    iget-object v0, p0, Lk/e/a/d;->a:[B

    aget-byte v0, v0, v7

    and-int/lit16 v0, v0, 0xff

    if-eq v0, v1, :cond_12

    if-eq v0, v3, :cond_10

    if-eq v0, v8, :cond_d

    if-eq v0, v2, :cond_b

    if-eq v0, v6, :cond_9

    packed-switch v0, :pswitch_data_1

    .line 368
    invoke-virtual {p1, p3}, Lk/e/a/a;->b(Ljava/lang/String;)Lk/e/a/a;

    move-result-object p1

    add-int/lit8 v7, v7, -0x2

    .line 369
    invoke-virtual {p0, p1, v7, v4, p4}, Lk/e/a/d;->a(Lk/e/a/a;IZ[C)I

    move-result v7

    goto/16 :goto_b

    .line 370
    :pswitch_2
    new-array p4, p2, [D

    :goto_1
    if-ge v4, p2, :cond_6

    .line 371
    iget-object v0, p0, Lk/e/a/d;->b:[I

    add-int/lit8 v1, v7, 0x1

    .line 372
    invoke-virtual {p0, v1}, Lk/e/a/d;->e(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lk/e/a/d;->c(I)J

    move-result-wide v0

    .line 373
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    aput-wide v0, p4, v4

    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 374
    :cond_6
    invoke-virtual {p1, p3, p4}, Lk/e/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 375
    :pswitch_3
    new-array p4, p2, [C

    :goto_2
    if-ge v4, p2, :cond_7

    .line 376
    iget-object v0, p0, Lk/e/a/d;->b:[I

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {p0, v1}, Lk/e/a/d;->e(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lk/e/a/d;->b(I)I

    move-result v0

    int-to-char v0, v0

    aput-char v0, p4, v4

    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 377
    :cond_7
    invoke-virtual {p1, p3, p4}, Lk/e/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 378
    :pswitch_4
    new-array p4, p2, [B

    :goto_3
    if-ge v4, p2, :cond_8

    .line 379
    iget-object v0, p0, Lk/e/a/d;->b:[I

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {p0, v1}, Lk/e/a/d;->e(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lk/e/a/d;->b(I)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, p4, v4

    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 380
    :cond_8
    invoke-virtual {p1, p3, p4}, Lk/e/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 381
    :cond_9
    new-array p4, p2, [J

    :goto_4
    if-ge v4, p2, :cond_a

    .line 382
    iget-object v0, p0, Lk/e/a/d;->b:[I

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {p0, v1}, Lk/e/a/d;->e(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lk/e/a/d;->c(I)J

    move-result-wide v0

    aput-wide v0, p4, v4

    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 383
    :cond_a
    invoke-virtual {p1, p3, p4}, Lk/e/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 384
    :cond_b
    new-array p4, p2, [I

    :goto_5
    if-ge v4, p2, :cond_c

    .line 385
    iget-object v0, p0, Lk/e/a/d;->b:[I

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {p0, v1}, Lk/e/a/d;->e(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lk/e/a/d;->b(I)I

    move-result v0

    aput v0, p4, v4

    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 386
    :cond_c
    invoke-virtual {p1, p3, p4}, Lk/e/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 387
    :cond_d
    new-array p4, p2, [Z

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p2, :cond_f

    .line 388
    iget-object v1, p0, Lk/e/a/d;->b:[I

    add-int/lit8 v2, v7, 0x1

    invoke-virtual {p0, v2}, Lk/e/a/d;->e(I)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lk/e/a/d;->b(I)I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_7

    :cond_e
    const/4 v1, 0x0

    :goto_7
    aput-boolean v1, p4, v0

    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 389
    :cond_f
    invoke-virtual {p1, p3, p4}, Lk/e/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 390
    :cond_10
    new-array p4, p2, [S

    :goto_8
    if-ge v4, p2, :cond_11

    .line 391
    iget-object v0, p0, Lk/e/a/d;->b:[I

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {p0, v1}, Lk/e/a/d;->e(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lk/e/a/d;->b(I)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, p4, v4

    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 392
    :cond_11
    invoke-virtual {p1, p3, p4}, Lk/e/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 393
    :cond_12
    new-array p4, p2, [F

    :goto_9
    if-ge v4, p2, :cond_13

    .line 394
    iget-object v0, p0, Lk/e/a/d;->b:[I

    add-int/lit8 v1, v7, 0x1

    .line 395
    invoke-virtual {p0, v1}, Lk/e/a/d;->e(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lk/e/a/d;->b(I)I

    move-result v0

    .line 396
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    aput v0, p4, v4

    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 397
    :cond_13
    invoke-virtual {p1, p3, p4}, Lk/e/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 398
    :cond_14
    iget-object p2, p0, Lk/e/a/d;->b:[I

    .line 399
    invoke-virtual {p0, v7}, Lk/e/a/d;->e(I)I

    move-result p4

    aget p2, p2, p4

    invoke-virtual {p0, p2}, Lk/e/a/d;->b(I)I

    move-result p2

    if-nez p2, :cond_15

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a

    :cond_15
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 400
    :goto_a
    invoke-virtual {p1, p3, p2}, Lk/e/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 401
    :cond_16
    invoke-virtual {p0, v7, p4}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lk/e/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 402
    :cond_17
    invoke-virtual {p0, v7, p4}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object p2

    add-int/lit8 v0, v7, 0x2

    .line 403
    invoke-virtual {p0, v0, p4}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object p4

    .line 404
    iget v0, p1, Lk/e/a/a;->e:I

    add-int/2addr v0, v5

    iput v0, p1, Lk/e/a/a;->e:I

    .line 405
    iget-boolean v0, p1, Lk/e/a/a;->b:Z

    if-eqz v0, :cond_18

    .line 406
    iget-object v0, p1, Lk/e/a/a;->c:Lk/e/a/c;

    iget-object v1, p1, Lk/e/a/a;->a:Lk/e/a/x;

    invoke-virtual {v1, p3}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, p3}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 407
    :cond_18
    iget-object p3, p1, Lk/e/a/a;->c:Lk/e/a/c;

    iget-object v0, p1, Lk/e/a/a;->a:Lk/e/a/x;

    .line 408
    invoke-virtual {v0, p2}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p3, v2, p2}, Lk/e/a/c;->b(II)Lk/e/a/c;

    iget-object p1, p1, Lk/e/a/a;->a:Lk/e/a/x;

    .line 409
    invoke-virtual {p1, p4}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    add-int/lit8 v7, v7, 0x4

    goto :goto_b

    .line 410
    :cond_19
    invoke-virtual {p0, v7, p4}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lk/e/a/y;->e(Ljava/lang/String;)Lk/e/a/y;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lk/e/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 411
    :cond_1a
    iget-object p2, p0, Lk/e/a/d;->b:[I

    .line 412
    invoke-virtual {p0, v7}, Lk/e/a/d;->e(I)I

    move-result p4

    aget p2, p2, p4

    invoke-virtual {p0, p2}, Lk/e/a/d;->b(I)I

    move-result p2

    int-to-short p2, p2

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    .line 413
    invoke-virtual {p1, p3, p2}, Lk/e/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 414
    :cond_1b
    :pswitch_5
    invoke-virtual {p0, v7}, Lk/e/a/d;->e(I)I

    move-result p2

    invoke-virtual {p0, p2, p4}, Lk/e/a/d;->b(I[C)Ljava/lang/Object;

    move-result-object p2

    .line 415
    invoke-virtual {p1, p3, p2}, Lk/e/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 416
    :cond_1c
    invoke-virtual {p0, v7, p4}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object p2

    .line 417
    iget v0, p1, Lk/e/a/a;->e:I

    add-int/2addr v0, v5

    iput v0, p1, Lk/e/a/a;->e:I

    .line 418
    iget-boolean v0, p1, Lk/e/a/a;->b:Z

    if-eqz v0, :cond_1d

    .line 419
    iget-object v0, p1, Lk/e/a/a;->c:Lk/e/a/c;

    iget-object v2, p1, Lk/e/a/a;->a:Lk/e/a/x;

    invoke-virtual {v2, p3}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, p3}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 420
    :cond_1d
    iget-object p3, p1, Lk/e/a/a;->c:Lk/e/a/c;

    iget-object v0, p1, Lk/e/a/a;->a:Lk/e/a/x;

    invoke-virtual {v0, p2}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p3, v3, p2}, Lk/e/a/c;->b(II)Lk/e/a/c;

    invoke-virtual {p3, v4}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 421
    new-instance p2, Lk/e/a/a;

    iget-object p3, p1, Lk/e/a/a;->a:Lk/e/a/x;

    iget-object p1, p1, Lk/e/a/a;->c:Lk/e/a/c;

    invoke-direct {p2, p3, v5, p1, v1}, Lk/e/a/a;-><init>(Lk/e/a/x;ZLk/e/a/c;Lk/e/a/a;)V

    add-int/lit8 v7, v7, 0x2

    .line 422
    invoke-virtual {p0, p2, v7, v5, p4}, Lk/e/a/d;->a(Lk/e/a/a;IZ[C)I

    move-result v7

    :goto_b
    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lk/e/a/a;IZ[C)I
    .locals 1

    .line 348
    invoke-virtual {p0, p2}, Lk/e/a/d;->e(I)I

    move-result v0

    add-int/lit8 p2, p2, 0x2

    if-eqz p3, :cond_0

    :goto_0
    add-int/lit8 p3, v0, -0x1

    if-lez v0, :cond_1

    .line 349
    invoke-virtual {p0, p2, p4}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p2, p2, 0x2

    .line 350
    invoke-virtual {p0, p1, p2, v0, p4}, Lk/e/a/d;->a(Lk/e/a/a;ILjava/lang/String;[C)I

    move-result p2

    move v0, p3

    goto :goto_0

    :cond_0
    :goto_1
    add-int/lit8 p3, v0, -0x1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 351
    invoke-virtual {p0, p1, p2, v0, p4}, Lk/e/a/d;->a(Lk/e/a/a;ILjava/lang/String;[C)I

    move-result p2

    move v0, p3

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 352
    invoke-virtual {p1}, Lk/e/a/a;->a()V

    :cond_2
    return p2
.end method

.method public final a(Lk/e/a/i;I)I
    .locals 9

    .line 312
    invoke-virtual {p0, p2}, Lk/e/a/d;->b(I)I

    move-result v0

    ushr-int/lit8 v1, v0, 0x18

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-eq v1, v2, :cond_0

    const/high16 v3, -0x1000000

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 313
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    and-int/2addr v0, v3

    add-int/2addr p2, v2

    goto :goto_2

    :pswitch_1
    const v1, -0xffff01

    and-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x4

    goto :goto_2

    :pswitch_2
    and-int/2addr v0, v3

    goto :goto_0

    :pswitch_3
    and-int/lit16 v0, v0, -0x100

    :goto_0
    add-int/lit8 p2, p2, 0x3

    goto :goto_2

    :pswitch_4
    and-int/2addr v0, v3

    add-int/lit8 v1, p2, 0x1

    .line 314
    invoke-virtual {p0, v1}, Lk/e/a/d;->e(I)I

    move-result v1

    add-int/lit8 p2, p2, 0x3

    .line 315
    new-array v3, v1, [Lk/e/a/q;

    iput-object v3, p1, Lk/e/a/i;->j:[Lk/e/a/q;

    .line 316
    new-array v3, v1, [Lk/e/a/q;

    iput-object v3, p1, Lk/e/a/i;->k:[Lk/e/a/q;

    .line 317
    new-array v3, v1, [I

    iput-object v3, p1, Lk/e/a/i;->l:[I

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    .line 318
    invoke-virtual {p0, p2}, Lk/e/a/d;->e(I)I

    move-result v4

    add-int/lit8 v5, p2, 0x2

    .line 319
    invoke-virtual {p0, v5}, Lk/e/a/d;->e(I)I

    move-result v5

    add-int/lit8 v6, p2, 0x4

    .line 320
    invoke-virtual {p0, v6}, Lk/e/a/d;->e(I)I

    move-result v6

    add-int/lit8 p2, p2, 0x6

    .line 321
    iget-object v7, p1, Lk/e/a/i;->j:[Lk/e/a/q;

    iget-object v8, p1, Lk/e/a/i;->g:[Lk/e/a/q;

    .line 322
    invoke-virtual {p0, v4, v8}, Lk/e/a/d;->b(I[Lk/e/a/q;)Lk/e/a/q;

    move-result-object v8

    aput-object v8, v7, v3

    .line 323
    iget-object v7, p1, Lk/e/a/i;->k:[Lk/e/a/q;

    add-int/2addr v4, v5

    iget-object v5, p1, Lk/e/a/i;->g:[Lk/e/a/q;

    .line 324
    invoke-virtual {p0, v4, v5}, Lk/e/a/d;->b(I[Lk/e/a/q;)Lk/e/a/q;

    move-result-object v4

    aput-object v4, v7, v3

    .line 325
    iget-object v4, p1, Lk/e/a/i;->l:[I

    aput v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    :pswitch_5
    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x2

    .line 326
    :cond_1
    :goto_2
    iput v0, p1, Lk/e/a/i;->h:I

    .line 327
    invoke-virtual {p0, p2}, Lk/e/a/d;->a(I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x0

    goto :goto_3

    .line 328
    :cond_2
    new-instance v1, Lk/e/a/z;

    iget-object v3, p0, Lk/e/a/d;->a:[B

    invoke-direct {v1, v3, p2}, Lk/e/a/z;-><init>([BI)V

    :goto_3
    iput-object v1, p1, Lk/e/a/i;->i:Lk/e/a/z;

    add-int/2addr p2, v2

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a([II)I
    .locals 2

    if-eqz p1, :cond_1

    .line 309
    array-length v0, p1

    if-ge p2, v0, :cond_1

    aget v0, p1, p2

    .line 310
    invoke-virtual {p0, v0}, Lk/e/a/d;->a(I)I

    move-result v0

    const/16 v1, 0x43

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    aget p1, p1, p2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lk/e/a/d;->e(I)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public final a(II[C)Ljava/lang/String;
    .locals 6

    add-int/2addr p2, p1

    .line 450
    iget-object v0, p0, Lk/e/a/d;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge p1, p2, :cond_2

    add-int/lit8 v3, p1, 0x1

    .line 451
    aget-byte p1, v0, p1

    and-int/lit16 v4, p1, 0x80

    if-nez v4, :cond_0

    add-int/lit8 v4, v2, 0x1

    and-int/lit8 p1, p1, 0x7f

    int-to-char p1, p1

    .line 452
    aput-char p1, p3, v2

    :goto_1
    move p1, v3

    move v2, v4

    goto :goto_0

    :cond_0
    and-int/lit16 v4, p1, 0xe0

    const/16 v5, 0xc0

    if-ne v4, v5, :cond_1

    add-int/lit8 v4, v2, 0x1

    and-int/lit8 p1, p1, 0x1f

    shl-int/lit8 p1, p1, 0x6

    add-int/lit8 v5, v3, 0x1

    .line 453
    aget-byte v3, v0, v3

    and-int/lit8 v3, v3, 0x3f

    add-int/2addr p1, v3

    int-to-char p1, p1

    aput-char p1, p3, v2

    move v2, v4

    move p1, v5

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v2, 0x1

    and-int/lit8 p1, p1, 0xf

    shl-int/lit8 p1, p1, 0xc

    add-int/lit8 v5, v3, 0x1

    .line 454
    aget-byte v3, v0, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    add-int/2addr p1, v3

    add-int/lit8 v3, v5, 0x1

    aget-byte v5, v0, v5

    and-int/lit8 v5, v5, 0x3f

    add-int/2addr p1, v5

    int-to-char p1, p1

    aput-char p1, p3, v2

    goto :goto_1

    .line 455
    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p1
.end method

.method public a(I[C)Ljava/lang/String;
    .locals 1

    .line 456
    iget-object v0, p0, Lk/e/a/d;->b:[I

    invoke-virtual {p0, p1}, Lk/e/a/d;->e(I)I

    move-result p1

    aget p1, v0, p1

    invoke-virtual {p0, p1, p2}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a([Lk/e/a/b;Ljava/lang/String;II[CI[Lk/e/a/q;)Lk/e/a/b;
    .locals 2

    .line 441
    array-length p5, p1

    const/4 p6, 0x0

    const/4 p7, 0x0

    :goto_0
    if-ge p7, p5, :cond_1

    aget-object v0, p1, p7

    .line 442
    iget-object v1, v0, Lk/e/a/b;->a:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    new-instance p1, Lk/e/a/b;

    iget-object p2, v0, Lk/e/a/b;->a:Ljava/lang/String;

    invoke-direct {p1, p2}, Lk/e/a/b;-><init>(Ljava/lang/String;)V

    .line 444
    new-array p2, p4, [B

    iput-object p2, p1, Lk/e/a/b;->b:[B

    .line 445
    iget-object p5, p0, Lk/e/a/d;->a:[B

    invoke-static {p5, p3, p2, p6, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_0
    add-int/lit8 p7, p7, 0x1

    goto :goto_0

    .line 446
    :cond_1
    new-instance p1, Lk/e/a/b;

    invoke-direct {p1, p2}, Lk/e/a/b;-><init>(Ljava/lang/String;)V

    .line 447
    new-array p2, p4, [B

    iput-object p2, p1, Lk/e/a/b;->b:[B

    .line 448
    iget-object p5, p0, Lk/e/a/d;->a:[B

    invoke-static {p5, p3, p2, p6, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public final a(I[Lk/e/a/q;)V
    .locals 1

    .line 304
    aget-object v0, p2, p1

    if-nez v0, :cond_1

    .line 305
    aget-object v0, p2, p1

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Lk/e/a/q;

    invoke-direct {v0}, Lk/e/a/q;-><init>()V

    aput-object v0, p2, p1

    .line 307
    :cond_0
    aget-object p1, p2, p1

    .line 308
    iget-short p2, p1, Lk/e/a/q;->a:S

    or-int/lit8 p2, p2, 0x1

    int-to-short p2, p2

    iput-short p2, p1, Lk/e/a/q;->a:S

    :cond_1
    return-void
.end method

.method public final a(Lk/e/a/s;Lk/e/a/i;I)V
    .locals 47

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    .line 1
    iget-object v12, v8, Lk/e/a/d;->a:[B

    .line 2
    iget-object v13, v10, Lk/e/a/i;->c:[C

    .line 3
    invoke-virtual {v8, v11}, Lk/e/a/d;->e(I)I

    move-result v14

    add-int/lit8 v0, v11, 0x2

    .line 4
    invoke-virtual {v8, v0}, Lk/e/a/d;->e(I)I

    move-result v15

    add-int/lit8 v0, v11, 0x4

    .line 5
    invoke-virtual {v8, v0}, Lk/e/a/d;->b(I)I

    move-result v7

    add-int/lit8 v16, v11, 0x8

    add-int v6, v16, v7

    add-int/lit8 v0, v7, 0x1

    .line 6
    new-array v5, v0, [Lk/e/a/q;

    iput-object v5, v10, Lk/e/a/i;->g:[Lk/e/a/q;

    move/from16 v0, v16

    :goto_0
    const/16 v4, 0x84

    const/16 v3, 0xff

    const/4 v1, 0x4

    if-ge v0, v6, :cond_3

    sub-int v18, v0, v16

    .line 7
    aget-byte v2, v12, v0

    and-int/2addr v2, v3

    packed-switch v2, :pswitch_data_0

    .line 8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    add-int/lit8 v1, v0, 0x1

    .line 9
    invoke-virtual {v8, v1}, Lk/e/a/d;->e(I)I

    move-result v1

    add-int v1, v1, v18

    invoke-virtual {v8, v1, v5}, Lk/e/a/d;->b(I[Lk/e/a/q;)Lk/e/a/q;

    goto/16 :goto_4

    :pswitch_1
    add-int/lit8 v1, v0, 0x1

    .line 10
    invoke-virtual {v8, v1}, Lk/e/a/d;->b(I)I

    move-result v1

    add-int v1, v1, v18

    invoke-virtual {v8, v1, v5}, Lk/e/a/d;->b(I[Lk/e/a/q;)Lk/e/a/q;

    goto :goto_1

    :pswitch_2
    add-int/lit8 v1, v0, 0x1

    .line 11
    aget-byte v1, v12, v1

    and-int/2addr v1, v3

    if-eq v1, v4, :cond_1

    const/16 v2, 0xa9

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    .line 12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    :pswitch_3
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x6

    goto :goto_0

    :goto_1
    :pswitch_4
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    :pswitch_5
    and-int/lit8 v2, v18, 0x3

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    .line 13
    invoke-virtual {v8, v1}, Lk/e/a/d;->b(I)I

    move-result v0

    add-int v0, v0, v18

    invoke-virtual {v8, v0, v5}, Lk/e/a/d;->b(I[Lk/e/a/q;)Lk/e/a/q;

    add-int/lit8 v0, v1, 0x4

    .line 14
    invoke-virtual {v8, v0}, Lk/e/a/d;->b(I)I

    move-result v0

    const/16 v2, 0x8

    add-int/2addr v1, v2

    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_2

    add-int/lit8 v0, v1, 0x4

    .line 15
    invoke-virtual {v8, v0}, Lk/e/a/d;->b(I)I

    move-result v0

    add-int v0, v0, v18

    invoke-virtual {v8, v0, v5}, Lk/e/a/d;->b(I[Lk/e/a/q;)Lk/e/a/q;

    add-int/lit8 v1, v1, 0x8

    move v0, v2

    goto :goto_2

    :pswitch_6
    and-int/lit8 v2, v18, 0x3

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    .line 16
    invoke-virtual {v8, v1}, Lk/e/a/d;->b(I)I

    move-result v0

    add-int v0, v0, v18

    invoke-virtual {v8, v0, v5}, Lk/e/a/d;->b(I[Lk/e/a/q;)Lk/e/a/q;

    add-int/lit8 v0, v1, 0x8

    .line 17
    invoke-virtual {v8, v0}, Lk/e/a/d;->b(I)I

    move-result v0

    add-int/lit8 v2, v1, 0x4

    invoke-virtual {v8, v2}, Lk/e/a/d;->b(I)I

    move-result v2

    sub-int/2addr v0, v2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0xc

    :goto_3
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_2

    .line 18
    invoke-virtual {v8, v1}, Lk/e/a/d;->b(I)I

    move-result v0

    add-int v0, v0, v18

    invoke-virtual {v8, v0, v5}, Lk/e/a/d;->b(I[Lk/e/a/q;)Lk/e/a/q;

    add-int/lit8 v1, v1, 0x4

    move v0, v2

    goto :goto_3

    :cond_2
    move v0, v1

    goto/16 :goto_0

    :pswitch_7
    add-int/lit8 v1, v0, 0x1

    .line 19
    invoke-virtual {v8, v1}, Lk/e/a/d;->d(I)S

    move-result v1

    add-int v1, v1, v18

    invoke-virtual {v8, v1, v5}, Lk/e/a/d;->b(I[Lk/e/a/q;)Lk/e/a/q;

    :goto_4
    :pswitch_8
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :pswitch_9
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    :pswitch_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x8

    .line 20
    invoke-virtual {v8, v0}, Lk/e/a/d;->e(I)I

    move-result v17

    const/4 v1, 0x2

    add-int/2addr v0, v1

    :goto_5
    add-int/lit8 v20, v17, -0x1

    if-lez v17, :cond_7

    .line 21
    invoke-virtual {v8, v0}, Lk/e/a/d;->e(I)I

    move-result v2

    invoke-virtual {v8, v2, v5}, Lk/e/a/d;->b(I[Lk/e/a/q;)Lk/e/a/q;

    move-result-object v25

    add-int/lit8 v2, v0, 0x2

    .line 22
    invoke-virtual {v8, v2}, Lk/e/a/d;->e(I)I

    move-result v2

    invoke-virtual {v8, v2, v5}, Lk/e/a/d;->b(I[Lk/e/a/q;)Lk/e/a/q;

    move-result-object v26

    add-int/lit8 v2, v0, 0x4

    .line 23
    invoke-virtual {v8, v2}, Lk/e/a/d;->e(I)I

    move-result v2

    invoke-virtual {v8, v2, v5}, Lk/e/a/d;->b(I[Lk/e/a/q;)Lk/e/a/q;

    move-result-object v27

    .line 24
    iget-object v2, v8, Lk/e/a/d;->b:[I

    add-int/lit8 v3, v0, 0x6

    invoke-virtual {v8, v3}, Lk/e/a/d;->e(I)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v8, v2, v13}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x8

    .line 25
    move-object v3, v9

    check-cast v3, Lk/e/a/t;

    if-eqz v3, :cond_6

    .line 26
    new-instance v4, Lk/e/a/p;

    if-eqz v2, :cond_4

    iget-object v1, v3, Lk/e/a/t;->c:Lk/e/a/x;

    move/from16 v23, v6

    const/4 v6, 0x7

    .line 27
    invoke-virtual {v1, v6, v2}, Lk/e/a/x;->a(ILjava/lang/String;)Lk/e/a/w;

    move-result-object v1

    .line 28
    iget v1, v1, Lk/e/a/w;->a:I

    move/from16 v28, v1

    goto :goto_6

    :cond_4
    move/from16 v23, v6

    const/16 v28, 0x0

    :goto_6
    move-object/from16 v24, v4

    move-object/from16 v29, v2

    invoke-direct/range {v24 .. v29}, Lk/e/a/p;-><init>(Lk/e/a/q;Lk/e/a/q;Lk/e/a/q;ILjava/lang/String;)V

    .line 29
    iget-object v1, v3, Lk/e/a/t;->l:Lk/e/a/p;

    if-nez v1, :cond_5

    .line 30
    iput-object v4, v3, Lk/e/a/t;->l:Lk/e/a/p;

    goto :goto_7

    .line 31
    :cond_5
    iget-object v1, v3, Lk/e/a/t;->m:Lk/e/a/p;

    iput-object v4, v1, Lk/e/a/p;->f:Lk/e/a/p;

    .line 32
    :goto_7
    iput-object v4, v3, Lk/e/a/t;->m:Lk/e/a/p;

    move/from16 v17, v20

    move/from16 v6, v23

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/16 v3, 0xff

    const/16 v4, 0x84

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    .line 33
    throw v2

    :cond_7
    move/from16 v23, v6

    const/4 v2, 0x0

    const/4 v6, 0x7

    .line 34
    invoke-virtual {v8, v0}, Lk/e/a/d;->e(I)I

    move-result v3

    const/4 v4, 0x2

    add-int/2addr v0, v4

    move-object v4, v2

    move-object/from16 v32, v4

    move-object/from16 v34, v32

    const/16 v20, 0x1

    const/16 v22, 0x0

    const/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    :goto_8
    add-int/lit8 v24, v3, -0x1

    if-lez v3, :cond_15

    .line 35
    invoke-virtual {v8, v0, v13}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v0, 0x2

    .line 36
    invoke-virtual {v8, v2}, Lk/e/a/d;->b(I)I

    move-result v26

    add-int/lit8 v2, v0, 0x6

    const-string v0, "LocalVariableTable"

    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 38
    iget v0, v10, Lk/e/a/i;->b:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-nez v0, :cond_9

    .line 39
    invoke-virtual {v8, v2}, Lk/e/a/d;->e(I)I

    move-result v0

    add-int/lit8 v3, v2, 0x2

    :goto_9
    add-int/lit8 v27, v0, -0x1

    if-lez v0, :cond_8

    .line 40
    invoke-virtual {v8, v3}, Lk/e/a/d;->e(I)I

    move-result v0

    .line 41
    invoke-virtual {v8, v0, v5}, Lk/e/a/d;->a(I[Lk/e/a/q;)V

    add-int/lit8 v6, v3, 0x2

    .line 42
    invoke-virtual {v8, v6}, Lk/e/a/d;->e(I)I

    move-result v6

    add-int/2addr v6, v0

    .line 43
    invoke-virtual {v8, v6, v5}, Lk/e/a/d;->a(I[Lk/e/a/q;)V

    add-int/lit8 v3, v3, 0xa

    move/from16 v0, v27

    const/4 v6, 0x7

    goto :goto_9

    :cond_8
    move/from16 v35, v2

    goto :goto_a

    :cond_9
    move-object/from16 v38, v4

    move-object/from16 v39, v5

    move/from16 v40, v7

    goto/16 :goto_10

    :cond_a
    const-string v0, "LocalVariableTypeTable"

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move/from16 v36, v2

    :goto_a
    move-object v0, v4

    move-object/from16 v39, v5

    move/from16 v40, v7

    const/4 v1, 0x0

    const/4 v4, 0x1

    :goto_b
    const/4 v5, 0x4

    goto/16 :goto_13

    :cond_b
    const-string v0, "LineNumberTable"

    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 46
    iget v0, v10, Lk/e/a/i;->b:I

    const/4 v6, 0x2

    and-int/2addr v0, v6

    if-nez v0, :cond_9

    .line 47
    invoke-virtual {v8, v2}, Lk/e/a/d;->e(I)I

    move-result v0

    add-int/lit8 v3, v2, 0x2

    :goto_c
    add-int/lit8 v21, v0, -0x1

    if-lez v0, :cond_9

    .line 48
    invoke-virtual {v8, v3}, Lk/e/a/d;->e(I)I

    move-result v0

    add-int/lit8 v6, v3, 0x2

    .line 49
    invoke-virtual {v8, v6}, Lk/e/a/d;->e(I)I

    move-result v6

    const/4 v1, 0x4

    add-int/2addr v3, v1

    .line 50
    invoke-virtual {v8, v0, v5}, Lk/e/a/d;->a(I[Lk/e/a/q;)V

    .line 51
    aget-object v0, v5, v0

    .line 52
    iget-short v1, v0, Lk/e/a/q;->b:S

    if-nez v1, :cond_c

    int-to-short v1, v6

    .line 53
    iput-short v1, v0, Lk/e/a/q;->b:S

    move/from16 v37, v3

    move-object/from16 v38, v4

    move-object/from16 v39, v5

    move/from16 v40, v7

    goto :goto_f

    .line 54
    :cond_c
    iget-object v1, v0, Lk/e/a/q;->c:[I

    if-nez v1, :cond_d

    move/from16 v37, v3

    const/4 v1, 0x4

    new-array v3, v1, [I

    .line 55
    iput-object v3, v0, Lk/e/a/q;->c:[I

    goto :goto_d

    :cond_d
    move/from16 v37, v3

    const/4 v1, 0x4

    .line 56
    :goto_d
    iget-object v3, v0, Lk/e/a/q;->c:[I

    const/4 v1, 0x0

    aget v29, v3, v1

    move-object/from16 v38, v4

    const/16 v19, 0x1

    add-int/lit8 v4, v29, 0x1

    aput v4, v3, v1

    .line 57
    array-length v1, v3

    if-lt v4, v1, :cond_e

    .line 58
    array-length v1, v3

    const/16 v18, 0x4

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [I

    move-object/from16 v39, v5

    .line 59
    array-length v5, v3

    move/from16 v40, v7

    const/4 v7, 0x0

    invoke-static {v3, v7, v1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iput-object v1, v0, Lk/e/a/q;->c:[I

    goto :goto_e

    :cond_e
    move-object/from16 v39, v5

    move/from16 v40, v7

    .line 61
    :goto_e
    iget-object v0, v0, Lk/e/a/q;->c:[I

    aput v6, v0, v4

    :goto_f
    move/from16 v0, v21

    move/from16 v3, v37

    move-object/from16 v4, v38

    move-object/from16 v5, v39

    move/from16 v7, v40

    const/4 v6, 0x2

    goto :goto_c

    :goto_10
    const/4 v1, 0x0

    const/4 v4, 0x1

    :goto_11
    const/4 v5, 0x4

    goto/16 :goto_12

    :cond_f
    move-object/from16 v38, v4

    move-object/from16 v39, v5

    move/from16 v40, v7

    const-string v0, "RuntimeVisibleTypeAnnotations"

    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v4, 0x1

    .line 63
    invoke-virtual {v8, v9, v10, v2, v4}, Lk/e/a/d;->b(Lk/e/a/s;Lk/e/a/i;IZ)[I

    move-result-object v0

    const/4 v1, 0x0

    goto/16 :goto_b

    :cond_10
    const/4 v4, 0x1

    const-string v0, "RuntimeInvisibleTypeAnnotations"

    .line 64
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    .line 65
    invoke-virtual {v8, v9, v10, v2, v1}, Lk/e/a/d;->b(Lk/e/a/s;Lk/e/a/i;IZ)[I

    move-result-object v0

    move-object/from16 v34, v0

    goto :goto_11

    :cond_11
    const/4 v1, 0x0

    const-string v0, "StackMapTable"

    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 67
    iget v0, v10, Lk/e/a/i;->b:I

    const/4 v5, 0x4

    and-int/2addr v0, v5

    if-nez v0, :cond_13

    add-int/lit8 v0, v2, 0x2

    add-int v3, v2, v26

    move/from16 v22, v0

    move/from16 v33, v3

    goto :goto_12

    :cond_12
    const/4 v5, 0x4

    const-string v0, "StackMap"

    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 69
    iget v0, v10, Lk/e/a/i;->b:I

    and-int/2addr v0, v5

    if-nez v0, :cond_13

    add-int/lit8 v0, v2, 0x2

    add-int v3, v2, v26

    move/from16 v22, v0

    move/from16 v17, v2

    move/from16 v33, v3

    move/from16 v42, v23

    move-object/from16 v4, v38

    move-object/from16 v19, v39

    move/from16 v43, v40

    const/16 v11, 0x8

    const/16 v20, 0x0

    goto :goto_14

    :cond_13
    :goto_12
    move-object/from16 v0, v38

    :goto_13
    move-object v4, v0

    move/from16 v17, v2

    move/from16 v42, v23

    move-object/from16 v19, v39

    move/from16 v43, v40

    const/16 v11, 0x8

    goto :goto_14

    .line 70
    :cond_14
    iget-object v6, v10, Lk/e/a/i;->a:[Lk/e/a/b;

    move-object/from16 v0, p0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x2

    move-object v1, v6

    move/from16 v17, v2

    const/16 v4, 0x8

    const/4 v6, 0x1

    move-object v2, v3

    move/from16 v3, v17

    move-object/from16 v41, v38

    const/16 v11, 0x8

    move/from16 v4, v26

    move-object/from16 v19, v39

    move-object v5, v13

    move/from16 v42, v23

    move/from16 v6, p3

    move/from16 v43, v40

    move-object/from16 v7, v19

    .line 71
    invoke-virtual/range {v0 .. v7}, Lk/e/a/d;->a([Lk/e/a/b;Ljava/lang/String;II[CI[Lk/e/a/q;)Lk/e/a/b;

    move-result-object v0

    move-object/from16 v7, v32

    .line 72
    iput-object v7, v0, Lk/e/a/b;->c:Lk/e/a/b;

    move-object/from16 v32, v0

    move-object/from16 v4, v41

    :goto_14
    add-int v0, v17, v26

    move/from16 v11, p3

    move-object/from16 v5, v19

    move/from16 v3, v24

    move/from16 v23, v42

    move/from16 v7, v43

    const/4 v2, 0x0

    const/4 v6, 0x7

    goto/16 :goto_8

    :cond_15
    move-object/from16 v41, v4

    move-object/from16 v19, v5

    move/from16 v43, v7

    move/from16 v42, v23

    move-object/from16 v7, v32

    const/16 v11, 0x8

    .line 73
    iget v0, v10, Lk/e/a/i;->b:I

    and-int/2addr v0, v11

    if-eqz v0, :cond_16

    const/4 v6, 0x1

    goto :goto_15

    :cond_16
    const/4 v6, 0x0

    :goto_15
    const/4 v5, -0x1

    if-eqz v22, :cond_26

    .line 74
    iput v5, v10, Lk/e/a/i;->m:I

    const/4 v4, 0x0

    .line 75
    iput v4, v10, Lk/e/a/i;->n:I

    .line 76
    iput v4, v10, Lk/e/a/i;->o:I

    .line 77
    iput v4, v10, Lk/e/a/i;->p:I

    .line 78
    new-array v0, v15, [Ljava/lang/Object;

    iput-object v0, v10, Lk/e/a/i;->q:[Ljava/lang/Object;

    .line 79
    iput v4, v10, Lk/e/a/i;->r:I

    .line 80
    new-array v1, v14, [Ljava/lang/Object;

    iput-object v1, v10, Lk/e/a/i;->s:[Ljava/lang/Object;

    if-eqz v6, :cond_21

    .line 81
    iget-object v1, v10, Lk/e/a/i;->f:Ljava/lang/String;

    .line 82
    iget v2, v10, Lk/e/a/i;->d:I

    and-int/2addr v2, v11

    if-nez v2, :cond_18

    .line 83
    iget-object v2, v10, Lk/e/a/i;->e:Ljava/lang/String;

    const-string v3, "<init>"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 84
    sget-object v2, Lk/e/a/v;->g:Ljava/lang/Integer;

    aput-object v2, v0, v4

    goto :goto_16

    .line 85
    :cond_17
    iget v2, v8, Lk/e/a/d;->g:I

    const/4 v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, v10, Lk/e/a/i;->c:[C

    invoke-virtual {v8, v2, v3}, Lk/e/a/d;->a(I[C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    :goto_16
    const/4 v2, 0x1

    goto :goto_17

    :cond_18
    const/4 v2, 0x0

    :goto_17
    move v3, v2

    const/4 v2, 0x1

    :goto_18
    add-int/lit8 v4, v2, 0x1

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v11, 0x46

    if-eq v5, v11, :cond_20

    const/16 v11, 0x4c

    if-eq v5, v11, :cond_1e

    const/16 v11, 0x53

    if-eq v5, v11, :cond_1d

    const/16 v11, 0x49

    if-eq v5, v11, :cond_1d

    const/16 v11, 0x4a

    if-eq v5, v11, :cond_1c

    const/16 v11, 0x5a

    if-eq v5, v11, :cond_1d

    const/16 v11, 0x5b

    if-eq v5, v11, :cond_19

    packed-switch v5, :pswitch_data_3

    .line 87
    iput v3, v10, Lk/e/a/i;->o:I

    goto/16 :goto_1e

    :pswitch_b
    add-int/lit8 v2, v3, 0x1

    .line 88
    sget-object v5, Lk/e/a/v;->d:Ljava/lang/Integer;

    aput-object v5, v0, v3

    goto :goto_1c

    .line 89
    :cond_19
    :goto_19
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v11, :cond_1a

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 90
    :cond_1a
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v11, 0x4c

    if-ne v5, v11, :cond_1b

    :goto_1a
    const/4 v11, 0x1

    add-int/2addr v4, v11

    .line 91
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v11, 0x3b

    if-eq v5, v11, :cond_1b

    goto :goto_1a

    :cond_1b
    add-int/lit8 v5, v3, 0x1

    const/4 v11, 0x1

    add-int/2addr v4, v11

    .line 92
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    move v2, v4

    move v3, v5

    goto :goto_1d

    :cond_1c
    add-int/lit8 v2, v3, 0x1

    .line 93
    sget-object v5, Lk/e/a/v;->e:Ljava/lang/Integer;

    aput-object v5, v0, v3

    goto :goto_1c

    :cond_1d
    :pswitch_c
    add-int/lit8 v2, v3, 0x1

    .line 94
    sget-object v5, Lk/e/a/v;->b:Ljava/lang/Integer;

    aput-object v5, v0, v3

    goto :goto_1c

    :cond_1e
    move v2, v4

    .line 95
    :goto_1b
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v11, 0x3b

    if-eq v5, v11, :cond_1f

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_1f
    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v11, v2, 0x1

    .line 96
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    move v3, v5

    move v2, v11

    goto :goto_1d

    :cond_20
    add-int/lit8 v2, v3, 0x1

    .line 97
    sget-object v5, Lk/e/a/v;->c:Ljava/lang/Integer;

    aput-object v5, v0, v3

    :goto_1c
    move v3, v2

    move v2, v4

    :goto_1d
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v11, 0x8

    goto/16 :goto_18

    :cond_21
    :goto_1e
    move/from16 v0, v22

    :goto_1f
    move/from16 v11, v33

    add-int/lit8 v1, v11, -0x2

    if-ge v0, v1, :cond_25

    .line 98
    aget-byte v1, v12, v0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_24

    add-int/lit8 v1, v0, 0x1

    .line 99
    invoke-virtual {v8, v1}, Lk/e/a/d;->e(I)I

    move-result v1

    if-ltz v1, :cond_24

    move/from16 v5, v43

    if-ge v1, v5, :cond_23

    add-int v2, v16, v1

    .line 100
    aget-byte v2, v12, v2

    const/16 v4, 0xff

    and-int/2addr v2, v4

    const/16 v3, 0xbb

    if-ne v2, v3, :cond_22

    move-object/from16 v3, v19

    .line 101
    invoke-virtual {v8, v1, v3}, Lk/e/a/d;->b(I[Lk/e/a/q;)Lk/e/a/q;

    goto :goto_21

    :cond_22
    move-object/from16 v3, v19

    goto :goto_21

    :cond_23
    move-object/from16 v3, v19

    goto :goto_20

    :cond_24
    move-object/from16 v3, v19

    move/from16 v5, v43

    :goto_20
    const/16 v4, 0xff

    :goto_21
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v19, v3

    move/from16 v43, v5

    move/from16 v33, v11

    goto :goto_1f

    :cond_25
    move-object/from16 v3, v19

    goto :goto_22

    :cond_26
    move-object/from16 v3, v19

    move/from16 v11, v33

    :goto_22
    move/from16 v5, v43

    const/16 v4, 0xff

    if-eqz v6, :cond_27

    .line 102
    iget v0, v10, Lk/e/a/i;->b:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_27

    const/4 v1, -0x1

    const/16 v19, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move v2, v15

    move-object/from16 v44, v3

    move-object/from16 v3, v19

    move-object/from16 v19, v7

    const/4 v7, 0x0

    move/from16 v4, v23

    move/from16 v23, v5

    move-object/from16 v5, v24

    .line 103
    invoke-virtual/range {v0 .. v5}, Lk/e/a/s;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_23

    :cond_27
    move-object/from16 v44, v3

    move/from16 v23, v5

    move-object/from16 v19, v7

    const/4 v7, 0x0

    :goto_23
    move-object/from16 v5, v41

    .line 104
    invoke-virtual {v8, v5, v7}, Lk/e/a/d;->a([II)I

    move-result v0

    move-object/from16 v4, v34

    .line 105
    invoke-virtual {v8, v4, v7}, Lk/e/a/d;->a([II)I

    move-result v1

    .line 106
    iget v2, v10, Lk/e/a/i;->b:I

    and-int/lit16 v2, v2, 0x100

    if-nez v2, :cond_28

    const/16 v2, 0x21

    const/16 v24, 0x21

    goto :goto_24

    :cond_28
    const/16 v24, 0x0

    :goto_24
    move/from16 v27, v1

    move/from16 v3, v16

    move/from16 v1, v22

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v22, v0

    const/4 v0, 0x0

    :goto_25
    move/from16 v7, v42

    if-ge v3, v7, :cond_57

    move/from16 v42, v7

    sub-int v7, v3, v16

    move/from16 v30, v14

    move-object/from16 v14, v44

    .line 107
    aget-object v2, v14, v7

    move/from16 v32, v0

    if-eqz v2, :cond_2a

    .line 108
    iget v0, v10, Lk/e/a/i;->b:I

    const/16 v21, 0x2

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_29

    const/4 v0, 0x1

    goto :goto_26

    :cond_29
    const/4 v0, 0x0

    .line 109
    :goto_26
    invoke-virtual {v9, v2}, Lk/e/a/s;->a(Lk/e/a/q;)V

    if-eqz v0, :cond_2a

    .line 110
    iget-short v0, v2, Lk/e/a/q;->b:S

    if-eqz v0, :cond_2a

    const v33, 0xffff

    and-int v0, v0, v33

    .line 111
    invoke-virtual {v9, v0, v2}, Lk/e/a/s;->b(ILk/e/a/q;)V

    .line 112
    iget-object v0, v2, Lk/e/a/q;->c:[I

    if-eqz v0, :cond_2a

    move/from16 v33, v1

    const/4 v0, 0x1

    .line 113
    :goto_27
    iget-object v1, v2, Lk/e/a/q;->c:[I

    move/from16 v34, v3

    const/16 v29, 0x0

    aget v3, v1, v29

    if-gt v0, v3, :cond_2b

    .line 114
    aget v1, v1, v0

    invoke-virtual {v9, v1, v2}, Lk/e/a/s;->b(ILk/e/a/q;)V

    add-int/lit8 v0, v0, 0x1

    move/from16 v3, v34

    goto :goto_27

    :cond_2a
    move/from16 v33, v1

    move/from16 v34, v3

    :cond_2b
    move/from16 v1, v32

    move/from16 v3, v33

    :goto_28
    if-eqz v3, :cond_3d

    .line 115
    iget v0, v10, Lk/e/a/i;->m:I

    const/4 v2, -0x1

    if-eq v0, v7, :cond_2c

    if-ne v0, v2, :cond_3d

    .line 116
    :cond_2c
    iget v0, v10, Lk/e/a/i;->m:I

    if-eq v0, v2, :cond_2f

    if-eqz v20, :cond_2e

    if-eqz v6, :cond_2d

    goto :goto_29

    .line 117
    :cond_2d
    iget v1, v10, Lk/e/a/i;->n:I

    iget v0, v10, Lk/e/a/i;->p:I

    move/from16 v32, v3

    iget-object v3, v10, Lk/e/a/i;->q:[Ljava/lang/Object;

    move-object/from16 v33, v4

    iget v4, v10, Lk/e/a/i;->r:I

    move-object/from16 v41, v5

    iget-object v5, v10, Lk/e/a/i;->s:[Ljava/lang/Object;

    move/from16 v37, v0

    move-object/from16 v0, p1

    move/from16 v38, v15

    const/4 v15, -0x1

    move/from16 v2, v37

    move/from16 v15, v32

    move/from16 v32, v34

    move-object/from16 v45, v33

    move-object/from16 v46, v41

    invoke-virtual/range {v0 .. v5}, Lk/e/a/s;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_2a

    :cond_2e
    :goto_29
    move-object/from16 v45, v4

    move-object/from16 v46, v5

    move/from16 v38, v15

    move/from16 v32, v34

    move v15, v3

    const/4 v1, -0x1

    .line 118
    iget v2, v10, Lk/e/a/i;->o:I

    iget-object v3, v10, Lk/e/a/i;->q:[Ljava/lang/Object;

    iget v4, v10, Lk/e/a/i;->r:I

    iget-object v5, v10, Lk/e/a/i;->s:[Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lk/e/a/s;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :goto_2a
    const/16 v33, 0x0

    goto :goto_2b

    :cond_2f
    move-object/from16 v45, v4

    move-object/from16 v46, v5

    move/from16 v38, v15

    move/from16 v32, v34

    move v15, v3

    move/from16 v33, v1

    :goto_2b
    if-ge v15, v11, :cond_3c

    .line 119
    iget-object v5, v10, Lk/e/a/i;->c:[C

    .line 120
    iget-object v4, v10, Lk/e/a/i;->g:[Lk/e/a/q;

    if-eqz v20, :cond_30

    .line 121
    iget-object v0, v8, Lk/e/a/d;->a:[B

    add-int/lit8 v3, v15, 0x1

    aget-byte v0, v0, v15

    const/16 v2, 0xff

    and-int/2addr v0, v2

    move v1, v3

    move v3, v0

    const/4 v0, 0x0

    goto :goto_2c

    :cond_30
    const/4 v0, -0x1

    const/16 v2, 0xff

    .line 122
    iput v0, v10, Lk/e/a/i;->m:I

    move v1, v15

    const/4 v0, 0x0

    const/16 v3, 0xff

    .line 123
    :goto_2c
    iput v0, v10, Lk/e/a/i;->p:I

    const/16 v15, 0x40

    if-ge v3, v15, :cond_31

    const/4 v15, 0x3

    .line 124
    iput v15, v10, Lk/e/a/i;->n:I

    .line 125
    iput v0, v10, Lk/e/a/i;->r:I

    move v0, v1

    move-object/from16 v34, v4

    move/from16 v37, v11

    goto/16 :goto_33

    :cond_31
    const/16 v0, 0x80

    if-ge v3, v0, :cond_32

    add-int/lit8 v15, v3, -0x40

    .line 126
    iget-object v3, v10, Lk/e/a/i;->s:[Ljava/lang/Object;

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v37, v11

    const/16 v11, 0xff

    move-object v2, v3

    move/from16 v3, v34

    move-object/from16 v34, v4

    move-object v4, v5

    move-object/from16 v5, v34

    .line 127
    invoke-virtual/range {v0 .. v5}, Lk/e/a/d;->a(I[Ljava/lang/Object;I[C[Lk/e/a/q;)I

    move-result v0

    const/4 v1, 0x4

    .line 128
    iput v1, v10, Lk/e/a/i;->n:I

    const/4 v1, 0x1

    .line 129
    iput v1, v10, Lk/e/a/i;->r:I

    :goto_2d
    move v3, v15

    goto/16 :goto_33

    :cond_32
    move-object/from16 v34, v4

    move/from16 v37, v11

    const/16 v11, 0xff

    const/16 v0, 0xf7

    if-lt v3, v0, :cond_3b

    .line 130
    invoke-virtual {v8, v1}, Lk/e/a/d;->e(I)I

    move-result v15

    add-int/lit8 v1, v1, 0x2

    if-ne v3, v0, :cond_33

    .line 131
    iget-object v2, v10, Lk/e/a/i;->s:[Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v4, v5

    move-object/from16 v5, v34

    .line 132
    invoke-virtual/range {v0 .. v5}, Lk/e/a/d;->a(I[Ljava/lang/Object;I[C[Lk/e/a/q;)I

    move-result v0

    const/4 v1, 0x4

    .line 133
    iput v1, v10, Lk/e/a/i;->n:I

    const/4 v1, 0x1

    .line 134
    iput v1, v10, Lk/e/a/i;->r:I

    goto :goto_2d

    :cond_33
    const/16 v0, 0xf8

    const/16 v2, 0xfb

    if-lt v3, v0, :cond_34

    if-ge v3, v2, :cond_34

    const/4 v0, 0x2

    .line 135
    iput v0, v10, Lk/e/a/i;->n:I

    sub-int/2addr v2, v3

    .line 136
    iput v2, v10, Lk/e/a/i;->p:I

    .line 137
    iget v0, v10, Lk/e/a/i;->o:I

    sub-int/2addr v0, v2

    iput v0, v10, Lk/e/a/i;->o:I

    const/4 v0, 0x0

    .line 138
    iput v0, v10, Lk/e/a/i;->r:I

    goto :goto_2e

    :cond_34
    const/4 v0, 0x0

    if-ne v3, v2, :cond_36

    const/4 v2, 0x3

    .line 139
    iput v2, v10, Lk/e/a/i;->n:I

    .line 140
    iput v0, v10, Lk/e/a/i;->r:I

    :cond_35
    :goto_2e
    move v0, v1

    goto :goto_2d

    :cond_36
    if-ge v3, v11, :cond_39

    if-eqz v6, :cond_37

    .line 141
    iget v0, v10, Lk/e/a/i;->o:I

    goto :goto_2f

    :cond_37
    const/4 v0, 0x0

    :goto_2f
    add-int/lit16 v4, v3, -0xfb

    move v3, v0

    move/from16 v39, v4

    :goto_30
    if-lez v39, :cond_38

    .line 142
    iget-object v2, v10, Lk/e/a/i;->q:[Ljava/lang/Object;

    add-int/lit8 v40, v3, 0x1

    move-object/from16 v0, p0

    move v11, v4

    move-object v4, v5

    move-object/from16 v41, v5

    move-object/from16 v5, v34

    .line 143
    invoke-virtual/range {v0 .. v5}, Lk/e/a/d;->a(I[Ljava/lang/Object;I[C[Lk/e/a/q;)I

    move-result v1

    add-int/lit8 v39, v39, -0x1

    move v4, v11

    move/from16 v3, v40

    move-object/from16 v5, v41

    const/16 v11, 0xff

    goto :goto_30

    :cond_38
    move v11, v4

    const/4 v0, 0x1

    .line 144
    iput v0, v10, Lk/e/a/i;->n:I

    .line 145
    iput v11, v10, Lk/e/a/i;->p:I

    .line 146
    iget v0, v10, Lk/e/a/i;->o:I

    add-int/2addr v0, v11

    iput v0, v10, Lk/e/a/i;->o:I

    const/4 v0, 0x0

    .line 147
    iput v0, v10, Lk/e/a/i;->r:I

    goto :goto_2e

    :cond_39
    move-object/from16 v41, v5

    const/4 v0, 0x0

    .line 148
    invoke-virtual {v8, v1}, Lk/e/a/d;->e(I)I

    move-result v11

    add-int/lit8 v1, v1, 0x2

    .line 149
    iput v0, v10, Lk/e/a/i;->n:I

    .line 150
    iput v11, v10, Lk/e/a/i;->p:I

    .line 151
    iput v11, v10, Lk/e/a/i;->o:I

    const/4 v5, 0x0

    :goto_31
    if-ge v5, v11, :cond_3a

    .line 152
    iget-object v2, v10, Lk/e/a/i;->q:[Ljava/lang/Object;

    move-object/from16 v0, p0

    move v3, v5

    move-object/from16 v4, v41

    move/from16 v39, v5

    move-object/from16 v5, v34

    .line 153
    invoke-virtual/range {v0 .. v5}, Lk/e/a/d;->a(I[Ljava/lang/Object;I[C[Lk/e/a/q;)I

    move-result v1

    add-int/lit8 v5, v39, 0x1

    goto :goto_31

    .line 154
    :cond_3a
    invoke-virtual {v8, v1}, Lk/e/a/d;->e(I)I

    move-result v11

    add-int/lit8 v1, v1, 0x2

    .line 155
    iput v11, v10, Lk/e/a/i;->r:I

    const/4 v5, 0x0

    :goto_32
    if-ge v5, v11, :cond_35

    .line 156
    iget-object v2, v10, Lk/e/a/i;->s:[Ljava/lang/Object;

    move-object/from16 v0, p0

    move v3, v5

    move-object/from16 v4, v41

    move/from16 v39, v5

    move-object/from16 v5, v34

    .line 157
    invoke-virtual/range {v0 .. v5}, Lk/e/a/d;->a(I[Ljava/lang/Object;I[C[Lk/e/a/q;)I

    move-result v1

    add-int/lit8 v5, v39, 0x1

    goto :goto_32

    .line 158
    :goto_33
    iget v1, v10, Lk/e/a/i;->m:I

    const/4 v2, 0x1

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    iput v3, v10, Lk/e/a/i;->m:I

    move-object/from16 v1, v34

    .line 159
    invoke-virtual {v8, v3, v1}, Lk/e/a/d;->b(I[Lk/e/a/q;)Lk/e/a/q;

    move v3, v0

    move/from16 v34, v32

    move/from16 v1, v33

    move/from16 v11, v37

    move/from16 v15, v38

    move-object/from16 v4, v45

    move-object/from16 v5, v46

    goto/16 :goto_28

    .line 160
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_3c
    move/from16 v34, v32

    move/from16 v1, v33

    move/from16 v15, v38

    move-object/from16 v4, v45

    move-object/from16 v5, v46

    const/4 v3, 0x0

    goto/16 :goto_28

    :cond_3d
    move-object/from16 v45, v4

    move-object/from16 v46, v5

    move/from16 v37, v11

    move/from16 v38, v15

    move/from16 v32, v34

    move v15, v3

    if-eqz v1, :cond_3f

    .line 161
    iget v0, v10, Lk/e/a/i;->b:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_3e

    const/16 v1, 0x100

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    .line 162
    invoke-virtual/range {v0 .. v5}, Lk/e/a/s;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_3e
    const/4 v11, 0x0

    goto :goto_34

    :cond_3f
    move v11, v1

    .line 163
    :goto_34
    aget-byte v0, v12, v32

    const/16 v1, 0xff

    and-int/lit16 v5, v0, 0xff

    const/16 v0, 0xc8

    packed-switch v5, :pswitch_data_4

    .line 164
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_d
    add-int/lit8 v3, v32, 0x1

    .line 165
    invoke-virtual {v8, v3}, Lk/e/a/d;->b(I)I

    move-result v1

    add-int/2addr v1, v7

    aget-object v1, v14, v1

    .line 166
    invoke-virtual {v9, v0, v1}, Lk/e/a/s;->a(ILk/e/a/q;)V

    add-int/lit8 v3, v32, 0x5

    move/from16 v33, v6

    move/from16 v39, v15

    move/from16 v4, v22

    move/from16 v5, v25

    move-object/from16 v11, v46

    const/4 v0, 0x1

    :goto_35
    const/4 v1, 0x4

    const/16 v2, 0xff

    const/16 v28, 0x7

    const/16 v31, 0x84

    goto/16 :goto_50

    :pswitch_e
    const/16 v1, 0xda

    if-ge v5, v1, :cond_40

    add-int/lit8 v5, v5, -0x31

    goto :goto_36

    :cond_40
    add-int/lit8 v5, v5, -0x14

    :goto_36
    add-int/lit8 v3, v32, 0x1

    .line 167
    invoke-virtual {v8, v3}, Lk/e/a/d;->e(I)I

    move-result v1

    add-int/2addr v1, v7

    aget-object v1, v14, v1

    const/16 v2, 0xa7

    if-eq v5, v2, :cond_43

    const/16 v3, 0xa8

    if-ne v5, v3, :cond_41

    goto :goto_38

    :cond_41
    if-ge v5, v2, :cond_42

    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x1

    xor-int/lit8 v3, v5, 0x1

    sub-int/2addr v3, v2

    goto :goto_37

    :cond_42
    xor-int/lit8 v3, v5, 0x1

    :goto_37
    add-int/lit8 v2, v7, 0x3

    .line 168
    invoke-virtual {v8, v2, v14}, Lk/e/a/d;->b(I[Lk/e/a/q;)Lk/e/a/q;

    move-result-object v2

    .line 169
    invoke-virtual {v9, v3, v2}, Lk/e/a/s;->a(ILk/e/a/q;)V

    .line 170
    invoke-virtual {v9, v0, v1}, Lk/e/a/s;->a(ILk/e/a/q;)V

    const/4 v2, 0x1

    goto :goto_39

    :cond_43
    :goto_38
    add-int/lit8 v5, v5, 0x21

    .line 171
    invoke-virtual {v9, v5, v1}, Lk/e/a/s;->a(ILk/e/a/q;)V

    move v2, v11

    :goto_39
    add-int/lit8 v3, v32, 0x3

    move/from16 v33, v6

    goto/16 :goto_42

    :pswitch_f
    sub-int v5, v5, v24

    add-int/lit8 v3, v32, 0x1

    .line 172
    invoke-virtual {v8, v3}, Lk/e/a/d;->b(I)I

    move-result v0

    add-int/2addr v0, v7

    aget-object v0, v14, v0

    .line 173
    invoke-virtual {v9, v5, v0}, Lk/e/a/s;->a(ILk/e/a/q;)V

    add-int/lit8 v3, v32, 0x5

    const/16 v4, 0x84

    goto/16 :goto_3d

    :pswitch_10
    add-int/lit8 v3, v32, 0x1

    .line 174
    invoke-virtual {v8, v3, v13}, Lk/e/a/d;->a(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v32, 0x3

    aget-byte v1, v12, v3

    const/16 v2, 0xff

    and-int/2addr v1, v2

    .line 175
    move-object v2, v9

    check-cast v2, Lk/e/a/t;

    .line 176
    iget-object v3, v2, Lk/e/a/t;->k:Lk/e/a/c;

    iget v3, v3, Lk/e/a/c;->b:I

    iput v3, v2, Lk/e/a/t;->Z:I

    .line 177
    iget-object v3, v2, Lk/e/a/t;->c:Lk/e/a/x;

    const/4 v4, 0x7

    .line 178
    invoke-virtual {v3, v4, v0}, Lk/e/a/x;->a(ILjava/lang/String;)Lk/e/a/w;

    move-result-object v0

    .line 179
    iget-object v3, v2, Lk/e/a/t;->k:Lk/e/a/c;

    iget v5, v0, Lk/e/a/w;->a:I

    const/16 v4, 0xc5

    invoke-virtual {v3, v4, v5}, Lk/e/a/c;->b(II)Lk/e/a/c;

    invoke-virtual {v3, v1}, Lk/e/a/c;->b(I)Lk/e/a/c;

    .line 180
    iget-object v3, v2, Lk/e/a/t;->Q:Lk/e/a/q;

    if-eqz v3, :cond_46

    .line 181
    iget v3, v2, Lk/e/a/t;->N:I

    const/4 v5, 0x4

    if-eq v3, v5, :cond_45

    const/4 v5, 0x3

    if-ne v3, v5, :cond_44

    goto :goto_3a

    .line 182
    :cond_44
    iget v0, v2, Lk/e/a/t;->R:I

    const/4 v3, 0x1

    rsub-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    iput v1, v2, Lk/e/a/t;->R:I

    goto :goto_3b

    .line 183
    :cond_45
    :goto_3a
    iget-object v3, v2, Lk/e/a/t;->Q:Lk/e/a/q;

    iget-object v3, v3, Lk/e/a/q;->j:Lk/e/a/n;

    iget-object v2, v2, Lk/e/a/t;->c:Lk/e/a/x;

    invoke-virtual {v3, v4, v1, v0, v2}, Lk/e/a/n;->a(IILk/e/a/w;Lk/e/a/x;)V

    :cond_46
    :goto_3b
    const/16 v4, 0x84

    goto :goto_3c

    :pswitch_11
    add-int/lit8 v3, v32, 0x1

    .line 184
    aget-byte v0, v12, v3

    const/16 v1, 0xff

    and-int/2addr v0, v1

    const/16 v4, 0x84

    if-ne v0, v4, :cond_47

    add-int/lit8 v3, v32, 0x2

    .line 185
    invoke-virtual {v8, v3}, Lk/e/a/d;->e(I)I

    move-result v0

    add-int/lit8 v3, v32, 0x4

    invoke-virtual {v8, v3}, Lk/e/a/d;->d(I)S

    move-result v1

    .line 186
    invoke-virtual {v9, v0, v1}, Lk/e/a/s;->a(II)V

    add-int/lit8 v3, v32, 0x6

    goto :goto_3d

    :cond_47
    add-int/lit8 v3, v32, 0x2

    .line 187
    invoke-virtual {v8, v3}, Lk/e/a/d;->e(I)I

    move-result v1

    invoke-virtual {v9, v0, v1}, Lk/e/a/s;->d(II)V

    :goto_3c
    add-int/lit8 v3, v32, 0x4

    goto :goto_3d

    :pswitch_12
    const/16 v4, 0x84

    add-int/lit8 v3, v32, 0x1

    .line 188
    invoke-virtual {v8, v3, v13}, Lk/e/a/d;->a(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v5, v0}, Lk/e/a/s;->a(ILjava/lang/String;)V

    add-int/lit8 v3, v32, 0x3

    :goto_3d
    move/from16 v33, v6

    goto/16 :goto_41

    :pswitch_13
    const/16 v4, 0x84

    .line 189
    iget-object v0, v8, Lk/e/a/d;->b:[I

    add-int/lit8 v3, v32, 0x1

    invoke-virtual {v8, v3}, Lk/e/a/d;->e(I)I

    move-result v1

    aget v0, v0, v1

    .line 190
    iget-object v1, v8, Lk/e/a/d;->b:[I

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v8, v2}, Lk/e/a/d;->e(I)I

    move-result v2

    aget v1, v1, v2

    .line 191
    invoke-virtual {v8, v1, v13}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    add-int/2addr v1, v3

    .line 192
    invoke-virtual {v8, v1, v13}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v1

    .line 193
    iget-object v3, v8, Lk/e/a/d;->e:[I

    invoke-virtual {v8, v0}, Lk/e/a/d;->e(I)I

    move-result v0

    aget v0, v3, v0

    .line 194
    invoke-virtual {v8, v0}, Lk/e/a/d;->e(I)I

    move-result v3

    invoke-virtual {v8, v3, v13}, Lk/e/a/d;->b(I[C)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/e/a/o;

    add-int/lit8 v5, v0, 0x2

    .line 195
    invoke-virtual {v8, v5}, Lk/e/a/d;->e(I)I

    move-result v5

    new-array v4, v5, [Ljava/lang/Object;

    const/16 v18, 0x4

    add-int/lit8 v0, v0, 0x4

    move/from16 v33, v6

    const/4 v6, 0x0

    :goto_3e
    if-ge v6, v5, :cond_48

    move/from16 v31, v5

    .line 196
    invoke-virtual {v8, v0}, Lk/e/a/d;->e(I)I

    move-result v5

    invoke-virtual {v8, v5, v13}, Lk/e/a/d;->b(I[C)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x2

    add-int/2addr v0, v5

    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v31

    goto :goto_3e

    .line 197
    :cond_48
    move-object v0, v9

    check-cast v0, Lk/e/a/t;

    .line 198
    iget-object v5, v0, Lk/e/a/t;->k:Lk/e/a/c;

    iget v5, v5, Lk/e/a/c;->b:I

    iput v5, v0, Lk/e/a/t;->Z:I

    .line 199
    iget-object v5, v0, Lk/e/a/t;->c:Lk/e/a/x;

    .line 200
    invoke-virtual {v5, v3, v4}, Lk/e/a/x;->a(Lk/e/a/o;[Ljava/lang/Object;)Lk/e/a/w;

    move-result-object v3

    .line 201
    iget v3, v3, Lk/e/a/w;->a:I

    const/16 v4, 0x12

    invoke-virtual {v5, v4, v2, v1, v3}, Lk/e/a/x;->a(ILjava/lang/String;Ljava/lang/String;I)Lk/e/a/w;

    move-result-object v1

    .line 202
    iget-object v2, v0, Lk/e/a/t;->k:Lk/e/a/c;

    iget v3, v1, Lk/e/a/w;->a:I

    const/16 v4, 0xba

    invoke-virtual {v2, v4, v3}, Lk/e/a/c;->b(II)Lk/e/a/c;

    .line 203
    iget-object v2, v0, Lk/e/a/t;->k:Lk/e/a/c;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 204
    iget-object v2, v0, Lk/e/a/t;->Q:Lk/e/a/q;

    if-eqz v2, :cond_4c

    .line 205
    iget v2, v0, Lk/e/a/t;->N:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4b

    const/4 v3, 0x3

    if-ne v2, v3, :cond_49

    goto :goto_3f

    .line 206
    :cond_49
    invoke-virtual {v1}, Lk/e/a/w;->a()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    shr-int/2addr v1, v3

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    add-int/2addr v2, v1

    .line 207
    iget v1, v0, Lk/e/a/t;->R:I

    add-int/2addr v1, v2

    .line 208
    iget v2, v0, Lk/e/a/t;->S:I

    if-le v1, v2, :cond_4a

    .line 209
    iput v1, v0, Lk/e/a/t;->S:I

    .line 210
    :cond_4a
    iput v1, v0, Lk/e/a/t;->R:I

    goto :goto_40

    .line 211
    :cond_4b
    :goto_3f
    iget-object v2, v0, Lk/e/a/t;->Q:Lk/e/a/q;

    iget-object v2, v2, Lk/e/a/q;->j:Lk/e/a/n;

    iget-object v0, v0, Lk/e/a/t;->c:Lk/e/a/x;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3, v1, v0}, Lk/e/a/n;->a(IILk/e/a/w;Lk/e/a/x;)V

    :cond_4c
    :goto_40
    add-int/lit8 v3, v32, 0x5

    :goto_41
    move v2, v11

    :goto_42
    move v0, v2

    move/from16 v39, v15

    move/from16 v4, v22

    move/from16 v5, v25

    move-object/from16 v11, v46

    goto/16 :goto_35

    :pswitch_14
    move/from16 v33, v6

    .line 212
    iget-object v0, v8, Lk/e/a/d;->b:[I

    add-int/lit8 v3, v32, 0x1

    invoke-virtual {v8, v3}, Lk/e/a/d;->e(I)I

    move-result v1

    aget v0, v0, v1

    .line 213
    iget-object v1, v8, Lk/e/a/d;->b:[I

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v8, v2}, Lk/e/a/d;->e(I)I

    move-result v2

    aget v1, v1, v2

    .line 214
    invoke-virtual {v8, v0, v13}, Lk/e/a/d;->a(I[C)Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-virtual {v8, v1, v13}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    add-int/2addr v1, v4

    .line 216
    invoke-virtual {v8, v1, v13}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v4

    const/16 v1, 0xb6

    if-ge v5, v1, :cond_4d

    .line 217
    invoke-virtual {v9, v5, v2, v3, v4}, Lk/e/a/s;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v34, v11

    const/16 v28, 0x7

    const/16 v31, 0x84

    move v11, v5

    goto :goto_44

    :cond_4d
    add-int/lit8 v0, v0, -0x1

    .line 218
    aget-byte v0, v12, v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_4e

    const/4 v6, 0x1

    goto :goto_43

    :cond_4e
    const/4 v6, 0x0

    :goto_43
    move-object/from16 v0, p1

    move v1, v5

    const/16 v28, 0x7

    const/16 v31, 0x84

    move/from16 v34, v11

    move v11, v5

    move v5, v6

    .line 219
    invoke-virtual/range {v0 .. v5}, Lk/e/a/s;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_44
    const/16 v0, 0xb9

    if-ne v11, v0, :cond_4f

    add-int/lit8 v3, v32, 0x5

    goto :goto_45

    :cond_4f
    add-int/lit8 v3, v32, 0x3

    :goto_45
    move/from16 v39, v15

    goto/16 :goto_48

    :pswitch_15
    move/from16 v33, v6

    move/from16 v34, v11

    const/16 v28, 0x7

    const/16 v31, 0x84

    and-int/lit8 v0, v7, 0x3

    const/4 v1, 0x4

    rsub-int/lit8 v0, v0, 0x4

    add-int v0, v0, v32

    .line 220
    invoke-virtual {v8, v0}, Lk/e/a/d;->b(I)I

    move-result v1

    add-int/2addr v1, v7

    aget-object v1, v14, v1

    add-int/lit8 v2, v0, 0x4

    .line 221
    invoke-virtual {v8, v2}, Lk/e/a/d;->b(I)I

    move-result v2

    const/16 v3, 0x8

    add-int/2addr v0, v3

    .line 222
    new-array v4, v2, [I

    .line 223
    new-array v5, v2, [Lk/e/a/q;

    move v6, v0

    const/4 v0, 0x0

    :goto_46
    if-ge v0, v2, :cond_50

    .line 224
    invoke-virtual {v8, v6}, Lk/e/a/d;->b(I)I

    move-result v11

    aput v11, v4, v0

    add-int/lit8 v11, v6, 0x4

    .line 225
    invoke-virtual {v8, v11}, Lk/e/a/d;->b(I)I

    move-result v11

    add-int/2addr v11, v7

    aget-object v11, v14, v11

    aput-object v11, v5, v0

    add-int/lit8 v6, v6, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 226
    :cond_50
    move-object v0, v9

    check-cast v0, Lk/e/a/t;

    .line 227
    iget-object v11, v0, Lk/e/a/t;->k:Lk/e/a/c;

    iget v3, v11, Lk/e/a/c;->b:I

    iput v3, v0, Lk/e/a/t;->Z:I

    const/16 v3, 0xab

    .line 228
    invoke-virtual {v11, v3}, Lk/e/a/c;->b(I)Lk/e/a/c;

    iget-object v3, v0, Lk/e/a/t;->k:Lk/e/a/c;

    iget v3, v3, Lk/e/a/c;->b:I

    const/16 v18, 0x4

    rem-int/lit8 v3, v3, 0x4

    rsub-int/lit8 v3, v3, 0x4

    rem-int/lit8 v3, v3, 0x4

    move/from16 v32, v6

    move/from16 v39, v15

    const/4 v6, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v15, v6, v3}, Lk/e/a/c;->a([BII)Lk/e/a/c;

    .line 229
    iget-object v3, v0, Lk/e/a/t;->k:Lk/e/a/c;

    iget v6, v0, Lk/e/a/t;->Z:I

    const/4 v11, 0x1

    invoke-virtual {v1, v3, v6, v11}, Lk/e/a/q;->a(Lk/e/a/c;IZ)V

    .line 230
    iget-object v3, v0, Lk/e/a/t;->k:Lk/e/a/c;

    invoke-virtual {v3, v2}, Lk/e/a/c;->c(I)Lk/e/a/c;

    const/4 v3, 0x0

    :goto_47
    if-ge v3, v2, :cond_51

    .line 231
    iget-object v6, v0, Lk/e/a/t;->k:Lk/e/a/c;

    aget v15, v4, v3

    invoke-virtual {v6, v15}, Lk/e/a/c;->c(I)Lk/e/a/c;

    .line 232
    aget-object v6, v5, v3

    iget-object v15, v0, Lk/e/a/t;->k:Lk/e/a/c;

    move/from16 p3, v2

    iget v2, v0, Lk/e/a/t;->Z:I

    invoke-virtual {v6, v15, v2, v11}, Lk/e/a/q;->a(Lk/e/a/c;IZ)V

    add-int/lit8 v3, v3, 0x1

    move/from16 v2, p3

    const/4 v11, 0x1

    const/4 v15, 0x0

    goto :goto_47

    .line 233
    :cond_51
    invoke-virtual {v0, v1, v5}, Lk/e/a/t;->a(Lk/e/a/q;[Lk/e/a/q;)V

    move/from16 v3, v32

    :goto_48
    const/4 v1, 0x4

    goto/16 :goto_4c

    :pswitch_16
    move/from16 v33, v6

    move/from16 v34, v11

    move/from16 v39, v15

    const/16 v28, 0x7

    const/16 v31, 0x84

    and-int/lit8 v0, v7, 0x3

    const/4 v1, 0x4

    rsub-int/lit8 v0, v0, 0x4

    add-int v0, v0, v32

    .line 234
    invoke-virtual {v8, v0}, Lk/e/a/d;->b(I)I

    move-result v2

    add-int/2addr v2, v7

    aget-object v2, v14, v2

    add-int/lit8 v3, v0, 0x4

    .line 235
    invoke-virtual {v8, v3}, Lk/e/a/d;->b(I)I

    move-result v3

    add-int/lit8 v4, v0, 0x8

    .line 236
    invoke-virtual {v8, v4}, Lk/e/a/d;->b(I)I

    move-result v4

    add-int/lit8 v0, v0, 0xc

    sub-int v5, v4, v3

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 237
    new-array v6, v5, [Lk/e/a/q;

    const/4 v11, 0x0

    :goto_49
    if-ge v11, v5, :cond_52

    .line 238
    invoke-virtual {v8, v0}, Lk/e/a/d;->b(I)I

    move-result v15

    add-int/2addr v15, v7

    aget-object v15, v14, v15

    aput-object v15, v6, v11

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v11, v11, 0x1

    goto :goto_49

    .line 239
    :cond_52
    invoke-virtual {v9, v3, v4, v2, v6}, Lk/e/a/s;->a(IILk/e/a/q;[Lk/e/a/q;)V

    move v3, v0

    goto/16 :goto_4c

    :pswitch_17
    move/from16 v33, v6

    move/from16 v34, v11

    move/from16 v39, v15

    const/4 v1, 0x4

    const/16 v28, 0x7

    const/16 v31, 0x84

    move v11, v5

    add-int/lit8 v3, v32, 0x1

    .line 240
    invoke-virtual {v8, v3}, Lk/e/a/d;->d(I)S

    move-result v0

    add-int/2addr v0, v7

    aget-object v0, v14, v0

    .line 241
    invoke-virtual {v9, v11, v0}, Lk/e/a/s;->a(ILk/e/a/q;)V

    goto/16 :goto_4b

    :pswitch_18
    move/from16 v33, v6

    move/from16 v34, v11

    move/from16 v39, v15

    const/4 v1, 0x4

    const/16 v28, 0x7

    const/16 v31, 0x84

    add-int/lit8 v3, v32, 0x1

    .line 242
    aget-byte v0, v12, v3

    const/16 v2, 0xff

    and-int/2addr v0, v2

    add-int/lit8 v3, v32, 0x2

    aget-byte v2, v12, v3

    invoke-virtual {v9, v0, v2}, Lk/e/a/s;->a(II)V

    goto :goto_4b

    :pswitch_19
    move/from16 v33, v6

    move/from16 v34, v11

    move/from16 v39, v15

    const/4 v1, 0x4

    const/16 v28, 0x7

    const/16 v31, 0x84

    move v11, v5

    add-int/lit8 v5, v11, -0x3b

    shr-int/lit8 v0, v5, 0x2

    add-int/lit8 v0, v0, 0x36

    const/4 v2, 0x3

    and-int/2addr v2, v5

    .line 243
    invoke-virtual {v9, v0, v2}, Lk/e/a/s;->d(II)V

    goto :goto_4a

    :pswitch_1a
    move/from16 v33, v6

    move/from16 v34, v11

    move/from16 v39, v15

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/16 v28, 0x7

    const/16 v31, 0x84

    move v11, v5

    add-int/lit8 v5, v11, -0x1a

    shr-int/lit8 v0, v5, 0x2

    add-int/lit8 v0, v0, 0x15

    and-int/2addr v2, v5

    .line 244
    invoke-virtual {v9, v0, v2}, Lk/e/a/s;->d(II)V

    :goto_4a
    add-int/lit8 v3, v32, 0x1

    goto :goto_4c

    :pswitch_1b
    move/from16 v33, v6

    move/from16 v34, v11

    move/from16 v39, v15

    const/4 v1, 0x4

    const/16 v28, 0x7

    const/16 v31, 0x84

    move v11, v5

    add-int/lit8 v3, v32, 0x1

    .line 245
    aget-byte v0, v12, v3

    const/16 v2, 0xff

    and-int/2addr v0, v2

    invoke-virtual {v9, v11, v0}, Lk/e/a/s;->d(II)V

    add-int/lit8 v3, v32, 0x2

    goto :goto_4c

    :pswitch_1c
    move/from16 v33, v6

    move/from16 v34, v11

    move/from16 v39, v15

    const/4 v1, 0x4

    const/16 v28, 0x7

    const/16 v31, 0x84

    add-int/lit8 v3, v32, 0x1

    .line 246
    invoke-virtual {v8, v3}, Lk/e/a/d;->e(I)I

    move-result v0

    invoke-virtual {v8, v0, v13}, Lk/e/a/d;->b(I[C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Lk/e/a/s;->a(Ljava/lang/Object;)V

    :goto_4b
    add-int/lit8 v3, v32, 0x3

    :goto_4c
    move/from16 v4, v22

    move/from16 v5, v25

    move/from16 v0, v34

    move-object/from16 v11, v46

    :goto_4d
    const/16 v2, 0xff

    goto/16 :goto_50

    :pswitch_1d
    move/from16 v33, v6

    move/from16 v34, v11

    move/from16 v39, v15

    const/4 v1, 0x4

    const/16 v28, 0x7

    const/16 v31, 0x84

    add-int/lit8 v3, v32, 0x1

    .line 247
    aget-byte v0, v12, v3

    const/16 v2, 0xff

    and-int/2addr v0, v2

    invoke-virtual {v8, v0, v13}, Lk/e/a/d;->b(I[C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Lk/e/a/s;->a(Ljava/lang/Object;)V

    goto :goto_4e

    :pswitch_1e
    move/from16 v33, v6

    move/from16 v34, v11

    move/from16 v39, v15

    const/4 v1, 0x4

    const/16 v2, 0xff

    const/16 v28, 0x7

    const/16 v31, 0x84

    move v11, v5

    add-int/lit8 v3, v32, 0x1

    .line 248
    invoke-virtual {v8, v3}, Lk/e/a/d;->d(I)S

    move-result v0

    invoke-virtual {v9, v11, v0}, Lk/e/a/s;->b(II)V

    add-int/lit8 v3, v32, 0x3

    goto :goto_4f

    :pswitch_1f
    move/from16 v33, v6

    move/from16 v34, v11

    move/from16 v39, v15

    const/4 v1, 0x4

    const/16 v2, 0xff

    const/16 v28, 0x7

    const/16 v31, 0x84

    move v11, v5

    add-int/lit8 v3, v32, 0x1

    .line 249
    aget-byte v0, v12, v3

    invoke-virtual {v9, v11, v0}, Lk/e/a/s;->b(II)V

    :goto_4e
    add-int/lit8 v3, v32, 0x2

    goto :goto_4f

    :pswitch_20
    move/from16 v33, v6

    move/from16 v34, v11

    move/from16 v39, v15

    const/4 v1, 0x4

    const/16 v2, 0xff

    const/16 v28, 0x7

    const/16 v31, 0x84

    move v11, v5

    .line 250
    invoke-virtual {v9, v11}, Lk/e/a/s;->a(I)V

    add-int/lit8 v3, v32, 0x1

    :goto_4f
    move/from16 v4, v22

    move/from16 v5, v25

    move/from16 v0, v34

    move-object/from16 v11, v46

    :goto_50
    if-eqz v11, :cond_54

    .line 251
    array-length v6, v11

    if-ge v5, v6, :cond_54

    if-gt v4, v7, :cond_54

    if-ne v4, v7, :cond_53

    .line 252
    aget v4, v11, v5

    .line 253
    invoke-virtual {v8, v10, v4}, Lk/e/a/d;->a(Lk/e/a/i;I)I

    move-result v4

    .line 254
    invoke-virtual {v8, v4, v13}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x2

    add-int/2addr v4, v15

    .line 255
    iget v15, v10, Lk/e/a/i;->h:I

    iget-object v1, v10, Lk/e/a/i;->i:Lk/e/a/z;

    const/4 v2, 0x1

    .line 256
    invoke-virtual {v9, v15, v1, v6, v2}, Lk/e/a/s;->a(ILk/e/a/z;Ljava/lang/String;Z)Lk/e/a/a;

    move-result-object v1

    .line 257
    invoke-virtual {v8, v1, v4, v2, v13}, Lk/e/a/d;->a(Lk/e/a/a;IZ[C)I

    :cond_53
    add-int/lit8 v5, v5, 0x1

    .line 258
    invoke-virtual {v8, v11, v5}, Lk/e/a/d;->a([II)I

    move-result v4

    const/4 v1, 0x4

    goto/16 :goto_4d

    :cond_54
    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v15, v45

    :goto_51
    if-eqz v15, :cond_56

    .line 259
    array-length v6, v15

    if-ge v1, v6, :cond_56

    if-gt v2, v7, :cond_56

    if-ne v2, v7, :cond_55

    .line 260
    aget v2, v15, v1

    .line 261
    invoke-virtual {v8, v10, v2}, Lk/e/a/d;->a(Lk/e/a/i;I)I

    move-result v2

    .line 262
    invoke-virtual {v8, v2, v13}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x2

    add-int/lit8 v2, v2, 0x2

    move/from16 p3, v0

    .line 263
    iget v0, v10, Lk/e/a/i;->h:I

    move/from16 v22, v3

    iget-object v3, v10, Lk/e/a/i;->i:Lk/e/a/z;

    move/from16 v25, v7

    const/4 v7, 0x0

    .line 264
    invoke-virtual {v9, v0, v3, v6, v7}, Lk/e/a/s;->a(ILk/e/a/z;Ljava/lang/String;Z)Lk/e/a/a;

    move-result-object v0

    const/4 v3, 0x1

    .line 265
    invoke-virtual {v8, v0, v2, v3, v13}, Lk/e/a/d;->a(Lk/e/a/a;IZ[C)I

    goto :goto_52

    :cond_55
    move/from16 p3, v0

    move/from16 v22, v3

    move/from16 v25, v7

    const/4 v7, 0x0

    :goto_52
    add-int/lit8 v1, v1, 0x1

    .line 266
    invoke-virtual {v8, v15, v1}, Lk/e/a/d;->a([II)I

    move-result v2

    move/from16 v0, p3

    move/from16 v3, v22

    move/from16 v7, v25

    goto :goto_51

    :cond_56
    move/from16 p3, v0

    move/from16 v22, v3

    const/4 v7, 0x0

    move/from16 v0, p3

    move/from16 v26, v1

    move/from16 v27, v2

    move/from16 v25, v5

    move-object v5, v11

    move-object/from16 v44, v14

    move/from16 v3, v22

    move/from16 v14, v30

    move/from16 v6, v33

    move/from16 v11, v37

    move/from16 v1, v39

    move/from16 v22, v4

    move-object v4, v15

    move/from16 v15, v38

    goto/16 :goto_25

    :cond_57
    move-object v11, v5

    move/from16 v30, v14

    move/from16 v38, v15

    move-object/from16 v14, v44

    const/4 v7, 0x0

    move-object v15, v4

    .line 267
    aget-object v0, v14, v23

    if-eqz v0, :cond_58

    .line 268
    aget-object v0, v14, v23

    invoke-virtual {v9, v0}, Lk/e/a/s;->a(Lk/e/a/q;)V

    :cond_58
    move/from16 v1, v35

    if-eqz v1, :cond_5d

    .line 269
    iget v0, v10, Lk/e/a/i;->b:I

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-nez v0, :cond_5d

    move/from16 v0, v36

    if-eqz v0, :cond_5a

    .line 270
    invoke-virtual {v8, v0}, Lk/e/a/d;->e(I)I

    move-result v3

    const/4 v4, 0x3

    mul-int/lit8 v3, v3, 0x3

    new-array v4, v3, [I

    add-int/lit8 v36, v0, 0x2

    move/from16 v0, v36

    :goto_53
    if-lez v3, :cond_59

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v2, v0, 0x6

    .line 271
    aput v2, v4, v3

    const/4 v2, -0x1

    add-int/2addr v3, v2

    add-int/lit8 v5, v0, 0x8

    .line 272
    invoke-virtual {v8, v5}, Lk/e/a/d;->e(I)I

    move-result v5

    aput v5, v4, v3

    add-int/2addr v3, v2

    .line 273
    invoke-virtual {v8, v0}, Lk/e/a/d;->e(I)I

    move-result v5

    aput v5, v4, v3

    add-int/lit8 v0, v0, 0xa

    goto :goto_53

    :cond_59
    move-object v12, v4

    goto :goto_54

    :cond_5a
    const/4 v12, 0x0

    .line 274
    :goto_54
    invoke-virtual {v8, v1}, Lk/e/a/d;->e(I)I

    move-result v0

    const/4 v2, 0x2

    add-int/lit8 v35, v1, 0x2

    move/from16 v1, v35

    :goto_55
    add-int/lit8 v16, v0, -0x1

    if-lez v0, :cond_5d

    .line 275
    invoke-virtual {v8, v1}, Lk/e/a/d;->e(I)I

    move-result v0

    add-int/lit8 v2, v1, 0x2

    .line 276
    invoke-virtual {v8, v2}, Lk/e/a/d;->e(I)I

    move-result v2

    add-int/lit8 v3, v1, 0x4

    .line 277
    invoke-virtual {v8, v3, v13}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x6

    .line 278
    invoke-virtual {v8, v4, v13}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, 0x8

    .line 279
    invoke-virtual {v8, v5}, Lk/e/a/d;->e(I)I

    move-result v6

    add-int/lit8 v17, v1, 0xa

    if-eqz v12, :cond_5c

    const/4 v1, 0x0

    .line 280
    :goto_56
    array-length v5, v12

    if-ge v1, v5, :cond_5c

    .line 281
    aget v5, v12, v1

    if-ne v5, v0, :cond_5b

    add-int/lit8 v5, v1, 0x1

    aget v5, v12, v5

    if-ne v5, v6, :cond_5b

    add-int/lit8 v1, v1, 0x2

    .line 282
    aget v1, v12, v1

    invoke-virtual {v8, v1, v13}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_57

    :cond_5b
    add-int/lit8 v1, v1, 0x3

    goto :goto_56

    :cond_5c
    const/4 v5, 0x0

    .line 283
    :goto_57
    aget-object v18, v14, v0

    add-int/2addr v0, v2

    aget-object v20, v14, v0

    move-object/from16 v0, p1

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object/from16 v4, v18

    move-object/from16 v5, v20

    invoke-virtual/range {v0 .. v6}, Lk/e/a/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lk/e/a/q;Lk/e/a/q;I)V

    move/from16 v0, v16

    move/from16 v1, v17

    goto :goto_55

    :cond_5d
    const/16 v12, 0x41

    if-eqz v11, :cond_60

    .line 284
    array-length v14, v11

    const/4 v6, 0x0

    :goto_58
    if-ge v6, v14, :cond_60

    aget v0, v11, v6

    .line 285
    invoke-virtual {v8, v0}, Lk/e/a/d;->a(I)I

    move-result v1

    const/16 v2, 0x40

    if-eq v1, v2, :cond_5f

    if-ne v1, v12, :cond_5e

    goto :goto_59

    :cond_5e
    move/from16 v18, v6

    move-object/from16 v32, v19

    const/16 v16, 0x0

    goto :goto_5a

    .line 286
    :cond_5f
    :goto_59
    invoke-virtual {v8, v10, v0}, Lk/e/a/d;->a(Lk/e/a/i;I)I

    move-result v0

    .line 287
    invoke-virtual {v8, v0, v13}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v16

    const/4 v1, 0x2

    add-int/lit8 v5, v0, 0x2

    .line 288
    iget v1, v10, Lk/e/a/i;->h:I

    iget-object v2, v10, Lk/e/a/i;->i:Lk/e/a/z;

    iget-object v3, v10, Lk/e/a/i;->j:[Lk/e/a/q;

    iget-object v4, v10, Lk/e/a/i;->k:[Lk/e/a/q;

    iget-object v0, v10, Lk/e/a/i;->l:[I

    const/16 v17, 0x1

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move v12, v5

    move-object/from16 v5, v18

    move/from16 v18, v6

    move-object/from16 v6, v16

    move-object/from16 v32, v19

    const/16 v16, 0x0

    move/from16 v7, v17

    .line 289
    invoke-virtual/range {v0 .. v7}, Lk/e/a/s;->a(ILk/e/a/z;[Lk/e/a/q;[Lk/e/a/q;[ILjava/lang/String;Z)Lk/e/a/a;

    move-result-object v0

    const/4 v1, 0x1

    .line 290
    invoke-virtual {v8, v0, v12, v1, v13}, Lk/e/a/d;->a(Lk/e/a/a;IZ[C)I

    :goto_5a
    add-int/lit8 v6, v18, 0x1

    move-object/from16 v19, v32

    const/4 v7, 0x0

    const/16 v12, 0x41

    goto :goto_58

    :cond_60
    move-object/from16 v32, v19

    const/16 v16, 0x0

    if-eqz v15, :cond_63

    .line 291
    array-length v11, v15

    const/4 v12, 0x0

    :goto_5b
    if-ge v12, v11, :cond_63

    aget v0, v15, v12

    .line 292
    invoke-virtual {v8, v0}, Lk/e/a/d;->a(I)I

    move-result v1

    const/16 v14, 0x40

    const/16 v7, 0x41

    if-eq v1, v14, :cond_62

    if-ne v1, v7, :cond_61

    goto :goto_5c

    :cond_61
    const/4 v1, 0x1

    const/16 v16, 0x2

    const/16 v18, 0x41

    goto :goto_5d

    .line 293
    :cond_62
    :goto_5c
    invoke-virtual {v8, v10, v0}, Lk/e/a/d;->a(Lk/e/a/i;I)I

    move-result v0

    .line 294
    invoke-virtual {v8, v0, v13}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v6

    const/16 v16, 0x2

    add-int/lit8 v5, v0, 0x2

    .line 295
    iget v1, v10, Lk/e/a/i;->h:I

    iget-object v2, v10, Lk/e/a/i;->i:Lk/e/a/z;

    iget-object v3, v10, Lk/e/a/i;->j:[Lk/e/a/q;

    iget-object v4, v10, Lk/e/a/i;->k:[Lk/e/a/q;

    iget-object v0, v10, Lk/e/a/i;->l:[I

    const/16 v17, 0x0

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move v14, v5

    move-object/from16 v5, v18

    const/16 v18, 0x41

    move/from16 v7, v17

    .line 296
    invoke-virtual/range {v0 .. v7}, Lk/e/a/s;->a(ILk/e/a/z;[Lk/e/a/q;[Lk/e/a/q;[ILjava/lang/String;Z)Lk/e/a/a;

    move-result-object v0

    const/4 v1, 0x1

    .line 297
    invoke-virtual {v8, v0, v14, v1, v13}, Lk/e/a/d;->a(Lk/e/a/a;IZ[C)I

    :goto_5d
    add-int/lit8 v12, v12, 0x1

    goto :goto_5b

    :cond_63
    move-object/from16 v0, v32

    :goto_5e
    if-eqz v0, :cond_64

    .line 298
    iget-object v1, v0, Lk/e/a/b;->c:Lk/e/a/b;

    const/4 v2, 0x0

    .line 299
    iput-object v2, v0, Lk/e/a/b;->c:Lk/e/a/b;

    .line 300
    move-object v3, v9

    check-cast v3, Lk/e/a/t;

    .line 301
    iget-object v4, v3, Lk/e/a/t;->M:Lk/e/a/b;

    iput-object v4, v0, Lk/e/a/b;->c:Lk/e/a/b;

    .line 302
    iput-object v0, v3, Lk/e/a/t;->M:Lk/e/a/b;

    move-object v0, v1

    goto :goto_5e

    :cond_64
    move/from16 v0, v30

    move/from16 v1, v38

    .line 303
    invoke-virtual {v9, v0, v1}, Lk/e/a/s;->c(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_6
        :pswitch_5
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x36
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x42
        :pswitch_c
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_18
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_1b
        :pswitch_16
        :pswitch_15
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_1f
        :pswitch_12
        :pswitch_20
        :pswitch_20
        :pswitch_12
        :pswitch_12
        :pswitch_20
        :pswitch_20
        :pswitch_11
        :pswitch_10
        :pswitch_17
        :pswitch_17
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public final a(Lk/e/a/s;Lk/e/a/i;IZ)V
    .locals 7

    .line 329
    iget-object v0, p0, Lk/e/a/d;->a:[B

    add-int/lit8 v1, p3, 0x1

    aget-byte p3, v0, p3

    and-int/lit16 p3, p3, 0xff

    .line 330
    move-object v0, p1

    check-cast v0, Lk/e/a/t;

    if-eqz p4, :cond_0

    .line 331
    iput p3, v0, Lk/e/a/t;->D:I

    goto :goto_0

    .line 332
    :cond_0
    iput p3, v0, Lk/e/a/t;->F:I

    .line 333
    :goto_0
    iget-object p2, p2, Lk/e/a/i;->c:[C

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_5

    .line 334
    invoke-virtual {p0, v1}, Lk/e/a/d;->e(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x2

    :goto_2
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_4

    .line 335
    invoke-virtual {p0, v1, p2}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x2

    .line 336
    move-object v4, p1

    check-cast v4, Lk/e/a/t;

    if-eqz p4, :cond_2

    .line 337
    iget-object v5, v4, Lk/e/a/t;->E:[Lk/e/a/a;

    if-nez v5, :cond_1

    .line 338
    iget-object v5, v4, Lk/e/a/t;->h:Ljava/lang/String;

    .line 339
    invoke-static {v5}, Lk/e/a/y;->a(Ljava/lang/String;)[Lk/e/a/y;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [Lk/e/a/a;

    iput-object v5, v4, Lk/e/a/t;->E:[Lk/e/a/a;

    .line 340
    :cond_1
    iget-object v5, v4, Lk/e/a/t;->E:[Lk/e/a/a;

    iget-object v4, v4, Lk/e/a/t;->c:Lk/e/a/x;

    aget-object v6, v5, v0

    .line 341
    invoke-static {v4, v2, v6}, Lk/e/a/a;->a(Lk/e/a/x;Ljava/lang/String;Lk/e/a/a;)Lk/e/a/a;

    move-result-object v2

    aput-object v2, v5, v0

    goto :goto_3

    .line 342
    :cond_2
    iget-object v5, v4, Lk/e/a/t;->G:[Lk/e/a/a;

    if-nez v5, :cond_3

    .line 343
    iget-object v5, v4, Lk/e/a/t;->h:Ljava/lang/String;

    .line 344
    invoke-static {v5}, Lk/e/a/y;->a(Ljava/lang/String;)[Lk/e/a/y;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [Lk/e/a/a;

    iput-object v5, v4, Lk/e/a/t;->G:[Lk/e/a/a;

    .line 345
    :cond_3
    iget-object v5, v4, Lk/e/a/t;->G:[Lk/e/a/a;

    iget-object v4, v4, Lk/e/a/t;->c:Lk/e/a/x;

    aget-object v6, v5, v0

    .line 346
    invoke-static {v4, v2, v6}, Lk/e/a/a;->a(Lk/e/a/x;Ljava/lang/String;Lk/e/a/a;)Lk/e/a/a;

    move-result-object v2

    aput-object v2, v5, v0

    :goto_3
    const/4 v4, 0x1

    .line 347
    invoke-virtual {p0, v2, v1, v4, p2}, Lk/e/a/d;->a(Lk/e/a/a;IZ[C)I

    move-result v1

    move v2, v3

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public b(I)I
    .locals 3

    .line 25
    iget-object v0, p0, Lk/e/a/d;->a:[B

    .line 26
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x3

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    return p1
.end method

.method public b(I[C)Ljava/lang/Object;
    .locals 11

    .line 27
    iget-object v0, p0, Lk/e/a/d;->b:[I

    aget v1, v0, p1

    .line 28
    iget-object v2, p0, Lk/e/a/d;->a:[B

    add-int/lit8 v3, v1, -0x1

    aget-byte v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const/16 v3, 0xb

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_1

    .line 29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 30
    :pswitch_0
    iget-object v1, p0, Lk/e/a/d;->d:[Lk/e/a/h;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 31
    :cond_0
    aget v1, v0, p1

    add-int/lit8 v2, v1, 0x2

    .line 32
    invoke-virtual {p0, v2}, Lk/e/a/d;->e(I)I

    move-result v2

    aget v0, v0, v2

    .line 33
    invoke-virtual {p0, v0, p2}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x2

    .line 34
    invoke-virtual {p0, v0, p2}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v0

    .line 35
    iget-object v3, p0, Lk/e/a/d;->e:[I

    invoke-virtual {p0, v1}, Lk/e/a/d;->e(I)I

    move-result v1

    aget v1, v3, v1

    .line 36
    invoke-virtual {p0, v1}, Lk/e/a/d;->e(I)I

    move-result v3

    invoke-virtual {p0, v3, p2}, Lk/e/a/d;->b(I[C)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/e/a/o;

    add-int/lit8 v5, v1, 0x2

    .line 37
    invoke-virtual {p0, v5}, Lk/e/a/d;->e(I)I

    move-result v5

    new-array v6, v5, [Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x4

    :goto_0
    if-ge v4, v5, :cond_1

    .line 38
    invoke-virtual {p0, v1}, Lk/e/a/d;->e(I)I

    move-result v7

    invoke-virtual {p0, v7, p2}, Lk/e/a/d;->b(I[C)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v4

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 39
    :cond_1
    iget-object p2, p0, Lk/e/a/d;->d:[Lk/e/a/h;

    new-instance v1, Lk/e/a/h;

    invoke-direct {v1, v2, v0, v3, v6}, Lk/e/a/h;-><init>(Ljava/lang/String;Ljava/lang/String;Lk/e/a/o;[Ljava/lang/Object;)V

    aput-object v1, p2, p1

    :goto_1
    return-object v1

    .line 40
    :pswitch_1
    invoke-virtual {p0, v1, p2}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object p1

    .line 41
    new-instance p2, Lk/e/a/y;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p2, v3, p1, v4, v0}, Lk/e/a/y;-><init>(ILjava/lang/String;II)V

    return-object p2

    .line 42
    :pswitch_2
    invoke-virtual {p0, v1}, Lk/e/a/d;->a(I)I

    move-result v6

    .line 43
    iget-object p1, p0, Lk/e/a/d;->b:[I

    const/4 v0, 0x1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lk/e/a/d;->e(I)I

    move-result v1

    aget p1, p1, v1

    .line 44
    iget-object v1, p0, Lk/e/a/d;->b:[I

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lk/e/a/d;->e(I)I

    move-result v2

    aget v1, v1, v2

    .line 45
    invoke-virtual {p0, p1, p2}, Lk/e/a/d;->a(I[C)Ljava/lang/String;

    move-result-object v7

    .line 46
    invoke-virtual {p0, v1, p2}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v1, v1, 0x2

    .line 47
    invoke-virtual {p0, v1, p2}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v9

    .line 48
    iget-object p2, p0, Lk/e/a/d;->a:[B

    sub-int/2addr p1, v0

    aget-byte p1, p2, p1

    if-ne p1, v3, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 49
    :goto_2
    new-instance p1, Lk/e/a/o;

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lk/e/a/o;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p1

    .line 50
    :pswitch_3
    invoke-virtual {p0, v1, p2}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 51
    :pswitch_4
    invoke-virtual {p0, v1, p2}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lk/e/a/y;->c(Ljava/lang/String;)Lk/e/a/y;

    move-result-object p1

    return-object p1

    .line 52
    :pswitch_5
    invoke-virtual {p0, v1}, Lk/e/a/d;->c(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 53
    :pswitch_6
    invoke-virtual {p0, v1}, Lk/e/a/d;->c(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 54
    :pswitch_7
    invoke-virtual {p0, v1}, Lk/e/a/d;->b(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 55
    :pswitch_8
    invoke-virtual {p0, v1}, Lk/e/a/d;->b(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(I[Lk/e/a/q;)Lk/e/a/q;
    .locals 1

    .line 1
    aget-object v0, p2, p1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lk/e/a/q;

    invoke-direct {v0}, Lk/e/a/q;-><init>()V

    aput-object v0, p2, p1

    .line 3
    :cond_0
    aget-object p1, p2, p1

    .line 4
    iget-short p2, p1, Lk/e/a/q;->a:S

    and-int/lit8 p2, p2, -0x2

    int-to-short p2, p2

    iput-short p2, p1, Lk/e/a/q;->a:S

    return-object p1
.end method

.method public final b(Lk/e/a/s;Lk/e/a/i;IZ)[I
    .locals 11

    .line 5
    iget-object v0, p2, Lk/e/a/i;->c:[C

    .line 6
    invoke-virtual {p0, p3}, Lk/e/a/d;->e(I)I

    move-result v1

    new-array v2, v1, [I

    add-int/lit8 p3, p3, 0x2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    .line 7
    aput p3, v2, v3

    .line 8
    invoke-virtual {p0, p3}, Lk/e/a/d;->b(I)I

    move-result v4

    ushr-int/lit8 v5, v4, 0x18

    const/16 v6, 0x17

    if-eq v5, v6, :cond_0

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    .line 9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    add-int/lit8 p3, p3, 0x4

    goto :goto_2

    :pswitch_1
    add-int/lit8 v6, p3, 0x1

    .line 10
    invoke-virtual {p0, v6}, Lk/e/a/d;->e(I)I

    move-result v6

    add-int/lit8 p3, p3, 0x3

    :goto_1
    add-int/lit8 v7, v6, -0x1

    if-lez v6, :cond_1

    .line 11
    invoke-virtual {p0, p3}, Lk/e/a/d;->e(I)I

    move-result v6

    add-int/lit8 v8, p3, 0x2

    .line 12
    invoke-virtual {p0, v8}, Lk/e/a/d;->e(I)I

    move-result v8

    add-int/lit8 p3, p3, 0x6

    .line 13
    iget-object v9, p2, Lk/e/a/i;->g:[Lk/e/a/q;

    invoke-virtual {p0, v6, v9}, Lk/e/a/d;->b(I[Lk/e/a/q;)Lk/e/a/q;

    add-int/2addr v6, v8

    .line 14
    iget-object v8, p2, Lk/e/a/i;->g:[Lk/e/a/q;

    invoke-virtual {p0, v6, v8}, Lk/e/a/d;->b(I[Lk/e/a/q;)Lk/e/a/q;

    move v6, v7

    goto :goto_1

    :cond_0
    :pswitch_2
    add-int/lit8 p3, p3, 0x3

    .line 15
    :cond_1
    :goto_2
    invoke-virtual {p0, p3}, Lk/e/a/d;->a(I)I

    move-result v6

    const/16 v7, 0x42

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v5, v7, :cond_4

    if-nez v6, :cond_2

    goto :goto_3

    .line 16
    :cond_2
    new-instance v8, Lk/e/a/z;

    iget-object v5, p0, Lk/e/a/d;->a:[B

    invoke-direct {v8, v5, p3}, Lk/e/a/z;-><init>([BI)V

    :goto_3
    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v9

    add-int/2addr v6, p3

    .line 17
    invoke-virtual {p0, v6, v0}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object p3

    add-int/lit8 v6, v6, 0x2

    and-int/lit16 v4, v4, -0x100

    .line 18
    move-object v5, p1

    check-cast v5, Lk/e/a/t;

    if-eqz p4, :cond_3

    .line 19
    iget-object v7, v5, Lk/e/a/t;->c:Lk/e/a/x;

    iget-object v10, v5, Lk/e/a/t;->v:Lk/e/a/a;

    .line 20
    invoke-static {v7, v4, v8, p3, v10}, Lk/e/a/a;->a(Lk/e/a/x;ILk/e/a/z;Ljava/lang/String;Lk/e/a/a;)Lk/e/a/a;

    move-result-object p3

    iput-object p3, v5, Lk/e/a/t;->v:Lk/e/a/a;

    goto :goto_4

    .line 21
    :cond_3
    iget-object v7, v5, Lk/e/a/t;->c:Lk/e/a/x;

    iget-object v10, v5, Lk/e/a/t;->w:Lk/e/a/a;

    .line 22
    invoke-static {v7, v4, v8, p3, v10}, Lk/e/a/a;->a(Lk/e/a/x;ILk/e/a/z;Ljava/lang/String;Lk/e/a/a;)Lk/e/a/a;

    move-result-object p3

    iput-object p3, v5, Lk/e/a/t;->w:Lk/e/a/a;

    .line 23
    :goto_4
    invoke-virtual {p0, p3, v6, v9, v0}, Lk/e/a/d;->a(Lk/e/a/a;IZ[C)I

    move-result p3

    goto :goto_5

    :cond_4
    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v6, p3

    .line 24
    invoke-virtual {p0, v8, v6, v9, v0}, Lk/e/a/d;->a(Lk/e/a/a;IZ[C)I

    move-result p3

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v2

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public c(I)J
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lk/e/a/d;->b(I)I

    move-result v0

    int-to-long v0, v0

    add-int/lit8 p1, p1, 0x4

    .line 2
    invoke-virtual {p0, p1}, Lk/e/a/d;->b(I)I

    move-result p1

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public c(I[C)Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lk/e/a/d;->b:[I

    invoke-virtual {p0, p1}, Lk/e/a/d;->e(I)I

    move-result p1

    aget p1, v0, p1

    invoke-virtual {p0, p1, p2}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(I[C)Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lk/e/a/d;->b:[I

    invoke-virtual {p0, p1}, Lk/e/a/d;->e(I)I

    move-result p1

    aget p1, v0, p1

    invoke-virtual {p0, p1, p2}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(I)S
    .locals 2

    .line 1
    iget-object v0, p0, Lk/e/a/d;->a:[B

    .line 2
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    int-to-short p1, p1

    return p1
.end method

.method public e(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lk/e/a/d;->a:[B

    .line 2
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    return p1
.end method

.method public e(I[C)Ljava/lang/String;
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lk/e/a/d;->e(I)I

    move-result v0

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0, p2}, Lk/e/a/d;->f(I[C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final f(I[C)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lk/e/a/d;->c:[Ljava/lang/String;

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v1, p0, Lk/e/a/d;->b:[I

    aget v1, v1, p1

    add-int/lit8 v2, v1, 0x2

    .line 3
    invoke-virtual {p0, v1}, Lk/e/a/d;->e(I)I

    move-result v1

    invoke-virtual {p0, v2, v1, p2}, Lk/e/a/d;->a(II[C)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    return-object p2
.end method
