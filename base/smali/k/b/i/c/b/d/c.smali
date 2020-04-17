.class public Lk/b/i/c/b/d/c;
.super Ljava/security/KeyFactorySpi;
.source "SourceFile"

# interfaces
.implements Lk/b/d/a/c/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk/b/a/i2/f;)Ljava/security/PrivateKey;
    .locals 9

    invoke-virtual {p1}, Lk/b/a/i2/f;->f()Lk/b/a/e;

    move-result-object p1

    .line 1
    instance-of v0, p1, Lk/b/i/a/f;

    if-eqz v0, :cond_0

    check-cast p1, Lk/b/i/a/f;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lk/b/i/a/f;

    invoke-static {p1}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p1

    invoke-direct {v0, p1}, Lk/b/i/a/f;-><init>(Lk/b/a/u;)V

    move-object p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2
    :goto_0
    new-instance v7, Lk/b/i/c/b/d/a;

    .line 3
    iget-object v0, p1, Lk/b/i/a/f;->z:[[B

    invoke-static {v0}, Lk/b/c/e/a;->b([[B)[[S

    move-result-object v1

    .line 4
    iget-object v0, p1, Lk/b/i/a/f;->A:[B

    invoke-static {v0}, Lk/b/c/e/a;->c([B)[S

    move-result-object v2

    .line 5
    iget-object v0, p1, Lk/b/i/a/f;->B:[[B

    invoke-static {v0}, Lk/b/c/e/a;->b([[B)[[S

    move-result-object v3

    .line 6
    iget-object v0, p1, Lk/b/i/a/f;->C:[B

    invoke-static {v0}, Lk/b/c/e/a;->c([B)[S

    move-result-object v4

    .line 7
    iget-object v0, p1, Lk/b/i/a/f;->D:[B

    .line 8
    array-length v5, v0

    new-array v5, v5, [I

    const/4 v6, 0x0

    :goto_1
    array-length v8, v0

    if-ge v6, v8, :cond_2

    aget-byte v8, v0, v6

    and-int/lit16 v8, v8, 0xff

    aput v8, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 9
    :cond_2
    iget-object v6, p1, Lk/b/i/a/f;->E:[Lk/b/i/b/d/a;

    move-object v0, v7

    .line 10
    invoke-direct/range {v0 .. v6}, Lk/b/i/c/b/d/a;-><init>([[S[S[[S[S[I[Lk/b/i/b/d/a;)V

    return-object v7
.end method

.method public a(Lk/b/a/l2/s;)Ljava/security/PublicKey;
    .locals 4

    invoke-virtual {p1}, Lk/b/a/l2/s;->f()Lk/b/a/t;

    move-result-object p1

    .line 11
    instance-of v0, p1, Lk/b/i/a/g;

    if-eqz v0, :cond_0

    check-cast p1, Lk/b/i/a/g;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lk/b/i/a/g;

    invoke-static {p1}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p1

    invoke-direct {v0, p1}, Lk/b/i/a/g;-><init>(Lk/b/a/u;)V

    move-object p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 12
    :goto_0
    new-instance v0, Lk/b/i/c/b/d/b;

    .line 13
    iget-object v1, p1, Lk/b/i/a/g;->z:Lk/b/a/l;

    invoke-virtual {v1}, Lk/b/a/l;->k()I

    move-result v1

    .line 14
    iget-object v2, p1, Lk/b/i/a/g;->A:[[B

    invoke-static {v2}, Lk/b/c/e/a;->b([[B)[[S

    move-result-object v2

    .line 15
    iget-object v3, p1, Lk/b/i/a/g;->B:[[B

    invoke-static {v3}, Lk/b/c/e/a;->b([[B)[[S

    move-result-object v3

    .line 16
    iget-object p1, p1, Lk/b/i/a/g;->C:[B

    invoke-static {p1}, Lk/b/c/e/a;->c([B)[S

    move-result-object p1

    .line 17
    invoke-direct {v0, v1, v2, v3, p1}, Lk/b/i/c/b/d/b;-><init>(I[[S[[S[S)V

    return-object v0
.end method

.method public engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 2

    instance-of v0, p1, Lk/b/i/c/c/a;

    if-eqz v0, :cond_0

    new-instance v0, Lk/b/i/c/b/d/a;

    check-cast p1, Lk/b/i/c/c/a;

    invoke-direct {v0, p1}, Lk/b/i/c/b/d/a;-><init>(Lk/b/i/c/c/a;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lk/b/a/t;->a([B)Lk/b/a/t;

    move-result-object p1

    invoke-static {p1}, Lk/b/a/i2/f;->a(Ljava/lang/Object;)Lk/b/a/i2/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk/b/i/c/b/d/c;->a(Lk/b/a/i2/f;)Ljava/security/PrivateKey;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Unsupported key specification: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 3

    instance-of v0, p1, Lk/b/i/c/c/b;

    if-eqz v0, :cond_0

    new-instance v0, Lk/b/i/c/b/d/b;

    check-cast p1, Lk/b/i/c/c/b;

    invoke-direct {v0, p1}, Lk/b/i/c/b/d/b;-><init>(Lk/b/i/c/c/b;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lk/b/a/l2/s;->a(Ljava/lang/Object;)Lk/b/a/l2/s;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk/b/i/c/b/d/c;->a(Lk/b/a/l2/s;)Ljava/security/PublicKey;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key specification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 7

    instance-of v0, p1, Lk/b/i/c/b/d/a;

    const-string v1, "."

    if-eqz v0, :cond_1

    const-class v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object p2

    :cond_0
    const-class v0, Lk/b/i/c/c/a;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p1, Lk/b/i/c/b/d/a;

    new-instance p2, Lk/b/i/c/c/a;

    .line 1
    iget-object v1, p1, Lk/b/i/c/b/d/a;->x:[[S

    .line 2
    iget-object v2, p1, Lk/b/i/c/b/d/a;->y:[S

    .line 3
    iget-object v3, p1, Lk/b/i/c/b/d/a;->z:[[S

    .line 4
    iget-object v4, p1, Lk/b/i/c/b/d/a;->A:[S

    .line 5
    iget-object v5, p1, Lk/b/i/c/b/d/a;->C:[I

    .line 6
    iget-object v6, p1, Lk/b/i/c/b/d/a;->B:[Lk/b/i/b/d/a;

    move-object v0, p2

    .line 7
    invoke-direct/range {v0 .. v6}, Lk/b/i/c/c/a;-><init>([[S[S[[S[S[I[Lk/b/i/b/d/a;)V

    return-object p2

    :cond_1
    instance-of v0, p1, Lk/b/i/c/b/d/b;

    if-eqz v0, :cond_4

    const-class v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    return-object p2

    :cond_2
    const-class v0, Lk/b/i/c/c/b;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p1, Lk/b/i/c/b/d/b;

    new-instance p2, Lk/b/i/c/c/b;

    .line 8
    iget v0, p1, Lk/b/i/c/b/d/b;->A:I

    .line 9
    iget-object v1, p1, Lk/b/i/c/b/d/b;->x:[[S

    .line 10
    invoke-virtual {p1}, Lk/b/i/c/b/d/b;->a()[[S

    move-result-object v2

    .line 11
    iget-object p1, p1, Lk/b/i/c/b/d/b;->z:[S

    invoke-static {p1}, Lk/b/c/e/a;->a([S)[S

    move-result-object p1

    .line 12
    invoke-direct {p2, v0, v1, v2, p1}, Lk/b/i/c/c/b;-><init>(I[[S[[S[S)V

    return-object p2

    :cond_3
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key specification: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p2, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "Unsupported key type: "

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 1

    instance-of v0, p1, Lk/b/i/c/b/d/a;

    if-nez v0, :cond_1

    instance-of v0, p1, Lk/b/i/c/b/d/b;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "Unsupported key type"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method
