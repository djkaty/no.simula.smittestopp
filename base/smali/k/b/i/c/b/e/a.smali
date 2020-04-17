.class public Lk/b/i/c/b/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivateKey;
.implements Lk/b/i/c/a/b;


# instance fields
.field public transient x:Lk/b/a/o;

.field public transient y:Lk/b/i/b/e/b;

.field public transient z:Lk/b/a/x;


# direct methods
.method public constructor <init>(Lk/b/a/i2/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iget-object v0, p1, Lk/b/a/i2/f;->A:Lk/b/a/x;

    .line 2
    iput-object v0, p0, Lk/b/i/c/b/e/a;->z:Lk/b/a/x;

    .line 3
    iget-object v0, p1, Lk/b/a/i2/f;->y:Lk/b/a/l2/a;

    .line 4
    iget-object v0, v0, Lk/b/a/l2/a;->y:Lk/b/a/e;

    .line 5
    invoke-static {v0}, Lk/b/i/a/h;->a(Ljava/lang/Object;)Lk/b/i/a/h;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lk/b/i/a/h;->y:Lk/b/a/l2/a;

    .line 7
    iget-object v0, v0, Lk/b/a/l2/a;->x:Lk/b/a/o;

    .line 8
    iput-object v0, p0, Lk/b/i/c/b/e/a;->x:Lk/b/a/o;

    invoke-static {p1}, Lk/b/c/e/a;->a(Lk/b/a/i2/f;)Lk/b/c/d/a;

    move-result-object p1

    check-cast p1, Lk/b/i/b/e/b;

    iput-object p1, p0, Lk/b/i/c/b/e/a;->y:Lk/b/i/b/e/b;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lk/b/i/c/b/e/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lk/b/i/c/b/e/a;

    iget-object v1, p0, Lk/b/i/c/b/e/a;->x:Lk/b/a/o;

    iget-object v3, p1, Lk/b/i/c/b/e/a;->x:Lk/b/a/o;

    invoke-virtual {v1, v3}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lk/b/i/c/b/e/a;->y:Lk/b/i/b/e/b;

    invoke-virtual {v1}, Lk/b/i/b/e/b;->a()[B

    move-result-object v1

    iget-object p1, p1, Lk/b/i/c/b/e/a;->y:Lk/b/i/b/e/b;

    invoke-virtual {p1}, Lk/b/i/b/e/b;->a()[B

    move-result-object p1

    .line 1
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "SPHINCS-256"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lk/b/i/c/b/e/a;->y:Lk/b/i/b/e/b;

    .line 1
    iget-object v1, v1, Lk/b/i/b/e/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lk/b/i/c/b/e/a;->y:Lk/b/i/b/e/b;

    iget-object v2, p0, Lk/b/i/c/b/e/a;->z:Lk/b/a/x;

    invoke-static {v1, v2}, Lk/b/c/e/a;->a(Lk/b/c/d/a;Lk/b/a/x;)Lk/b/a/i2/f;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lk/b/a/l2/a;

    sget-object v2, Lk/b/i/a/e;->e:Lk/b/a/o;

    new-instance v3, Lk/b/i/a/h;

    new-instance v4, Lk/b/a/l2/a;

    iget-object v5, p0, Lk/b/i/c/b/e/a;->x:Lk/b/a/o;

    invoke-direct {v4, v5}, Lk/b/a/l2/a;-><init>(Lk/b/a/o;)V

    invoke-direct {v3, v4}, Lk/b/i/a/h;-><init>(Lk/b/a/l2/a;)V

    invoke-direct {v1, v2, v3}, Lk/b/a/l2/a;-><init>(Lk/b/a/o;Lk/b/a/e;)V

    new-instance v2, Lk/b/a/i2/f;

    new-instance v3, Lk/b/a/a1;

    iget-object v4, p0, Lk/b/i/c/b/e/a;->y:Lk/b/i/b/e/b;

    invoke-virtual {v4}, Lk/b/i/b/e/b;->a()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lk/b/a/a1;-><init>([B)V

    iget-object v4, p0, Lk/b/i/c/b/e/a;->z:Lk/b/a/x;

    .line 3
    invoke-direct {v2, v1, v3, v4, v0}, Lk/b/a/i2/f;-><init>(Lk/b/a/l2/a;Lk/b/a/e;Lk/b/a/x;[B)V

    move-object v1, v2

    .line 4
    :goto_0
    invoke-virtual {v1}, Lk/b/a/n;->e()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lk/b/i/c/b/e/a;->x:Lk/b/a/o;

    invoke-virtual {v0}, Lk/b/a/o;->hashCode()I

    move-result v0

    iget-object v1, p0, Lk/b/i/c/b/e/a;->y:Lk/b/i/b/e/b;

    invoke-virtual {v1}, Lk/b/i/b/e/b;->a()[B

    move-result-object v1

    invoke-static {v1}, Lk/b/c/e/a;->d([B)I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v1, v0

    return v1
.end method
