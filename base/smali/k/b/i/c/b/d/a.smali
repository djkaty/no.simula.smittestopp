.class public Lk/b/i/c/b/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivateKey;


# instance fields
.field public A:[S

.field public B:[Lk/b/i/b/d/a;

.field public C:[I

.field public x:[[S

.field public y:[S

.field public z:[[S


# direct methods
.method public constructor <init>(Lk/b/i/c/c/a;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lk/b/i/c/c/a;->x:[[S

    .line 2
    iget-object v1, p1, Lk/b/i/c/c/a;->y:[S

    .line 3
    iget-object v2, p1, Lk/b/i/c/c/a;->z:[[S

    .line 4
    iget-object v3, p1, Lk/b/i/c/c/a;->A:[S

    .line 5
    iget-object v4, p1, Lk/b/i/c/c/a;->B:[I

    .line 6
    iget-object p1, p1, Lk/b/i/c/c/a;->C:[Lk/b/i/b/d/a;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lk/b/i/c/b/d/a;->x:[[S

    iput-object v1, p0, Lk/b/i/c/b/d/a;->y:[S

    iput-object v2, p0, Lk/b/i/c/b/d/a;->z:[[S

    iput-object v3, p0, Lk/b/i/c/b/d/a;->A:[S

    iput-object v4, p0, Lk/b/i/c/b/d/a;->C:[I

    iput-object p1, p0, Lk/b/i/c/b/d/a;->B:[Lk/b/i/b/d/a;

    return-void
.end method

.method public constructor <init>([[S[S[[S[S[I[Lk/b/i/b/d/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/b/i/c/b/d/a;->x:[[S

    iput-object p2, p0, Lk/b/i/c/b/d/a;->y:[S

    iput-object p3, p0, Lk/b/i/c/b/d/a;->z:[[S

    iput-object p4, p0, Lk/b/i/c/b/d/a;->A:[S

    iput-object p5, p0, Lk/b/i/c/b/d/a;->C:[I

    iput-object p6, p0, Lk/b/i/c/b/d/a;->B:[Lk/b/i/b/d/a;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    instance-of v1, p1, Lk/b/i/c/b/d/a;

    if-nez v1, :cond_0

    goto :goto_5

    :cond_0
    check-cast p1, Lk/b/i/c/b/d/a;

    iget-object v1, p0, Lk/b/i/c/b/d/a;->x:[[S

    .line 1
    iget-object v2, p1, Lk/b/i/c/b/d/a;->x:[[S

    .line 2
    invoke-static {v1, v2}, Lk/b/c/e/a;->a([[S[[S)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lk/b/i/c/b/d/a;->z:[[S

    .line 3
    iget-object v3, p1, Lk/b/i/c/b/d/a;->z:[[S

    .line 4
    invoke-static {v1, v3}, Lk/b/c/e/a;->a([[S[[S)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lk/b/i/c/b/d/a;->y:[S

    .line 5
    iget-object v3, p1, Lk/b/i/c/b/d/a;->y:[S

    .line 6
    invoke-static {v1, v3}, Lk/b/c/e/a;->a([S[S)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    iget-object v1, p0, Lk/b/i/c/b/d/a;->A:[S

    .line 7
    iget-object v3, p1, Lk/b/i/c/b/d/a;->A:[S

    .line 8
    invoke-static {v1, v3}, Lk/b/c/e/a;->a([S[S)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    iget-object v1, p0, Lk/b/i/c/b/d/a;->C:[I

    .line 9
    iget-object v3, p1, Lk/b/i/c/b/d/a;->C:[I

    .line 10
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    iget-object v3, p0, Lk/b/i/c/b/d/a;->B:[Lk/b/i/b/d/a;

    array-length v4, v3

    .line 11
    iget-object v5, p1, Lk/b/i/c/b/d/a;->B:[Lk/b/i/b/d/a;

    .line 12
    array-length v5, v5

    if-eq v4, v5, :cond_5

    return v0

    :cond_5
    array-length v0, v3

    sub-int/2addr v0, v2

    :goto_4
    if-ltz v0, :cond_6

    iget-object v2, p0, Lk/b/i/c/b/d/a;->B:[Lk/b/i/b/d/a;

    aget-object v2, v2, v0

    .line 13
    iget-object v3, p1, Lk/b/i/c/b/d/a;->B:[Lk/b/i/b/d/a;

    .line 14
    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lk/b/i/b/d/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    and-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_6
    return v1

    :cond_7
    :goto_5
    return v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "Rainbow"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 8

    new-instance v7, Lk/b/i/a/f;

    iget-object v1, p0, Lk/b/i/c/b/d/a;->x:[[S

    iget-object v2, p0, Lk/b/i/c/b/d/a;->y:[S

    iget-object v3, p0, Lk/b/i/c/b/d/a;->z:[[S

    iget-object v4, p0, Lk/b/i/c/b/d/a;->A:[S

    iget-object v5, p0, Lk/b/i/c/b/d/a;->C:[I

    iget-object v6, p0, Lk/b/i/c/b/d/a;->B:[Lk/b/i/b/d/a;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lk/b/i/a/f;-><init>([[S[S[[S[S[I[Lk/b/i/b/d/a;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lk/b/a/l2/a;

    sget-object v2, Lk/b/i/a/e;->a:Lk/b/a/o;

    sget-object v3, Lk/b/a/y0;->x:Lk/b/a/y0;

    invoke-direct {v1, v2, v3}, Lk/b/a/l2/a;-><init>(Lk/b/a/o;Lk/b/a/e;)V

    new-instance v2, Lk/b/a/i2/f;

    .line 1
    invoke-direct {v2, v1, v7, v0, v0}, Lk/b/a/i2/f;-><init>(Lk/b/a/l2/a;Lk/b/a/e;Lk/b/a/x;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    invoke-virtual {v2}, Lk/b/a/n;->e()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lk/b/i/c/b/d/a;->B:[Lk/b/i/b/d/a;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lk/b/i/c/b/d/a;->x:[[S

    invoke-static {v1}, Lk/b/c/e/a;->b([[S)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-object v0, p0, Lk/b/i/c/b/d/a;->y:[S

    invoke-static {v0}, Lk/b/c/e/a;->c([S)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lk/b/i/c/b/d/a;->z:[[S

    invoke-static {v1}, Lk/b/c/e/a;->b([[S)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-object v0, p0, Lk/b/i/c/b/d/a;->A:[S

    invoke-static {v0}, Lk/b/c/e/a;->c([S)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lk/b/i/c/b/d/a;->C:[I

    invoke-static {v1}, Lk/b/c/e/a;->b([I)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lk/b/i/c/b/d/a;->B:[Lk/b/i/b/d/a;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    mul-int/lit8 v1, v1, 0x25

    iget-object v2, p0, Lk/b/i/c/b/d/a;->B:[Lk/b/i/b/d/a;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lk/b/i/b/d/a;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method
