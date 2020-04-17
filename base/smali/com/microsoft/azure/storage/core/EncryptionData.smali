.class public Lcom/microsoft/azure/storage/core/EncryptionData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public contentEncryptionIV:[B

.field public encryptionAgent:Lcom/microsoft/azure/storage/core/EncryptionAgent;

.field public keyWrappingMetadata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public wrappedContentKey:Lcom/microsoft/azure/storage/core/WrappedContentKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static consumeJsonObject(Le/b/a/a/i;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/JsonUtilities;->assertIsStartObjectJsonToken(Le/b/a/a/i;)V

    .line 2
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    .line 3
    move-object v0, p0

    check-cast v0, Le/b/a/a/o/c;

    .line 4
    iget-object v0, v0, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    .line 5
    sget-object v1, Le/b/a/a/l;->END_OBJECT:Le/b/a/a/l;

    if-eq v0, v1, :cond_0

    .line 6
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/EncryptionData;->consumeJsonObject(Le/b/a/a/i;)V

    :cond_0
    return-void
.end method

.method public static deserialize(Le/b/a/a/i;)Lcom/microsoft/azure/storage/core/EncryptionData;
    .locals 3

    .line 7
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/JsonUtilities;->assertIsStartObjectJsonToken(Le/b/a/a/i;)V

    .line 8
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    .line 9
    new-instance v0, Lcom/microsoft/azure/storage/core/EncryptionData;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/EncryptionData;-><init>()V

    .line 10
    :goto_0
    move-object v1, p0

    check-cast v1, Le/b/a/a/o/c;

    .line 11
    iget-object v1, v1, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    .line 12
    sget-object v2, Le/b/a/a/l;->END_OBJECT:Le/b/a/a/l;

    if-eq v1, v2, :cond_4

    .line 13
    invoke-virtual {p0}, Le/b/a/a/i;->c()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    const-string v2, "WrappedContentKey"

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/WrappedContentKey;->deserialize(Le/b/a/a/i;)Lcom/microsoft/azure/storage/core/WrappedContentKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/core/EncryptionData;->setWrappedContentKey(Lcom/microsoft/azure/storage/core/WrappedContentKey;)V

    goto :goto_1

    :cond_0
    const-string v2, "EncryptionAgent"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 18
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/EncryptionAgent;->deserialize(Le/b/a/a/i;)Lcom/microsoft/azure/storage/core/EncryptionAgent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/core/EncryptionData;->setEncryptionAgent(Lcom/microsoft/azure/storage/core/EncryptionAgent;)V

    goto :goto_1

    :cond_1
    const-string v2, "ContentEncryptionIV"

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 20
    invoke-virtual {p0}, Le/b/a/a/i;->a()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/core/EncryptionData;->setContentEncryptionIV([B)V

    goto :goto_1

    :cond_2
    const-string v2, "KeyWrappingMetadata"

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 22
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/EncryptionData;->deserializeKeyWrappingMetadata(Le/b/a/a/i;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/core/EncryptionData;->setKeyWrappingMetadata(Ljava/util/HashMap;)V

    goto :goto_1

    .line 23
    :cond_3
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/EncryptionData;->consumeJsonObject(Le/b/a/a/i;)V

    .line 24
    :goto_1
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    goto :goto_0

    .line 25
    :cond_4
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/JsonUtilities;->assertIsEndObjectJsonToken(Le/b/a/a/i;)V

    return-object v0
.end method

.method public static deserialize(Ljava/lang/String;)Lcom/microsoft/azure/storage/core/EncryptionData;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->getJsonParser(Ljava/lang/String;)Le/b/a/a/i;

    move-result-object p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Le/b/a/a/i;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/EncryptionData;->deserialize(Le/b/a/a/i;)Lcom/microsoft/azure/storage/core/EncryptionData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p0}, Le/b/a/a/i;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Le/b/a/a/i;->close()V

    .line 6
    throw v0
.end method

.method public static deserializeKeyWrappingMetadata(Le/b/a/a/i;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b/a/a/i;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/JsonUtilities;->assertIsStartObjectJsonToken(Le/b/a/a/i;)V

    .line 2
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    :goto_0
    move-object v1, p0

    check-cast v1, Le/b/a/a/o/c;

    .line 5
    iget-object v1, v1, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    .line 6
    sget-object v2, Le/b/a/a/l;->END_OBJECT:Le/b/a/a/l;

    if-eq v1, v2, :cond_0

    .line 7
    invoke-virtual {p0}, Le/b/a/a/i;->c()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    .line 9
    invoke-virtual {p0}, Le/b/a/a/i;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/JsonUtilities;->assertIsEndObjectJsonToken(Le/b/a/a/i;)V

    return-object v0
.end method


# virtual methods
.method public copyValues(Lcom/microsoft/azure/storage/core/EncryptionData;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/core/EncryptionData;->getWrappedContentKey()Lcom/microsoft/azure/storage/core/WrappedContentKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/core/EncryptionData;->setWrappedContentKey(Lcom/microsoft/azure/storage/core/WrappedContentKey;)V

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/core/EncryptionData;->getEncryptionAgent()Lcom/microsoft/azure/storage/core/EncryptionAgent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/core/EncryptionData;->setEncryptionAgent(Lcom/microsoft/azure/storage/core/EncryptionAgent;)V

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/core/EncryptionData;->getContentEncryptionIV()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/core/EncryptionData;->setContentEncryptionIV([B)V

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/core/EncryptionData;->getKeyWrappingMetadata()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/EncryptionData;->setKeyWrappingMetadata(Ljava/util/HashMap;)V

    return-void
.end method

.method public getContentEncryptionIV()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/EncryptionData;->contentEncryptionIV:[B

    return-object v0
.end method

.method public getEncryptionAgent()Lcom/microsoft/azure/storage/core/EncryptionAgent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/EncryptionData;->encryptionAgent:Lcom/microsoft/azure/storage/core/EncryptionAgent;

    return-object v0
.end method

.method public getKeyWrappingMetadata()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/EncryptionData;->keyWrappingMetadata:Ljava/util/HashMap;

    return-object v0
.end method

.method public getWrappedContentKey()Lcom/microsoft/azure/storage/core/WrappedContentKey;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/EncryptionData;->wrappedContentKey:Lcom/microsoft/azure/storage/core/WrappedContentKey;

    return-object v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->getJsonGenerator(Ljava/io/StringWriter;)Le/b/a/a/f;

    move-result-object v1

    .line 3
    :try_start_0
    invoke-virtual {v1}, Le/b/a/a/f;->c()V

    .line 4
    invoke-virtual {p0, v1}, Lcom/microsoft/azure/storage/core/EncryptionData;->serialize(Le/b/a/a/f;)V

    .line 5
    invoke-virtual {v1}, Le/b/a/a/f;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v1}, Le/b/a/a/f;->close()V

    .line 7
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 8
    invoke-virtual {v1}, Le/b/a/a/f;->close()V

    .line 9
    throw v0
.end method

.method public serialize(Le/b/a/a/f;)V
    .locals 4

    const-string v0, "WrappedContentKey"

    .line 10
    invoke-virtual {p1, v0}, Le/b/a/a/f;->a(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Le/b/a/a/f;->c()V

    .line 12
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/EncryptionData;->getWrappedContentKey()Lcom/microsoft/azure/storage/core/WrappedContentKey;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/storage/core/WrappedContentKey;->serialize(Le/b/a/a/f;)V

    .line 13
    invoke-virtual {p1}, Le/b/a/a/f;->a()V

    const-string v0, "EncryptionAgent"

    .line 14
    invoke-virtual {p1, v0}, Le/b/a/a/f;->a(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Le/b/a/a/f;->c()V

    .line 16
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/EncryptionData;->getEncryptionAgent()Lcom/microsoft/azure/storage/core/EncryptionAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/storage/core/EncryptionAgent;->serialize(Le/b/a/a/f;)V

    .line 17
    invoke-virtual {p1}, Le/b/a/a/f;->a()V

    .line 18
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/EncryptionData;->getContentEncryptionIV()[B

    move-result-object v0

    const-string v1, "ContentEncryptionIV"

    .line 19
    invoke-virtual {p1, v1}, Le/b/a/a/f;->a(Ljava/lang/String;)V

    .line 20
    sget-object v1, Le/b/a/a/b;->b:Le/b/a/a/a;

    .line 21
    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v3, v2}, Le/b/a/a/f;->a(Le/b/a/a/a;[BII)V

    const-string v0, "KeyWrappingMetadata"

    .line 22
    invoke-virtual {p1, v0}, Le/b/a/a/f;->a(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Le/b/a/a/f;->c()V

    .line 24
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/EncryptionData;->keyWrappingMetadata:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 25
    iget-object v2, p0, Lcom/microsoft/azure/storage/core/EncryptionData;->keyWrappingMetadata:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v3, p1

    check-cast v3, Le/b/a/a/q/c;

    .line 26
    invoke-virtual {v3, v1}, Le/b/a/a/f;->a(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v3, v2}, Le/b/a/a/f;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p1}, Le/b/a/a/f;->a()V

    return-void
.end method

.method public setContentEncryptionIV([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/EncryptionData;->contentEncryptionIV:[B

    return-void
.end method

.method public setEncryptionAgent(Lcom/microsoft/azure/storage/core/EncryptionAgent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/EncryptionData;->encryptionAgent:Lcom/microsoft/azure/storage/core/EncryptionAgent;

    return-void
.end method

.method public setKeyWrappingMetadata(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/EncryptionData;->keyWrappingMetadata:Ljava/util/HashMap;

    return-void
.end method

.method public setWrappedContentKey(Lcom/microsoft/azure/storage/core/WrappedContentKey;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/EncryptionData;->wrappedContentKey:Lcom/microsoft/azure/storage/core/WrappedContentKey;

    return-void
.end method
