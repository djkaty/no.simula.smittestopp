.class public Lk/b/i/c/b/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/b/i/c/a/a;
.implements Ljava/security/PublicKey;


# instance fields
.field public transient x:Lk/b/i/b/b/b;


# direct methods
.method public constructor <init>(Lk/b/a/l2/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p1}, Lk/b/i/b/f/a;->a(Lk/b/a/l2/s;)Lk/b/c/d/a;

    move-result-object p1

    check-cast p1, Lk/b/i/b/b/b;

    iput-object p1, p0, Lk/b/i/c/b/b/b;->x:Lk/b/i/b/b/b;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lk/b/i/c/b/b/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lk/b/i/c/b/b/b;

    iget-object v0, p0, Lk/b/i/c/b/b/b;->x:Lk/b/i/b/b/b;

    invoke-virtual {v0}, Lk/b/i/b/b/b;->a()[B

    move-result-object v0

    iget-object p1, p1, Lk/b/i/c/b/b/b;->x:Lk/b/i/b/b/b;

    invoke-virtual {p1}, Lk/b/i/b/b/b;->a()[B

    move-result-object p1

    .line 1
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "NH"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Lk/b/i/c/b/b/b;->x:Lk/b/i/b/b/b;

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
    .locals 1

    iget-object v0, p0, Lk/b/i/c/b/b/b;->x:Lk/b/i/b/b/b;

    invoke-virtual {v0}, Lk/b/i/b/b/b;->a()[B

    move-result-object v0

    invoke-static {v0}, Lk/b/c/e/a;->d([B)I

    move-result v0

    return v0
.end method
