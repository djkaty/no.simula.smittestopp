.class public final Lcom/microsoft/azure/storage/table/TableDeserializer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluateEdmType(Le/b/a/a/l;Ljava/lang/String;)Lcom/microsoft/azure/storage/table/EdmType;
    .locals 0

    .line 1
    sget-object p1, Le/b/a/a/l;->VALUE_FALSE:Le/b/a/a/l;

    if-eq p0, p1, :cond_3

    sget-object p1, Le/b/a/a/l;->VALUE_TRUE:Le/b/a/a/l;

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Le/b/a/a/l;->VALUE_NUMBER_FLOAT:Le/b/a/a/l;

    if-ne p0, p1, :cond_1

    .line 3
    sget-object p0, Lcom/microsoft/azure/storage/table/EdmType;->DOUBLE:Lcom/microsoft/azure/storage/table/EdmType;

    goto :goto_1

    .line 4
    :cond_1
    sget-object p1, Le/b/a/a/l;->VALUE_NUMBER_INT:Le/b/a/a/l;

    if-ne p0, p1, :cond_2

    .line 5
    sget-object p0, Lcom/microsoft/azure/storage/table/EdmType;->INT32:Lcom/microsoft/azure/storage/table/EdmType;

    goto :goto_1

    .line 6
    :cond_2
    sget-object p0, Lcom/microsoft/azure/storage/table/EdmType;->STRING:Lcom/microsoft/azure/storage/table/EdmType;

    goto :goto_1

    .line 7
    :cond_3
    :goto_0
    sget-object p0, Lcom/microsoft/azure/storage/table/EdmType;->BOOLEAN:Lcom/microsoft/azure/storage/table/EdmType;

    :goto_1
    return-object p0
.end method

