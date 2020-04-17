.class public final Lk/b/c/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(II)I
    .locals 2

    if-nez p1, :cond_0

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "Error: to be divided by 0"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    :goto_0
    invoke-static {p0}, Lk/b/c/e/a;->b(I)I

    move-result v0

    invoke-static {p1}, Lk/b/c/e/a;->b(I)I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Lk/b/c/e/a;->b(I)I

    move-result v0

    invoke-static {p1}, Lk/b/c/e/a;->b(I)I

    move-result v1

    sub-int/2addr v0, v1

    shl-int v0, p1, v0

    xor-int/2addr p0, v0

    goto :goto_0

    :cond_1
    return p0
.end method

.method public static a(III)I
    .locals 4

    invoke-static {p0, p2}, Lk/b/c/e/a;->a(II)I

    move-result p0

    invoke-static {p1, p2}, Lk/b/c/e/a;->a(II)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-static {p2}, Lk/b/c/e/a;->b(I)I

    move-result v1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    :cond_0
    :goto_0
    if-eqz p0, :cond_2

    and-int/lit8 v3, p0, 0x1

    int-to-byte v3, v3

    if-ne v3, v2, :cond_1

    xor-int/2addr v0, p1

    :cond_1
    ushr-int/lit8 p0, p0, 0x1

    shl-int/lit8 p1, p1, 0x1

    if-lt p1, v1, :cond_0

    xor-int/2addr p1, p2

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static a(I[I[I)I
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    aget v3, p2, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v3, v0

    long-to-int v0, v3

    aput v0, p2, v2

    const/16 v0, 0x20

    shr-long v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int p0, v0

    return p0
.end method

.method public static a([BI)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr p1, v1

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public static a([I[II[II)I
    .locals 11

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    aget v3, p1, v1

    if-nez v3, :cond_1

    move v3, p2

    const/4 v4, 0x0

    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_0

    .line 168
    aget v5, p1, v3

    aput v4, p1, v3

    move v4, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x20

    goto :goto_0

    .line 169
    :cond_1
    aget v3, p1, v1

    const/4 v4, 0x0

    :goto_2
    and-int/lit8 v5, v3, 0x1

    if-nez v5, :cond_2

    ushr-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    if-lez v4, :cond_4

    const/4 v3, 0x0

    :goto_3
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_3

    .line 170
    aget v5, p1, p2

    ushr-int v6, v5, v4

    neg-int v7, v4

    shl-int/2addr v3, v7

    or-int/2addr v3, v6

    aput v3, p1, p2

    move v3, v5

    goto :goto_3

    :cond_3
    add-int/2addr v2, v4

    :cond_4
    const/4 p1, 0x0

    :goto_4
    if-ge p1, v2, :cond_9

    .line 171
    aget p2, p3, v1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_7

    if-gez p4, :cond_6

    const-wide/16 v3, 0x0

    const/4 p2, 0x0

    :goto_5
    if-ge p2, v0, :cond_5

    .line 172
    aget v5, p0, p2

    int-to-long v5, v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    aget v9, p3, p2

    int-to-long v9, v9

    and-long/2addr v7, v9

    add-long/2addr v5, v7

    add-long/2addr v5, v3

    long-to-int v3, v5

    aput v3, p3, p2

    const/16 v3, 0x20

    ushr-long v3, v5, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_5
    long-to-int p2, v3

    add-int/2addr p4, p2

    goto :goto_6

    .line 173
    :cond_6
    invoke-static {v0, p0, p3}, Lk/b/c/e/a;->a(I[I[I)I

    move-result p2

    add-int/2addr p2, p4

    move p4, p2

    :cond_7
    :goto_6
    move v3, p4

    move p2, v0

    :goto_7
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_8

    .line 174
    aget v4, p3, p2

    ushr-int/lit8 v5, v4, 0x1

    shl-int/lit8 v3, v3, 0x1f

    or-int/2addr v3, v5

    aput v3, p3, p2

    move v3, v4

    goto :goto_7

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_9
    return p4
.end method

.method public static a([BII)J
    .locals 5

    if-eqz p0, :cond_1

    const-wide/16 v0, 0x0

    move v2, p1

    :goto_0
    add-int v3, p1, p2

    if-ge v2, v3, :cond_0

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "in == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a([BLjava/lang/Class;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Lk/b/i/b/g/z;

    invoke-direct {p0, p1, v0}, Lk/b/i/b/g/z;-><init>(Ljava/lang/Class;Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->available()I

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "unexpected class found in ObjectInputStream"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "unexpected data found at end of ObjectInputStream"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lk/b/c/d/a;Lk/b/a/x;)Lk/b/a/i2/f;
    .locals 21

    move-object/from16 v0, p0

    instance-of v1, v0, Lk/b/i/b/c/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lk/b/i/b/c/a;

    .line 85
    iget v1, v0, Lk/b/i/b/c/a;->a:I

    .line 86
    invoke-static {v1}, Lk/b/i/b/f/b;->a(I)Lk/b/a/l2/a;

    move-result-object v1

    new-instance v3, Lk/b/a/i2/f;

    new-instance v4, Lk/b/a/a1;

    invoke-virtual {v0}, Lk/b/i/b/c/a;->a()[B

    move-result-object v0

    invoke-direct {v4, v0}, Lk/b/a/a1;-><init>([B)V

    move-object/from16 v0, p1

    .line 87
    invoke-direct {v3, v1, v4, v0, v2}, Lk/b/a/i2/f;-><init>(Lk/b/a/l2/a;Lk/b/a/e;Lk/b/a/x;[B)V

    return-object v3

    .line 88
    :cond_0
    instance-of v1, v0, Lk/b/i/b/e/b;

    if-eqz v1, :cond_1

    check-cast v0, Lk/b/i/b/e/b;

    new-instance v1, Lk/b/a/l2/a;

    sget-object v3, Lk/b/i/a/e;->e:Lk/b/a/o;

    new-instance v4, Lk/b/i/a/h;

    .line 89
    iget-object v5, v0, Lk/b/i/b/e/a;->a:Ljava/lang/String;

    .line 90
    invoke-static {v5}, Lk/b/i/b/f/b;->a(Ljava/lang/String;)Lk/b/a/l2/a;

    move-result-object v5

    invoke-direct {v4, v5}, Lk/b/i/a/h;-><init>(Lk/b/a/l2/a;)V

    invoke-direct {v1, v3, v4}, Lk/b/a/l2/a;-><init>(Lk/b/a/o;Lk/b/a/e;)V

    new-instance v3, Lk/b/a/i2/f;

    new-instance v4, Lk/b/a/a1;

    invoke-virtual {v0}, Lk/b/i/b/e/b;->a()[B

    move-result-object v0

    invoke-direct {v4, v0}, Lk/b/a/a1;-><init>([B)V

    .line 91
    invoke-direct {v3, v1, v4, v2, v2}, Lk/b/a/i2/f;-><init>(Lk/b/a/l2/a;Lk/b/a/e;Lk/b/a/x;[B)V

    return-object v3

    .line 92
    :cond_1
    instance-of v1, v0, Lk/b/i/b/b/a;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    check-cast v0, Lk/b/i/b/b/a;

    new-instance v1, Lk/b/a/l2/a;

    sget-object v5, Lk/b/i/a/e;->f:Lk/b/a/o;

    invoke-direct {v1, v5}, Lk/b/a/l2/a;-><init>(Lk/b/a/o;)V

    invoke-virtual {v0}, Lk/b/i/b/b/a;->a()[S

    move-result-object v0

    array-length v5, v0

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [B

    :goto_0
    array-length v6, v0

    if-eq v3, v6, :cond_2

    aget-short v6, v0, v3

    mul-int/lit8 v7, v3, 0x2

    int-to-byte v8, v6

    .line 93
    aput-byte v8, v5, v7

    add-int/2addr v7, v4

    ushr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v5, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    :cond_2
    new-instance v0, Lk/b/a/i2/f;

    new-instance v3, Lk/b/a/a1;

    invoke-direct {v3, v5}, Lk/b/a/a1;-><init>([B)V

    .line 95
    invoke-direct {v0, v1, v3, v2, v2}, Lk/b/a/i2/f;-><init>(Lk/b/a/l2/a;Lk/b/a/e;Lk/b/a/x;[B)V

    return-object v0

    .line 96
    :cond_3
    instance-of v1, v0, Lk/b/i/b/g/x;

    const-string v5, "index out of bounds"

    if-eqz v1, :cond_6

    check-cast v0, Lk/b/i/b/g/x;

    new-instance v1, Lk/b/a/l2/a;

    sget-object v6, Lk/b/i/a/e;->g:Lk/b/a/o;

    new-instance v7, Lk/b/i/a/i;

    .line 97
    iget-object v8, v0, Lk/b/i/b/g/x;->b:Lk/b/i/b/g/w;

    .line 98
    iget v8, v8, Lk/b/i/b/g/w;->b:I

    .line 99
    iget-object v9, v0, Lk/b/i/b/g/p;->a:Ljava/lang/String;

    .line 100
    invoke-static {v9}, Lk/b/i/b/f/b;->b(Ljava/lang/String;)Lk/b/a/l2/a;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lk/b/i/a/i;-><init>(ILk/b/a/l2/a;)V

    invoke-direct {v1, v6, v7}, Lk/b/a/l2/a;-><init>(Lk/b/a/o;Lk/b/a/e;)V

    new-instance v6, Lk/b/a/i2/f;

    .line 101
    invoke-virtual {v0}, Lk/b/i/b/g/x;->a()[B

    move-result-object v7

    .line 102
    iget-object v0, v0, Lk/b/i/b/g/x;->b:Lk/b/i/b/g/w;

    .line 103
    iget v8, v0, Lk/b/i/b/g/w;->g:I

    .line 104
    iget v0, v0, Lk/b/i/b/g/w;->b:I

    const/4 v9, 0x4

    .line 105
    invoke-static {v7, v3, v9}, Lk/b/c/e/a;->a([BII)J

    move-result-wide v10

    long-to-int v13, v10

    int-to-long v10, v13

    invoke-static {v0, v10, v11}, Lk/b/c/e/a;->a(IJ)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v7, v9, v8}, Lk/b/c/e/a;->b([BII)[B

    move-result-object v14

    add-int/lit8 v3, v8, 0x4

    invoke-static {v7, v3, v8}, Lk/b/c/e/a;->b([BII)[B

    move-result-object v15

    add-int/2addr v3, v8

    invoke-static {v7, v3, v8}, Lk/b/c/e/a;->b([BII)[B

    move-result-object v16

    add-int/2addr v3, v8

    invoke-static {v7, v3, v8}, Lk/b/c/e/a;->b([BII)[B

    move-result-object v17

    add-int/2addr v3, v8

    array-length v5, v7

    sub-int/2addr v5, v3

    invoke-static {v7, v3, v5}, Lk/b/c/e/a;->b([BII)[B

    move-result-object v3

    :try_start_0
    const-class v5, Lk/b/i/b/g/a;

    invoke-static {v3, v5}, Lk/b/c/e/a;->a([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk/b/i/b/g/a;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    iget v5, v5, Lk/b/i/b/g/a;->I:I

    shl-int v0, v4, v0

    sub-int/2addr v0, v4

    if-eq v5, v0, :cond_4

    .line 107
    new-instance v0, Lk/b/i/a/m;

    move-object v12, v0

    move-object/from16 v18, v3

    move/from16 v19, v5

    invoke-direct/range {v12 .. v19}, Lk/b/i/a/m;-><init>(I[B[B[B[B[BI)V

    goto :goto_1

    :cond_4
    new-instance v0, Lk/b/i/a/m;

    move-object v12, v0

    move-object/from16 v18, v3

    invoke-direct/range {v12 .. v18}, Lk/b/i/a/m;-><init>(I[B[B[B[B[B)V

    .line 108
    :goto_1
    invoke-direct {v6, v1, v0, v2, v2}, Lk/b/a/i2/f;-><init>(Lk/b/a/l2/a;Lk/b/a/e;Lk/b/a/x;[B)V

    return-object v6

    :catch_0
    move-exception v0

    .line 109
    new-instance v1, Ljava/io/IOException;

    const-string v2, "cannot parse BDS: "

    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_6
    instance-of v1, v0, Lk/b/i/b/g/s;

    if-eqz v1, :cond_9

    check-cast v0, Lk/b/i/b/g/s;

    new-instance v1, Lk/b/a/l2/a;

    sget-object v4, Lk/b/i/a/e;->l:Lk/b/a/o;

    new-instance v6, Lk/b/i/a/j;

    .line 111
    iget-object v7, v0, Lk/b/i/b/g/s;->b:Lk/b/i/b/g/r;

    .line 112
    iget v8, v7, Lk/b/i/b/g/r;->c:I

    .line 113
    iget v7, v7, Lk/b/i/b/g/r;->d:I

    .line 114
    iget-object v9, v0, Lk/b/i/b/g/q;->a:Ljava/lang/String;

    .line 115
    invoke-static {v9}, Lk/b/i/b/f/b;->b(Ljava/lang/String;)Lk/b/a/l2/a;

    move-result-object v9

    invoke-direct {v6, v8, v7, v9}, Lk/b/i/a/j;-><init>(IILk/b/a/l2/a;)V

    invoke-direct {v1, v4, v6}, Lk/b/a/l2/a;-><init>(Lk/b/a/o;Lk/b/a/e;)V

    new-instance v4, Lk/b/a/i2/f;

    .line 116
    invoke-virtual {v0}, Lk/b/i/b/g/s;->a()[B

    move-result-object v6

    .line 117
    iget-object v0, v0, Lk/b/i/b/g/s;->b:Lk/b/i/b/g/r;

    .line 118
    iget-object v7, v0, Lk/b/i/b/g/r;->b:Lk/b/i/b/g/w;

    .line 119
    iget v7, v7, Lk/b/i/b/g/w;->g:I

    .line 120
    iget v0, v0, Lk/b/i/b/g/r;->c:I

    add-int/lit8 v8, v0, 0x7

    .line 121
    div-int/lit8 v8, v8, 0x8

    invoke-static {v6, v3, v8}, Lk/b/c/e/a;->a([BII)J

    move-result-wide v9

    long-to-int v10, v9

    int-to-long v12, v10

    invoke-static {v0, v12, v13}, Lk/b/c/e/a;->a(IJ)Z

    move-result v9

    if-eqz v9, :cond_8

    add-int/2addr v8, v3

    invoke-static {v6, v8, v7}, Lk/b/c/e/a;->b([BII)[B

    move-result-object v14

    add-int/2addr v8, v7

    invoke-static {v6, v8, v7}, Lk/b/c/e/a;->b([BII)[B

    move-result-object v15

    add-int/2addr v8, v7

    invoke-static {v6, v8, v7}, Lk/b/c/e/a;->b([BII)[B

    move-result-object v16

    add-int/2addr v8, v7

    invoke-static {v6, v8, v7}, Lk/b/c/e/a;->b([BII)[B

    move-result-object v17

    add-int/2addr v8, v7

    array-length v3, v6

    sub-int/2addr v3, v8

    invoke-static {v6, v8, v3}, Lk/b/c/e/a;->b([BII)[B

    move-result-object v3

    :try_start_1
    const-class v5, Lk/b/i/b/g/b;

    invoke-static {v3, v5}, Lk/b/c/e/a;->a([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk/b/i/b/g/b;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    iget-wide v5, v5, Lk/b/i/b/g/b;->y:J

    const-wide/16 v7, 0x1

    shl-long v9, v7, v0

    sub-long/2addr v9, v7

    cmp-long v0, v5, v9

    .line 123
    new-instance v7, Lk/b/i/a/k;

    move-object v11, v7

    move-object/from16 v18, v3

    if-eqz v0, :cond_7

    move-wide/from16 v19, v5

    invoke-direct/range {v11 .. v20}, Lk/b/i/a/k;-><init>(J[B[B[B[B[BJ)V

    goto :goto_2

    :cond_7
    invoke-direct/range {v11 .. v18}, Lk/b/i/a/k;-><init>(J[B[B[B[B[B)V

    .line 124
    :goto_2
    invoke-direct {v4, v1, v7, v2, v2}, Lk/b/a/i2/f;-><init>(Lk/b/a/l2/a;Lk/b/a/e;Lk/b/a/x;[B)V

    return-object v4

    :catch_1
    move-exception v0

    .line 125
    new-instance v1, Ljava/io/IOException;

    const-string v2, "cannot parse BDSStateMap: "

    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "key parameters not recognized"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;)Lk/b/a/l2/a;
    .locals 2

    const-string v0, "SHA-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lk/b/a/l2/a;

    sget-object v0, Lk/b/a/h2/a;->a:Lk/b/a/o;

    sget-object v1, Lk/b/a/y0;->x:Lk/b/a/y0;

    invoke-direct {p0, v0, v1}, Lk/b/a/l2/a;-><init>(Lk/b/a/o;Lk/b/a/e;)V

    return-object p0

    :cond_0
    const-string v0, "SHA-224"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lk/b/a/l2/a;

    sget-object v0, Lk/b/a/g2/a;->f:Lk/b/a/o;

    sget-object v1, Lk/b/a/y0;->x:Lk/b/a/y0;

    invoke-direct {p0, v0, v1}, Lk/b/a/l2/a;-><init>(Lk/b/a/o;Lk/b/a/e;)V

    return-object p0

    :cond_1
    const-string v0, "SHA-256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Lk/b/a/l2/a;

    sget-object v0, Lk/b/a/g2/a;->c:Lk/b/a/o;

    sget-object v1, Lk/b/a/y0;->x:Lk/b/a/y0;

    invoke-direct {p0, v0, v1}, Lk/b/a/l2/a;-><init>(Lk/b/a/o;Lk/b/a/e;)V

    return-object p0

    :cond_2
    const-string v0, "SHA-384"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p0, Lk/b/a/l2/a;

    sget-object v0, Lk/b/a/g2/a;->d:Lk/b/a/o;

    sget-object v1, Lk/b/a/y0;->x:Lk/b/a/y0;

    invoke-direct {p0, v0, v1}, Lk/b/a/l2/a;-><init>(Lk/b/a/o;Lk/b/a/e;)V

    return-object p0

    :cond_3
    const-string v0, "SHA-512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p0, Lk/b/a/l2/a;

    sget-object v0, Lk/b/a/g2/a;->e:Lk/b/a/o;

    sget-object v1, Lk/b/a/y0;->x:Lk/b/a/y0;

    invoke-direct {p0, v0, v1}, Lk/b/a/l2/a;-><init>(Lk/b/a/o;Lk/b/a/e;)V

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unrecognised digest algorithm: "

    invoke-static {v1, p0}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lk/b/c/d/a;)Lk/b/a/l2/s;
    .locals 6

    instance-of v0, p0, Lk/b/i/b/c/b;

    if-eqz v0, :cond_0

    check-cast p0, Lk/b/i/b/c/b;

    .line 127
    iget v0, p0, Lk/b/i/b/c/b;->a:I

    .line 128
    invoke-static {v0}, Lk/b/i/b/f/b;->a(I)Lk/b/a/l2/a;

    move-result-object v0

    new-instance v1, Lk/b/a/l2/s;

    invoke-virtual {p0}, Lk/b/i/b/c/b;->a()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lk/b/a/l2/s;-><init>(Lk/b/a/l2/a;[B)V

    return-object v1

    :cond_0
    instance-of v0, p0, Lk/b/i/b/e/c;

    if-eqz v0, :cond_1

    check-cast p0, Lk/b/i/b/e/c;

    new-instance v0, Lk/b/a/l2/a;

    sget-object v1, Lk/b/i/a/e;->e:Lk/b/a/o;

    new-instance v2, Lk/b/i/a/h;

    .line 129
    iget-object v3, p0, Lk/b/i/b/e/a;->a:Ljava/lang/String;

    .line 130
    invoke-static {v3}, Lk/b/i/b/f/b;->a(Ljava/lang/String;)Lk/b/a/l2/a;

    move-result-object v3

    invoke-direct {v2, v3}, Lk/b/i/a/h;-><init>(Lk/b/a/l2/a;)V

    invoke-direct {v0, v1, v2}, Lk/b/a/l2/a;-><init>(Lk/b/a/o;Lk/b/a/e;)V

    new-instance v1, Lk/b/a/l2/s;

    invoke-virtual {p0}, Lk/b/i/b/e/c;->a()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lk/b/a/l2/s;-><init>(Lk/b/a/l2/a;[B)V

    return-object v1

    :cond_1
    instance-of v0, p0, Lk/b/i/b/b/b;

    if-eqz v0, :cond_2

    check-cast p0, Lk/b/i/b/b/b;

    new-instance v0, Lk/b/a/l2/a;

    sget-object v1, Lk/b/i/a/e;->f:Lk/b/a/o;

    invoke-direct {v0, v1}, Lk/b/a/l2/a;-><init>(Lk/b/a/o;)V

    new-instance v1, Lk/b/a/l2/s;

    invoke-virtual {p0}, Lk/b/i/b/b/b;->a()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lk/b/a/l2/s;-><init>(Lk/b/a/l2/a;[B)V

    return-object v1

    :cond_2
    instance-of v0, p0, Lk/b/i/b/g/y;

    if-eqz v0, :cond_3

    check-cast p0, Lk/b/i/b/g/y;

    new-instance v0, Lk/b/a/l2/a;

    sget-object v1, Lk/b/i/a/e;->g:Lk/b/a/o;

    new-instance v2, Lk/b/i/a/i;

    .line 131
    iget-object v3, p0, Lk/b/i/b/g/y;->b:Lk/b/i/b/g/w;

    .line 132
    iget v3, v3, Lk/b/i/b/g/w;->b:I

    .line 133
    iget-object v4, p0, Lk/b/i/b/g/p;->a:Ljava/lang/String;

    .line 134
    invoke-static {v4}, Lk/b/i/b/f/b;->b(Ljava/lang/String;)Lk/b/a/l2/a;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lk/b/i/a/i;-><init>(ILk/b/a/l2/a;)V

    invoke-direct {v0, v1, v2}, Lk/b/a/l2/a;-><init>(Lk/b/a/o;Lk/b/a/e;)V

    new-instance v1, Lk/b/a/l2/s;

    new-instance v2, Lk/b/i/a/n;

    .line 135
    iget-object v3, p0, Lk/b/i/b/g/y;->e:[B

    invoke-static {v3}, Lk/b/c/e/a;->b([B)[B

    move-result-object v3

    .line 136
    iget-object p0, p0, Lk/b/i/b/g/y;->d:[B

    invoke-static {p0}, Lk/b/c/e/a;->b([B)[B

    move-result-object p0

    .line 137
    invoke-direct {v2, v3, p0}, Lk/b/i/a/n;-><init>([B[B)V

    invoke-direct {v1, v0, v2}, Lk/b/a/l2/s;-><init>(Lk/b/a/l2/a;Lk/b/a/e;)V

    return-object v1

    :cond_3
    instance-of v0, p0, Lk/b/i/b/g/t;

    if-eqz v0, :cond_4

    check-cast p0, Lk/b/i/b/g/t;

    new-instance v0, Lk/b/a/l2/a;

    sget-object v1, Lk/b/i/a/e;->l:Lk/b/a/o;

    new-instance v2, Lk/b/i/a/j;

    .line 138
    iget-object v3, p0, Lk/b/i/b/g/t;->b:Lk/b/i/b/g/r;

    .line 139
    iget v4, v3, Lk/b/i/b/g/r;->c:I

    .line 140
    iget v3, v3, Lk/b/i/b/g/r;->d:I

    .line 141
    iget-object v5, p0, Lk/b/i/b/g/q;->a:Ljava/lang/String;

    .line 142
    invoke-static {v5}, Lk/b/i/b/f/b;->b(Ljava/lang/String;)Lk/b/a/l2/a;

    move-result-object v5

    invoke-direct {v2, v4, v3, v5}, Lk/b/i/a/j;-><init>(IILk/b/a/l2/a;)V

    invoke-direct {v0, v1, v2}, Lk/b/a/l2/a;-><init>(Lk/b/a/o;Lk/b/a/e;)V

    new-instance v1, Lk/b/a/l2/s;

    new-instance v2, Lk/b/i/a/l;

    .line 143
    iget-object v3, p0, Lk/b/i/b/g/t;->e:[B

    invoke-static {v3}, Lk/b/c/e/a;->b([B)[B

    move-result-object v3

    .line 144
    iget-object p0, p0, Lk/b/i/b/g/t;->d:[B

    invoke-static {p0}, Lk/b/c/e/a;->b([B)[B

    move-result-object p0

    .line 145
    invoke-direct {v2, v3, p0}, Lk/b/i/a/l;-><init>([B[B)V

    invoke-direct {v1, v0, v2}, Lk/b/a/l2/s;-><init>(Lk/b/a/l2/a;Lk/b/a/e;)V

    return-object v1

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string v0, "key parameters not recognized"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lk/b/a/l2/a;)Lk/b/c/a;
    .locals 2

    .line 148
    iget-object v0, p0, Lk/b/a/l2/a;->x:Lk/b/a/o;

    .line 149
    sget-object v1, Lk/b/a/h2/a;->a:Lk/b/a/o;

    invoke-virtual {v0, v1}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    new-instance p0, Lk/b/c/c/c;

    invoke-direct {p0}, Lk/b/c/c/c;-><init>()V

    return-object p0

    .line 151
    :cond_0
    iget-object v0, p0, Lk/b/a/l2/a;->x:Lk/b/a/o;

    .line 152
    sget-object v1, Lk/b/a/g2/a;->f:Lk/b/a/o;

    invoke-virtual {v0, v1}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    new-instance p0, Lk/b/c/c/d;

    invoke-direct {p0}, Lk/b/c/c/d;-><init>()V

    return-object p0

    .line 154
    :cond_1
    iget-object v0, p0, Lk/b/a/l2/a;->x:Lk/b/a/o;

    .line 155
    sget-object v1, Lk/b/a/g2/a;->c:Lk/b/a/o;

    invoke-virtual {v0, v1}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    new-instance p0, Lk/b/c/c/e;

    invoke-direct {p0}, Lk/b/c/c/e;-><init>()V

    return-object p0

    .line 157
    :cond_2
    iget-object v0, p0, Lk/b/a/l2/a;->x:Lk/b/a/o;

    .line 158
    sget-object v1, Lk/b/a/g2/a;->d:Lk/b/a/o;

    invoke-virtual {v0, v1}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    new-instance p0, Lk/b/c/c/f;

    invoke-direct {p0}, Lk/b/c/c/f;-><init>()V

    return-object p0

    .line 160
    :cond_3
    iget-object v0, p0, Lk/b/a/l2/a;->x:Lk/b/a/o;

    .line 161
    sget-object v1, Lk/b/a/g2/a;->e:Lk/b/a/o;

    invoke-virtual {v0, v1}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 162
    new-instance p0, Lk/b/c/c/g;

    invoke-direct {p0}, Lk/b/c/c/g;-><init>()V

    return-object p0

    .line 163
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unrecognised OID in digest algorithm identifier: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    iget-object p0, p0, Lk/b/a/l2/a;->x:Lk/b/a/o;

    .line 165
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lk/b/a/i2/f;)Lk/b/c/d/a;
    .locals 9

    .line 5
    iget-object v0, p0, Lk/b/a/i2/f;->y:Lk/b/a/l2/a;

    .line 6
    iget-object v0, v0, Lk/b/a/l2/a;->x:Lk/b/a/o;

    .line 7
    sget-object v1, Lk/b/a/e2/a;->D:Lk/b/a/o;

    .line 8
    iget-object v2, v0, Lk/b/a/o;->x:Ljava/lang/String;

    iget-object v1, v1, Lk/b/a/o;->x:Ljava/lang/String;

    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    if-le v3, v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {p0}, Lk/b/a/i2/f;->f()Lk/b/a/e;

    move-result-object v0

    invoke-static {v0}, Lk/b/a/p;->a(Ljava/lang/Object;)Lk/b/a/p;

    move-result-object v0

    new-instance v1, Lk/b/i/b/c/a;

    .line 11
    iget-object p0, p0, Lk/b/a/i2/f;->y:Lk/b/a/l2/a;

    .line 12
    sget-object v2, Lk/b/i/b/f/b;->i:Ljava/util/Map;

    .line 13
    iget-object p0, p0, Lk/b/a/l2/a;->x:Lk/b/a/o;

    .line 14
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 15
    invoke-virtual {v0}, Lk/b/a/p;->j()[B

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lk/b/i/b/c/a;-><init>(I[B)V

    return-object v1

    :cond_1
    sget-object v1, Lk/b/a/e2/a;->h:Lk/b/a/o;

    invoke-virtual {v0, v1}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lk/b/i/b/e/b;

    invoke-virtual {p0}, Lk/b/a/i2/f;->f()Lk/b/a/e;

    move-result-object v1

    invoke-static {v1}, Lk/b/a/p;->a(Ljava/lang/Object;)Lk/b/a/p;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/a/p;->j()[B

    move-result-object v1

    .line 16
    iget-object p0, p0, Lk/b/a/i2/f;->y:Lk/b/a/l2/a;

    .line 17
    iget-object p0, p0, Lk/b/a/l2/a;->y:Lk/b/a/e;

    .line 18
    invoke-static {p0}, Lk/b/i/a/h;->a(Ljava/lang/Object;)Lk/b/i/a/h;

    move-result-object p0

    invoke-static {p0}, Lk/b/i/b/f/b;->a(Lk/b/i/a/h;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lk/b/i/b/e/b;-><init>([BLjava/lang/String;)V

    return-object v0

    :cond_2
    sget-object v1, Lk/b/a/e2/a;->H:Lk/b/a/o;

    invoke-virtual {v0, v1}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lk/b/i/b/b/a;

    invoke-virtual {p0}, Lk/b/a/i2/f;->f()Lk/b/a/e;

    move-result-object p0

    invoke-static {p0}, Lk/b/a/p;->a(Ljava/lang/Object;)Lk/b/a/p;

    move-result-object p0

    invoke-virtual {p0}, Lk/b/a/p;->j()[B

    move-result-object p0

    .line 19
    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [S

    :goto_1
    if-eq v5, v1, :cond_3

    mul-int/lit8 v3, v5, 0x2

    .line 20
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    int-to-short v3, v3

    .line 21
    aput-short v3, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 22
    :cond_3
    invoke-direct {v0, v2}, Lk/b/i/b/b/a;-><init>([S)V

    return-object v0

    :cond_4
    sget-object v1, Lk/b/a/e2/a;->l:Lk/b/a/o;

    invoke-virtual {v0, v1}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result v1

    const-string v2, "ClassNotFoundException processing BDS state: "

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    .line 23
    iget-object v0, p0, Lk/b/a/i2/f;->y:Lk/b/a/l2/a;

    .line 24
    iget-object v0, v0, Lk/b/a/l2/a;->y:Lk/b/a/e;

    .line 25
    invoke-static {v0}, Lk/b/i/a/i;->a(Ljava/lang/Object;)Lk/b/i/a/i;

    move-result-object v0

    .line 26
    iget-object v1, v0, Lk/b/i/a/i;->z:Lk/b/a/l2/a;

    .line 27
    iget-object v1, v1, Lk/b/a/l2/a;->x:Lk/b/a/o;

    .line 28
    invoke-virtual {p0}, Lk/b/a/i2/f;->f()Lk/b/a/e;

    move-result-object p0

    .line 29
    instance-of v4, p0, Lk/b/i/a/m;

    if-eqz v4, :cond_5

    check-cast p0, Lk/b/i/a/m;

    goto :goto_2

    :cond_5
    if-eqz p0, :cond_6

    new-instance v4, Lk/b/i/a/m;

    invoke-static {p0}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p0

    invoke-direct {v4, p0}, Lk/b/i/a/m;-><init>(Lk/b/a/u;)V

    move-object p0, v4

    goto :goto_2

    :cond_6
    move-object p0, v3

    .line 30
    :goto_2
    :try_start_0
    new-instance v4, Lk/b/i/b/g/x$b;

    new-instance v5, Lk/b/i/b/g/w;

    .line 31
    iget v0, v0, Lk/b/i/a/i;->y:I

    .line 32
    invoke-static {v1}, Lk/b/i/b/f/b;->a(Lk/b/a/o;)Lk/b/c/a;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lk/b/i/b/g/w;-><init>(ILk/b/c/a;)V

    invoke-direct {v4, v5}, Lk/b/i/b/g/x$b;-><init>(Lk/b/i/b/g/w;)V

    .line 33
    iget v0, p0, Lk/b/i/a/m;->y:I

    .line 34
    iput v0, v4, Lk/b/i/b/g/x$b;->b:I

    .line 35
    iget-object v0, p0, Lk/b/i/a/m;->z:[B

    invoke-static {v0}, Lk/b/c/e/a;->a([B)[B

    move-result-object v0

    .line 36
    invoke-static {v0}, Lk/b/c/e/a;->b([B)[B

    move-result-object v0

    iput-object v0, v4, Lk/b/i/b/g/x$b;->d:[B

    .line 37
    iget-object v0, p0, Lk/b/i/a/m;->A:[B

    invoke-static {v0}, Lk/b/c/e/a;->a([B)[B

    move-result-object v0

    .line 38
    invoke-static {v0}, Lk/b/c/e/a;->b([B)[B

    move-result-object v0

    iput-object v0, v4, Lk/b/i/b/g/x$b;->e:[B

    .line 39
    iget-object v0, p0, Lk/b/i/a/m;->B:[B

    invoke-static {v0}, Lk/b/c/e/a;->a([B)[B

    move-result-object v0

    .line 40
    invoke-static {v0}, Lk/b/c/e/a;->b([B)[B

    move-result-object v0

    iput-object v0, v4, Lk/b/i/b/g/x$b;->f:[B

    .line 41
    iget-object v0, p0, Lk/b/i/a/m;->C:[B

    invoke-static {v0}, Lk/b/c/e/a;->a([B)[B

    move-result-object v0

    .line 42
    invoke-static {v0}, Lk/b/c/e/a;->b([B)[B

    move-result-object v0

    iput-object v0, v4, Lk/b/i/b/g/x$b;->g:[B

    .line 43
    iget v0, p0, Lk/b/i/a/m;->x:I

    if-eqz v0, :cond_7

    .line 44
    iget v0, p0, Lk/b/i/a/m;->D:I

    .line 45
    iput v0, v4, Lk/b/i/b/g/x$b;->c:I

    .line 46
    :cond_7
    iget-object v0, p0, Lk/b/i/a/m;->E:[B

    invoke-static {v0}, Lk/b/c/e/a;->a([B)[B

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lk/b/i/a/m;->E:[B

    invoke-static {p0}, Lk/b/c/e/a;->a([B)[B

    move-result-object p0

    .line 47
    const-class v0, Lk/b/i/b/g/a;

    invoke-static {p0, v0}, Lk/b/c/e/a;->a([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk/b/i/b/g/a;

    if-eqz p0, :cond_8

    .line 48
    new-instance v0, Lk/b/i/b/g/a;

    invoke-direct {v0, p0, v1}, Lk/b/i/b/g/a;-><init>(Lk/b/i/b/g/a;Lk/b/a/o;)V

    .line 49
    iput-object v0, v4, Lk/b/i/b/g/x$b;->h:Lk/b/i/b/g/a;

    goto :goto_3

    .line 50
    :cond_8
    throw v3

    .line 51
    :cond_9
    :goto_3
    new-instance p0, Lk/b/i/b/g/x;

    invoke-direct {p0, v4, v3}, Lk/b/i/b/g/x;-><init>(Lk/b/i/b/g/x$b;Lk/b/i/b/g/x$a;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 52
    new-instance v0, Ljava/io/IOException;

    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    sget-object v1, Lk/b/i/a/e;->l:Lk/b/a/o;

    invoke-virtual {v0, v1}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 53
    iget-object v0, p0, Lk/b/a/i2/f;->y:Lk/b/a/l2/a;

    .line 54
    iget-object v0, v0, Lk/b/a/l2/a;->y:Lk/b/a/e;

    .line 55
    invoke-static {v0}, Lk/b/i/a/j;->a(Ljava/lang/Object;)Lk/b/i/a/j;

    move-result-object v0

    .line 56
    iget-object v1, v0, Lk/b/i/a/j;->A:Lk/b/a/l2/a;

    .line 57
    iget-object v1, v1, Lk/b/a/l2/a;->x:Lk/b/a/o;

    .line 58
    :try_start_1
    invoke-virtual {p0}, Lk/b/a/i2/f;->f()Lk/b/a/e;

    move-result-object p0

    .line 59
    instance-of v4, p0, Lk/b/i/a/k;

    if-eqz v4, :cond_b

    check-cast p0, Lk/b/i/a/k;

    goto :goto_4

    :cond_b
    if-eqz p0, :cond_c

    new-instance v4, Lk/b/i/a/k;

    invoke-static {p0}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p0

    invoke-direct {v4, p0}, Lk/b/i/a/k;-><init>(Lk/b/a/u;)V

    move-object p0, v4

    goto :goto_4

    :cond_c
    move-object p0, v3

    .line 60
    :goto_4
    new-instance v4, Lk/b/i/b/g/s$b;

    new-instance v5, Lk/b/i/b/g/r;

    .line 61
    iget v6, v0, Lk/b/i/a/j;->y:I

    .line 62
    iget v0, v0, Lk/b/i/a/j;->z:I

    .line 63
    invoke-static {v1}, Lk/b/i/b/f/b;->a(Lk/b/a/o;)Lk/b/c/a;

    move-result-object v7

    invoke-direct {v5, v6, v0, v7}, Lk/b/i/b/g/r;-><init>(IILk/b/c/a;)V

    invoke-direct {v4, v5}, Lk/b/i/b/g/s$b;-><init>(Lk/b/i/b/g/r;)V

    .line 64
    iget-wide v5, p0, Lk/b/i/a/k;->y:J

    .line 65
    iput-wide v5, v4, Lk/b/i/b/g/s$b;->b:J

    .line 66
    iget-object v0, p0, Lk/b/i/a/k;->A:[B

    invoke-static {v0}, Lk/b/c/e/a;->a([B)[B

    move-result-object v0

    .line 67
    invoke-static {v0}, Lk/b/c/e/a;->b([B)[B

    move-result-object v0

    iput-object v0, v4, Lk/b/i/b/g/s$b;->d:[B

    .line 68
    iget-object v0, p0, Lk/b/i/a/k;->B:[B

    invoke-static {v0}, Lk/b/c/e/a;->a([B)[B

    move-result-object v0

    .line 69
    invoke-static {v0}, Lk/b/c/e/a;->b([B)[B

    move-result-object v0

    iput-object v0, v4, Lk/b/i/b/g/s$b;->e:[B

    .line 70
    iget-object v0, p0, Lk/b/i/a/k;->C:[B

    invoke-static {v0}, Lk/b/c/e/a;->a([B)[B

    move-result-object v0

    .line 71
    invoke-static {v0}, Lk/b/c/e/a;->b([B)[B

    move-result-object v0

    iput-object v0, v4, Lk/b/i/b/g/s$b;->f:[B

    .line 72
    iget-object v0, p0, Lk/b/i/a/k;->D:[B

    invoke-static {v0}, Lk/b/c/e/a;->a([B)[B

    move-result-object v0

    .line 73
    invoke-static {v0}, Lk/b/c/e/a;->b([B)[B

    move-result-object v0

    iput-object v0, v4, Lk/b/i/b/g/s$b;->g:[B

    .line 74
    iget v0, p0, Lk/b/i/a/k;->x:I

    if-eqz v0, :cond_d

    .line 75
    iget-wide v5, p0, Lk/b/i/a/k;->z:J

    .line 76
    iput-wide v5, v4, Lk/b/i/b/g/s$b;->c:J

    .line 77
    :cond_d
    iget-object v0, p0, Lk/b/i/a/k;->E:[B

    invoke-static {v0}, Lk/b/c/e/a;->a([B)[B

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lk/b/i/a/k;->E:[B

    invoke-static {p0}, Lk/b/c/e/a;->a([B)[B

    move-result-object p0

    .line 78
    const-class v0, Lk/b/i/b/g/b;

    invoke-static {p0, v0}, Lk/b/c/e/a;->a([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk/b/i/b/g/b;

    invoke-virtual {p0, v1}, Lk/b/i/b/g/b;->a(Lk/b/a/o;)Lk/b/i/b/g/b;

    move-result-object p0

    .line 79
    iget-wide v0, p0, Lk/b/i/b/g/b;->y:J

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-nez v7, :cond_e

    .line 80
    new-instance v0, Lk/b/i/b/g/b;

    iget-object v1, v4, Lk/b/i/b/g/s$b;->a:Lk/b/i/b/g/r;

    .line 81
    iget v1, v1, Lk/b/i/b/g/r;->c:I

    const-wide/16 v5, 0x1

    shl-long v7, v5, v1

    sub-long/2addr v7, v5

    .line 82
    invoke-direct {v0, p0, v7, v8}, Lk/b/i/b/g/b;-><init>(Lk/b/i/b/g/b;J)V

    iput-object v0, v4, Lk/b/i/b/g/s$b;->h:Lk/b/i/b/g/b;

    goto :goto_5

    :cond_e
    iput-object p0, v4, Lk/b/i/b/g/s$b;->h:Lk/b/i/b/g/b;

    .line 83
    :cond_f
    :goto_5
    new-instance p0, Lk/b/i/b/g/s;

    invoke-direct {p0, v4, v3}, Lk/b/i/b/g/s;-><init>(Lk/b/i/b/g/s$b;Lk/b/i/b/g/s$a;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 84
    new-instance v0, Ljava/io/IOException;

    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "algorithm identifier in private key not recognised"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lk/b/i/b/g/k;Lk/b/i/b/g/n;Lk/b/i/b/g/i;)Lk/b/i/b/g/u;
    .locals 8

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 175
    iget-object v0, p0, Lk/b/i/b/g/k;->a:Lk/b/i/b/g/m;

    .line 176
    iget v0, v0, Lk/b/i/b/g/m;->d:I

    .line 177
    iget-object p1, p1, Lk/b/i/b/g/n;->a:[[B

    invoke-static {p1}, Lk/b/c/e/a;->a([[B)[[B

    move-result-object p1

    .line 178
    array-length v1, p1

    new-array v1, v1, [Lk/b/i/b/g/u;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    new-instance v4, Lk/b/i/b/g/u;

    aget-object v5, p1, v3

    invoke-direct {v4, v2, v5}, Lk/b/i/b/g/u;-><init>(I[B)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lk/b/i/b/g/i$b;

    invoke-direct {p1}, Lk/b/i/b/g/i$b;-><init>()V

    .line 179
    iget v3, p2, Lk/b/i/b/g/o;->a:I

    .line 180
    invoke-virtual {p1, v3}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object p1

    check-cast p1, Lk/b/i/b/g/i$b;

    .line 181
    iget-wide v3, p2, Lk/b/i/b/g/o;->b:J

    .line 182
    invoke-virtual {p1, v3, v4}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object p1

    check-cast p1, Lk/b/i/b/g/i$b;

    .line 183
    iget v3, p2, Lk/b/i/b/g/i;->e:I

    .line 184
    iput v3, p1, Lk/b/i/b/g/i$b;->e:I

    .line 185
    iput v2, p1, Lk/b/i/b/g/i$b;->f:I

    .line 186
    iget v3, p2, Lk/b/i/b/g/i;->g:I

    .line 187
    iput v3, p1, Lk/b/i/b/g/i$b;->g:I

    .line 188
    iget p2, p2, Lk/b/i/b/g/o;->d:I

    .line 189
    invoke-virtual {p1, p2}, Lk/b/i/b/g/o$a;->a(I)Lk/b/i/b/g/o$a;

    move-result-object p1

    :goto_1
    check-cast p1, Lk/b/i/b/g/i$b;

    invoke-virtual {p1}, Lk/b/i/b/g/i$b;->b()Lk/b/i/b/g/o;

    move-result-object p1

    check-cast p1, Lk/b/i/b/g/i;

    const/4 p2, 0x1

    if-le v0, p2, :cond_3

    const/4 v3, 0x0

    :goto_2
    div-int/lit8 v4, v0, 0x2

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    if-ge v3, v6, :cond_1

    new-instance v4, Lk/b/i/b/g/i$b;

    invoke-direct {v4}, Lk/b/i/b/g/i$b;-><init>()V

    .line 190
    iget v5, p1, Lk/b/i/b/g/o;->a:I

    .line 191
    invoke-virtual {v4, v5}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object v4

    check-cast v4, Lk/b/i/b/g/i$b;

    .line 192
    iget-wide v5, p1, Lk/b/i/b/g/o;->b:J

    .line 193
    invoke-virtual {v4, v5, v6}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object v4

    check-cast v4, Lk/b/i/b/g/i$b;

    .line 194
    iget v5, p1, Lk/b/i/b/g/i;->e:I

    .line 195
    iput v5, v4, Lk/b/i/b/g/i$b;->e:I

    .line 196
    iget v5, p1, Lk/b/i/b/g/i;->f:I

    .line 197
    iput v5, v4, Lk/b/i/b/g/i$b;->f:I

    .line 198
    iput v3, v4, Lk/b/i/b/g/i$b;->g:I

    .line 199
    iget p1, p1, Lk/b/i/b/g/o;->d:I

    .line 200
    invoke-virtual {v4, p1}, Lk/b/i/b/g/o$a;->a(I)Lk/b/i/b/g/o$a;

    move-result-object p1

    check-cast p1, Lk/b/i/b/g/i$b;

    invoke-virtual {p1}, Lk/b/i/b/g/i$b;->b()Lk/b/i/b/g/o;

    move-result-object p1

    check-cast p1, Lk/b/i/b/g/i;

    mul-int/lit8 v4, v3, 0x2

    aget-object v5, v1, v4

    add-int/2addr v4, p2

    aget-object v4, v1, v4

    invoke-static {p0, v5, v4, p1}, Lk/b/c/e/a;->a(Lk/b/i/b/g/k;Lk/b/i/b/g/u;Lk/b/i/b/g/u;Lk/b/i/b/g/o;)Lk/b/i/b/g/u;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    rem-int/lit8 v3, v0, 0x2

    if-ne v3, p2, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/lit8 v4, v0, -0x1

    aget-object v4, v1, v4

    aput-object v4, v1, v3

    :cond_2
    int-to-double v3, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    new-instance v3, Lk/b/i/b/g/i$b;

    invoke-direct {v3}, Lk/b/i/b/g/i$b;-><init>()V

    .line 201
    iget v4, p1, Lk/b/i/b/g/o;->a:I

    .line 202
    invoke-virtual {v3, v4}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object v3

    check-cast v3, Lk/b/i/b/g/i$b;

    .line 203
    iget-wide v4, p1, Lk/b/i/b/g/o;->b:J

    .line 204
    invoke-virtual {v3, v4, v5}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object v3

    check-cast v3, Lk/b/i/b/g/i$b;

    .line 205
    iget v4, p1, Lk/b/i/b/g/i;->e:I

    .line 206
    iput v4, v3, Lk/b/i/b/g/i$b;->e:I

    .line 207
    iget v4, p1, Lk/b/i/b/g/i;->f:I

    add-int/2addr v4, p2

    .line 208
    iput v4, v3, Lk/b/i/b/g/i$b;->f:I

    .line 209
    iget p2, p1, Lk/b/i/b/g/i;->g:I

    .line 210
    iput p2, v3, Lk/b/i/b/g/i$b;->g:I

    .line 211
    iget p1, p1, Lk/b/i/b/g/o;->d:I

    .line 212
    invoke-virtual {v3, p1}, Lk/b/i/b/g/o$a;->a(I)Lk/b/i/b/g/o$a;

    move-result-object p1

    goto/16 :goto_1

    :cond_3
    aget-object p0, v1, v2

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "address == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "publicKey == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lk/b/i/b/g/k;Lk/b/i/b/g/u;Lk/b/i/b/g/u;Lk/b/i/b/g/o;)Lk/b/i/b/g/u;
    .locals 11

    if-eqz p1, :cond_e

    if-eqz p2, :cond_d

    .line 213
    iget v0, p1, Lk/b/i/b/g/u;->x:I

    iget v1, p2, Lk/b/i/b/g/u;->x:I

    if-ne v0, v1, :cond_c

    if-eqz p3, :cond_b

    .line 214
    iget-object v0, p0, Lk/b/i/b/g/k;->d:[B

    invoke-static {v0}, Lk/b/c/e/a;->a([B)[B

    move-result-object v0

    .line 215
    instance-of v1, p3, Lk/b/i/b/g/i;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast p3, Lk/b/i/b/g/i;

    new-instance v1, Lk/b/i/b/g/i$b;

    invoke-direct {v1}, Lk/b/i/b/g/i$b;-><init>()V

    .line 216
    iget v3, p3, Lk/b/i/b/g/o;->a:I

    .line 217
    invoke-virtual {v1, v3}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object v1

    check-cast v1, Lk/b/i/b/g/i$b;

    .line 218
    iget-wide v3, p3, Lk/b/i/b/g/o;->b:J

    .line 219
    invoke-virtual {v1, v3, v4}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object v1

    check-cast v1, Lk/b/i/b/g/i$b;

    .line 220
    iget v3, p3, Lk/b/i/b/g/i;->e:I

    .line 221
    iput v3, v1, Lk/b/i/b/g/i$b;->e:I

    .line 222
    iget v3, p3, Lk/b/i/b/g/i;->f:I

    .line 223
    iput v3, v1, Lk/b/i/b/g/i$b;->f:I

    .line 224
    iget p3, p3, Lk/b/i/b/g/i;->g:I

    .line 225
    iput p3, v1, Lk/b/i/b/g/i$b;->g:I

    .line 226
    invoke-virtual {v1, v2}, Lk/b/i/b/g/o$a;->a(I)Lk/b/i/b/g/o$a;

    move-result-object p3

    check-cast p3, Lk/b/i/b/g/i$b;

    invoke-virtual {p3}, Lk/b/i/b/g/i$b;->b()Lk/b/i/b/g/o;

    move-result-object p3

    check-cast p3, Lk/b/i/b/g/i;

    goto :goto_0

    :cond_0
    instance-of v1, p3, Lk/b/i/b/g/g;

    if-eqz v1, :cond_1

    check-cast p3, Lk/b/i/b/g/g;

    new-instance v1, Lk/b/i/b/g/g$b;

    invoke-direct {v1}, Lk/b/i/b/g/g$b;-><init>()V

    .line 227
    iget v3, p3, Lk/b/i/b/g/o;->a:I

    .line 228
    invoke-virtual {v1, v3}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object v1

    check-cast v1, Lk/b/i/b/g/g$b;

    .line 229
    iget-wide v3, p3, Lk/b/i/b/g/o;->b:J

    .line 230
    invoke-virtual {v1, v3, v4}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object v1

    check-cast v1, Lk/b/i/b/g/g$b;

    .line 231
    iget v3, p3, Lk/b/i/b/g/g;->f:I

    .line 232
    iput v3, v1, Lk/b/i/b/g/g$b;->e:I

    .line 233
    iget p3, p3, Lk/b/i/b/g/g;->g:I

    .line 234
    iput p3, v1, Lk/b/i/b/g/g$b;->f:I

    .line 235
    invoke-virtual {v1, v2}, Lk/b/i/b/g/o$a;->a(I)Lk/b/i/b/g/o$a;

    move-result-object p3

    check-cast p3, Lk/b/i/b/g/g$b;

    invoke-virtual {p3}, Lk/b/i/b/g/g$b;->b()Lk/b/i/b/g/o;

    move-result-object p3

    check-cast p3, Lk/b/i/b/g/g;

    .line 236
    :cond_1
    :goto_0
    iget-object v1, p0, Lk/b/i/b/g/k;->b:Lk/b/i/b/g/h;

    .line 237
    invoke-virtual {p3}, Lk/b/i/b/g/o;->a()[B

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lk/b/i/b/g/h;->a([B[B)[B

    move-result-object v1

    instance-of v3, p3, Lk/b/i/b/g/i;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    check-cast p3, Lk/b/i/b/g/i;

    new-instance v3, Lk/b/i/b/g/i$b;

    invoke-direct {v3}, Lk/b/i/b/g/i$b;-><init>()V

    .line 238
    iget v5, p3, Lk/b/i/b/g/o;->a:I

    .line 239
    invoke-virtual {v3, v5}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object v3

    check-cast v3, Lk/b/i/b/g/i$b;

    .line 240
    iget-wide v5, p3, Lk/b/i/b/g/o;->b:J

    .line 241
    invoke-virtual {v3, v5, v6}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object v3

    check-cast v3, Lk/b/i/b/g/i$b;

    .line 242
    iget v5, p3, Lk/b/i/b/g/i;->e:I

    .line 243
    iput v5, v3, Lk/b/i/b/g/i$b;->e:I

    .line 244
    iget v5, p3, Lk/b/i/b/g/i;->f:I

    .line 245
    iput v5, v3, Lk/b/i/b/g/i$b;->f:I

    .line 246
    iget p3, p3, Lk/b/i/b/g/i;->g:I

    .line 247
    iput p3, v3, Lk/b/i/b/g/i$b;->g:I

    .line 248
    invoke-virtual {v3, v4}, Lk/b/i/b/g/o$a;->a(I)Lk/b/i/b/g/o$a;

    move-result-object p3

    check-cast p3, Lk/b/i/b/g/i$b;

    invoke-virtual {p3}, Lk/b/i/b/g/i$b;->b()Lk/b/i/b/g/o;

    move-result-object p3

    check-cast p3, Lk/b/i/b/g/i;

    goto :goto_1

    :cond_2
    instance-of v3, p3, Lk/b/i/b/g/g;

    if-eqz v3, :cond_3

    check-cast p3, Lk/b/i/b/g/g;

    new-instance v3, Lk/b/i/b/g/g$b;

    invoke-direct {v3}, Lk/b/i/b/g/g$b;-><init>()V

    .line 249
    iget v5, p3, Lk/b/i/b/g/o;->a:I

    .line 250
    invoke-virtual {v3, v5}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object v3

    check-cast v3, Lk/b/i/b/g/g$b;

    .line 251
    iget-wide v5, p3, Lk/b/i/b/g/o;->b:J

    .line 252
    invoke-virtual {v3, v5, v6}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object v3

    check-cast v3, Lk/b/i/b/g/g$b;

    .line 253
    iget v5, p3, Lk/b/i/b/g/g;->f:I

    .line 254
    iput v5, v3, Lk/b/i/b/g/g$b;->e:I

    .line 255
    iget p3, p3, Lk/b/i/b/g/g;->g:I

    .line 256
    iput p3, v3, Lk/b/i/b/g/g$b;->f:I

    .line 257
    invoke-virtual {v3, v4}, Lk/b/i/b/g/o$a;->a(I)Lk/b/i/b/g/o$a;

    move-result-object p3

    check-cast p3, Lk/b/i/b/g/g$b;

    invoke-virtual {p3}, Lk/b/i/b/g/g$b;->b()Lk/b/i/b/g/o;

    move-result-object p3

    check-cast p3, Lk/b/i/b/g/g;

    .line 258
    :cond_3
    :goto_1
    iget-object v3, p0, Lk/b/i/b/g/k;->b:Lk/b/i/b/g/h;

    .line 259
    invoke-virtual {p3}, Lk/b/i/b/g/o;->a()[B

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lk/b/i/b/g/h;->a([B[B)[B

    move-result-object v3

    instance-of v5, p3, Lk/b/i/b/g/i;

    const/4 v6, 0x2

    if-eqz v5, :cond_4

    check-cast p3, Lk/b/i/b/g/i;

    new-instance v5, Lk/b/i/b/g/i$b;

    invoke-direct {v5}, Lk/b/i/b/g/i$b;-><init>()V

    .line 260
    iget v7, p3, Lk/b/i/b/g/o;->a:I

    .line 261
    invoke-virtual {v5, v7}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object v5

    check-cast v5, Lk/b/i/b/g/i$b;

    .line 262
    iget-wide v7, p3, Lk/b/i/b/g/o;->b:J

    .line 263
    invoke-virtual {v5, v7, v8}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object v5

    check-cast v5, Lk/b/i/b/g/i$b;

    .line 264
    iget v7, p3, Lk/b/i/b/g/i;->e:I

    .line 265
    iput v7, v5, Lk/b/i/b/g/i$b;->e:I

    .line 266
    iget v7, p3, Lk/b/i/b/g/i;->f:I

    .line 267
    iput v7, v5, Lk/b/i/b/g/i$b;->f:I

    .line 268
    iget p3, p3, Lk/b/i/b/g/i;->g:I

    .line 269
    iput p3, v5, Lk/b/i/b/g/i$b;->g:I

    .line 270
    invoke-virtual {v5, v6}, Lk/b/i/b/g/o$a;->a(I)Lk/b/i/b/g/o$a;

    move-result-object p3

    check-cast p3, Lk/b/i/b/g/i$b;

    invoke-virtual {p3}, Lk/b/i/b/g/i$b;->b()Lk/b/i/b/g/o;

    move-result-object p3

    check-cast p3, Lk/b/i/b/g/i;

    goto :goto_2

    :cond_4
    instance-of v5, p3, Lk/b/i/b/g/g;

    if-eqz v5, :cond_5

    check-cast p3, Lk/b/i/b/g/g;

    new-instance v5, Lk/b/i/b/g/g$b;

    invoke-direct {v5}, Lk/b/i/b/g/g$b;-><init>()V

    .line 271
    iget v7, p3, Lk/b/i/b/g/o;->a:I

    .line 272
    invoke-virtual {v5, v7}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object v5

    check-cast v5, Lk/b/i/b/g/g$b;

    .line 273
    iget-wide v7, p3, Lk/b/i/b/g/o;->b:J

    .line 274
    invoke-virtual {v5, v7, v8}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object v5

    check-cast v5, Lk/b/i/b/g/g$b;

    .line 275
    iget v7, p3, Lk/b/i/b/g/g;->f:I

    .line 276
    iput v7, v5, Lk/b/i/b/g/g$b;->e:I

    .line 277
    iget p3, p3, Lk/b/i/b/g/g;->g:I

    .line 278
    iput p3, v5, Lk/b/i/b/g/g$b;->f:I

    .line 279
    invoke-virtual {v5, v6}, Lk/b/i/b/g/o$a;->a(I)Lk/b/i/b/g/o$a;

    move-result-object p3

    check-cast p3, Lk/b/i/b/g/g$b;

    invoke-virtual {p3}, Lk/b/i/b/g/g$b;->b()Lk/b/i/b/g/o;

    move-result-object p3

    check-cast p3, Lk/b/i/b/g/g;

    .line 280
    :cond_5
    :goto_2
    iget-object v5, p0, Lk/b/i/b/g/k;->b:Lk/b/i/b/g/h;

    .line 281
    invoke-virtual {p3}, Lk/b/i/b/g/o;->a()[B

    move-result-object p3

    invoke-virtual {v5, v0, p3}, Lk/b/i/b/g/h;->a([B[B)[B

    move-result-object p3

    .line 282
    iget-object v0, p0, Lk/b/i/b/g/k;->a:Lk/b/i/b/g/m;

    .line 283
    iget v0, v0, Lk/b/i/b/g/m;->b:I

    mul-int/lit8 v5, v0, 0x2

    .line 284
    new-array v7, v5, [B

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v0, :cond_6

    invoke-virtual {p1}, Lk/b/i/b/g/u;->a()[B

    move-result-object v9

    aget-byte v9, v9, v8

    aget-byte v10, v3, v8

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-ge v2, v0, :cond_7

    add-int v3, v2, v0

    invoke-virtual {p2}, Lk/b/i/b/g/u;->a()[B

    move-result-object v8

    aget-byte v8, v8, v2

    aget-byte v9, p3, v2

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v7, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 285
    :cond_7
    iget-object p0, p0, Lk/b/i/b/g/k;->b:Lk/b/i/b/g/h;

    if-eqz p0, :cond_a

    .line 286
    array-length p2, v1

    iget p3, p0, Lk/b/i/b/g/h;->b:I

    if-ne p2, p3, :cond_9

    mul-int/lit8 p3, p3, 0x2

    if-ne v5, p3, :cond_8

    invoke-virtual {p0, v4, v1, v7}, Lk/b/i/b/g/h;->a(I[B[B)[B

    move-result-object p0

    .line 287
    new-instance p2, Lk/b/i/b/g/u;

    .line 288
    iget p1, p1, Lk/b/i/b/g/u;->x:I

    .line 289
    invoke-direct {p2, p1, p0}, Lk/b/i/b/g/u;-><init>(I[B)V

    return-object p2

    .line 290
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong in length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong key length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    const/4 p0, 0x0

    throw p0

    .line 291
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "address == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "height of both nodes must be equal"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "right == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "left == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lk/b/i/d/a/b;Lk/b/i/d/a/e;)Lk/b/i/d/a/a;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    const-class v2, I

    iget v3, v0, Lk/b/i/d/a/b;->a:I

    const/4 v4, 0x1

    shl-int v5, v4, v3

    .line 2
    invoke-virtual/range {p1 .. p1}, Lk/b/i/d/a/e;->b()I

    move-result v6

    const/4 v7, 0x2

    new-array v8, v7, [I

    aput v5, v8, v4

    const/4 v9, 0x0

    aput v6, v8, v9

    invoke-static {v2, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    new-array v10, v7, [I

    aput v5, v10, v4

    aput v6, v10, v9

    invoke-static {v2, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[I

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v5, :cond_1

    aget-object v12, v10, v9

    .line 3
    iget-object v13, v1, Lk/b/i/d/a/e;->c:[I

    iget v14, v1, Lk/b/i/d/a/e;->b:I

    aget v13, v13, v14

    :goto_1
    add-int/lit8 v14, v14, -0x1

    if-ltz v14, :cond_0

    iget-object v15, v1, Lk/b/i/d/a/e;->a:Lk/b/i/d/a/b;

    invoke-virtual {v15, v13, v11}, Lk/b/i/d/a/b;->a(II)I

    move-result v13

    iget-object v15, v1, Lk/b/i/d/a/e;->c:[I

    aget v15, v15, v14

    xor-int/2addr v13, v15

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v0, v13}, Lk/b/i/d/a/b;->a(I)I

    move-result v13

    aput v13, v12, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, 0x1

    :goto_2
    if-ge v11, v6, :cond_3

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v5, :cond_2

    aget-object v13, v10, v11

    add-int/lit8 v14, v11, -0x1

    aget-object v14, v10, v14

    aget v14, v14, v12

    invoke-virtual {v0, v14, v12}, Lk/b/i/d/a/b;->a(II)I

    move-result v14

    aput v14, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    :goto_4
    if-ge v11, v6, :cond_6

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v5, :cond_5

    const/4 v13, 0x0

    :goto_6
    if-gt v13, v11, :cond_4

    aget-object v14, v8, v11

    aget-object v15, v8, v11

    aget v15, v15, v12

    aget-object v16, v10, v13

    aget v9, v16, v12

    add-int v16, v6, v13

    sub-int v4, v16, v11

    invoke-virtual {v1, v4}, Lk/b/i/d/a/e;->a(I)I

    move-result v4

    invoke-virtual {v0, v9, v4}, Lk/b/i/d/a/b;->a(II)I

    move-result v4

    xor-int/2addr v4, v15

    aput v4, v14, v12

    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x1

    const/4 v9, 0x0

    goto :goto_6

    :cond_4
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x1

    const/4 v9, 0x0

    goto :goto_5

    :cond_5
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x1

    const/4 v9, 0x0

    goto :goto_4

    :cond_6
    mul-int v0, v6, v3

    add-int/lit8 v1, v5, 0x1f

    ushr-int/lit8 v1, v1, 0x5

    new-array v4, v7, [I

    const/4 v7, 0x1

    aput v1, v4, v7

    const/4 v1, 0x0

    aput v0, v4, v1

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v5, :cond_a

    ushr-int/lit8 v4, v2, 0x5

    and-int/lit8 v9, v2, 0x1f

    shl-int v9, v7, v9

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v6, :cond_9

    aget-object v11, v8, v10

    aget v11, v11, v2

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v3, :cond_8

    ushr-int v13, v11, v12

    and-int/2addr v13, v7

    if-eqz v13, :cond_7

    add-int/lit8 v13, v10, 0x1

    mul-int v13, v13, v3

    sub-int/2addr v13, v12

    sub-int/2addr v13, v7

    aget-object v13, v0, v13

    aget v14, v13, v4

    xor-int/2addr v14, v9

    aput v14, v13, v4

    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_a
    new-instance v1, Lk/b/i/d/a/a;

    invoke-direct {v1, v5, v0}, Lk/b/i/d/a/a;-><init>(I[[I)V

    return-object v1
.end method

.method public static a(I)Lk/c/a/a/a/k;
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    new-instance v0, Lk/c/a/a/a/k;

    invoke-direct {v0, p0}, Lk/c/a/a/a/k;-><init>(I)V

    return-object v0

    .line 293
    :cond_1
    :goto_0
    new-instance v0, Lk/c/a/a/a/p;

    invoke-direct {v0, p0}, Lk/c/a/a/a/p;-><init>(I)V

    return-object v0
.end method

.method public static a(I[BI)V
    .locals 2

    add-int/lit8 v0, p2, 0x1

    int-to-byte v1, p0

    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    ushr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    aput-byte p0, p1, v0

    return-void
.end method

.method public static a(J[BI)V
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v1, v0

    invoke-static {v1, p2, p3}, Lk/b/c/e/a;->b(I[BI)V

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p1, p0

    add-int/lit8 p3, p3, 0x4

    invoke-static {p1, p2, p3}, Lk/b/c/e/a;->b(I[BI)V

    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 11

    :try_start_0
    const-string v0, "UTF-8"

    .line 295
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const v1, 0xffff

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v0, v4, :cond_18

    if-gt v0, v1, :cond_18

    if-eqz p1, :cond_e

    const-string p1, "+"

    const-string v0, "#"

    .line 296
    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-lt v5, v2, :cond_c

    if-eqz v6, :cond_0

    return-void

    .line 297
    :cond_0
    invoke-static {p0}, Lk/b/c/e/a;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lk/b/c/e/a;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 298
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 299
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_1

    :cond_3
    :goto_2
    const/4 v2, 0x0

    :goto_3
    if-gt v2, v4, :cond_b

    .line 300
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "/#"

    .line 301
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 302
    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const-string v0, "/"

    .line 303
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 304
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 305
    array-length v2, v1

    const/4 v5, 0x0

    :goto_4
    if-lt v5, v2, :cond_5

    return-void

    :cond_5
    add-int/lit8 v6, v5, -0x1

    if-ltz v6, :cond_6

    .line 306
    aget-char v6, v1, v6

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    :goto_5
    add-int/lit8 v7, v5, 0x1

    if-ge v7, v2, :cond_7

    .line 307
    aget-char v8, v1, v7

    goto :goto_6

    :cond_7
    const/4 v8, 0x0

    .line 308
    :goto_6
    aget-char v5, v1, v5

    if-ne v5, p1, :cond_a

    if-eq v6, v0, :cond_8

    if-nez v6, :cond_9

    :cond_8
    if-eq v8, v0, :cond_a

    if-nez v8, :cond_9

    goto :goto_7

    .line 309
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v3

    const-string p0, "Invalid usage of single-level wildcard in topic string \'%s\'!"

    .line 310
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 311
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_7
    move v5, v7

    goto :goto_4

    .line 312
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid usage of multi-level wildcard in topic string: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 314
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 315
    :cond_c
    aget-object v7, v1, v5

    if-nez v6, :cond_d

    .line 316
    invoke-virtual {v7, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    const/4 v6, 0x0

    goto :goto_8

    :cond_d
    const/4 v6, 0x1

    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_e
    const-string p1, "#+"

    .line 317
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 318
    invoke-static {p0}, Lk/b/c/e/a;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    if-eqz p1, :cond_f

    .line 319
    array-length v0, p1

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_9

    :cond_f
    const/4 v0, 0x1

    :goto_9
    if-eqz v0, :cond_10

    goto :goto_d

    .line 320
    :cond_10
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 321
    array-length v1, p1

    add-int/lit8 v2, v0, -0x1

    add-int/lit8 v5, v1, -0x1

    const/4 v6, 0x0

    :goto_a
    if-lt v6, v0, :cond_11

    goto :goto_d

    .line 322
    :cond_11
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/4 v8, 0x0

    :goto_b
    if-lt v8, v1, :cond_12

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 323
    :cond_12
    aget-char v9, p1, v8

    if-ne v9, v7, :cond_15

    .line 324
    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_14

    if-ne v8, v5, :cond_13

    goto :goto_c

    :cond_13
    if-ge v6, v2, :cond_15

    add-int/lit8 v9, v8, 0x1

    .line 325
    aget-char v9, p1, v9

    add-int/lit8 v10, v6, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v9, v10, :cond_15

    :cond_14
    :goto_c
    const/4 v3, 0x1

    goto :goto_d

    :cond_15
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_16
    :goto_d
    if-nez v3, :cond_17

    return-void

    .line 326
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The topic name MUST NOT contain any wildcard characters (#+)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 327
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array p1, v2, [Ljava/lang/Object;

    .line 328
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v4

    const-string v0, "Invalid topic length, should be in range[%d, %d]!"

    .line 329
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 330
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a([B[BI)V
    .locals 3

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    if-ltz p2, :cond_2

    array-length v0, p1

    add-int/2addr v0, p2

    array-length v1, p0

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    add-int v1, p2, v0

    aget-byte v2, p1, v0

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "src length + offset must not be greater than size of destination"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "offset hast to be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "src == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "dst == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a([II[I[I)V
    .locals 9

    const/4 v0, 0x0

    if-gez p1, :cond_0

    array-length p1, p0

    const-wide/16 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 166
    aget v3, p2, v0

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p0, v0

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v3, v1

    long-to-int v1, v3

    aput v1, p3, v0

    const/16 v1, 0x20

    ushr-long v1, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    array-length p0, p0

    invoke-static {p2, v0, p3, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-void
.end method

.method public static a(IJ)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p0

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "index must not be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(I[I)Z
    .locals 4

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-ge v1, p0, :cond_2

    aget v3, p1, v1

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static a(Ljava/lang/CharSequence;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 294
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static a([I[I)Z
    .locals 6

    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v3, 0x1

    :goto_0
    if-ltz v0, :cond_2

    aget v4, p0, v0

    aget v5, p1, v0

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    and-int/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public static a([S[S)Z
    .locals 6

    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v3, 0x1

    :goto_0
    if-ltz v0, :cond_2

    aget-short v4, p0, v0

    aget-short v5, p1, v0

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    and-int/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public static a([[S[[S)Z
    .locals 4

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Lk/b/c/e/a;->a([S[S)Z

    move-result v2

    and-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static a([[[S[[[S)Z
    .locals 4

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Lk/b/c/e/a;->a([[S[[S)Z

    move-result v2

    and-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static a(JI)[B
    .locals 2

    new-array v0, p2, [B

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_0

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, v0, p2

    const/16 v1, 0x8

    ushr-long/2addr p0, v1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a([B)[B
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    :goto_0
    return-object p0
.end method

.method public static a([B[B)[B
    .locals 3

    if-nez p0, :cond_0

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, [B

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static a(ILjava/math/BigInteger;)[I
    .locals 3

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v0, p0, :cond_1

    add-int/lit8 p0, p0, 0x1f

    shr-int/lit8 p0, p0, 0x5

    .line 146
    new-array p0, p0, [I

    const/4 v0, 0x0

    .line 147
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    aput v2, p0, v0

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    move v0, v1

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static a([I)[I
    .locals 3

    array-length v0, p0

    new-array v0, v0, [I

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static a([S)[S
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [S->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [S

    :goto_0
    return-object p0
.end method

.method public static a([[B)[[B
    .locals 6

    invoke-static {p0}, Lk/b/c/e/a;->c([[B)Z

    move-result v0

    if-nez v0, :cond_1

    array-length v0, p0

    new-array v0, v0, [[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-object v3, p0, v2

    array-length v3, v3

    new-array v3, v3, [B

    aput-object v3, v0, v2

    aget-object v3, p0, v2

    aget-object v4, v0, v2

    aget-object v5, p0, v2

    array-length v5, v5

    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "in has null pointers"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a([[S)[[B
    .locals 6

    array-length v0, p0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v0, v3, v1

    const-class v0, B

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    aget-object v4, v0, v2

    aget-object v5, p0, v2

    aget-short v5, v5, v3

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static a([[[S)[[[B
    .locals 7

    array-length v0, p0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    aget-object v3, p0, v1

    aget-object v3, v3, v1

    array-length v3, v3

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x2

    aput v3, v4, v5

    const/4 v3, 0x1

    aput v2, v4, v3

    aput v0, v4, v1

    const-class v0, B

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[B

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_1

    const/4 v4, 0x0

    :goto_2
    aget-object v5, p0, v1

    aget-object v5, v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    aget-object v5, v0, v2

    aget-object v5, v5, v3

    aget-object v6, p0, v2

    aget-object v6, v6, v3

    aget-short v6, v6, v4

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static a([[[B)[[[S
    .locals 7

    array-length v0, p0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    aget-object v3, p0, v1

    aget-object v3, v3, v1

    array-length v3, v3

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x2

    aput v3, v4, v5

    const/4 v3, 0x1

    aput v2, v4, v3

    aput v0, v4, v1

    const-class v0, S

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_1

    const/4 v4, 0x0

    :goto_2
    aget-object v5, p0, v1

    aget-object v5, v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    aget-object v5, v0, v2

    aget-object v5, v5, v3

    aget-object v6, p0, v2

    aget-object v6, v6, v3

    aget-byte v6, v6, v4

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    aput-short v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static b(I)I
    .locals 1

    const/4 v0, -0x1

    :goto_0
    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static b([BI)I
    .locals 2

    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static b([I)I
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    mul-int/lit16 v1, v1, 0x101

    aget v2, p0, v0

    xor-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static b([[S)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-eq v0, v2, :cond_0

    mul-int/lit16 v1, v1, 0x101

    aget-object v2, p0, v0

    invoke-static {v2}, Lk/b/c/e/a;->c([S)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static b([[[S)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-eq v0, v2, :cond_0

    mul-int/lit16 v1, v1, 0x101

    aget-object v2, p0, v0

    invoke-static {v2}, Lk/b/c/e/a;->b([[S)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static b(I[BI)V
    .locals 1

    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method public static b([B)[B
    .locals 3

    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "in == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b([BII)[B
    .locals 3

    if-eqz p0, :cond_4

    if-ltz p1, :cond_3

    if-ltz p2, :cond_2

    add-int v0, p1, p2

    array-length v1, p0

    if-gt v0, v1, :cond_1

    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int v2, p1, v1

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "offset + length must not be greater then size of source array"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "length hast to be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "offset hast to be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "src == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b([S)[B
    .locals 3

    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-short v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static b([[B)[[S
    .locals 6

    array-length v0, p0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v0, v3, v1

    const-class v0, S

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    aget-object v4, v0, v2

    aget-object v5, p0, v2

    aget-byte v5, v5, v3

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    aput-short v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static c([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static c([S)I
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    mul-int/lit16 v1, v1, 0x101

    aget-short v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static c(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const-string p0, "qTESLA-p-III"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown security category: "

    invoke-static {v1, p0}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "qTESLA-p-I"

    return-object p0
.end method

.method public static c(I[BI)V
    .locals 1

    int-to-byte v0, p0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method public static c([[B)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    aget-object v3, p0, v2

    if-nez v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static c([B)[S
    .locals 3

    array-length v0, p0

    new-array v0, v0, [S

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static d(I)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    shr-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static d([B)I
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    mul-int/lit16 v1, v1, 0x101

    aget-byte v2, p0, v0

    xor-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static d([BI)J
    .locals 5

    invoke-static {p0, p1}, Lk/b/c/e/a;->c([BI)I

    move-result v0

    add-int/lit8 p1, p1, 0x4

    invoke-static {p0, p1}, Lk/b/c/e/a;->c([BI)I

    move-result p0

    int-to-long p0, p0

    const-wide v1, 0xffffffffL

    and-long/2addr p0, v1

    const/16 v3, 0x20

    shl-long/2addr p0, v3

    int-to-long v3, v0

    and-long v0, v3, v1

    or-long/2addr p0, v0

    return-wide p0
.end method
