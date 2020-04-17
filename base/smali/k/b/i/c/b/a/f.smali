.class public Lk/b/i/c/b/a/f;
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
.method public engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 10

    instance-of v0, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lk/b/a/t;->a([B)Lk/b/a/t;

    move-result-object p1

    invoke-static {p1}, Lk/b/a/i2/f;->a(Ljava/lang/Object;)Lk/b/a/i2/f;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v0, Lk/b/i/a/e;->c:Lk/b/a/o;

    .line 1
    iget-object v1, p1, Lk/b/a/i2/f;->y:Lk/b/a/l2/a;

    .line 2
    iget-object v1, v1, Lk/b/a/l2/a;->x:Lk/b/a/o;

    .line 3
    invoke-virtual {v0, v1}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lk/b/a/i2/f;->f()Lk/b/a/e;

    move-result-object p1

    .line 4
    instance-of v0, p1, Lk/b/i/a/c;

    if-eqz v0, :cond_0

    check-cast p1, Lk/b/i/a/c;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lk/b/i/a/c;

    invoke-static {p1}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p1

    invoke-direct {v0, p1}, Lk/b/i/a/c;-><init>(Lk/b/a/u;)V

    move-object p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5
    :goto_0
    new-instance v0, Lk/b/i/c/b/a/c;

    new-instance v9, Lk/b/i/b/a/e;

    .line 6
    iget v2, p1, Lk/b/i/a/c;->x:I

    .line 7
    iget v3, p1, Lk/b/i/a/c;->y:I

    .line 8
    new-instance v4, Lk/b/i/d/a/b;

    iget-object v1, p1, Lk/b/i/a/c;->z:[B

    invoke-direct {v4, v1}, Lk/b/i/d/a/b;-><init>([B)V

    .line 9
    new-instance v5, Lk/b/i/d/a/e;

    .line 10
    new-instance v1, Lk/b/i/d/a/b;

    iget-object v6, p1, Lk/b/i/a/c;->z:[B

    invoke-direct {v1, v6}, Lk/b/i/d/a/b;-><init>([B)V

    .line 11
    iget-object v6, p1, Lk/b/i/a/c;->A:[B

    invoke-direct {v5, v1, v6}, Lk/b/i/d/a/e;-><init>(Lk/b/i/d/a/b;[B)V

    .line 12
    new-instance v6, Lk/b/i/d/a/d;

    iget-object v1, p1, Lk/b/i/a/c;->C:[B

    invoke-direct {v6, v1}, Lk/b/i/d/a/d;-><init>([B)V

    .line 13
    new-instance v7, Lk/b/i/d/a/d;

    iget-object v1, p1, Lk/b/i/a/c;->D:[B

    invoke-direct {v7, v1}, Lk/b/i/d/a/d;-><init>([B)V

    .line 14
    new-instance v8, Lk/b/i/d/a/a;

    iget-object p1, p1, Lk/b/i/a/c;->B:[B

    invoke-direct {v8, p1}, Lk/b/i/d/a/a;-><init>([B)V

    move-object v1, v9

    .line 15
    invoke-direct/range {v1 .. v8}, Lk/b/i/b/a/e;-><init>(IILk/b/i/d/a/b;Lk/b/i/d/a/e;Lk/b/i/d/a/d;Lk/b/i/d/a/d;Lk/b/i/d/a/a;)V

    invoke-direct {v0, v9}, Lk/b/i/c/b/a/c;-><init>(Lk/b/i/b/a/e;)V

    return-object v0

    :cond_2
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "Unable to recognise OID in McEliece private key"

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "Unable to decode PKCS8EncodedKeySpec."

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to decode PKCS8EncodedKeySpec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
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
    .locals 5

    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lk/b/a/t;->a([B)Lk/b/a/t;

    move-result-object p1

    invoke-static {p1}, Lk/b/a/l2/s;->a(Ljava/lang/Object;)Lk/b/a/l2/s;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v0, Lk/b/i/a/e;->c:Lk/b/a/o;

    .line 1
    iget-object v1, p1, Lk/b/a/l2/s;->x:Lk/b/a/l2/a;

    .line 2
    iget-object v1, v1, Lk/b/a/l2/a;->x:Lk/b/a/o;

    .line 3
    invoke-virtual {v0, v1}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lk/b/a/l2/s;->f()Lk/b/a/t;

    move-result-object p1

    .line 4
    instance-of v0, p1, Lk/b/i/a/d;

    if-eqz v0, :cond_0

    check-cast p1, Lk/b/i/a/d;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lk/b/i/a/d;

    invoke-static {p1}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p1

    invoke-direct {v0, p1}, Lk/b/i/a/d;-><init>(Lk/b/a/u;)V

    move-object p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5
    :goto_0
    new-instance v0, Lk/b/i/c/b/a/d;

    new-instance v1, Lk/b/i/b/a/f;

    .line 6
    iget v2, p1, Lk/b/i/a/d;->x:I

    .line 7
    iget v3, p1, Lk/b/i/a/d;->y:I

    .line 8
    new-instance v4, Lk/b/i/d/a/a;

    iget-object p1, p1, Lk/b/i/a/d;->z:Lk/b/i/d/a/a;

    invoke-direct {v4, p1}, Lk/b/i/d/a/a;-><init>(Lk/b/i/d/a/a;)V

    .line 9
    invoke-direct {v1, v2, v3, v4}, Lk/b/i/b/a/f;-><init>(IILk/b/i/d/a/a;)V

    invoke-direct {v0, v1}, Lk/b/i/c/b/a/d;-><init>(Lk/b/i/b/a/f;)V

    return-object v0

    :cond_2
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "Unable to recognise OID in McEliece public key"

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Unable to decode X509EncodedKeySpec: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
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

.method public engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
