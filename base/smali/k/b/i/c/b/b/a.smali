.class public Lk/b/i/c/b/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/b/i/c/a/a;
.implements Ljava/security/PrivateKey;


# instance fields
.field public transient x:Lk/b/i/b/b/a;

.field public transient y:Lk/b/a/x;


# direct methods
.method public constructor <init>(Lk/b/a/i2/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iget-object v0, p1, Lk/b/a/i2/f;->A:Lk/b/a/x;

    .line 2
    iput-object v0, p0, Lk/b/i/c/b/b/a;->y:Lk/b/a/x;

    invoke-static {p1}, Lk/b/c/e/a;->a(Lk/b/a/i2/f;)Lk/b/c/d/a;

    move-result-object p1

    check-cast p1, Lk/b/i/b/b/a;

    iput-object p1, p0, Lk/b/i/c/b/b/a;->x:Lk/b/i/b/b/a;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lk/b/i/c/b/b/a;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lk/b/i/c/b/b/a;

    iget-object v0, p0, Lk/b/i/c/b/b/a;->x:Lk/b/i/b/b/a;

    invoke-virtual {v0}, Lk/b/i/b/b/a;->a()[S

    move-result-object v0

    iget-object p1, p1, Lk/b/i/c/b/b/a;->x:Lk/b/i/b/b/a;

    invoke-virtual {p1}, Lk/b/i/b/b/a;->a()[S

    move-result-object p1

    .line 1
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result p1

    return p1
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "NH"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    :try_start_0
    iget-object v0, p0, Lk/b/i/c/b/b/a;->x:Lk/b/i/b/b/a;

    iget-object v1, p0, Lk/b/i/c/b/b/a;->y:Lk/b/a/x;

    invoke-static {v0, v1}, Lk/b/c/e/a;->a(Lk/b/c/d/a;Lk/b/a/x;)Lk/b/a/i2/f;

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

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lk/b/i/c/b/b/a;->x:Lk/b/i/b/b/a;

    invoke-virtual {v0}, Lk/b/i/b/b/a;->a()[S

    move-result-object v0

    invoke-static {v0}, Lk/b/c/e/a;->c([S)I

    move-result v0

    return v0
.end method
