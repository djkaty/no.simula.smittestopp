.class public final Lcom/microsoft/azure/storage/table/TableEntitySerializer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPropertiesFromDictionary(Lcom/microsoft/azure/storage/table/TableEntity;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/table/TableEntity;",
            "Lcom/microsoft/azure/storage/table/TableRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/EntityProperty;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p2}, Lcom/microsoft/azure/storage/table/TableEntity;->writeEntity(Lcom/microsoft/azure/storage/OperationContext;)Ljava/util/HashMap;

    move-result-object p2

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->assertPolicyIfRequired()V

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;

    move-result-object v0

    invoke-interface {p0}, Lcom/microsoft/azure/storage/table/TableEntity;->getPartitionKey()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-interface {p0}, Lcom/microsoft/azure/storage/table/TableEntity;->getRowKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getEncryptionResolver()Lcom/microsoft/azure/storage/table/TableRequestOptions$EncryptionResolver;

    move-result-object p1

    .line 7
    invoke-virtual {v0, p2, v1, p0, p1}, Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;->encryptEntity(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions$EncryptionResolver;)Ljava/util/Map;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method public static writeJsonEntity(Le/b/a/a/f;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/table/TableEntity;ZLcom/microsoft/azure/storage/OperationContext;)V
    .locals 6

    .line 1
    invoke-static {p2, p1, p4}, Lcom/microsoft/azure/storage/table/TableEntitySerializer;->getPropertiesFromDictionary(Lcom/microsoft/azure/storage/table/TableEntity;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/util/Map;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Le/b/a/a/f;->c()V

    const-string p4, "Timestamp"

    const-string v0, "RowKey"

    const-string v1, "PartitionKey"

    if-nez p3, :cond_0

    .line 3
    invoke-interface {p2}, Lcom/microsoft/azure/storage/table/TableEntity;->getPartitionKey()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-interface {p2}, Lcom/microsoft/azure/storage/table/TableEntity;->getRowKey()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-interface {p2}, Lcom/microsoft/azure/storage/table/TableEntity;->getTimestamp()Ljava/util/Date;

    move-result-object p3

    invoke-static {p4, p3}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-interface {p2}, Lcom/microsoft/azure/storage/table/TableEntity;->getPartitionKey()Ljava/lang/String;

    move-result-object p3

    move-object v2, p0

    check-cast v2, Le/b/a/a/q/c;

    .line 7
    invoke-virtual {v2, v1}, Le/b/a/a/f;->a(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2, p3}, Le/b/a/a/f;->b(Ljava/lang/String;)V

    .line 9
    invoke-interface {p2}, Lcom/microsoft/azure/storage/table/TableEntity;->getRowKey()Ljava/lang/String;

    move-result-object p3

    .line 10
    invoke-virtual {v2, v0}, Le/b/a/a/f;->a(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2, p3}, Le/b/a/a/f;->b(Ljava/lang/String;)V

    .line 12
    invoke-interface {p2}, Lcom/microsoft/azure/storage/table/TableEntity;->getTimestamp()Ljava/util/Date;

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/azure/storage/core/Utility;->getJavaISO8601Time(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-virtual {v2, p4}, Le/b/a/a/f;->a(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2, p2}, Le/b/a/a/f;->b(Ljava/lang/String;)V

    .line 15
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 17
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string v2, "Etag"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    .line 18
    :cond_2
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/microsoft/azure/storage/table/EntityProperty;

    .line 19
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/table/EntityProperty;->getEdmType()Lcom/microsoft/azure/storage/table/EdmType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/azure/storage/table/EdmType;->mustAnnotateType()Z

    move-result v2

    const-string v3, "@odata.type"

    if-eqz v2, :cond_3

    .line 20
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/table/EntityProperty;->getEdmType()Lcom/microsoft/azure/storage/table/EdmType;

    move-result-object p3

    invoke-virtual {p3}, Lcom/microsoft/azure/storage/table/EdmType;->toString()Ljava/lang/String;

    move-result-object p3

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v4, v3}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Le/b/a/a/q/c;

    .line 22
    invoke-virtual {v3, v2}, Le/b/a/a/f;->a(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v3, p3}, Le/b/a/a/f;->b(Ljava/lang/String;)V

    .line 24
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/azure/storage/table/EntityProperty;

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsString()Ljava/lang/String;

    move-result-object p2

    .line 25
    invoke-virtual {v3, p3}, Le/b/a/a/f;->a(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v3, p2}, Le/b/a/a/f;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 27
    :cond_3
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/table/EntityProperty;->getEdmType()Lcom/microsoft/azure/storage/table/EdmType;

    move-result-object v2

    sget-object v4, Lcom/microsoft/azure/storage/table/EdmType;->DOUBLE:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne v2, v4, :cond_6

    invoke-virtual {p3}, Lcom/microsoft/azure/storage/table/EntityProperty;->getIsNull()Z

    move-result v2

    if-nez v2, :cond_6

    .line 28
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/table/EntityProperty;->getEdmType()Lcom/microsoft/azure/storage/table/EdmType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/azure/storage/table/EdmType;->toString()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 30
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    .line 31
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    .line 32
    :cond_4
    invoke-static {p0, p2}, Lcom/microsoft/azure/storage/table/TableEntitySerializer;->writeJsonProperty(Le/b/a/a/f;Ljava/util/Map$Entry;)V

    goto/16 :goto_0

    .line 33
    :cond_5
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p3, v4, v3}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    move-object v3, p0

    check-cast v3, Le/b/a/a/q/c;

    .line 34
    invoke-virtual {v3, p3}, Le/b/a/a/f;->a(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v3, v2}, Le/b/a/a/f;->b(Ljava/lang/String;)V

    .line 36
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/azure/storage/table/EntityProperty;

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsString()Ljava/lang/String;

    move-result-object p2

    .line 37
    invoke-virtual {v3, p3}, Le/b/a/a/f;->a(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v3, p2}, Le/b/a/a/f;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 39
    :cond_6
    invoke-static {p0, p2}, Lcom/microsoft/azure/storage/table/TableEntitySerializer;->writeJsonProperty(Le/b/a/a/f;Ljava/util/Map$Entry;)V

    goto/16 :goto_0

    .line 40
    :cond_7
    invoke-virtual {p0}, Le/b/a/a/f;->a()V

    return-void
.end method

.method public static writeJsonProperty(Le/b/a/a/f;Ljava/util/Map$Entry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b/a/a/f;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/EntityProperty;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/storage/table/EntityProperty;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getEdmType()Lcom/microsoft/azure/storage/table/EdmType;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/azure/storage/table/EntityProperty;

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getIsNull()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p1}, Le/b/a/a/f;->a(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Le/b/a/a/f;->b()V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lcom/microsoft/azure/storage/table/EdmType;->BOOLEAN:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne v0, v1, :cond_1

    .line 7
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/storage/table/EntityProperty;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsBoolean()Z

    move-result p1

    .line 8
    invoke-virtual {p0, v0}, Le/b/a/a/f;->a(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p1}, Le/b/a/a/f;->a(Z)V

    goto :goto_0

    .line 10
    :cond_1
    sget-object v1, Lcom/microsoft/azure/storage/table/EdmType;->DOUBLE:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne v0, v1, :cond_2

    .line 11
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/storage/table/EntityProperty;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsDouble()D

    move-result-wide v1

    .line 12
    invoke-virtual {p0, v0}, Le/b/a/a/f;->a(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, v1, v2}, Le/b/a/a/f;->a(D)V

    goto :goto_0

    .line 14
    :cond_2
    sget-object v1, Lcom/microsoft/azure/storage/table/EdmType;->INT32:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne v0, v1, :cond_3

    .line 15
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/storage/table/EntityProperty;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsInteger()I

    move-result p1

    .line 16
    invoke-virtual {p0, v0}, Le/b/a/a/f;->a(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p1}, Le/b/a/a/f;->a(I)V

    goto :goto_0

    .line 18
    :cond_3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/storage/table/EntityProperty;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsString()Ljava/lang/String;

    move-result-object p1

    check-cast p0, Le/b/a/a/q/c;

    .line 19
    invoke-virtual {p0, v0}, Le/b/a/a/f;->a(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p1}, Le/b/a/a/f;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static writeSingleEntityToStream(Ljava/io/OutputStream;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/table/TableEntity;ZLcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->getJsonGenerator(Ljava/io/OutputStream;)Le/b/a/a/f;

    move-result-object p0

    .line 2
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/table/TableEntitySerializer;->writeJsonEntity(Le/b/a/a/f;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/table/TableEntity;ZLcom/microsoft/azure/storage/OperationContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0}, Le/b/a/a/f;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Le/b/a/a/f;->close()V

    .line 4
    throw p1
.end method

.method public static writeSingleEntityToString(Ljava/io/StringWriter;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/table/TableEntity;ZLcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->getJsonGenerator(Ljava/io/StringWriter;)Le/b/a/a/f;

    move-result-object p0

    .line 2
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/table/TableEntitySerializer;->writeJsonEntity(Le/b/a/a/f;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/table/TableEntity;ZLcom/microsoft/azure/storage/OperationContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0}, Le/b/a/a/f;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Le/b/a/a/f;->close()V

    .line 4
    throw p1
.end method