.method public static getETagFromTimestamp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "UTF-8"

    .line 1
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "W/\"datetime\'"

    const-string v1, "\'\""

    .line 2
    invoke-static {v0, p0, v1}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isEncrypted(Ljava/util/HashSet;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static parseJsonEntity(Le/b/a/a/i;Ljava/lang/Class;Ljava/util/HashMap;Lcom/microsoft/azure/storage/table/EntityResolver;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/TableResult;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/microsoft/azure/storage/table/TableEntity;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Le/b/a/a/i;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/PropertyPair;",
            ">;",
            "Lcom/microsoft/azure/storage/table/EntityResolver<",
            "TR;>;",
            "Lcom/microsoft/azure/storage/table/TableRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Lcom/microsoft/azure/storage/table/TableResult;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/table/TableResult;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/table/TableResult;-><init>()V

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/i;->e()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    .line 5
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/microsoft/azure/storage/core/JsonUtilities;->assertIsStartObjectJsonToken(Le/b/a/a/i;)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    .line 7
    :goto_0
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/i;->c()Ljava/lang/String;

    move-result-object v1

    const-string v3, "odata."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/i;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    const-string v3, "etag"

    .line 10
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/i;->d()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/table/TableResult;->setEtag(Ljava/lang/String;)V

    .line 13
    :cond_1
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    if-nez p1, :cond_3

    return-object v0

    .line 14
    :cond_3
    :goto_1
    move-object/from16 v1, p0

    check-cast v1, Le/b/a/a/o/c;

    .line 15
    iget-object v3, v1, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    .line 16
    sget-object v4, Le/b/a/a/l;->END_OBJECT:Le/b/a/a/l;

    if-eq v3, v4, :cond_5

    .line 17
    invoke-virtual/range {p4 .. p4}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getTablePayloadFormat()Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    move-result-object v3

    sget-object v4, Lcom/microsoft/azure/storage/table/TablePayloadFormat;->JsonNoMetadata:Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    if-eq v3, v4, :cond_4

    .line 18
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/i;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "@odata.type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 19
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    .line 20
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/azure/storage/table/EdmType;->parse(Ljava/lang/String;)Lcom/microsoft/azure/storage/table/EdmType;

    move-result-object v1

    .line 21
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/i;->g()Le/b/a/a/l;

    .line 22
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/i;->c()Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/i;->d()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 24
    :cond_4
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/i;->c()Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    .line 26
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/i;->d()Ljava/lang/String;

    move-result-object v4

    .line 27
    iget-object v1, v1, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    .line 28
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/i;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/microsoft/azure/storage/table/TableDeserializer;->evaluateEdmType(Le/b/a/a/l;Ljava/lang/String;)Lcom/microsoft/azure/storage/table/EdmType;

    move-result-object v1

    .line 29
    :goto_2
    new-instance v5, Lcom/microsoft/azure/storage/table/EntityProperty;

    invoke-direct {v5, v4, v1}, Lcom/microsoft/azure/storage/table/EntityProperty;-><init>(Ljava/lang/String;Lcom/microsoft/azure/storage/table/EdmType;)V

    .line 30
    invoke-virtual/range {p4 .. p4}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getDateBackwardCompatibility()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v5, v1}, Lcom/microsoft/azure/storage/table/EntityProperty;->setDateBackwardCompatibility(Z)V

    .line 31
    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    goto :goto_1

    :cond_5
    const-string v1, "PartitionKey"

    .line 33
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/azure/storage/table/EntityProperty;

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    .line 34
    invoke-virtual {v1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    goto :goto_3

    :cond_6
    move-object v10, v3

    :goto_3
    const-string v1, "RowKey"

    .line 35
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/azure/storage/table/EntityProperty;

    if-eqz v1, :cond_7

    .line 36
    invoke-virtual {v1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    goto :goto_4

    :cond_7
    move-object v11, v3

    :goto_4
    const-string v1, "Timestamp"

    .line 37
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/azure/storage/table/EntityProperty;

    const/4 v12, 0x0

    if-eqz v1, :cond_9

    .line 38
    invoke-virtual {v1, v12}, Lcom/microsoft/azure/storage/table/EntityProperty;->setDateBackwardCompatibility(Z)V

    .line 39
    invoke-virtual {v1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsDate()Ljava/util/Date;

    move-result-object v4

    .line 40
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/table/TableResult;->getEtag()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8

    .line 41
    invoke-virtual {v1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/azure/storage/table/TableDeserializer;->getETagFromTimestamp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/table/TableResult;->setEtag(Ljava/lang/String;)V

    :cond_8
    move-object v13, v4

    goto :goto_5

    :cond_9
    move-object v13, v3

    :goto_5
    const/4 v1, 0x1

    .line 43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 44
    new-instance v14, Lcom/microsoft/azure/storage/core/EncryptionData;

    invoke-direct {v14}, Lcom/microsoft/azure/storage/core/EncryptionData;-><init>()V

    .line 45
    invoke-virtual/range {p4 .. p4}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;

    move-result-object v5

    const-string v15, "_ClientEncryptionMetadata1"

    const-string v9, "_ClientEncryptionMetadata2"

    if-eqz v5, :cond_c

    .line 46
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/microsoft/azure/storage/table/EntityProperty;

    .line 47
    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/microsoft/azure/storage/table/EntityProperty;

    if-eqz v8, :cond_a

    .line 48
    invoke-virtual {v8}, Lcom/microsoft/azure/storage/table/EntityProperty;->getIsNull()Z

    move-result v5

    if-nez v5, :cond_a

    if-eqz v7, :cond_a

    .line 49
    invoke-virtual {v7}, Lcom/microsoft/azure/storage/table/EntityProperty;->getIsNull()Z

    move-result v5

    if-nez v5, :cond_a

    .line 50
    invoke-virtual/range {p4 .. p4}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;

    move-result-object v4

    move-object v5, v10

    move-object v6, v11

    move-object v3, v8

    move-object v1, v9

    move-object v9, v14

    invoke-virtual/range {v4 .. v9}, Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;->decryptMetadataAndReturnCEK(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/table/EntityProperty;Lcom/microsoft/azure/storage/table/EntityProperty;Lcom/microsoft/azure/storage/core/EncryptionData;)Lcom/microsoft/azure/storage/table/CEKReturn;

    move-result-object v4

    .line 51
    iget-object v5, v4, Lcom/microsoft/azure/storage/table/CEKReturn;->key:Ljava/security/Key;

    .line 52
    iget-object v4, v4, Lcom/microsoft/azure/storage/table/CEKReturn;->isJavaV1:Ljava/lang/Boolean;

    .line 53
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {v3}, Lcom/microsoft/azure/storage/table/TableDeserializer;->parsePropertyDetails(Lcom/microsoft/azure/storage/table/EntityProperty;)Ljava/util/HashSet;

    move-result-object v3

    move-object v8, v4

    move-object v6, v5

    goto :goto_7

    :cond_a
    move-object v1, v9

    .line 55
    invoke-virtual/range {p4 .. p4}, Lcom/microsoft/azure/storage/RequestOptions;->requireEncryption()Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual/range {p4 .. p4}, Lcom/microsoft/azure/storage/RequestOptions;->requireEncryption()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_6

    .line 56
    :cond_b
    new-instance v0, Lcom/microsoft/azure/storage/StorageException;

    const-string v1, "DecryptionError"

    const-string v2, "Encryption data does not exist. If you do not want to decrypt the data, please do not set the require encryption flag on request options"

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_c
    move-object v1, v9

    :cond_d
    :goto_6
    move-object v6, v3

    move-object v8, v4

    .line 57
    :goto_7
    invoke-virtual/range {p4 .. p4}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getTablePayloadFormat()Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    move-result-object v4

    sget-object v5, Lcom/microsoft/azure/storage/table/TablePayloadFormat;->JsonNoMetadata:Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    if-ne v4, v5, :cond_17

    .line 58
    invoke-virtual/range {p4 .. p4}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getPropertyResolver()Lcom/microsoft/azure/storage/table/TableRequestOptions$PropertyResolver;

    move-result-object v4

    if-nez v4, :cond_e

    if-eqz p1, :cond_17

    .line 59
    :cond_e
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object/from16 v5, p2

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 60
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 61
    new-instance v9, Lcom/microsoft/azure/storage/table/EntityProperty;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/microsoft/azure/storage/table/EntityProperty;

    invoke-virtual/range {v16 .. v16}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v16, v4

    sget-object v4, Lcom/microsoft/azure/storage/table/EdmType;->STRING:Lcom/microsoft/azure/storage/table/EdmType;

    invoke-direct {v9, v12, v4}, Lcom/microsoft/azure/storage/table/EntityProperty;-><init>(Ljava/lang/String;Lcom/microsoft/azure/storage/table/EdmType;)V

    .line 62
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    :goto_9
    move-object/from16 v17, v1

    move-object/from16 v18, v15

    :goto_a
    const/4 v4, 0x1

    const/4 v15, 0x0

    goto/16 :goto_d

    :cond_10
    move-object/from16 v16, v4

    .line 63
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 64
    invoke-virtual/range {p4 .. p4}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;

    move-result-object v4

    if-nez v4, :cond_f

    .line 65
    new-instance v4, Lcom/microsoft/azure/storage/table/EntityProperty;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/microsoft/azure/storage/table/EntityProperty;

    invoke-virtual {v9}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v9

    sget-object v12, Lcom/microsoft/azure/storage/table/EdmType;->BINARY:Lcom/microsoft/azure/storage/table/EdmType;

    invoke-direct {v4, v9, v12}, Lcom/microsoft/azure/storage/table/EntityProperty;-><init>(Ljava/lang/String;Lcom/microsoft/azure/storage/table/EdmType;)V

    .line 66
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 67
    :cond_11
    invoke-virtual/range {p4 .. p4}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getPropertyResolver()Lcom/microsoft/azure/storage/table/TableRequestOptions$PropertyResolver;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 68
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 69
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/microsoft/azure/storage/table/EntityProperty;

    invoke-virtual {v9}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v9

    .line 70
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getPropertyResolver()Lcom/microsoft/azure/storage/table/TableRequestOptions$PropertyResolver;

    move-result-object v12

    invoke-interface {v12, v10, v11, v4, v9}, Lcom/microsoft/azure/storage/table/TableRequestOptions$PropertyResolver;->propertyResolver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/storage/table/EdmType;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v17, v1

    .line 71
    :try_start_1
    new-instance v1, Lcom/microsoft/azure/storage/table/EntityProperty;

    .line 72
    invoke-static {v3, v4}, Lcom/microsoft/azure/storage/table/TableDeserializer;->isEncrypted(Ljava/util/HashSet;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_12

    sget-object v18, Lcom/microsoft/azure/storage/table/EdmType;->BINARY:Lcom/microsoft/azure/storage/table/EdmType;

    move-object/from16 v25, v18

    move-object/from16 v18, v15

    move-object/from16 v15, v25

    goto :goto_b

    :cond_12
    move-object/from16 v18, v15

    move-object v15, v12

    :goto_b
    invoke-direct {v1, v9, v15}, Lcom/microsoft/azure/storage/table/EntityProperty;-><init>(Ljava/lang/String;Lcom/microsoft/azure/storage/table/EdmType;)V

    .line 73
    invoke-virtual/range {p4 .. p4}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getDateBackwardCompatibility()Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    invoke-virtual {v1, v15}, Lcom/microsoft/azure/storage/table/EntityProperty;->setDateBackwardCompatibility(Z)V

    .line 74
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    move-object/from16 v24, v0

    .line 75
    new-instance v0, Lcom/microsoft/azure/storage/StorageException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v1, v15

    const/4 v4, 0x1

    aput-object v9, v1, v4

    const/4 v2, 0x2

    aput-object v12, v1, v2

    const-string v2, "Failed to parse property \'%s\' with value \'%s\' as type \'%s\'"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x132

    const/16 v23, 0x0

    const-string v20, "InvalidType"

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v24}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception v0

    .line 76
    new-instance v1, Lcom/microsoft/azure/storage/StorageException;

    const/16 v2, 0x132

    const/4 v3, 0x0

    const-string v4, "InternalError"

    const-string v5, "The custom property resolver delegate threw an exception. Check the inner exception for more details."

    move-object/from16 p0, v1

    move-object/from16 p1, v4

    move-object/from16 p2, v5

    move/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v0

    invoke-direct/range {p0 .. p5}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V

    throw v1

    :cond_13
    move-object/from16 v17, v1

    move-object/from16 v18, v15

    const/4 v4, 0x1

    const/4 v15, 0x0

    if-eqz p1, :cond_16

    if-nez v5, :cond_14

    .line 77
    invoke-static/range {p1 .. p1}, Lcom/microsoft/azure/storage/table/PropertyPair;->generatePropertyPairs(Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v5

    .line 78
    :cond_14
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/azure/storage/table/PropertyPair;

    if-eqz v1, :cond_16

    .line 79
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/microsoft/azure/storage/table/TableDeserializer;->isEncrypted(Ljava/util/HashSet;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 80
    new-instance v1, Lcom/microsoft/azure/storage/table/EntityProperty;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/microsoft/azure/storage/table/EntityProperty;

    invoke-virtual {v9}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v9

    sget-object v12, Lcom/microsoft/azure/storage/table/EdmType;->BINARY:Lcom/microsoft/azure/storage/table/EdmType;

    invoke-direct {v1, v9, v12}, Lcom/microsoft/azure/storage/table/EntityProperty;-><init>(Ljava/lang/String;Lcom/microsoft/azure/storage/table/EdmType;)V

    goto :goto_c

    .line 81
    :cond_15
    new-instance v9, Lcom/microsoft/azure/storage/table/EntityProperty;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/microsoft/azure/storage/table/EntityProperty;

    invoke-virtual {v12}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v12

    iget-object v1, v1, Lcom/microsoft/azure/storage/table/PropertyPair;->type:Ljava/lang/Class;

    invoke-direct {v9, v12, v1}, Lcom/microsoft/azure/storage/table/EntityProperty;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    move-object v1, v9

    .line 82
    :goto_c
    invoke-virtual/range {p4 .. p4}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getDateBackwardCompatibility()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v1, v9}, Lcom/microsoft/azure/storage/table/EntityProperty;->setDateBackwardCompatibility(Z)V

    .line 83
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    :goto_d
    move-object/from16 v4, v16

    move-object/from16 v1, v17

    move-object/from16 v15, v18

    const/4 v12, 0x0

    goto/16 :goto_8

    .line 84
    :cond_17
    invoke-virtual/range {p4 .. p4}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;

    move-result-object v1

    if-eqz v1, :cond_18

    if-eqz v6, :cond_18

    .line 85
    invoke-virtual/range {p4 .. p4}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;

    move-result-object v1

    move-object v4, v10

    move-object v5, v11

    move-object v7, v14

    invoke-virtual/range {v1 .. v8}, Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;->decryptEntity(Ljava/util/HashMap;Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/security/Key;Lcom/microsoft/azure/storage/core/EncryptionData;Ljava/lang/Boolean;)Ljava/util/HashMap;

    move-result-object v1

    goto :goto_e

    :cond_18
    move-object v1, v2

    .line 86
    :goto_e
    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/table/TableResult;->setProperties(Ljava/util/HashMap;)V

    if-eqz p3, :cond_19

    .line 87
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/table/TableResult;->getEtag()Ljava/lang/String;

    move-result-object v2

    move-object/from16 p0, p3

    move-object/from16 p1, v10

    move-object/from16 p2, v11

    move-object/from16 p3, v13

    move-object/from16 p4, v1

    move-object/from16 p5, v2

    invoke-interface/range {p0 .. p5}, Lcom/microsoft/azure/storage/table/EntityResolver;->resolve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/table/TableResult;->setResult(Ljava/lang/Object;)V

    goto :goto_f

    :cond_19
    if-eqz p1, :cond_1a

    .line 88
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/azure/storage/table/TableEntity;

    .line 89
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/table/TableResult;->getEtag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/microsoft/azure/storage/table/TableEntity;->setEtag(Ljava/lang/String;)V

    .line 90
    invoke-interface {v2, v10}, Lcom/microsoft/azure/storage/table/TableEntity;->setPartitionKey(Ljava/lang/String;)V

    .line 91
    invoke-interface {v2, v11}, Lcom/microsoft/azure/storage/table/TableEntity;->setRowKey(Ljava/lang/String;)V

    .line 92
    invoke-interface {v2, v13}, Lcom/microsoft/azure/storage/table/TableEntity;->setTimestamp(Ljava/util/Date;)V

    move-object/from16 v3, p5

    .line 93
    invoke-interface {v2, v1, v3}, Lcom/microsoft/azure/storage/table/TableEntity;->readEntity(Ljava/util/HashMap;Lcom/microsoft/azure/storage/OperationContext;)V

    .line 94
    invoke-virtual {v0, v2}, Lcom/microsoft/azure/storage/table/TableResult;->setResult(Ljava/lang/Object;)V

    :cond_1a
    :goto_f
    return-object v0
.end method

.method public static parsePropertyDetails(Lcom/microsoft/azure/storage/table/EntityProperty;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/table/EntityProperty;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getIsNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsByteArray()[B

    move-result-object p0

    .line 3
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p0

    const-string v3, "UTF-8"

    invoke-direct {v0, p0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const-string p0, ""

    const-string v1, " "

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static parseQueryResponse(Ljava/io/InputStream;Lcom/microsoft/azure/storage/table/TableRequestOptions;Ljava/lang/Class;Lcom/microsoft/azure/storage/table/EntityResolver;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/ODataPayload;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/microsoft/azure/storage/table/TableEntity;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Lcom/microsoft/azure/storage/table/TableRequestOptions;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/microsoft/azure/storage/table/EntityResolver<",
            "TR;>;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Lcom/microsoft/azure/storage/table/ODataPayload<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->getJsonParser(Ljava/io/InputStream;)Le/b/a/a/i;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 2
    :try_start_0
    new-instance v1, Lcom/microsoft/azure/storage/table/ODataPayload;

    invoke-direct {v1}, Lcom/microsoft/azure/storage/table/ODataPayload;-><init>()V

    move-object v7, v0

    move-object v6, v1

    move-object v8, v6

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcom/microsoft/azure/storage/table/ODataPayload;

    invoke-direct {v1}, Lcom/microsoft/azure/storage/table/ODataPayload;-><init>()V

    move-object v8, v0

    move-object v6, v1

    move-object v7, v6

    .line 4
    :goto_0
    invoke-virtual {p0}, Le/b/a/a/i;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    .line 6
    :cond_1
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/JsonUtilities;->assertIsStartObjectJsonToken(Le/b/a/a/i;)V

    .line 7
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getTablePayloadFormat()Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    move-result-object v1

    sget-object v2, Lcom/microsoft/azure/storage/table/TablePayloadFormat;->JsonNoMetadata:Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    if-ne v1, v2, :cond_2

    if-eqz p2, :cond_2

    .line 9
    invoke-static {p2}, Lcom/microsoft/azure/storage/table/PropertyPair;->generatePropertyPairs(Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v0

    :cond_2
    move-object v9, v0

    .line 10
    :goto_1
    move-object v0, p0

    check-cast v0, Le/b/a/a/o/c;

    .line 11
    iget-object v0, v0, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    if-eqz v0, :cond_7

    .line 12
    move-object v0, p0

    check-cast v0, Le/b/a/a/o/c;

    .line 13
    iget-object v0, v0, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    .line 14
    sget-object v1, Le/b/a/a/l;->FIELD_NAME:Le/b/a/a/l;

    if-ne v0, v1, :cond_6

    .line 15
    invoke-virtual {p0}, Le/b/a/a/i;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    .line 17
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/JsonUtilities;->assertIsStartArrayJsonToken(Le/b/a/a/i;)V

    .line 18
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    .line 19
    :goto_2
    move-object v0, p0

    check-cast v0, Le/b/a/a/o/c;

    .line 20
    iget-object v0, v0, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    .line 21
    sget-object v1, Le/b/a/a/l;->START_OBJECT:Le/b/a/a/l;

    if-ne v0, v1, :cond_5

    move-object v0, p0

    move-object v1, p2

    move-object v2, v9

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    .line 22
    invoke-static/range {v0 .. v5}, Lcom/microsoft/azure/storage/table/TableDeserializer;->parseJsonEntity(Le/b/a/a/i;Ljava/lang/Class;Ljava/util/HashMap;Lcom/microsoft/azure/storage/table/EntityResolver;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/TableResult;

    move-result-object v0

    if-eqz v7, :cond_3

    .line 23
    iget-object v1, v7, Lcom/microsoft/azure/storage/table/ODataPayload;->tableResults:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p3, :cond_4

    .line 24
    iget-object v1, v8, Lcom/microsoft/azure/storage/table/ODataPayload;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/table/TableResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 25
    :cond_4
    iget-object v1, v7, Lcom/microsoft/azure/storage/table/ODataPayload;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/table/TableResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/storage/table/TableEntity;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    :goto_3
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    goto :goto_2

    .line 27
    :cond_5
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/JsonUtilities;->assertIsEndArrayJsonToken(Le/b/a/a/i;)V

    .line 28
    :cond_6
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 29
    :cond_7
    invoke-virtual {p0}, Le/b/a/a/i;->close()V

    return-object v6

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Le/b/a/a/i;->close()V

    .line 30
    throw p1
.end method

.method public static parseSingleOpResponse(Ljava/io/InputStream;Lcom/microsoft/azure/storage/table/TableRequestOptions;ILjava/lang/Class;Lcom/microsoft/azure/storage/table/EntityResolver;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/TableResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/microsoft/azure/storage/table/TableEntity;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Lcom/microsoft/azure/storage/table/TableRequestOptions;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/microsoft/azure/storage/table/EntityResolver<",
            "TR;>;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Lcom/microsoft/azure/storage/table/TableResult;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->getJsonParser(Ljava/io/InputStream;)Le/b/a/a/i;

    move-result-object p0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    .line 2
    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/microsoft/azure/storage/table/TableDeserializer;->parseJsonEntity(Le/b/a/a/i;Ljava/lang/Class;Ljava/util/HashMap;Lcom/microsoft/azure/storage/table/EntityResolver;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/TableResult;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/table/TableResult;->setHttpStatusCode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Le/b/a/a/i;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Le/b/a/a/i;->close()V

    .line 5
    throw p1
.end method
