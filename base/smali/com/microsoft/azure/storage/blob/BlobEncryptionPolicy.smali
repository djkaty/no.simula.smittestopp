.class public final Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;
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
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;->keyWrapper:Lcom/microsoft/azure/keyvault/core/IKey;

    .line 3
    iput-object p2, p0, Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;->keyResolver:Lcom/microsoft/azure/keyvault/core/IKeyResolver;

    return-void
.end method

.method public static wrapUserStreamWithDecryptStream(Lcom/microsoft/azure/storage/blob/CloudBlob;Ljava/io/OutputStream;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Ljava/util/Map;JZLjava/lang/Long;Ljava/lang/Long;IZ)Ljava/io/OutputStream;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/blob/CloudBlob;",
            "Ljava/io/OutputStream;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JZ",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "IZ)",
            "Ljava/io/OutputStream;"
        }
    .end annotation

    const-string v0, "encryptiondata"

    move-object v3, p3

    .line 1
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->requireEncryption()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->requireEncryption()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/microsoft/azure/storage/StorageException;

    const/4 v1, 0x0

    const-string v2, "DecryptionError"

    const-string v3, "Encryption data does not exist. If you do not want to decrypt the data, please do not set the require encryption flag on request options"

    invoke-direct {v0, v2, v3, v1}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p6, :cond_3

    .line 4
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;

    move-result-object v2

    .line 5
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->requireEncryption()Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getProperties()Lcom/microsoft/azure/storage/blob/BlobProperties;

    move-result-object v6

    invoke-virtual {v6}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v6

    sget-object v7, Lcom/microsoft/azure/storage/blob/BlobType;->PAGE_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    if-ne v6, v7, :cond_2

    const/4 v0, 0x1

    :cond_2
    move-object p4, v2

    move-object p5, p1

    move-object/from16 p6, p3

    move-object/from16 p7, v4

    move-object/from16 p8, v5

    move/from16 p9, v0

    .line 6
    invoke-virtual/range {p4 .. p9}, Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;->decryptBlob(Ljava/io/OutputStream;Ljava/util/Map;Ljava/lang/Boolean;[BZ)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getProperties()Lcom/microsoft/azure/storage/blob/BlobProperties;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v2

    sget-object v4, Lcom/microsoft/azure/storage/blob/BlobType;->PAGE_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    if-eq v2, v4, :cond_5

    if-eqz p7, :cond_4

    .line 8
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x10

    sub-long v6, p4, v6

    cmp-long v2, v4, v6

    if-gez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v7, 0x1

    .line 9
    :goto_2
    new-instance v0, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;

    .line 10
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;

    move-result-object v8

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->requireEncryption()Ljava/lang/Boolean;

    move-result-object v9

    move-object v1, v0

    move-object v2, p1

    move-object v3, p3

    move-object/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p10

    invoke-direct/range {v1 .. v9}, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;-><init>(Ljava/io/OutputStream;Ljava/util/Map;Ljava/lang/Long;IZZLcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;Ljava/lang/Boolean;)V

    return-object v0
.end method


# virtual methods
.method public createAndSetEncryptionContext(Ljava/util/Map;Z)Ljavax/crypto/Cipher;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljavax/crypto/Cipher;"
        }
    .end annotation

    const-string v0, "metadata"

    .line 1
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;->keyWrapper:Lcom/microsoft/azure/keyvault/core/IKey;

    if-eqz v0, :cond_2

    :try_start_0
    const-string v0, "AES"

    .line 3
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const/16 v1, 0x100

    .line 4
    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    if-eqz p2, :cond_0

    const-string p2, "AES/CBC/NoPadding"

    .line 5
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, "AES/CBC/PKCS5Padding"

    .line 6
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    .line 7
    :goto_0
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    const/4 v1, 0x1

    .line 8
    invoke-virtual {p2, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 9
    new-instance v1, Lcom/microsoft/azure/storage/blob/BlobEncryptionData;

    invoke-direct {v1}, Lcom/microsoft/azure/storage/blob/BlobEncryptionData;-><init>()V

    .line 10
    invoke-virtual {v1}, Lcom/microsoft/azure/storage/core/EncryptionData;->getKeyWrappingMetadata()Ljava/util/HashMap;

    move-result-object v2

    if-nez v2, :cond_1

    .line 11
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2}, Lcom/microsoft/azure/storage/core/EncryptionData;->setKeyWrappingMetadata(Ljava/util/HashMap;)V

    .line 12
    :cond_1
    invoke-virtual {v1}, Lcom/microsoft/azure/storage/core/EncryptionData;->getKeyWrappingMetadata()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "EncryptionLibrary"

    const-string v4, "Java 8.1.0"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v2, Lcom/microsoft/azure/storage/core/EncryptionAgent;

    const-string v3, "1.0"

    sget-object v4, Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;->AES_CBC_256:Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;

    invoke-direct {v2, v3, v4}, Lcom/microsoft/azure/storage/core/EncryptionAgent;-><init>(Ljava/lang/String;Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;)V

    invoke-virtual {v1, v2}, Lcom/microsoft/azure/storage/core/EncryptionData;->setEncryptionAgent(Lcom/microsoft/azure/storage/core/EncryptionAgent;)V

    .line 14
    iget-object v2, p0, Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;->keyWrapper:Lcom/microsoft/azure/keyvault/core/IKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/microsoft/azure/keyvault/core/IKey;->wrapKeyAsync([BLjava/lang/String;)Le/c/b/a/a/a;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/a/a/b/e/b;

    .line 15
    new-instance v2, Lcom/microsoft/azure/storage/core/WrappedContentKey;

    iget-object v3, p0, Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;->keyWrapper:Lcom/microsoft/azure/keyvault/core/IKey;

    invoke-interface {v3}, Lcom/microsoft/azure/keyvault/core/IKey;->getKid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lk/a/a/b/e/b;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 16
    invoke-virtual {v0}, Lk/a/a/b/e/b;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/microsoft/azure/storage/core/WrappedContentKey;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 17
    invoke-virtual {v1, v2}, Lcom/microsoft/azure/storage/core/EncryptionData;->setWrappedContentKey(Lcom/microsoft/azure/storage/core/WrappedContentKey;)V

    .line 18
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/azure/storage/core/EncryptionData;->setContentEncryptionIV([B)V

    const-string v0, "encryptiondata"

    .line 19
    invoke-virtual {v1}, Lcom/microsoft/azure/storage/blob/BlobEncryptionData;->serialize()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 20
    invoke-static {p1}, Lcom/microsoft/azure/storage/StorageException;->translateClientException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object p1

    throw p1

    .line 21
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Key is not initialized. Encryption requires it to be initialized."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public decryptBlob(Ljava/io/OutputStream;Ljava/util/Map;Ljava/lang/Boolean;[BZ)Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "[BZ)",
            "Ljava/io/OutputStream;"
        }
    .end annotation

    const-string p3, "DecryptionError"

    const-string v0, "metadata"

    .line 1
    invoke-static {v0, p2}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "encryptiondata"

    .line 2
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_8

    .line 3
    :try_start_0
    invoke-static {p2}, Lcom/microsoft/azure/storage/blob/BlobEncryptionData;->deserialize(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/BlobEncryptionData;

    move-result-object p2

    const-string v0, "encryptionData"

    .line 4
    invoke-static {v0, p2}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "contentEncryptionIV"

    .line 5
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/EncryptionData;->getContentEncryptionIV()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "encryptedKey"

    .line 6
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/EncryptionData;->getWrappedContentKey()Lcom/microsoft/azure/storage/core/WrappedContentKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/core/WrappedContentKey;->getEncryptedKey()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "1.0"

    .line 7
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/EncryptionData;->getEncryptionAgent()Lcom/microsoft/azure/storage/core/EncryptionAgent;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/microsoft/azure/storage/core/EncryptionAgent;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 10
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;->keyWrapper:Lcom/microsoft/azure/keyvault/core/IKey;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;->keyResolver:Lcom/microsoft/azure/keyvault/core/IKeyResolver;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Lcom/microsoft/azure/storage/StorageException;

    const-string p2, "Key and Resolver are not initialized. Decryption requires either of them to be initialized."

    invoke-direct {p1, p3, p2, v1}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;->keyResolver:Lcom/microsoft/azure/keyvault/core/IKeyResolver;

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;->keyResolver:Lcom/microsoft/azure/keyvault/core/IKeyResolver;

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/EncryptionData;->getWrappedContentKey()Lcom/microsoft/azure/storage/core/WrappedContentKey;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/microsoft/azure/storage/core/WrappedContentKey;->getKeyId()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-interface {v0, v2}, Lcom/microsoft/azure/keyvault/core/IKeyResolver;->resolveKeyAsync(Ljava/lang/String;)Le/c/b/a/a/a;

    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/keyvault/core/IKey;

    const-string v2, "keyEncryptionKey"

    .line 17
    invoke-static {v2, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/EncryptionData;->getWrappedContentKey()Lcom/microsoft/azure/storage/core/WrappedContentKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/azure/storage/core/WrappedContentKey;->getEncryptedKey()[B

    move-result-object v2

    .line 19
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/EncryptionData;->getWrappedContentKey()Lcom/microsoft/azure/storage/core/WrappedContentKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/azure/storage/core/WrappedContentKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-interface {v0, v2, v3}, Lcom/microsoft/azure/keyvault/core/IKey;->unwrapKeyAsync([BLjava/lang/String;)Le/c/b/a/a/a;

    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_1

    .line 22
    :cond_2
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/EncryptionData;->getWrappedContentKey()Lcom/microsoft/azure/storage/core/WrappedContentKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/core/WrappedContentKey;->getKeyId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;->keyWrapper:Lcom/microsoft/azure/keyvault/core/IKey;

    invoke-interface {v2}, Lcom/microsoft/azure/keyvault/core/IKey;->getKid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;->keyWrapper:Lcom/microsoft/azure/keyvault/core/IKey;

    .line 24
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/EncryptionData;->getWrappedContentKey()Lcom/microsoft/azure/storage/core/WrappedContentKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/azure/storage/core/WrappedContentKey;->getEncryptedKey()[B

    move-result-object v2

    .line 25
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/EncryptionData;->getWrappedContentKey()Lcom/microsoft/azure/storage/core/WrappedContentKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/azure/storage/core/WrappedContentKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-interface {v0, v2, v3}, Lcom/microsoft/azure/keyvault/core/IKey;->unwrapKeyAsync([BLjava/lang/String;)Le/c/b/a/a/a;

    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 28
    :goto_1
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/EncryptionData;->getEncryptionAgent()Lcom/microsoft/azure/storage/core/EncryptionAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/azure/storage/core/EncryptionAgent;->getEncryptionAlgorithm()Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-nez v2, :cond_5

    if-eqz p5, :cond_3

    const-string p5, "AES/CBC/NoPadding"

    .line 29
    invoke-static {p5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p5

    goto :goto_2

    :cond_3
    const-string p5, "AES/CBC/PKCS5Padding"

    .line 30
    invoke-static {p5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p5

    .line 31
    :goto_2
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz p4, :cond_4

    goto :goto_3

    .line 32
    :cond_4
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/EncryptionData;->getContentEncryptionIV()[B

    move-result-object p4

    :goto_3
    invoke-direct {v1, p4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 33
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    const/4 p4, 0x0

    array-length v2, v0

    const-string v3, "AES"

    invoke-direct {p2, v0, p4, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    const/4 p4, 0x2

    .line 34
    invoke-virtual {p5, p4, p2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 35
    new-instance p2, Ljavax/crypto/CipherOutputStream;

    invoke-direct {p2, p1, p5}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object p2

    .line 36
    :cond_5
    new-instance p1, Lcom/microsoft/azure/storage/StorageException;

    const-string p2, "Invalid Encryption Algorithm found on the resource. This version of the client library does not support the specified encryption algorithm."

    invoke-direct {p1, p3, p2, v1}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    .line 37
    :cond_6
    new-instance p1, Lcom/microsoft/azure/storage/StorageException;

    const-string p2, "Key mismatch. The key id stored on the service does not match the specified key."

    invoke-direct {p1, p3, p2, v1}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    .line 38
    :cond_7
    new-instance p1, Lcom/microsoft/azure/storage/StorageException;

    const-string p2, "Invalid Encryption Agent. This version of the client library does not understand the Encryption Agent set on the blob."

    invoke-direct {p1, p3, p2, v1}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
    :try_end_0
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 39
    new-instance p2, Lcom/microsoft/azure/storage/StorageException;

    const-string p4, "Decryption logic threw error. Please check the inner exception for more details."

    invoke-direct {p2, p3, p4, p1}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 40
    throw p1

    :cond_8
    return-object p1
.end method

.method public getKey()Lcom/microsoft/azure/keyvault/core/IKey;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;->keyWrapper:Lcom/microsoft/azure/keyvault/core/IKey;

    return-object v0
.end method

.method public getKeyResolver()Lcom/microsoft/azure/keyvault/core/IKeyResolver;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;->keyResolver:Lcom/microsoft/azure/keyvault/core/IKeyResolver;

    return-object v0
.end method

.method public setKey(Lcom/microsoft/azure/keyvault/core/IKey;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;->keyWrapper:Lcom/microsoft/azure/keyvault/core/IKey;

    return-void
.end method

.method public setKeyResolver(Lcom/microsoft/azure/keyvault/core/IKeyResolver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;->keyResolver:Lcom/microsoft/azure/keyvault/core/IKeyResolver;

    return-void
.end method
