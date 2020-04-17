.class public Lk/b/a/l;
.super Lk/b/a/t;
.source "SourceFile"


# instance fields
.field public final x:[B

.field public final y:I


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lk/b/a/t;-><init>()V

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lk/b/a/l;->x:[B

    const/4 p1, 0x0

    iput p1, p0, Lk/b/a/l;->y:I

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Lk/b/a/t;-><init>()V

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lk/b/a/l;->x:[B

    const/4 p1, 0x0

    iput p1, p0, Lk/b/a/l;->y:I

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 1

    invoke-direct {p0}, Lk/b/a/t;-><init>()V

    invoke-static {p1}, Lk/b/a/l;->b([B)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-static {p1}, Lk/b/c/e/a;->a([B)[B

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p0, Lk/b/a/l;->x:[B

    invoke-static {p1}, Lk/b/a/l;->c([B)I

    move-result p1

    iput p1, p0, Lk/b/a/l;->y:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "malformed integer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a([BII)I
    .locals 2

    array-length v0, p0

    add-int/lit8 v1, v0, -0x4

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    aget-byte v1, p0, p1

    and-int/2addr p2, v1

    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_0

    shl-int/lit8 p2, p2, 0x8

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p2, v1

    goto :goto_0

    :cond_0
    return p2
.end method

.method public static a(Ljava/lang/Object;)Lk/b/a/l;
    .locals 2

    if-eqz p0, :cond_2

    instance-of v0, p0, Lk/b/a/l;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Lk/b/a/t;->a([B)Lk/b/a/t;

    move-result-object p0

    check-cast p0, Lk/b/a/l;
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

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal object in getInstance: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, v1}, Le/a/a/a/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    check-cast p0, Lk/b/a/l;

    return-object p0
.end method

.method public static a(Lk/b/a/b0;Z)Lk/b/a/l;
    .locals 1

    invoke-virtual {p0}, Lk/b/a/b0;->j()Lk/b/a/t;

    move-result-object p0

    if-nez p1, :cond_1

    instance-of p1, p0, Lk/b/a/l;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lk/b/a/l;

    invoke-static {p0}, Lk/b/a/p;->a(Ljava/lang/Object;)Lk/b/a/p;

    move-result-object p0

    invoke-virtual {p0}, Lk/b/a/p;->j()[B

    move-result-object p0

    const/4 v0, 0x1

    .line 2
    invoke-direct {p1, p0, v0}, Lk/b/a/l;-><init>([BZ)V

    return-object p1

    .line 3
    :cond_1
    :goto_0
    invoke-static {p0}, Lk/b/a/l;->a(Ljava/lang/Object;)Lk/b/a/l;

    move-result-object p0

    return-object p0
.end method

.method public static b([B)Z
    .locals 3

    array-length v0, p0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    aget-byte v0, p0, v2

    aget-byte p0, p0, v1

    shr-int/lit8 p0, p0, 0x7

    if-ne v0, p0, :cond_0

    const-string p0, "org.bouncycastle.asn1.allow_unsafe_integer"

    invoke-static {p0}, Lk/b/j/e;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public static c([B)I
    .locals 5

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget-byte v4, p0, v3

    shr-int/lit8 v4, v4, 0x7

    if-ne v2, v4, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method public a(Lk/b/a/r;Z)V
    .locals 2

    iget-object v0, p0, Lk/b/a/l;->x:[B

    const/4 v1, 0x2

    invoke-virtual {p1, p2, v1, v0}, Lk/b/a/r;->a(ZI[B)V

    return-void
.end method

.method public a(Ljava/math/BigInteger;)Z
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lk/b/a/l;->x:[B

    iget v1, p0, Lk/b/a/l;->y:I

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lk/b/a/l;->a([BII)I

    move-result v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lk/b/a/l;->j()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Lk/b/a/t;)Z
    .locals 1

    instance-of v0, p1, Lk/b/a/l;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lk/b/a/l;

    iget-object v0, p0, Lk/b/a/l;->x:[B

    iget-object p1, p1, Lk/b/a/l;->x:[B

    .line 1
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Lk/b/a/l;->x:[B

    array-length v0, v0

    invoke-static {v0}, Lk/b/a/d2;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lk/b/a/l;->x:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lk/b/a/l;->x:[B

    invoke-static {v0}, Lk/b/c/e/a;->d([B)I

    move-result v0

    return v0
.end method

.method public j()Ljava/math/BigInteger;
    .locals 2

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lk/b/a/l;->x:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public k()I
    .locals 4

    iget-object v0, p0, Lk/b/a/l;->x:[B

    array-length v1, v0

    iget v2, p0, Lk/b/a/l;->y:I

    sub-int/2addr v1, v2

    const/4 v3, 0x4

    if-gt v1, v3, :cond_0

    const/4 v1, -0x1

    invoke-static {v0, v2, v1}, Lk/b/a/l;->a([BII)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "ASN.1 Integer out of int range"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l()J
    .locals 9

    iget-object v0, p0, Lk/b/a/l;->x:[B

    array-length v1, v0

    iget v2, p0, Lk/b/a/l;->y:I

    sub-int/2addr v1, v2

    const/16 v3, 0x8

    if-gt v1, v3, :cond_1

    const/4 v1, -0x1

    .line 1
    array-length v4, v0

    add-int/lit8 v5, v4, -0x8

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    aget-byte v5, v0, v2

    and-int/2addr v1, v5

    int-to-long v5, v1

    :goto_0
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v4, :cond_0

    shl-long/2addr v5, v3

    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    int-to-long v7, v1

    or-long/2addr v5, v7

    goto :goto_0

    :cond_0
    return-wide v5

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "ASN.1 Integer out of long range"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lk/b/a/l;->j()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
