.class public final Le/e/a/v/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)B
    .locals 8

    const/16 v0, 0x1a

    .line 1
    invoke-static {p0, v0}, Le/e/a/v/b;->c(II)I

    move-result v0

    const/16 v1, 0x19

    .line 2
    invoke-static {p0, v1}, Le/e/a/v/b;->b(II)I

    move-result v1

    const/16 v2, 0x34

    invoke-static {p0, v2}, Le/e/a/v/b;->c(II)I

    move-result v3

    and-int/2addr v1, v3

    const/16 v3, 0x33

    .line 3
    invoke-static {p0, v3}, Le/e/a/v/b;->b(II)I

    move-result v3

    const/16 v4, 0x3e

    invoke-static {p0, v4}, Le/e/a/v/b;->c(II)I

    move-result v5

    and-int/2addr v3, v5

    .line 4
    invoke-static {p0, v4}, Le/e/a/v/b;->a(II)I

    move-result v4

    const/16 v5, 0x3f

    .line 5
    invoke-static {p0, v5}, Le/e/a/v/b;->a(II)I

    move-result v5

    add-int/lit8 v6, p0, 0x0

    add-int/lit8 v6, v6, 0x41

    add-int/lit8 v7, p0, -0x1a

    add-int/lit8 v7, v7, 0x61

    sub-int/2addr p0, v2

    add-int/lit8 p0, p0, 0x30

    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v6, v2}, Le/e/a/v/b;->a(III)I

    move-result v0

    .line 7
    invoke-static {v1, v7, v2}, Le/e/a/v/b;->a(III)I

    move-result v1

    or-int/2addr v0, v1

    .line 8
    invoke-static {v3, p0, v2}, Le/e/a/v/b;->a(III)I

    move-result p0

    or-int/2addr p0, v0

    const/16 v0, 0x2b

    .line 9
    invoke-static {v4, v0, v2}, Le/e/a/v/b;->a(III)I

    move-result v0

    or-int/2addr p0, v0

    const/16 v0, 0x2f

    .line 10
    invoke-static {v5, v0, v2}, Le/e/a/v/b;->a(III)I

    move-result v0

    or-int/2addr p0, v0

    int-to-byte p0, p0

    return p0
.end method

.method public static a(II)I
    .locals 0

    xor-int/2addr p0, p1

    add-int/lit8 p1, p0, -0x1

    not-int p0, p0

    and-int/2addr p0, p1

    ushr-int/lit8 p0, p0, 0x3f

    return p0
.end method

.method public static a(III)I
    .locals 0

    add-int/lit8 p0, p0, -0x1

    xor-int/2addr p2, p1

    and-int/2addr p0, p2

    xor-int/2addr p0, p1

    return p0
.end method

