.class public Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public keyResolver:Lcom/microsoft/azure/keyvault/core/IKeyResolver;

.field public keyWrapper:Lcom/microsoft/azure/keyvault/core/IKey;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/keyvault/core/IKey;Lcom/microsoft/azure/keyvault/core/IKeyResolver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;->keyWrapper:Lcom/microsoft/azure/keyvault/core/IKey;

    .line 3
    iput-object p2, p0, Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;->keyResolver:Lcom/microsoft/azure/keyvault/core/IKeyResolver;

    return-void
.end method


# virtual methods
.method public decryptEntity(Ljava/util/HashMap;Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/security/Key;Lcom/microsoft/azure/storage/core/EncryptionData;Ljava/lang/Boolean;)Ljava/util/HashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/EntityProperty;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/security/Key;",
            "Lcom/microsoft/azure/storage/core/EncryptionData;",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/EntityProperty;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const-string v2, "UTF-8"

    const-string v3, "DecryptionError"

    .line 1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual/range {p6 .. p6}, Lcom/microsoft/azure/storage/core/EncryptionData;->getEncryptionAgent()Lcom/microsoft/azure/storage/core/EncryptionAgent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/azure/storage/core/EncryptionAgent;->getEncryptionAlgorithm()Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "AES/CBC/PKCS5Padding"

    .line 3
    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 4
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    const-string v9, "_ClientEncryptionMetadata1"

    if-eq v8, v9, :cond_3

    .line 6
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    const-string v9, "_ClientEncryptionMetadata2"

    if-ne v8, v9, :cond_0

    goto/16 :goto_3

    .line 7
    :cond_0
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    move-object v9, p2

    invoke-virtual {p2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "SHA-256"

    .line 8
    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .line 9
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 10
    :goto_2
    invoke-virtual/range {p6 .. p6}, Lcom/microsoft/azure/storage/core/EncryptionData;->getContentEncryptionIV()[B

    move-result-object v11

    invoke-virtual {v10, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-static {v11, v10}, Lcom/microsoft/azure/storage/core/Utility;->binaryAppend([B[B)[B

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v8

    const/16 v10, 0x10

    new-array v11, v10, [B

    const/4 v12, 0x0

    .line 11
    invoke-static {v8, v12, v11, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v8, 0x2

    .line 12
    new-instance v10, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v10, v11}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object/from16 v11, p5

    invoke-virtual {v5, v8, v11, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 13
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/microsoft/azure/storage/table/EntityProperty;

    invoke-virtual {v8}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsByteArray()[B

    move-result-object v8

    .line 14
    array-length v10, v8

    invoke-virtual {v5, v8, v12, v10}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v8

    .line 15
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v8, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 16
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    new-instance v8, Lcom/microsoft/azure/storage/table/EntityProperty;

    invoke-direct {v8, v10}, Lcom/microsoft/azure/storage/table/EntityProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2
    move-object/from16 v11, p5

    .line 17
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    :goto_3
    move-object v9, p2

    move-object/from16 v11, p5

    goto/16 :goto_0

    :cond_4
    return-object v4

    .line 18
    :cond_5
    new-instance v0, Lcom/microsoft/azure/storage/StorageException;

    const-string v1, "Invalid Encryption Algorithm found on the resource. This version of the client library does not support the specified encryption algorithm."

    const/4 v2, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
    :try_end_0
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 19
    new-instance v1, Lcom/microsoft/azure/storage/StorageException;

    const-string v2, "Decryption logic threw error. Please check the inner exception for more details."

    invoke-direct {v1, v3, v2, v0}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    .line 20
    throw v0
.end method

.method public decryptMetadataAndReturnCEK(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/table/EntityProperty;Lcom/microsoft/azure/storage/table/EntityProperty;Lcom/microsoft/azure/storage/core/EncryptionData;)Lcom/microsoft/azure/storage/table/CEKReturn;
    .locals 7

    const-string v0, "EncryptionLibrary"

    const-string v1, "1.0"

    .line 1
    iget-object v2, p0, Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;->keyWrapper:Lcom/microsoft/azure/keyvault/core/IKey;

    const/4 v3, 0x0

    const-string v4, "DecryptionError"

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;->keyResolver:Lcom/microsoft/azure/keyvault/core/IKeyResolver;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcom/microsoft/azure/storage/StorageException;

    const-string p2, "Key and Resolver are not initialized. Decryption requires either of them to be initialized."

    invoke-direct {p1, v4, p2, v3}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/microsoft/azure/storage/core/EncryptionData;->deserialize(Ljava/lang/String;)Lcom/microsoft/azure/storage/core/EncryptionData;

    move-result-object p3

    invoke-virtual {p5, p3}, Lcom/microsoft/azure/storage/core/EncryptionData;->copyValues(Lcom/microsoft/azure/storage/core/EncryptionData;)V

    const-string p3, "contentEncryptionIV"

    .line 4
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/core/EncryptionData;->getContentEncryptionIV()[B

    move-result-object v2

    invoke-static {p3, v2}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p3, "encryptedKey"

    .line 5
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/core/EncryptionData;->getWrappedContentKey()Lcom/microsoft/azure/storage/core/WrappedContentKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/azure/storage/core/WrappedContentKey;->getEncryptedKey()[B

    move-result-object v2

    invoke-static {p3, v2}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/core/EncryptionData;->getEncryptionAgent()Lcom/microsoft/azure/storage/core/EncryptionAgent;

    move-result-object p3

    .line 7
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/core/EncryptionAgent;->getProtocol()Ljava/lang/String;

    move-result-object p3

    .line 8
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 9
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/core/EncryptionData;->getEncryptionAgent()Lcom/microsoft/azure/storage/core/EncryptionAgent;

    move-result-object p3

    invoke-virtual {p3}, Lcom/microsoft/azure/storage/core/EncryptionAgent;->getProtocol()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    .line 10
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/core/EncryptionData;->getKeyWrappingMetadata()Ljava/util/HashMap;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 11
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/core/EncryptionData;->getKeyWrappingMetadata()Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 12
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/core/EncryptionData;->getKeyWrappingMetadata()Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string v0, "Java"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    :cond_2
    const/4 p3, 0x1

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    .line 13
    :goto_1
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 14
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;->keyResolver:Lcom/microsoft/azure/keyvault/core/IKeyResolver;

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;->keyResolver:Lcom/microsoft/azure/keyvault/core/IKeyResolver;

    invoke-virtual {p5}, Lcom/microsoft/azure/storage/core/EncryptionData;->getWrappedContentKey()Lcom/microsoft/azure/storage/core/WrappedContentKey;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lcom/microsoft/azure/storage/core/WrappedContentKey;->getKeyId()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-interface {v0, v2}, Lcom/microsoft/azure/keyvault/core/IKeyResolver;->resolveKeyAsync(Ljava/lang/String;)Le/c/b/a/a/a;

    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/keyvault/core/IKey;

    const-string v2, "keyEncryptionKey"

    .line 19
    invoke-static {v2, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/core/EncryptionData;->getWrappedContentKey()Lcom/microsoft/azure/storage/core/WrappedContentKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/azure/storage/core/WrappedContentKey;->getEncryptedKey()[B

    move-result-object v2

    .line 21
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/core/EncryptionData;->getWrappedContentKey()Lcom/microsoft/azure/storage/core/WrappedContentKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/azure/storage/core/WrappedContentKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-interface {v0, v2, v3}, Lcom/microsoft/azure/keyvault/core/IKey;->unwrapKeyAsync([BLjava/lang/String;)Le/c/b/a/a/a;

    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_2

    .line 24
    :cond_4
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/core/EncryptionData;->getWrappedContentKey()Lcom/microsoft/azure/storage/core/WrappedContentKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/core/WrappedContentKey;->getKeyId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;->keyWrapper:Lcom/microsoft/azure/keyvault/core/IKey;

    invoke-interface {v2}, Lcom/microsoft/azure/keyvault/core/IKey;->getKid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;->keyWrapper:Lcom/microsoft/azure/keyvault/core/IKey;

    .line 26
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/core/EncryptionData;->getWrappedContentKey()Lcom/microsoft/azure/storage/core/WrappedContentKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/azure/storage/core/WrappedContentKey;->getEncryptedKey()[B

    move-result-object v2

    .line 27
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/core/EncryptionData;->getWrappedContentKey()Lcom/microsoft/azure/storage/core/WrappedContentKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/azure/storage/core/WrappedContentKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-interface {v0, v2, v3}, Lcom/microsoft/azure/keyvault/core/IKey;->unwrapKeyAsync([BLjava/lang/String;)Le/c/b/a/a/a;

    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_2
    const-string v2, "AES/CBC/PKCS5Padding"

    .line 30
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const-string v3, "SHA-256"

    .line 31
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 32
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_0
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "_ClientEncryptionMetadata2"

    if-eqz v5, :cond_5

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 33
    :goto_4
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/core/EncryptionData;->getContentEncryptionIV()[B

    move-result-object p2

    const-string p5, "UTF-8"

    invoke-virtual {p1, p5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p2, p1}, Lcom/microsoft/azure/storage/core/Utility;->binaryAppend([B[B)[B

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    const/16 p2, 0x10

    new-array p5, p2, [B

    .line 34
    invoke-static {p1, v1, p5, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p1, p5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 36
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    array-length p5, v0

    const-string v3, "AES"

    invoke-direct {p2, v0, v1, p5, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    const/4 p5, 0x2

    .line 37
    invoke-virtual {v2, p5, p2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 38
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsByteArray()[B

    move-result-object p1

    .line 39
    array-length p5, p1

    invoke-virtual {v2, p1, v1, p5}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->setValue([B)V

    .line 40
    new-instance p1, Lcom/microsoft/azure/storage/table/CEKReturn;

    invoke-direct {p1}, Lcom/microsoft/azure/storage/table/CEKReturn;-><init>()V

    .line 41
    iput-object p2, p1, Lcom/microsoft/azure/storage/table/CEKReturn;->key:Ljava/security/Key;

    .line 42
    iput-object p3, p1, Lcom/microsoft/azure/storage/table/CEKReturn;->isJavaV1:Ljava/lang/Boolean;

    return-object p1

    .line 43
    :cond_6
    new-instance p1, Lcom/microsoft/azure/storage/StorageException;

    const-string p2, "Key mismatch. The key id stored on the service does not match the specified key."

    invoke-direct {p1, v4, p2, v3}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    .line 44
    :cond_7
    new-instance p1, Lcom/microsoft/azure/storage/StorageException;

    const-string p2, "Invalid Encryption Agent. This version of the client library does not understand the Encryption Agent set on the blob."

    invoke-direct {p1, v4, p2, v3}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
    :try_end_1
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 45
    new-instance p2, Lcom/microsoft/azure/storage/StorageException;

    const-string p3, "Decryption logic threw error. Please check the inner exception for more details."

    invoke-direct {p2, v4, p3, p1}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 46
    throw p1
.end method

.method public encryptEntity(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions$EncryptionResolver;)Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/EntityProperty;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/TableRequestOptions$EncryptionResolver;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/EntityProperty;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "_ClientEncryptionMetadata2"

    const-string v5, "properties"

    move-object/from16 v6, p1

    .line 1
    invoke-static {v5, v6}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v5, v1, Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;->keyWrapper:Lcom/microsoft/azure/keyvault/core/IKey;

    if-eqz v5, :cond_7

    .line 3
    new-instance v5, Lcom/microsoft/azure/storage/core/EncryptionData;

    invoke-direct {v5}, Lcom/microsoft/azure/storage/core/EncryptionData;-><init>()V

    .line 4
    invoke-virtual {v5}, Lcom/microsoft/azure/storage/core/EncryptionData;->getKeyWrappingMetadata()Ljava/util/HashMap;

    move-result-object v7

    if-nez v7, :cond_0

    .line 5
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5, v7}, Lcom/microsoft/azure/storage/core/EncryptionData;->setKeyWrappingMetadata(Ljava/util/HashMap;)V

    .line 6
    :cond_0
    invoke-virtual {v5}, Lcom/microsoft/azure/storage/core/EncryptionData;->getKeyWrappingMetadata()Ljava/util/HashMap;

    move-result-object v7

    const-string v8, "EncryptionLibrary"

    const-string v9, "Java 8.1.0"

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v7, Lcom/microsoft/azure/storage/core/EncryptionAgent;

    sget-object v8, Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;->AES_CBC_256:Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;

    const-string v9, "1.0"

    invoke-direct {v7, v9, v8}, Lcom/microsoft/azure/storage/core/EncryptionAgent;-><init>(Ljava/lang/String;Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;)V

    invoke-virtual {v5, v7}, Lcom/microsoft/azure/storage/core/EncryptionData;->setEncryptionAgent(Lcom/microsoft/azure/storage/core/EncryptionAgent;)V

    .line 8
    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 9
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    const-string v9, "AES"

    .line 10
    invoke-static {v9}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v9

    const/16 v10, 0x100

    .line 11
    invoke-virtual {v9, v10}, Ljavax/crypto/KeyGenerator;->init(I)V

    const-string v10, "AES/CBC/PKCS5Padding"

    .line 12
    invoke-static {v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v10

    .line 13
    invoke-virtual {v9}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v9

    const/4 v11, 0x1

    .line 14
    invoke-virtual {v10, v11, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 15
    iget-object v12, v1, Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;->keyWrapper:Lcom/microsoft/azure/keyvault/core/IKey;

    .line 16
    invoke-interface {v9}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Lcom/microsoft/azure/keyvault/core/IKey;->wrapKeyAsync([BLjava/lang/String;)Le/c/b/a/a/a;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lk/a/a/b/e/b;

    .line 17
    new-instance v13, Lcom/microsoft/azure/storage/core/WrappedContentKey;

    iget-object v14, v1, Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;->keyWrapper:Lcom/microsoft/azure/keyvault/core/IKey;

    invoke-interface {v14}, Lcom/microsoft/azure/keyvault/core/IKey;->getKid()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12}, Lk/a/a/b/e/b;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    .line 18
    invoke-virtual {v12}, Lk/a/a/b/e/b;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {v13, v14, v15, v12}, Lcom/microsoft/azure/storage/core/WrappedContentKey;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 19
    invoke-virtual {v5, v13}, Lcom/microsoft/azure/storage/core/EncryptionData;->setWrappedContentKey(Lcom/microsoft/azure/storage/core/WrappedContentKey;)V

    .line 20
    invoke-virtual {v10}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/microsoft/azure/storage/core/EncryptionData;->setContentEncryptionIV([B)V

    const-string v12, "SHA-256"

    .line 21
    invoke-static {v12}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v12

    .line 22
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v14, "Null properties cannot be encrypted. Please assign a default value to the property if you wish to encrypt it."

    if-eqz v3, :cond_2

    .line 23
    :try_start_1
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v3, v0, v2, v15}, Lcom/microsoft/azure/storage/table/TableRequestOptions$EncryptionResolver;->encryptionResolver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 24
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 25
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/microsoft/azure/storage/table/EntityProperty;

    invoke-virtual {v15, v11}, Lcom/microsoft/azure/storage/table/EntityProperty;->setIsEncrypted(Z)V

    goto :goto_1

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v11, "UTF-8"

    if-eqz v15, :cond_5

    :try_start_2
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/microsoft/azure/storage/table/EntityProperty;

    invoke-virtual {v15}, Lcom/microsoft/azure/storage/table/EntityProperty;->isEncrypted()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 28
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/microsoft/azure/storage/table/EntityProperty;

    invoke-virtual {v15}, Lcom/microsoft/azure/storage/table/EntityProperty;->getEdmType()Lcom/microsoft/azure/storage/table/EdmType;

    move-result-object v15

    sget-object v1, Lcom/microsoft/azure/storage/table/EdmType;->STRING:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne v15, v1, :cond_4

    .line 29
    invoke-virtual {v5}, Lcom/microsoft/azure/storage/core/EncryptionData;->getContentEncryptionIV()[B

    move-result-object v1

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 31
    invoke-static {v1, v3}, Lcom/microsoft/azure/storage/core/Utility;->binaryAppend([B[B)[B

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    const/16 v3, 0x10

    new-array v15, v3, [B

    move-object/from16 v16, v6

    const/4 v6, 0x0

    .line 32
    invoke-static {v1, v6, v15, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v15}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x1

    invoke-virtual {v10, v3, v9, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 34
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 35
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/azure/storage/table/EntityProperty;

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 36
    array-length v3, v1

    const/4 v6, 0x0

    invoke-virtual {v10, v1, v6, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v1

    .line 37
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    new-instance v6, Lcom/microsoft/azure/storage/table/EntityProperty;

    invoke-direct {v6, v1}, Lcom/microsoft/azure/storage/table/EntityProperty;-><init>([B)V

    invoke-virtual {v7, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 39
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported type : %s encountered during encryption. Only string properties can be encrypted on the client side."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 41
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/azure/storage/table/EntityProperty;

    invoke-virtual {v3}, Lcom/microsoft/azure/storage/table/EntityProperty;->getEdmType()Lcom/microsoft/azure/storage/table/EdmType;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 42
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object/from16 v16, v6

    .line 43
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :goto_2
    invoke-virtual {v5}, Lcom/microsoft/azure/storage/core/EncryptionData;->getContentEncryptionIV()[B

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-virtual {v3, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 46
    invoke-static {v1, v3}, Lcom/microsoft/azure/storage/core/Utility;->binaryAppend([B[B)[B

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    const/16 v3, 0x10

    new-array v6, v3, [B

    const/4 v13, 0x0

    .line 47
    invoke-static {v1, v13, v6, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x1

    invoke-virtual {v10, v3, v9, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 49
    invoke-virtual {v8}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 50
    array-length v6, v1

    const/4 v11, 0x0

    invoke-virtual {v10, v1, v11, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v1

    .line 51
    new-instance v6, Lcom/microsoft/azure/storage/table/EntityProperty;

    invoke-direct {v6, v1}, Lcom/microsoft/azure/storage/table/EntityProperty;-><init>([B)V

    invoke-virtual {v7, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    move-object/from16 v6, v16

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_6
    const-string v0, "_ClientEncryptionMetadata1"

    .line 52
    new-instance v1, Lcom/microsoft/azure/storage/table/EntityProperty;

    .line 53
    invoke-virtual {v5}, Lcom/microsoft/azure/storage/core/EncryptionData;->serialize()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/microsoft/azure/storage/table/EntityProperty;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v7

    :catch_0
    move-exception v0

    .line 55
    invoke-static {v0}, Lcom/microsoft/azure/storage/StorageException;->translateClientException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object v0

    throw v0

    .line 56
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key is not initialized. Encryption requires it to be initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKey()Lcom/microsoft/azure/keyvault/core/IKey;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;->keyWrapper:Lcom/microsoft/azure/keyvault/core/IKey;

    return-object v0
.end method

.method public getKeyResolver()Lcom/microsoft/azure/keyvault/core/IKeyResolver;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;->keyResolver:Lcom/microsoft/azure/keyvault/core/IKeyResolver;

    return-object v0
.end method

.method public setKey(Lcom/microsoft/azure/keyvault/core/IKey;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;->keyWrapper:Lcom/microsoft/azure/keyvault/core/IKey;

    return-void
.end method

.method public setKeyResolver(Lcom/microsoft/azure/keyvault/core/IKeyResolver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;->keyResolver:Lcom/microsoft/azure/keyvault/core/IKeyResolver;

    return-void
.end method
