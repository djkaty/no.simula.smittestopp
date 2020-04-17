.class public Lk/b/a/r0;
.super Lk/b/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lk/b/a/e;)V
    .locals 1

    invoke-interface {p1}, Lk/b/a/e;->c()Lk/b/a/t;

    move-result-object p1

    const-string v0, "DER"

    invoke-virtual {p1, v0}, Lk/b/a/n;->a(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lk/b/a/b;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lk/b/a/b;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lk/b/a/b;-><init>([BI)V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lk/b/a/r0;
    .locals 2

    if-eqz p0, :cond_3

    instance-of v0, p0, Lk/b/a/r0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lk/b/a/n1;

    if-eqz v0, :cond_1

    new-instance v0, Lk/b/a/r0;

    check-cast p0, Lk/b/a/n1;

    iget-object v1, p0, Lk/b/a/b;->x:[B

    iget p0, p0, Lk/b/a/b;->y:I

    invoke-direct {v0, v1, p0}, Lk/b/a/r0;-><init>([BI)V

    return-object v0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Lk/b/a/t;->a([B)Lk/b/a/t;

    move-result-object p0

    check-cast p0, Lk/b/a/r0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encoding error in getInstance: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, v1}, Le/a/a/a/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal object in getInstance: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, v1}, Le/a/a/a/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    check-cast p0, Lk/b/a/r0;

    return-object p0
.end method

.method public static a(Lk/b/a/b0;Z)Lk/b/a/r0;
    .locals 4

    invoke-virtual {p0}, Lk/b/a/b0;->j()Lk/b/a/t;

    move-result-object p0

    if-nez p1, :cond_3

    instance-of p1, p0, Lk/b/a/r0;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lk/b/a/p;->a(Ljava/lang/Object;)Lk/b/a/p;

    move-result-object p0

    invoke-virtual {p0}, Lk/b/a/p;->j()[B

    move-result-object p0

    .line 7
    array-length p1, p0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    const/4 p1, 0x0

    aget-byte v1, p0, p1

    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v3, v2, [B

    if-eqz v2, :cond_1

    array-length v2, p0

    sub-int/2addr v2, v0

    invoke-static {p0, v0, v3, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    new-instance p0, Lk/b/a/r0;

    invoke-direct {p0, v3, v1}, Lk/b/a/r0;-><init>([BI)V

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "truncated BIT STRING detected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_3
    :goto_0
    invoke-static {p0}, Lk/b/a/r0;->a(Ljava/lang/Object;)Lk/b/a/r0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lk/b/a/r;Z)V
    .locals 8

    iget-object v0, p0, Lk/b/a/b;->x:[B

    array-length v1, v0

    const/4 v2, 0x3

    if-eqz v1, :cond_2

    iget v3, p0, Lk/b/a/b;->y:I

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, -0x1

    aget-byte v4, v0, v1

    aget-byte v5, v0, v1

    const/16 v6, 0xff

    shl-int v7, v6, v3

    and-int/2addr v5, v7

    int-to-byte v5, v5

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    aget-byte v4, v0, v1

    shl-int v5, v6, v3

    and-int/2addr v4, v5

    int-to-byte v4, v4

    int-to-byte v3, v3

    const/4 v5, 0x0

    if-eqz p2, :cond_1

    .line 1
    iget-object p2, p1, Lk/b/a/r;->a:Ljava/io/OutputStream;

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write(I)V

    :cond_1
    add-int/lit8 p2, v1, 0x2

    .line 2
    invoke-virtual {p1, p2}, Lk/b/a/r;->a(I)V

    .line 3
    iget-object p2, p1, Lk/b/a/r;->a:Ljava/io/OutputStream;

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 4
    iget-object p2, p1, Lk/b/a/r;->a:Ljava/io/OutputStream;

    invoke-virtual {p2, v0, v5, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 5
    iget-object p1, p1, Lk/b/a/r;->a:Ljava/io/OutputStream;

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    iget v0, p0, Lk/b/a/b;->y:I

    int-to-byte v0, v0

    iget-object v1, p0, Lk/b/a/b;->x:[B

    invoke-virtual {p1, p2, v2, v0, v1}, Lk/b/a/r;->a(ZIB[B)V

    :goto_1
    return-void
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Lk/b/a/b;->x:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk/b/a/d2;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lk/b/a/b;->x:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Lk/b/a/t;
    .locals 0

    return-object p0
.end method

.method public i()Lk/b/a/t;
    .locals 0

    return-object p0
.end method
