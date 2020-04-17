.class public Lk/b/a/d0;
.super Lk/b/a/t;
.source "SourceFile"


# instance fields
.field public x:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Lk/b/a/t;-><init>()V

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    iput-object p1, p0, Lk/b/a/d0;->x:[B

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lk/b/a/d0;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lk/b/a/d0;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "illegal characters in UTCTime string"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "UTCTime string too short"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lk/b/a/r;Z)V
    .locals 2

    iget-object v0, p0, Lk/b/a/d0;->x:[B

    const/16 v1, 0x17

    invoke-virtual {p1, p2, v1, v0}, Lk/b/a/r;->a(ZI[B)V

    return-void
.end method

.method public final a(I)Z
    .locals 3

    iget-object v0, p0, Lk/b/a/d0;->x:[B

    array-length v1, v0

    if-le v1, p1, :cond_0

    aget-byte v1, v0, p1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    aget-byte p1, v0, p1

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Lk/b/a/t;)Z
    .locals 1

    instance-of v0, p1, Lk/b/a/d0;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lk/b/a/d0;->x:[B

    check-cast p1, Lk/b/a/d0;

    iget-object p1, p1, Lk/b/a/d0;->x:[B

    .line 1
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Lk/b/a/d0;->x:[B

    array-length v0, v0

    invoke-static {v0}, Lk/b/a/d2;->a(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lk/b/a/d0;->x:[B

    invoke-static {v0}, Lk/b/c/e/a;->d([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lk/b/a/d0;->x:[B

    invoke-static {v0}, Lk/b/j/f;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