.method public static a([BZ)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 11
    array-length v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-string p0, ""

    return-object p0

    .line 12
    :cond_1
    div-int/lit8 v2, v1, 0x3

    mul-int/lit8 v3, v2, 0x3

    const/4 v4, 0x2

    if-nez v1, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_4

    shl-int/2addr v2, v4

    .line 13
    rem-int/lit8 v5, v1, 0x3

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v1, -0x1

    .line 14
    div-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x1

    shl-int/2addr v2, v4

    .line 15
    :goto_1
    new-array v5, v2, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v6, v3, :cond_6

    add-int/lit8 v8, v6, 0x1

    .line 16
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/lit8 v9, v8, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v6, v8

    add-int/lit8 v8, v9, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v6, v9

    if-eqz p1, :cond_5

    add-int/lit8 v9, v7, 0x1

    ushr-int/lit8 v10, v6, 0x12

    and-int/lit8 v10, v10, 0x3f

    .line 17
    invoke-static {v10}, Le/e/a/v/b;->b(I)B

    move-result v10

    aput-byte v10, v5, v7

    add-int/lit8 v7, v9, 0x1

    ushr-int/lit8 v10, v6, 0xc

    and-int/lit8 v10, v10, 0x3f

    .line 18
    invoke-static {v10}, Le/e/a/v/b;->b(I)B

    move-result v10

    aput-byte v10, v5, v9

    add-int/lit8 v9, v7, 0x1

    ushr-int/lit8 v10, v6, 0x6

    and-int/lit8 v10, v10, 0x3f

    .line 19
    invoke-static {v10}, Le/e/a/v/b;->b(I)B

    move-result v10

    aput-byte v10, v5, v7

    add-int/lit8 v7, v9, 0x1

    and-int/lit8 v6, v6, 0x3f

    .line 20
    invoke-static {v6}, Le/e/a/v/b;->b(I)B

    move-result v6

    aput-byte v6, v5, v9

    goto :goto_3

    :cond_5
    add-int/lit8 v9, v7, 0x1

    ushr-int/lit8 v10, v6, 0x12

    and-int/lit8 v10, v10, 0x3f

    .line 21
    invoke-static {v10}, Le/e/a/v/b;->a(I)B

    move-result v10

    aput-byte v10, v5, v7

    add-int/lit8 v7, v9, 0x1

    ushr-int/lit8 v10, v6, 0xc

    and-int/lit8 v10, v10, 0x3f

    .line 22
    invoke-static {v10}, Le/e/a/v/b;->a(I)B

    move-result v10

    aput-byte v10, v5, v9

    add-int/lit8 v9, v7, 0x1

    ushr-int/lit8 v10, v6, 0x6

    and-int/lit8 v10, v10, 0x3f

    .line 23
    invoke-static {v10}, Le/e/a/v/b;->a(I)B

    move-result v10

    aput-byte v10, v5, v7

    add-int/lit8 v7, v9, 0x1

    and-int/lit8 v6, v6, 0x3f

    .line 24
    invoke-static {v6}, Le/e/a/v/b;->a(I)B

    move-result v6

    aput-byte v6, v5, v9

    :goto_3
    move v6, v8

    goto :goto_2

    :cond_6
    sub-int v6, v1, v3

    if-lez v6, :cond_b

    .line 25
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xa

    if-ne v6, v4, :cond_7

    add-int/lit8 v1, v1, -0x1

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 v0, p0, 0x2

    :cond_7
    or-int p0, v3, v0

    if-eqz p1, :cond_9

    if-ne v6, v4, :cond_8

    add-int/lit8 p1, v2, -0x3

    shr-int/lit8 v0, p0, 0xc

    .line 26
    invoke-static {v0}, Le/e/a/v/b;->b(I)B

    move-result v0

    aput-byte v0, v5, p1

    add-int/lit8 p1, v2, -0x2

    ushr-int/lit8 v0, p0, 0x6

    and-int/lit8 v0, v0, 0x3f

    .line 27
    invoke-static {v0}, Le/e/a/v/b;->b(I)B

    move-result v0

    aput-byte v0, v5, p1

    add-int/lit8 v2, v2, -0x1

    and-int/lit8 p0, p0, 0x3f

    .line 28
    invoke-static {p0}, Le/e/a/v/b;->b(I)B

    move-result p0

    aput-byte p0, v5, v2

    goto :goto_5

    :cond_8
    add-int/lit8 p1, v2, -0x2

    shr-int/lit8 v0, p0, 0xc

    .line 29
    invoke-static {v0}, Le/e/a/v/b;->b(I)B

    move-result v0

    aput-byte v0, v5, p1

    add-int/lit8 v2, v2, -0x1

    ushr-int/lit8 p0, p0, 0x6

    and-int/lit8 p0, p0, 0x3f

    .line 30
    invoke-static {p0}, Le/e/a/v/b;->b(I)B

    move-result p0

    aput-byte p0, v5, v2

    goto :goto_5

    :cond_9
    add-int/lit8 p1, v2, -0x4

    shr-int/lit8 v0, p0, 0xc

    .line 31
    invoke-static {v0}, Le/e/a/v/b;->a(I)B

    move-result v0

    aput-byte v0, v5, p1

    add-int/lit8 p1, v2, -0x3

    ushr-int/lit8 v0, p0, 0x6

    and-int/lit8 v0, v0, 0x3f

    .line 32
    invoke-static {v0}, Le/e/a/v/b;->a(I)B

    move-result v0

    aput-byte v0, v5, p1

    add-int/lit8 p1, v2, -0x2

    const/16 v0, 0x3d

    if-ne v6, v4, :cond_a

    and-int/lit8 p0, p0, 0x3f

    .line 33
    invoke-static {p0}, Le/e/a/v/b;->a(I)B

    move-result p0

    goto :goto_4

    :cond_a
    const/16 p0, 0x3d

    :goto_4
    aput-byte p0, v5, p1

    add-int/lit8 v2, v2, -0x1

    .line 34
    aput-byte v0, v5, v2

    .line 35
    :cond_b
    :goto_5
    new-instance p0, Ljava/lang/String;

    sget-object p1, Le/e/a/v/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {p0, v5, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0
.end method

.method public static b(I)B
    .locals 8

    const/16 v0, 0x1a

    .line 1
    invoke-static {p0, v0}, Le/e/a/v/b;->c(II)I

    move-result v0

    const/16 v1, 0x19

    .line 2
    invoke-static {p0, v1}, Le/e/a/v/b;->b(II)I

    move-result v1

    const/16 v2, 0x34

    invoke-static {p0, v2}, Le/e/a/v/b;->c(II)I

    move-result v3

    and-int/2addr v1, v3

    const/16 v3, 0x33

    .line 3
    invoke-static {p0, v3}, Le/e/a/v/b;->b(II)I

    move-result v3

    const/16 v4, 0x3e

    invoke-static {p0, v4}, Le/e/a/v/b;->c(II)I

    move-result v5

    and-int/2addr v3, v5

    .line 4
    invoke-static {p0, v4}, Le/e/a/v/b;->a(II)I

    move-result v4

    const/16 v5, 0x3f

    .line 5
    invoke-static {p0, v5}, Le/e/a/v/b;->a(II)I

    move-result v5

    add-int/lit8 v6, p0, 0x0

    add-int/lit8 v6, v6, 0x41

    add-int/lit8 v7, p0, -0x1a

    add-int/lit8 v7, v7, 0x61

    sub-int/2addr p0, v2

    add-int/lit8 p0, p0, 0x30

    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v6, v2}, Le/e/a/v/b;->a(III)I

    move-result v0

    .line 7
    invoke-static {v1, v7, v2}, Le/e/a/v/b;->a(III)I

    move-result v1

    or-int/2addr v0, v1

    .line 8
    invoke-static {v3, p0, v2}, Le/e/a/v/b;->a(III)I

    move-result p0

    or-int/2addr p0, v0

    const/16 v0, 0x2d

    .line 9
    invoke-static {v4, v0, v2}, Le/e/a/v/b;->a(III)I

    move-result v0

    or-int/2addr p0, v0

    const/16 v0, 0x5f

    .line 10
    invoke-static {v5, v0, v2}, Le/e/a/v/b;->a(III)I

    move-result v0

    or-int/2addr p0, v0

    int-to-byte p0, p0

    return p0
.end method

.method public static b(II)I
    .locals 2

    int-to-long v0, p1

    int-to-long p0, p0

    sub-long/2addr v0, p0

    const/16 p0, 0x3f

    ushr-long p0, v0, p0

    long-to-int p1, p0

    return p1
.end method

.method public static c(II)I
    .locals 2

    int-to-long v0, p0

    int-to-long p0, p1

    sub-long/2addr v0, p0

    const/16 p0, 0x3f

    ushr-long p0, v0, p0

    long-to-int p1, p0

    return p1
.end method
