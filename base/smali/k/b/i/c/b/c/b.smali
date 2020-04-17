.class public Lk/b/i/c/b/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field public transient x:Lk/b/i/b/c/b;


# direct methods
.method public constructor <init>(Lk/b/a/l2/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p1}, Lk/b/i/b/f/a;->a(Lk/b/a/l2/s;)Lk/b/c/d/a;

    move-result-object p1

    check-cast p1, Lk/b/i/b/c/b;

    iput-object p1, p0, Lk/b/i/c/b/c/b;->x:Lk/b/i/b/c/b;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lk/b/i/c/b/c/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lk/b/i/c/b/c/b;

    iget-object v1, p0, Lk/b/i/c/b/c/b;->x:Lk/b/i/b/c/b;

    .line 1
    iget v3, v1, Lk/b/i/b/c/b;->a:I

    .line 2
    iget-object v4, p1, Lk/b/i/c/b/c/b;->x:Lk/b/i/b/c/b;

    .line 3
    iget v4, v4, Lk/b/i/b/c/b;->a:I

    if-ne v3, v4, :cond_1

    .line 4
    invoke-virtual {v1}, Lk/b/i/b/c/b;->a()[B

    move-result-object v1

    iget-object p1, p1, Lk/b/i/c/b/c/b;->x:Lk/b/i/b/c/b;

    invoke-virtual {p1}, Lk/b/i/b/c/b;->a()[B

    move-result-object p1

    .line 5
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

    iget-object v0, p0, Lk/b/i/c/b/c/b;->x:Lk/b/i/b/c/b;

    .line 1
    iget v0, v0, Lk/b/i/b/c/b;->a:I

    .line 2
    invoke-static {v0}, Lk/b/c/e/a;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Lk/b/i/c/b/c/b;->x:Lk/b/i/b/c/b;

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

    iget-object v0, p0, Lk/b/i/c/b/c/b;->x:Lk/b/i/b/c/b;

    .line 1
    iget v1, v0, Lk/b/i/b/c/b;->a:I

    .line 2
    invoke-virtual {v0}, Lk/b/i/b/c/b;->a()[B

    move-result-object v0

    invoke-static {v0}, Lk/b/c/e/a;->d([B)I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v1

    return v0
.end method
