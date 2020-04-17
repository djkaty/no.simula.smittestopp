.class public final Lk/b/i/b/g/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lk/b/i/b/g/m;

.field public final b:Lk/b/i/b/g/h;

.field public c:[B

.field public d:[B


# direct methods
.method public constructor <init>(Lk/b/i/b/g/m;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lk/b/i/b/g/k;->a:Lk/b/i/b/g/m;

    .line 1
    iget v0, p1, Lk/b/i/b/g/m;->b:I

    .line 2
    new-instance v1, Lk/b/i/b/g/h;

    .line 3
    iget-object p1, p1, Lk/b/i/b/g/m;->g:Lk/b/a/o;

    .line 4
    invoke-direct {v1, p1, v0}, Lk/b/i/b/g/h;-><init>(Lk/b/a/o;I)V

    iput-object v1, p0, Lk/b/i/b/g/k;->b:Lk/b/i/b/g/h;

    new-array p1, v0, [B

    iput-object p1, p0, Lk/b/i/b/g/k;->c:[B

    new-array p1, v0, [B

    iput-object p1, p0, Lk/b/i/b/g/k;->d:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "params == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lk/b/i/b/g/j;)Lk/b/i/b/g/n;
    .locals 8

    if-eqz p1, :cond_2

    iget-object v0, p0, Lk/b/i/b/g/k;->a:Lk/b/i/b/g/m;

    .line 28
    iget v0, v0, Lk/b/i/b/g/m;->d:I

    .line 29
    new-array v0, v0, [[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lk/b/i/b/g/k;->a:Lk/b/i/b/g/m;

    .line 30
    iget v4, v3, Lk/b/i/b/g/m;->d:I

    if-ge v2, v4, :cond_1

    .line 31
    new-instance v3, Lk/b/i/b/g/j$b;

    invoke-direct {v3}, Lk/b/i/b/g/j$b;-><init>()V

    .line 32
    iget v4, p1, Lk/b/i/b/g/o;->a:I

    .line 33
    invoke-virtual {v3, v4}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object v3

    check-cast v3, Lk/b/i/b/g/j$b;

    .line 34
    iget-wide v4, p1, Lk/b/i/b/g/o;->b:J

    .line 35
    invoke-virtual {v3, v4, v5}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object v3

    check-cast v3, Lk/b/i/b/g/j$b;

    .line 36
    iget v4, p1, Lk/b/i/b/g/j;->e:I

    .line 37
    iput v4, v3, Lk/b/i/b/g/j$b;->e:I

    .line 38
    iput v2, v3, Lk/b/i/b/g/j$b;->f:I

    .line 39
    iget v4, p1, Lk/b/i/b/g/j;->g:I

    .line 40
    iput v4, v3, Lk/b/i/b/g/j$b;->g:I

    .line 41
    iget p1, p1, Lk/b/i/b/g/o;->d:I

    .line 42
    invoke-virtual {v3, p1}, Lk/b/i/b/g/o$a;->a(I)Lk/b/i/b/g/o$a;

    move-result-object p1

    check-cast p1, Lk/b/i/b/g/j$b;

    invoke-virtual {p1}, Lk/b/i/b/g/j$b;->b()Lk/b/i/b/g/o;

    move-result-object p1

    check-cast p1, Lk/b/i/b/g/j;

    if-ltz v2, :cond_0

    .line 43
    iget-object v3, p0, Lk/b/i/b/g/k;->a:Lk/b/i/b/g/m;

    .line 44
    iget v3, v3, Lk/b/i/b/g/m;->d:I

    if-ge v2, v3, :cond_0

    .line 45
    iget-object v3, p0, Lk/b/i/b/g/k;->b:Lk/b/i/b/g/h;

    iget-object v4, p0, Lk/b/i/b/g/k;->c:[B

    int-to-long v5, v2

    const/16 v7, 0x20

    invoke-static {v5, v6, v7}, Lk/b/c/e/a;->a(JI)[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lk/b/i/b/g/h;->a([B[B)[B

    move-result-object v3

    .line 46
    iget-object v4, p0, Lk/b/i/b/g/k;->a:Lk/b/i/b/g/m;

    .line 47
    iget v4, v4, Lk/b/i/b/g/m;->c:I

    add-int/lit8 v4, v4, -0x1

    .line 48
    invoke-virtual {p0, v3, v1, v4, p1}, Lk/b/i/b/g/k;->a([BIILk/b/i/b/g/j;)[B

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index out of bounds"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_1
    new-instance p1, Lk/b/i/b/g/n;

    invoke-direct {p1, v3, v0}, Lk/b/i/b/g/n;-><init>(Lk/b/i/b/g/m;[[B)V

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "otsHashAddress == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a([B[B)V
    .locals 2

    if-eqz p1, :cond_3

    array-length v0, p1

    iget-object v1, p0, Lk/b/i/b/g/k;->a:Lk/b/i/b/g/m;

    .line 58
    iget v1, v1, Lk/b/i/b/g/m;->b:I

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_1

    .line 59
    array-length v0, p2

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lk/b/i/b/g/k;->c:[B

    iput-object p2, p0, Lk/b/i/b/g/k;->d:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size of publicSeed needs to be equal to size of digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "publicSeed == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size of secretKeySeed needs to be equal to size of digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "secretKeySeed == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a([BIILk/b/i/b/g/j;)[B
    .locals 6

    iget-object v0, p0, Lk/b/i/b/g/k;->a:Lk/b/i/b/g/m;

    .line 1
    iget v0, v0, Lk/b/i/b/g/m;->b:I

    if-eqz p1, :cond_9

    .line 2
    array-length v1, p1

    if-ne v1, v0, :cond_8

    if-eqz p4, :cond_7

    invoke-virtual {p4}, Lk/b/i/b/g/j;->a()[B

    move-result-object v1

    if-eqz v1, :cond_6

    add-int v1, p2, p3

    iget-object v2, p0, Lk/b/i/b/g/k;->a:Lk/b/i/b/g/m;

    .line 3
    iget v2, v2, Lk/b/i/b/g/m;->c:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_5

    if-nez p3, :cond_0

    return-object p1

    :cond_0
    sub-int/2addr p3, v3

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lk/b/i/b/g/k;->a([BIILk/b/i/b/g/j;)[B

    move-result-object p1

    new-instance p2, Lk/b/i/b/g/j$b;

    invoke-direct {p2}, Lk/b/i/b/g/j$b;-><init>()V

    .line 5
    iget p3, p4, Lk/b/i/b/g/o;->a:I

    .line 6
    invoke-virtual {p2, p3}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object p2

    check-cast p2, Lk/b/i/b/g/j$b;

    .line 7
    iget-wide v4, p4, Lk/b/i/b/g/o;->b:J

    .line 8
    invoke-virtual {p2, v4, v5}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object p2

    check-cast p2, Lk/b/i/b/g/j$b;

    .line 9
    iget p3, p4, Lk/b/i/b/g/j;->e:I

    .line 10
    iput p3, p2, Lk/b/i/b/g/j$b;->e:I

    .line 11
    iget p3, p4, Lk/b/i/b/g/j;->f:I

    .line 12
    iput p3, p2, Lk/b/i/b/g/j$b;->f:I

    sub-int/2addr v1, v3

    .line 13
    iput v1, p2, Lk/b/i/b/g/j$b;->g:I

    const/4 p3, 0x0

    .line 14
    invoke-virtual {p2, p3}, Lk/b/i/b/g/o$a;->a(I)Lk/b/i/b/g/o$a;

    move-result-object p2

    check-cast p2, Lk/b/i/b/g/j$b;

    invoke-virtual {p2}, Lk/b/i/b/g/j$b;->b()Lk/b/i/b/g/o;

    move-result-object p2

    check-cast p2, Lk/b/i/b/g/j;

    iget-object p4, p0, Lk/b/i/b/g/k;->b:Lk/b/i/b/g/h;

    iget-object v1, p0, Lk/b/i/b/g/k;->d:[B

    invoke-virtual {p2}, Lk/b/i/b/g/j;->a()[B

    move-result-object v2

    invoke-virtual {p4, v1, v2}, Lk/b/i/b/g/h;->a([B[B)[B

    move-result-object p4

    new-instance v1, Lk/b/i/b/g/j$b;

    invoke-direct {v1}, Lk/b/i/b/g/j$b;-><init>()V

    .line 15
    iget v2, p2, Lk/b/i/b/g/o;->a:I

    .line 16
    invoke-virtual {v1, v2}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object v1

    check-cast v1, Lk/b/i/b/g/j$b;

    .line 17
    iget-wide v4, p2, Lk/b/i/b/g/o;->b:J

    .line 18
    invoke-virtual {v1, v4, v5}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object v1

    check-cast v1, Lk/b/i/b/g/j$b;

    .line 19
    iget v2, p2, Lk/b/i/b/g/j;->e:I

    .line 20
    iput v2, v1, Lk/b/i/b/g/j$b;->e:I

    .line 21
    iget v2, p2, Lk/b/i/b/g/j;->f:I

    .line 22
    iput v2, v1, Lk/b/i/b/g/j$b;->f:I

    .line 23
    iget p2, p2, Lk/b/i/b/g/j;->g:I

    .line 24
    iput p2, v1, Lk/b/i/b/g/j$b;->g:I

    .line 25
    invoke-virtual {v1, v3}, Lk/b/i/b/g/o$a;->a(I)Lk/b/i/b/g/o$a;

    move-result-object p2

    check-cast p2, Lk/b/i/b/g/j$b;

    invoke-virtual {p2}, Lk/b/i/b/g/j$b;->b()Lk/b/i/b/g/o;

    move-result-object p2

    check-cast p2, Lk/b/i/b/g/j;

    iget-object v1, p0, Lk/b/i/b/g/k;->b:Lk/b/i/b/g/h;

    iget-object v2, p0, Lk/b/i/b/g/k;->d:[B

    invoke-virtual {p2}, Lk/b/i/b/g/j;->a()[B

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lk/b/i/b/g/h;->a([B[B)[B

    move-result-object p2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-byte v3, p1, v2

    aget-byte v4, p2, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lk/b/i/b/g/k;->b:Lk/b/i/b/g/h;

    if-eqz p1, :cond_4

    .line 26
    array-length p2, p4

    iget v2, p1, Lk/b/i/b/g/h;->b:I

    if-ne p2, v2, :cond_3

    if-ne v0, v2, :cond_2

    invoke-virtual {p1, p3, p4, v1}, Lk/b/i/b/g/h;->a(I[B[B)[B

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "wrong in length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "wrong key length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p1, 0x0

    throw p1

    .line 27
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "max chain length must not be greater than w"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "otsHashAddress byte array == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "otsHashAddress == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "startHash needs to be "

    const-string p3, "bytes"

    invoke-static {p2, v0, p3}, Le/a/a/a/a;->b(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "startHash == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a([BLk/b/i/b/g/j;)[B
    .locals 3

    new-instance v0, Lk/b/i/b/g/j$b;

    invoke-direct {v0}, Lk/b/i/b/g/j$b;-><init>()V

    .line 51
    iget v1, p2, Lk/b/i/b/g/o;->a:I

    .line 52
    invoke-virtual {v0, v1}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object v0

    check-cast v0, Lk/b/i/b/g/j$b;

    .line 53
    iget-wide v1, p2, Lk/b/i/b/g/o;->b:J

    .line 54
    invoke-virtual {v0, v1, v2}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object v0

    check-cast v0, Lk/b/i/b/g/j$b;

    .line 55
    iget p2, p2, Lk/b/i/b/g/j;->e:I

    .line 56
    iput p2, v0, Lk/b/i/b/g/j$b;->e:I

    .line 57
    invoke-virtual {v0}, Lk/b/i/b/g/j$b;->b()Lk/b/i/b/g/o;

    move-result-object p2

    check-cast p2, Lk/b/i/b/g/j;

    iget-object v0, p0, Lk/b/i/b/g/k;->b:Lk/b/i/b/g/h;

    invoke-virtual {p2}, Lk/b/i/b/g/j;->a()[B

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lk/b/i/b/g/h;->a([B[B)[B

    move-result-object p1

    return-object p1
.end method
