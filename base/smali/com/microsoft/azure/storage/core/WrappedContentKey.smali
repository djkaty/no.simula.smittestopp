.class public Lcom/microsoft/azure/storage/core/WrappedContentKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public algorithm:Ljava/lang/String;

.field public encryptedKey:[B

.field public keyId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/WrappedContentKey;->keyId:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/microsoft/azure/storage/core/WrappedContentKey;->encryptedKey:[B

    .line 5
    iput-object p3, p0, Lcom/microsoft/azure/storage/core/WrappedContentKey;->algorithm:Ljava/lang/String;

    return-void
.end method

.method public static deserialize(Le/b/a/a/i;)Lcom/microsoft/azure/storage/core/WrappedContentKey;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/JsonUtilities;->assertIsStartObjectJsonToken(Le/b/a/a/i;)V

    .line 2
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/core/WrappedContentKey;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/WrappedContentKey;-><init>()V

    .line 4
    :goto_0
    move-object v1, p0

    check-cast v1, Le/b/a/a/o/c;

    .line 5
    iget-object v1, v1, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    .line 6
    sget-object v2, Le/b/a/a/l;->END_OBJECT:Le/b/a/a/l;

    if-eq v1, v2, :cond_3

    .line 7
    invoke-virtual {p0}, Le/b/a/a/i;->c()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    const-string v2, "KeyId"

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    invoke-virtual {p0}, Le/b/a/a/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/core/WrappedContentKey;->setKeyId(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v2, "EncryptedKey"

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {p0}, Le/b/a/a/i;->a()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/core/WrappedContentKey;->setEncryptedKey([B)V

    goto :goto_1

    :cond_1
    const-string v2, "Algorithm"

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {p0}, Le/b/a/a/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/core/WrappedContentKey;->setAlgorithm(Ljava/lang/String;)V

    .line 15
    :cond_2
    :goto_1
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    goto :goto_0

    .line 16
    :cond_3
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/JsonUtilities;->assertIsEndObjectJsonToken(Le/b/a/a/i;)V

    return-object v0
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/WrappedContentKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptedKey()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/WrappedContentKey;->encryptedKey:[B

    return-object v0
.end method

.method public getKeyId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/WrappedContentKey;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method public serialize(Le/b/a/a/f;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/WrappedContentKey;->getKeyId()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Le/b/a/a/q/c;

    const-string v2, "KeyId"

    .line 2
    invoke-virtual {v1, v2}, Le/b/a/a/f;->a(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, v0}, Le/b/a/a/f;->b(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/WrappedContentKey;->getEncryptedKey()[B

    move-result-object v0

    const-string v1, "EncryptedKey"

    .line 5
    invoke-virtual {p1, v1}, Le/b/a/a/f;->a(Ljava/lang/String;)V

    .line 6
    sget-object v1, Le/b/a/a/b;->b:Le/b/a/a/a;

    .line 7
    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v3, v2}, Le/b/a/a/f;->a(Le/b/a/a/a;[BII)V

    .line 8
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/WrappedContentKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Le/b/a/a/q/c;

    const-string v1, "Algorithm"

    .line 9
    invoke-virtual {p1, v1}, Le/b/a/a/f;->a(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1, v0}, Le/b/a/a/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/WrappedContentKey;->algorithm:Ljava/lang/String;

    return-void
.end method

.method public setEncryptedKey([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/WrappedContentKey;->encryptedKey:[B

    return-void
.end method

.method public setKeyId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/WrappedContentKey;->keyId:Ljava/lang/String;

    return-void
.end method
