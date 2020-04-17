.class public Lk/b/i/c/b/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field public x:Lk/b/i/b/a/f;


# direct methods
.method public constructor <init>(Lk/b/i/b/a/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/b/i/c/b/a/d;->x:Lk/b/i/b/a/f;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lk/b/i/c/b/a/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lk/b/i/c/b/a/d;

    iget-object v0, p0, Lk/b/i/c/b/a/d;->x:Lk/b/i/b/a/f;

    .line 1
    iget v2, v0, Lk/b/i/b/a/f;->a:I

    .line 2
    iget-object p1, p1, Lk/b/i/c/b/a/d;->x:Lk/b/i/b/a/f;

    .line 3
    iget v3, p1, Lk/b/i/b/a/f;->a:I

    if-ne v2, v3, :cond_0

    .line 4
    iget v2, v0, Lk/b/i/b/a/f;->b:I

    .line 5
    iget v3, p1, Lk/b/i/b/a/f;->b:I

    if-ne v2, v3, :cond_0

    .line 6
    iget-object v0, v0, Lk/b/i/b/a/f;->c:Lk/b/i/d/a/a;

    .line 7
    iget-object p1, p1, Lk/b/i/b/a/f;->c:Lk/b/i/d/a/a;

    .line 8
    invoke-virtual {v0, p1}, Lk/b/i/d/a/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "McEliece"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 4

    new-instance v0, Lk/b/i/a/d;

    iget-object v1, p0, Lk/b/i/c/b/a/d;->x:Lk/b/i/b/a/f;

    .line 1
    iget v2, v1, Lk/b/i/b/a/f;->a:I

    .line 2
    iget v3, v1, Lk/b/i/b/a/f;->b:I

    .line 3
    iget-object v1, v1, Lk/b/i/b/a/f;->c:Lk/b/i/d/a/a;

    .line 4
    invoke-direct {v0, v2, v3, v1}, Lk/b/i/a/d;-><init>(IILk/b/i/d/a/a;)V

    new-instance v1, Lk/b/a/l2/a;

    sget-object v2, Lk/b/i/a/e;->c:Lk/b/a/o;

    invoke-direct {v1, v2}, Lk/b/a/l2/a;-><init>(Lk/b/a/o;)V

    :try_start_0
    new-instance v2, Lk/b/a/l2/s;

    invoke-direct {v2, v1, v0}, Lk/b/a/l2/s;-><init>(Lk/b/a/l2/a;Lk/b/a/e;)V

    invoke-virtual {v2}, Lk/b/a/n;->e()[B

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
    .locals 3

    iget-object v0, p0, Lk/b/i/c/b/a/d;->x:Lk/b/i/b/a/f;

    .line 1
    iget v1, v0, Lk/b/i/b/a/f;->a:I

    .line 2
    iget v2, v0, Lk/b/i/b/a/f;->b:I

    mul-int/lit8 v2, v2, 0x25

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x25

    .line 3
    iget-object v0, v0, Lk/b/i/b/a/f;->c:Lk/b/i/d/a/a;

    .line 4
    invoke-virtual {v0}, Lk/b/i/d/a/a;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "McEliecePublicKey:\n"

    const-string v1, " length of the code         : "

    invoke-static {v0, v1}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/b/i/c/b/a/d;->x:Lk/b/i/b/a/f;

    .line 1
    iget v1, v1, Lk/b/i/b/a/f;->a:I

    const-string v2, "\n"

    .line 2
    invoke-static {v0, v1, v2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " error correction capability: "

    invoke-static {v0, v1}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/b/i/c/b/a/d;->x:Lk/b/i/b/a/f;

    .line 3
    iget v1, v1, Lk/b/i/b/a/f;->b:I

    .line 4
    invoke-static {v0, v1, v2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " generator matrix           : "

    invoke-static {v0, v1}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/b/i/c/b/a/d;->x:Lk/b/i/b/a/f;

    .line 5
    iget-object v1, v1, Lk/b/i/b/a/f;->c:Lk/b/i/d/a/a;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
