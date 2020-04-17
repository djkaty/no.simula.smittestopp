.class public Lk/b/i/c/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field public x:Lk/b/i/b/a/c;


# direct methods
.method public constructor <init>(Lk/b/i/b/a/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/b/i/c/b/a/b;->x:Lk/b/i/b/a/c;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lk/b/i/c/b/a/b;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lk/b/i/c/b/a/b;

    iget-object v1, p0, Lk/b/i/c/b/a/b;->x:Lk/b/i/b/a/c;

    .line 1
    iget v2, v1, Lk/b/i/b/a/c;->b:I

    .line 2
    iget-object p1, p1, Lk/b/i/c/b/a/b;->x:Lk/b/i/b/a/c;

    .line 3
    iget v3, p1, Lk/b/i/b/a/c;->b:I

    if-ne v2, v3, :cond_1

    .line 4
    iget v2, v1, Lk/b/i/b/a/c;->c:I

    .line 5
    iget v3, p1, Lk/b/i/b/a/c;->c:I

    if-ne v2, v3, :cond_1

    .line 6
    iget-object v1, v1, Lk/b/i/b/a/c;->d:Lk/b/i/d/a/a;

    .line 7
    iget-object p1, p1, Lk/b/i/b/a/c;->d:Lk/b/i/d/a/a;

    .line 8
    invoke-virtual {v1, p1}, Lk/b/i/d/a/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "McEliece-CCA2"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 5

    new-instance v0, Lk/b/i/a/b;

    iget-object v1, p0, Lk/b/i/c/b/a/b;->x:Lk/b/i/b/a/c;

    .line 1
    iget v2, v1, Lk/b/i/b/a/c;->b:I

    .line 2
    iget v3, v1, Lk/b/i/b/a/c;->c:I

    .line 3
    iget-object v4, v1, Lk/b/i/b/a/c;->d:Lk/b/i/d/a/a;

    .line 4
    iget-object v1, v1, Lk/b/i/b/a/a;->a:Ljava/lang/String;

    .line 5
    invoke-static {v1}, Lk/b/c/e/a;->a(Ljava/lang/String;)Lk/b/a/l2/a;

    move-result-object v1

    invoke-direct {v0, v2, v3, v4, v1}, Lk/b/i/a/b;-><init>(IILk/b/i/d/a/a;Lk/b/a/l2/a;)V

    new-instance v1, Lk/b/a/l2/a;

    sget-object v2, Lk/b/i/a/e;->d:Lk/b/a/o;

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

    iget-object v0, p0, Lk/b/i/c/b/a/b;->x:Lk/b/i/b/a/c;

    .line 1
    iget v1, v0, Lk/b/i/b/a/c;->b:I

    .line 2
    iget v2, v0, Lk/b/i/b/a/c;->c:I

    mul-int/lit8 v2, v2, 0x25

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x25

    .line 3
    iget-object v0, v0, Lk/b/i/b/a/c;->d:Lk/b/i/d/a/a;

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

    iget-object v1, p0, Lk/b/i/c/b/a/b;->x:Lk/b/i/b/a/c;

    .line 1
    iget v1, v1, Lk/b/i/b/a/c;->b:I

    const-string v2, "\n"

    .line 2
    invoke-static {v0, v1, v2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " error correction capability: "

    invoke-static {v0, v1}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/b/i/c/b/a/b;->x:Lk/b/i/b/a/c;

    .line 3
    iget v1, v1, Lk/b/i/b/a/c;->c:I

    .line 4
    invoke-static {v0, v1, v2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " generator matrix           : "

    invoke-static {v0, v1}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/b/i/c/b/a/b;->x:Lk/b/i/b/a/c;

    .line 5
    iget-object v1, v1, Lk/b/i/b/a/c;->d:Lk/b/i/d/a/a;

    .line 6
    invoke-virtual {v1}, Lk/b/i/d/a/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
