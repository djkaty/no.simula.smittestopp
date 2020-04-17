.class public Lk/b/i/c/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivateKey;


# instance fields
.field public x:Lk/b/i/b/a/b;


# direct methods
.method public constructor <init>(Lk/b/i/b/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/b/i/c/b/a/a;->x:Lk/b/i/b/a/b;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eqz p1, :cond_1

    instance-of v0, p1, Lk/b/i/c/b/a/a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lk/b/i/c/b/a/a;

    .line 1
    iget-object v0, p0, Lk/b/i/c/b/a/a;->x:Lk/b/i/b/a/b;

    .line 2
    iget v1, v0, Lk/b/i/b/a/b;->b:I

    .line 3
    iget-object v2, p1, Lk/b/i/c/b/a/a;->x:Lk/b/i/b/a/b;

    .line 4
    iget v3, v2, Lk/b/i/b/a/b;->b:I

    if-ne v1, v3, :cond_1

    .line 5
    iget v1, v0, Lk/b/i/b/a/b;->c:I

    iget v3, v2, Lk/b/i/b/a/b;->c:I

    if-ne v1, v3, :cond_1

    .line 6
    iget-object v0, v0, Lk/b/i/b/a/b;->d:Lk/b/i/d/a/b;

    iget-object v1, v2, Lk/b/i/b/a/b;->d:Lk/b/i/d/a/b;

    .line 7
    invoke-virtual {v0, v1}, Lk/b/i/d/a/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lk/b/i/c/b/a/a;->x:Lk/b/i/b/a/b;

    .line 9
    iget-object v0, v0, Lk/b/i/b/a/b;->e:Lk/b/i/d/a/e;

    .line 10
    iget-object v1, p1, Lk/b/i/c/b/a/a;->x:Lk/b/i/b/a/b;

    .line 11
    iget-object v1, v1, Lk/b/i/b/a/b;->e:Lk/b/i/d/a/e;

    .line 12
    invoke-virtual {v0, v1}, Lk/b/i/d/a/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lk/b/i/c/b/a/a;->x:Lk/b/i/b/a/b;

    .line 14
    iget-object v0, v0, Lk/b/i/b/a/b;->f:Lk/b/i/d/a/d;

    .line 15
    iget-object v1, p1, Lk/b/i/c/b/a/a;->x:Lk/b/i/b/a/b;

    .line 16
    iget-object v1, v1, Lk/b/i/b/a/b;->f:Lk/b/i/d/a/d;

    .line 17
    invoke-virtual {v0, v1}, Lk/b/i/d/a/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lk/b/i/c/b/a/a;->x:Lk/b/i/b/a/b;

    .line 19
    iget-object v0, v0, Lk/b/i/b/a/b;->g:Lk/b/i/d/a/a;

    .line 20
    iget-object p1, p1, Lk/b/i/c/b/a/a;->x:Lk/b/i/b/a/b;

    .line 21
    iget-object p1, p1, Lk/b/i/b/a/b;->g:Lk/b/i/d/a/a;

    .line 22
    invoke-virtual {v0, p1}, Lk/b/i/d/a/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "McEliece-CCA2"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    new-instance v8, Lk/b/i/a/a;

    .line 1
    iget-object v1, p0, Lk/b/i/c/b/a/a;->x:Lk/b/i/b/a/b;

    .line 2
    iget v2, v1, Lk/b/i/b/a/b;->b:I

    .line 3
    iget-object v1, p0, Lk/b/i/c/b/a/a;->x:Lk/b/i/b/a/b;

    .line 4
    iget v3, v1, Lk/b/i/b/a/b;->c:I

    .line 5
    iget-object v1, p0, Lk/b/i/c/b/a/a;->x:Lk/b/i/b/a/b;

    .line 6
    iget-object v4, v1, Lk/b/i/b/a/b;->d:Lk/b/i/d/a/b;

    .line 7
    iget-object v1, p0, Lk/b/i/c/b/a/a;->x:Lk/b/i/b/a/b;

    .line 8
    iget-object v5, v1, Lk/b/i/b/a/b;->e:Lk/b/i/d/a/e;

    .line 9
    iget-object v1, p0, Lk/b/i/c/b/a/a;->x:Lk/b/i/b/a/b;

    .line 10
    iget-object v6, v1, Lk/b/i/b/a/b;->f:Lk/b/i/d/a/d;

    .line 11
    iget-object v1, p0, Lk/b/i/c/b/a/a;->x:Lk/b/i/b/a/b;

    .line 12
    iget-object v1, v1, Lk/b/i/b/a/a;->a:Ljava/lang/String;

    .line 13
    invoke-static {v1}, Lk/b/c/e/a;->a(Ljava/lang/String;)Lk/b/a/l2/a;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lk/b/i/a/a;-><init>(IILk/b/i/d/a/b;Lk/b/i/d/a/e;Lk/b/i/d/a/d;Lk/b/a/l2/a;)V

    new-instance v1, Lk/b/a/l2/a;

    sget-object v2, Lk/b/i/a/e;->d:Lk/b/a/o;

    invoke-direct {v1, v2}, Lk/b/a/l2/a;-><init>(Lk/b/a/o;)V

    new-instance v2, Lk/b/a/i2/f;

    .line 14
    invoke-direct {v2, v1, v8, v0, v0}, Lk/b/a/i2/f;-><init>(Lk/b/a/l2/a;Lk/b/a/e;Lk/b/a/x;[B)V

    .line 15
    invoke-virtual {v2}, Lk/b/a/n;->e()[B

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
    .locals 3

    iget-object v0, p0, Lk/b/i/c/b/a/a;->x:Lk/b/i/b/a/b;

    .line 1
    iget v1, v0, Lk/b/i/b/a/b;->c:I

    mul-int/lit8 v1, v1, 0x25

    .line 2
    iget v2, v0, Lk/b/i/b/a/b;->b:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x25

    .line 3
    iget-object v2, v0, Lk/b/i/b/a/b;->d:Lk/b/i/d/a/b;

    .line 4
    iget v2, v2, Lk/b/i/d/a/b;->b:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x25

    .line 5
    iget-object v0, v0, Lk/b/i/b/a/b;->e:Lk/b/i/d/a/e;

    .line 6
    invoke-virtual {v0}, Lk/b/i/d/a/e;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lk/b/i/c/b/a/a;->x:Lk/b/i/b/a/b;

    .line 7
    iget-object v1, v1, Lk/b/i/b/a/b;->f:Lk/b/i/d/a/d;

    .line 8
    invoke-virtual {v1}, Lk/b/i/d/a/d;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-object v0, p0, Lk/b/i/c/b/a/a;->x:Lk/b/i/b/a/b;

    .line 9
    iget-object v0, v0, Lk/b/i/b/a/b;->g:Lk/b/i/d/a/a;

    .line 10
    invoke-virtual {v0}, Lk/b/i/d/a/a;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method
