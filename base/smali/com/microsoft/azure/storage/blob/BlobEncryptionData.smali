.class public Lcom/microsoft/azure/storage/blob/BlobEncryptionData;
.super Lcom/microsoft/azure/storage/core/EncryptionData;
.source "SourceFile"


# instance fields
.field public encryptionMode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/storage/core/EncryptionData;-><init>()V

    return-void
.end method

.method public static deserialize(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/BlobEncryptionData;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->getJsonParser(Ljava/lang/String;)Le/b/a/a/i;

    move-result-object p0

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/blob/BlobEncryptionData;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/blob/BlobEncryptionData;-><init>()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Le/b/a/a/i;->e()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/JsonUtilities;->assertIsStartObjectJsonToken(Le/b/a/a/i;)V

    .line 6
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    .line 7
    :goto_0
    move-object v1, p0

    check-cast v1, Le/b/a/a/o/c;

    .line 8
    iget-object v1, v1, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    .line 9
    sget-object v2, Le/b/a/a/l;->END_OBJECT:Le/b/a/a/l;

    if-eq v1, v2, :cond_6

    .line 10
    invoke-virtual {p0}, Le/b/a/a/i;->c()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    const-string v2, "EncryptionMode"

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13
    invoke-virtual {p0}, Le/b/a/a/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/blob/BlobEncryptionData;->setEncryptionMode(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v2, "WrappedContentKey"

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 15
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/WrappedContentKey;->deserialize(Le/b/a/a/i;)Lcom/microsoft/azure/storage/core/WrappedContentKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/core/EncryptionData;->setWrappedContentKey(Lcom/microsoft/azure/storage/core/WrappedContentKey;)V

    goto :goto_1

    :cond_2
    const-string v2, "EncryptionAgent"

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 17
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/EncryptionAgent;->deserialize(Le/b/a/a/i;)Lcom/microsoft/azure/storage/core/EncryptionAgent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/core/EncryptionData;->setEncryptionAgent(Lcom/microsoft/azure/storage/core/EncryptionAgent;)V

    goto :goto_1

    :cond_3
    const-string v2, "ContentEncryptionIV"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 19
    invoke-virtual {p0}, Le/b/a/a/i;->a()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/core/EncryptionData;->setContentEncryptionIV([B)V

    goto :goto_1

    :cond_4
    const-string v2, "KeyWrappingMetadata"

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 21
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/EncryptionData;->deserializeKeyWrappingMetadata(Le/b/a/a/i;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/core/EncryptionData;->setKeyWrappingMetadata(Ljava/util/HashMap;)V

    goto :goto_1

    .line 22
    :cond_5
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/EncryptionData;->consumeJsonObject(Le/b/a/a/i;)V

    .line 23
    :goto_1
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    goto :goto_0

    .line 24
    :cond_6
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/JsonUtilities;->assertIsEndObjectJsonToken(Le/b/a/a/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-virtual {p0}, Le/b/a/a/i;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Le/b/a/a/i;->close()V

    .line 26
    throw v0
.end method


# virtual methods
.method public getEncryptionMode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobEncryptionData;->encryptionMode:Ljava/lang/String;

    return-object v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->getJsonGenerator(Ljava/io/StringWriter;)Le/b/a/a/f;

    move-result-object v1

    .line 3
    :try_start_0
    invoke-virtual {v1}, Le/b/a/a/f;->c()V

    const-string v2, "EncryptionMode"

    const-string v3, "FullBlob"

    .line 4
    move-object v4, v1

    check-cast v4, Le/b/a/a/q/c;

    .line 5
    invoke-virtual {v4, v2}, Le/b/a/a/f;->a(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v4, v3}, Le/b/a/a/f;->b(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, v1}, Lcom/microsoft/azure/storage/core/EncryptionData;->serialize(Le/b/a/a/f;)V

    .line 8
    invoke-virtual {v1}, Le/b/a/a/f;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v1}, Le/b/a/a/f;->close()V

    .line 10
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 11
    invoke-virtual {v1}, Le/b/a/a/f;->close()V

    .line 12
    throw v0
.end method

.method public setEncryptionMode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobEncryptionData;->encryptionMode:Ljava/lang/String;

    return-void
.end method
