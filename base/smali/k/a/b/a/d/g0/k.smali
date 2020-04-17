.class public Lk/a/b/a/d/g0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/c/y0;


# instance fields
.field public a:[B

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lk/a/b/a/d/g0/k;->a:[B

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public a(B)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lk/a/b/a/d/g0/k;->c(I)V

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/k;->a:[B

    iget v1, p0, Lk/a/b/a/d/g0/k;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lk/a/b/a/d/g0/k;->b:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public a(D)V
    .locals 0

    .line 16
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lk/a/b/a/d/g0/k;->a(J)V

    return-void
.end method

.method public a(F)V
    .locals 0

    .line 15
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lk/a/b/a/d/g0/k;->b(I)V

    return-void
.end method

.method public a(I)V
    .locals 2

    if-ltz p1, :cond_1

    .line 27
    iget-object v0, p0, Lk/a/b/a/d/g0/k;->a:[B

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 28
    array-length v0, v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lk/a/b/a/d/g0/k;->c(I)V

    .line 29
    :cond_0
    iput p1, p0, Lk/a/b/a/d/g0/k;->b:I

    return-void

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Requested new buffer position cannot be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(J)V
    .locals 6

    const/16 v0, 0x8

    .line 6
    invoke-virtual {p0, v0}, Lk/a/b/a/d/g0/k;->c(I)V

    .line 7
    iget-object v1, p0, Lk/a/b/a/d/g0/k;->a:[B

    iget v2, p0, Lk/a/b/a/d/g0/k;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lk/a/b/a/d/g0/k;->b:I

    const/16 v4, 0x38

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    .line 8
    iput v2, p0, Lk/a/b/a/d/g0/k;->b:I

    const/16 v4, 0x30

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    .line 9
    iput v3, p0, Lk/a/b/a/d/g0/k;->b:I

    const/16 v4, 0x28

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    .line 10
    iput v2, p0, Lk/a/b/a/d/g0/k;->b:I

    const/16 v4, 0x20

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    .line 11
    iput v3, p0, Lk/a/b/a/d/g0/k;->b:I

    const/16 v4, 0x18

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    .line 12
    iput v2, p0, Lk/a/b/a/d/g0/k;->b:I

    const/16 v4, 0x10

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    .line 13
    iput v3, p0, Lk/a/b/a/d/g0/k;->b:I

    ushr-long v4, p1, v0

    long-to-int v0, v4

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    add-int/lit8 v0, v3, 0x1

    .line 14
    iput v0, p0, Lk/a/b/a/d/g0/k;->b:I

    const/4 v0, 0x0

    ushr-long/2addr p1, v0

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v1, v3

    return-void
.end method

.method public synthetic a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lk/a/b/a/c/x0;->a(Lk/a/b/a/c/y0;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 20
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 21
    invoke-virtual {p0, v0}, Lk/a/b/a/d/g0/k;->c(I)V

    .line 22
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    iget-object v2, p0, Lk/a/b/a/d/g0/k;->a:[B

    iget v4, p0, Lk/a/b/a/d/g0/k;->b:I

    invoke-static {v1, v3, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p0, Lk/a/b/a/d/g0/k;->a:[B

    iget v2, p0, Lk/a/b/a/d/g0/k;->b:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 26
    :goto_0
    iget p1, p0, Lk/a/b/a/d/g0/k;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lk/a/b/a/d/g0/k;->b:I

    return-void
.end method

.method public a(S)V
    .locals 4

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, v0}, Lk/a/b/a/d/g0/k;->c(I)V

    .line 4
    iget-object v0, p0, Lk/a/b/a/d/g0/k;->a:[B

    iget v1, p0, Lk/a/b/a/d/g0/k;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lk/a/b/a/d/g0/k;->b:I

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 5
    iput v1, p0, Lk/a/b/a/d/g0/k;->b:I

    ushr-int/lit8 p1, p1, 0x0

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void
.end method

.method public a([BII)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    .line 17
    :cond_0
    invoke-virtual {p0, p3}, Lk/a/b/a/d/g0/k;->c(I)V

    .line 18
    iget-object v0, p0, Lk/a/b/a/d/g0/k;->a:[B

    iget v1, p0, Lk/a/b/a/d/g0/k;->b:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iget p1, p0, Lk/a/b/a/d/g0/k;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lk/a/b/a/d/g0/k;->b:I

    return-void
.end method

.method public b(I)V
    .locals 4

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Lk/a/b/a/d/g0/k;->c(I)V

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/k;->a:[B

    iget v1, p0, Lk/a/b/a/d/g0/k;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lk/a/b/a/d/g0/k;->b:I

    ushr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 3
    iput v1, p0, Lk/a/b/a/d/g0/k;->b:I

    ushr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 4
    iput v2, p0, Lk/a/b/a/d/g0/k;->b:I

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 5
    iput v1, p0, Lk/a/b/a/d/g0/k;->b:I

    ushr-int/lit8 p1, p1, 0x0

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void
.end method

.method public b()Z
    .locals 2

    .line 6
    iget v0, p0, Lk/a/b/a/d/g0/k;->b:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()I
    .locals 2

    .line 1
    iget v0, p0, Lk/a/b/a/d/g0/k;->b:I

    const v1, 0x7fffffff

    sub-int/2addr v1, v0

    return v1
.end method

.method public c(I)V
    .locals 3

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/k;->a:[B

    array-length v1, v0

    iget v2, p0, Lk/a/b/a/d/g0/k;->b:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_0

    .line 3
    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr p1, v2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [B

    .line 4
    iget-object v0, p0, Lk/a/b/a/d/g0/k;->a:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iput-object p1, p0, Lk/a/b/a/d/g0/k;->a:[B

    :cond_0
    return-void
.end method

.method public position()I
    .locals 1

    .line 1
    iget v0, p0, Lk/a/b/a/d/g0/k;->b:I

    return v0
.end method
