.class public Lk/b/i/c/b/f/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field public transient x:Lk/b/a/o;

.field public transient y:Lk/b/i/b/g/t;


# direct methods
.method public constructor <init>(Lk/b/a/l2/s;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iget-object v0, p1, Lk/b/a/l2/s;->x:Lk/b/a/l2/a;

    .line 2
    iget-object v0, v0, Lk/b/a/l2/a;->y:Lk/b/a/e;

    .line 3
    invoke-static {v0}, Lk/b/i/a/j;->a(Ljava/lang/Object;)Lk/b/i/a/j;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lk/b/i/a/j;->A:Lk/b/a/l2/a;

    .line 5
    iget-object v0, v0, Lk/b/a/l2/a;->x:Lk/b/a/o;

    .line 6
    iput-object v0, p0, Lk/b/i/c/b/f/b;->x:Lk/b/a/o;

    invoke-static {p1}, Lk/b/i/b/f/a;->a(Lk/b/a/l2/s;)Lk/b/c/d/a;

    move-result-object p1

    check-cast p1, Lk/b/i/b/g/t;

    iput-object p1, p0, Lk/b/i/c/b/f/b;->y:Lk/b/i/b/g/t;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lk/b/i/c/b/f/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lk/b/i/c/b/f/b;

    iget-object v1, p0, Lk/b/i/c/b/f/b;->x:Lk/b/a/o;

    iget-object v3, p1, Lk/b/i/c/b/f/b;->x:Lk/b/a/o;

    invoke-virtual {v1, v3}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lk/b/i/c/b/f/b;->y:Lk/b/i/b/g/t;

    invoke-virtual {v1}, Lk/b/i/b/g/t;->a()[B

    move-result-object v1

    iget-object p1, p1, Lk/b/i/c/b/f/b;->y:Lk/b/i/b/g/t;

    invoke-virtual {p1}, Lk/b/i/b/g/t;->a()[B

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

    const-string v0, "XMSSMT"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Lk/b/i/c/b/f/b;->y:Lk/b/i/b/g/t;

    invoke-static {v0}, Lk/b/c/e/a;->a(Lk/b/c/d/a;)Lk/b/a/l2/s;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/n;->e()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "X.509"

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lk/b/i/c/b/f/b;->x:Lk/b/a/o;

    invoke-virtual {v0}, Lk/b/a/o;->hashCode()I

    move-result v0

    iget-object v1, p0, Lk/b/i/c/b/f/b;->y:Lk/b/i/b/g/t;

    invoke-virtual {v1}, Lk/b/i/b/g/t;->a()[B

    move-result-object v1

    invoke-static {v1}, Lk/b/c/e/a;->d([B)I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v1, v0

    return v1
.end method
