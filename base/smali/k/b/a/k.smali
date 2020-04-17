.class public Lk/b/a/k;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field public final x:I

.field public final y:Z

.field public final z:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-static {p1}, Lk/b/a/d2;->a(Ljava/io/InputStream;)I

    move-result v0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput v0, p0, Lk/b/a/k;->x:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lk/b/a/k;->y:Z

    const/16 p1, 0xb

    new-array p1, p1, [[B

    iput-object p1, p0, Lk/b/a/k;->z:[[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1

    invoke-static {p1}, Lk/b/a/d2;->a(Ljava/io/InputStream;)I

    move-result v0

    .line 2
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput v0, p0, Lk/b/a/k;->x:I

    iput-boolean p2, p0, Lk/b/a/k;->y:Z

    const/16 p1, 0xb

    new-array p1, p1, [[B

    iput-object p1, p0, Lk/b/a/k;->z:[[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    .line 3
    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput p1, p0, Lk/b/a/k;->x:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lk/b/a/k;->y:Z

    const/16 p1, 0xb

    new-array p1, p1, [[B

    iput-object p1, p0, Lk/b/a/k;->z:[[B

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    .line 4
    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput p1, p0, Lk/b/a/k;->x:I

    iput-boolean p2, p0, Lk/b/a/k;->y:Z

    const/16 p1, 0xb

    new-array p1, p1, [[B

    iput-object p1, p0, Lk/b/a/k;->z:[[B

    return-void
.end method

.method public static a(Ljava/io/InputStream;I)I
    .locals 2

    const/16 v0, 0x1f

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    if-eqz v1, :cond_2

    :goto_0
    if-ltz v0, :cond_0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    and-int/lit8 v0, v0, 0x7f

    or-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x7

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    and-int/lit8 p0, v0, 0x7f

    or-int/2addr p1, p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found inside tag value."

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - invalid high tag number found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return p1
.end method

.method public static a(Ljava/io/InputStream;IZ)I
    .locals 4

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_8

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 v1, 0x7f

    if-le v0, v1, :cond_7

    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x4

    if-gt v0, v1, :cond_6

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ltz v3, :cond_1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found reading length"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-ltz v1, :cond_5

    if-lt v1, p1, :cond_4

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "corrupted stream - out of bounds length found: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " >= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    move v0, v1

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - negative length found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "DER length more than 4 bytes: "

    invoke-static {p1, v0}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    return v0

    :cond_8
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found when length expected"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(ILk/b/a/w1;[[B)Lk/b/a/t;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xa

    const/16 v3, 0xff

    if-eq p0, v2, :cond_c

    const/16 v2, 0xc

    if-eq p0, v2, :cond_b

    const/16 v2, 0x1e

    const/16 v4, 0x8

    if-eq p0, v2, :cond_3

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    new-instance p1, Ljava/io/IOException;

    const-string p2, "unknown tag "

    const-string v0, " encountered"

    invoke-static {p2, p0, v0}, Le/a/a/a/a;->b(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1, p2}, Lk/b/a/k;->a(Lk/b/a/w1;[[B)[B

    move-result-object p0

    invoke-static {p0}, Lk/b/a/o;->b([B)Lk/b/a/o;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lk/b/a/y0;->x:Lk/b/a/y0;

    return-object p0

    :pswitch_2
    new-instance p0, Lk/b/a/a1;

    invoke-virtual {p1}, Lk/b/a/w1;->a()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/a1;-><init>([B)V

    return-object p0

    .line 3
    :pswitch_3
    iget p0, p1, Lk/b/a/w1;->A:I

    if-lt p0, v1, :cond_2

    .line 4
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p2

    sub-int/2addr p0, v1

    new-array v2, p0, [B

    if-eqz p0, :cond_1

    .line 5
    invoke-static {p1, v2, v0, p0}, Lk/b/j/h/a;->a(Ljava/io/InputStream;[BII)I

    move-result p1

    if-ne p1, p0, :cond_0

    if-lez p2, :cond_1

    if-ge p2, v4, :cond_1

    sub-int/2addr p0, v1

    .line 6
    aget-byte p1, v2, p0

    aget-byte p0, v2, p0

    shl-int v0, v3, p2

    and-int/2addr p0, v0

    int-to-byte p0, p0

    if-eq p1, p0, :cond_1

    new-instance p0, Lk/b/a/n1;

    invoke-direct {p0, v2, p2}, Lk/b/a/n1;-><init>([BI)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF encountered in middle of BIT STRING"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lk/b/a/r0;

    invoke-direct {p0, v2, p2}, Lk/b/a/r0;-><init>([BI)V

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "truncated BIT STRING detected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :pswitch_4
    new-instance p0, Lk/b/a/l;

    invoke-virtual {p1}, Lk/b/a/w1;->a()[B

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lk/b/a/l;-><init>([BZ)V

    return-object p0

    :pswitch_5
    invoke-static {p1, p2}, Lk/b/a/k;->a(Lk/b/a/w1;[[B)[B

    move-result-object p0

    invoke-static {p0}, Lk/b/a/c;->b([B)Lk/b/a/c;

    move-result-object p0

    return-object p0

    :pswitch_6
    new-instance p0, Lk/b/a/j1;

    invoke-virtual {p1}, Lk/b/a/w1;->a()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/j1;-><init>([B)V

    return-object p0

    :pswitch_7
    new-instance p0, Lk/b/a/u0;

    invoke-virtual {p1}, Lk/b/a/w1;->a()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/u0;-><init>([B)V

    return-object p0

    :pswitch_8
    new-instance p0, Lk/b/a/l1;

    invoke-virtual {p1}, Lk/b/a/w1;->a()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/l1;-><init>([B)V

    return-object p0

    :pswitch_9
    new-instance p0, Lk/b/a/w0;

    invoke-virtual {p1}, Lk/b/a/w1;->a()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/w0;-><init>([B)V

    return-object p0

    :pswitch_a
    new-instance p0, Lk/b/a/j;

    invoke-virtual {p1}, Lk/b/a/w1;->a()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/j;-><init>([B)V

    return-object p0

    :pswitch_b
    new-instance p0, Lk/b/a/d0;

    invoke-virtual {p1}, Lk/b/a/w1;->a()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/d0;-><init>([B)V

    return-object p0

    :pswitch_c
    new-instance p0, Lk/b/a/x0;

    invoke-virtual {p1}, Lk/b/a/w1;->a()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/x0;-><init>([B)V

    return-object p0

    :pswitch_d
    new-instance p0, Lk/b/a/k1;

    invoke-virtual {p1}, Lk/b/a/w1;->a()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/k1;-><init>([B)V

    return-object p0

    :pswitch_e
    new-instance p0, Lk/b/a/g1;

    invoke-virtual {p1}, Lk/b/a/w1;->a()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/g1;-><init>([B)V

    return-object p0

    :pswitch_f
    new-instance p0, Lk/b/a/d1;

    invoke-virtual {p1}, Lk/b/a/w1;->a()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/d1;-><init>([B)V

    return-object p0

    :pswitch_10
    new-instance p0, Lk/b/a/z0;

    invoke-virtual {p1}, Lk/b/a/w1;->a()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/z0;-><init>([B)V

    return-object p0

    :cond_3
    new-instance p0, Lk/b/a/q0;

    .line 8
    iget p2, p1, Lk/b/a/w1;->A:I

    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_a

    .line 9
    div-int/lit8 v2, p2, 0x2

    new-array v5, v2, [C

    new-array v6, v4, [B

    const/4 v7, 0x0

    :goto_1
    const-string v8, "EOF encountered in middle of BMPString"

    if-lt p2, v4, :cond_5

    invoke-static {p1, v6, v0, v4}, Lk/b/j/h/a;->a(Ljava/io/InputStream;[BII)I

    move-result v9

    if-ne v9, v4, :cond_4

    aget-byte v8, v6, v0

    shl-int/2addr v8, v4

    aget-byte v9, v6, v1

    and-int/2addr v9, v3

    or-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v5, v7

    add-int/lit8 v8, v7, 0x1

    const/4 v9, 0x2

    aget-byte v9, v6, v9

    shl-int/2addr v9, v4

    const/4 v10, 0x3

    aget-byte v10, v6, v10

    and-int/2addr v10, v3

    or-int/2addr v9, v10

    int-to-char v9, v9

    aput-char v9, v5, v8

    add-int/lit8 v8, v7, 0x2

    const/4 v9, 0x4

    aget-byte v9, v6, v9

    shl-int/2addr v9, v4

    const/4 v10, 0x5

    aget-byte v10, v6, v10

    and-int/2addr v10, v3

    or-int/2addr v9, v10

    int-to-char v9, v9

    aput-char v9, v5, v8

    add-int/lit8 v8, v7, 0x3

    const/4 v9, 0x6

    aget-byte v9, v6, v9

    shl-int/2addr v9, v4

    const/4 v10, 0x7

    aget-byte v10, v6, v10

    and-int/2addr v10, v3

    or-int/2addr v9, v10

    int-to-char v9, v9

    aput-char v9, v5, v8

    add-int/lit8 v7, v7, 0x4

    add-int/lit8 p2, p2, -0x8

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v8}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    if-lez p2, :cond_8

    invoke-static {p1, v6, v0, p2}, Lk/b/j/h/a;->a(Ljava/io/InputStream;[BII)I

    move-result v1

    if-ne v1, p2, :cond_7

    :goto_2
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v6, v0

    shl-int/2addr v0, v4

    add-int/lit8 v8, v1, 0x1

    aget-byte v1, v6, v1

    and-int/2addr v1, v3

    add-int/lit8 v9, v7, 0x1

    or-int/2addr v0, v1

    int-to-char v0, v0

    aput-char v0, v5, v7

    if-lt v8, p2, :cond_6

    move v7, v9

    goto :goto_3

    :cond_6
    move v0, v8

    move v7, v9

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v8}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_8
    :goto_3
    iget p1, p1, Lk/b/a/w1;->A:I

    if-nez p1, :cond_9

    if-ne v2, v7, :cond_9

    .line 11
    invoke-direct {p0, v5}, Lk/b/a/q0;-><init>([C)V

    return-object p0

    .line 12
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "malformed BMPString encoding encountered"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_b
    new-instance p0, Lk/b/a/i1;

    invoke-virtual {p1}, Lk/b/a/w1;->a()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/i1;-><init>([B)V

    return-object p0

    :cond_c
    invoke-static {p1, p2}, Lk/b/a/k;->a(Lk/b/a/w1;[[B)[B

    move-result-object p0

    .line 14
    array-length p1, p0

    if-le p1, v1, :cond_d

    new-instance p1, Lk/b/a/g;

    invoke-direct {p1, p0}, Lk/b/a/g;-><init>([B)V

    goto :goto_4

    :cond_d
    array-length p1, p0

    if-eqz p1, :cond_10

    aget-byte p1, p0, v0

    and-int/2addr p1, v3

    sget-object p2, Lk/b/a/g;->y:[Lk/b/a/g;

    array-length v0, p2

    if-lt p1, v0, :cond_e

    new-instance p1, Lk/b/a/g;

    invoke-direct {p1, p0}, Lk/b/a/g;-><init>([B)V

    goto :goto_4

    :cond_e
    aget-object v0, p2, p1

    if-nez v0, :cond_f

    new-instance v0, Lk/b/a/g;

    invoke-direct {v0, p0}, Lk/b/a/g;-><init>([B)V

    aput-object v0, p2, p1

    :cond_f
    move-object p1, v0

    :goto_4
    return-object p1

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ENUMERATED has zero length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public static a(Lk/b/a/w1;[[B)[B
    .locals 2

    .line 15
    iget v0, p0, Lk/b/a/w1;->A:I

    .line 16
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    if-nez v1, :cond_0

    new-array v1, v0, [B

    aput-object v1, p1, v0

    .line 17
    :cond_0
    array-length p1, v1

    const/4 v0, 0x0

    invoke-static {p0, v1, v0, p1}, Lk/b/j/h/a;->a(Ljava/io/InputStream;[BII)I

    return-object v1

    .line 18
    :cond_1
    invoke-virtual {p0}, Lk/b/a/w1;->a()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lk/b/a/w1;)Lk/b/a/f;
    .locals 2

    .line 19
    iget v0, p1, Lk/b/a/w1;->A:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 20
    new-instance p1, Lk/b/a/f;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lk/b/a/f;-><init>(I)V

    return-object p1

    :cond_0
    new-instance v0, Lk/b/a/k;

    invoke-direct {v0, p1}, Lk/b/a/k;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Lk/b/a/f;

    const/16 v1, 0xa

    .line 21
    invoke-direct {p1, v1}, Lk/b/a/f;-><init>(I)V

    .line 22
    :goto_0
    invoke-virtual {v0}, Lk/b/a/k;->readObject()Lk/b/a/t;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public a(III)Lk/b/a/t;
    .locals 4

    and-int/lit8 v0, p1, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v2, Lk/b/a/w1;

    iget v3, p0, Lk/b/a/k;->x:I

    invoke-direct {v2, p0, p3, v3}, Lk/b/a/w1;-><init>(Ljava/io/InputStream;II)V

    and-int/lit8 p3, p1, 0x40

    if-eqz p3, :cond_1

    new-instance p1, Lk/b/a/m1;

    invoke-virtual {v2}, Lk/b/a/w1;->a()[B

    move-result-object p3

    invoke-direct {p1, v0, p2, p3}, Lk/b/a/m1;-><init>(ZI[B)V

    return-object p1

    :cond_1
    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_2

    new-instance p1, Lk/b/a/z;

    invoke-direct {p1, v2}, Lk/b/a/z;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1, v0, p2}, Lk/b/a/z;->a(ZI)Lk/b/a/t;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz v0, :cond_a

    const/4 p1, 0x4

    if-eq p2, p1, :cond_7

    const/16 p1, 0x8

    if-eq p2, p1, :cond_6

    const/16 p1, 0x10

    if-eq p2, p1, :cond_4

    const/16 p1, 0x11

    if-ne p2, p1, :cond_3

    invoke-virtual {p0, v2}, Lk/b/a/k;->a(Lk/b/a/w1;)Lk/b/a/f;

    move-result-object p1

    invoke-static {p1}, Lk/b/a/p1;->b(Lk/b/a/f;)Lk/b/a/x;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p3, "unknown tag "

    const-string v0, " encountered"

    invoke-static {p3, p2, v0}, Le/a/a/a/a;->b(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-boolean p1, p0, Lk/b/a/k;->y:Z

    if-eqz p1, :cond_5

    new-instance p1, Lk/b/a/a2;

    invoke-virtual {v2}, Lk/b/a/w1;->a()[B

    move-result-object p2

    invoke-direct {p1, p2}, Lk/b/a/a2;-><init>([B)V

    return-object p1

    :cond_5
    invoke-virtual {p0, v2}, Lk/b/a/k;->a(Lk/b/a/w1;)Lk/b/a/f;

    move-result-object p1

    invoke-static {p1}, Lk/b/a/p1;->a(Lk/b/a/f;)Lk/b/a/u;

    move-result-object p1

    return-object p1

    :cond_6
    new-instance p1, Lk/b/a/o1;

    invoke-virtual {p0, v2}, Lk/b/a/k;->a(Lk/b/a/w1;)Lk/b/a/f;

    move-result-object p2

    invoke-direct {p1, p2}, Lk/b/a/o1;-><init>(Lk/b/a/f;)V

    return-object p1

    :cond_7
    invoke-virtual {p0, v2}, Lk/b/a/k;->a(Lk/b/a/w1;)Lk/b/a/f;

    move-result-object p1

    .line 1
    iget p2, p1, Lk/b/a/f;->b:I

    .line 2
    new-array p3, p2, [Lk/b/a/p;

    :goto_1
    if-eq v1, p2, :cond_9

    invoke-virtual {p1, v1}, Lk/b/a/f;->a(I)Lk/b/a/e;

    move-result-object v0

    instance-of v2, v0, Lk/b/a/p;

    if-eqz v2, :cond_8

    check-cast v0, Lk/b/a/p;

    aput-object v0, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    new-instance p1, Lk/b/a/h;

    const-string p2, "unknown object encountered in constructed OCTET STRING: "

    invoke-static {p2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lk/b/a/h;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Lk/b/a/h0;

    invoke-direct {p1, p3}, Lk/b/a/h0;-><init>([Lk/b/a/p;)V

    return-object p1

    :cond_a
    iget-object p1, p0, Lk/b/a/k;->z:[[B

    invoke-static {p2, v2, p1}, Lk/b/a/k;->a(ILk/b/a/w1;[[B)Lk/b/a/t;

    move-result-object p1

    return-object p1
.end method

.method public readObject()Lk/b/a/t;
    .locals 6

    invoke-virtual {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    if-gtz v0, :cond_1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end-of-contents marker"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0, v0}, Lk/b/a/k;->a(Ljava/io/InputStream;I)I

    move-result v1

    and-int/lit8 v2, v0, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 1
    :goto_0
    iget v5, p0, Lk/b/a/k;->x:I

    invoke-static {p0, v5, v3}, Lk/b/a/k;->a(Ljava/io/InputStream;IZ)I

    move-result v3

    if-gez v3, :cond_a

    if-eqz v2, :cond_9

    .line 2
    new-instance v2, Lk/b/a/y1;

    iget v3, p0, Lk/b/a/k;->x:I

    invoke-direct {v2, p0, v3}, Lk/b/a/y1;-><init>(Ljava/io/InputStream;I)V

    new-instance v3, Lk/b/a/z;

    iget v5, p0, Lk/b/a/k;->x:I

    invoke-direct {v3, v2, v5}, Lk/b/a/z;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_3

    .line 3
    new-instance v0, Lk/b/a/e0;

    invoke-virtual {v3}, Lk/b/a/z;->b()Lk/b/a/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lk/b/a/e0;-><init>(ILk/b/a/f;)V

    return-object v0

    :cond_3
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {v3, v4, v1}, Lk/b/a/z;->a(ZI)Lk/b/a/t;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x4

    if-eq v1, v0, :cond_8

    const/16 v0, 0x8

    if-eq v1, v0, :cond_7

    const/16 v0, 0x10

    if-eq v1, v0, :cond_6

    const/16 v0, 0x11

    if-ne v1, v0, :cond_5

    .line 5
    new-instance v0, Lk/b/a/l0;

    invoke-virtual {v3}, Lk/b/a/z;->b()Lk/b/a/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lk/b/a/l0;-><init>(Lk/b/a/f;)V

    return-object v0

    .line 6
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unknown BER object encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_6
    new-instance v0, Lk/b/a/j0;

    invoke-virtual {v3}, Lk/b/a/z;->b()Lk/b/a/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lk/b/a/j0;-><init>(Lk/b/a/f;)V

    return-object v0

    .line 8
    :cond_7
    :try_start_0
    new-instance v0, Lk/b/a/o1;

    invoke-virtual {v3}, Lk/b/a/z;->b()Lk/b/a/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lk/b/a/o1;-><init>(Lk/b/a/f;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lk/b/a/h;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lk/b/a/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 9
    :cond_8
    new-instance v0, Lk/b/a/i0;

    invoke-direct {v0, v3}, Lk/b/a/i0;-><init>(Lk/b/a/z;)V

    invoke-virtual {v0}, Lk/b/a/i0;->a()Lk/b/a/t;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "indefinite-length primitive encoding encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :try_start_1
    invoke-virtual {p0, v0, v1, v3}, Lk/b/a/k;->a(III)Lk/b/a/t;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    new-instance v1, Lk/b/a/h;

    const-string v2, "corrupted stream detected"

    invoke-direct {v1, v2, v0}, Lk/b/a/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
