.class public final Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;
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
    iput-object p1, p0, Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;->keyWrapper:Lcom/microsoft/azure/keyvault/core/IKey;

    .line 3
    iput-object p2, p0, Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;->keyResolver:Lcom/microsoft/azure/keyvault/core/IKeyResolver;

    return-void
.end method


# virtual methods
.method public decryptMessage(Ljava/lang/String;Ljava/lang/Boolean;)[B
    .locals 7

    const-string v0, "DecryptionError"

    const-string v1, "inputMessage"

    .line 1
    invoke-static {v1, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/microsoft/azure/storage/queue/CloudQueueEncryptedMessage;->deserialize(Ljava/lang/String;)Lcom/microsoft/azure/storage/queue/CloudQueueEncryptedMessage;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/queue/CloudQueueEncryptedMessage;->getEncryptionData()Lcom/microsoft/azure/storage/core/EncryptionData;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/microsoft/azure/storage/StorageException;

    const-string p2, "Encryption data does not exist. If you do not want to decrypt the data, please do not set the require encryption flag on request options"

    invoke-direct {p1, v0, p2, v1}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/queue/CloudQueueEncryptedMessage;->getEncryptionData()Lcom/microsoft/azure/storage/core/EncryptionData;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/queue/CloudQueueEncryptedMessage;->getEncryptionData()Lcom/microsoft/azure/storage/core/EncryptionData;

    move-result-object p2

    const-string v2, "contentEncryptionIV"

    .line 7
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/EncryptionData;->getContentEncryptionIV()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "encryptedKey"

    .line 8
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/EncryptionData;->getWrappedContentKey()Lcom/microsoft/azure/storage/core/WrappedContentKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/azure/storage/core/WrappedContentKey;->getEncryptedKey()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "1.0"

    .line 9
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/EncryptionData;->getEncryptionAgent()Lcom/microsoft/azure/storage/core/EncryptionAgent;

    move-result-object v3

    .line 10
    invoke-virtual {v3}, Lcom/microsoft/azure/storage/core/EncryptionAgent;->getProtocol()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 12
    iget-object v2, p0, Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;->keyWrapper:Lcom/microsoft/azure/keyvault/core/IKey;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;->keyResolver:Lcom/microsoft/azure/keyvault/core/IKeyResolver;

    if-eqz v2, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    new-instance p1, Lcom/microsoft/azure/storage/StorageException;

    const-string p2, "Key and Resolver are not initialized. Decryption requires either of them to be initialized."

    invoke-direct {p1, v0, p2, v1}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    .line 14
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;->keyResolver:Lcom/microsoft/azure/keyvault/core/IKeyResolver;

    if-eqz v2, :cond_4

    .line 15
    iget-object v2, p0, Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;->keyResolver:Lcom/microsoft/azure/keyvault/core/IKeyResolver;

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/EncryptionData;->getWrappedContentKey()Lcom/microsoft/azure/storage/core/WrappedContentKey;

    move-result-object v3

    .line 16
    invoke-virtual {v3}, Lcom/microsoft/azure/storage/core/WrappedContentKey;->getKeyId()Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-interface {v2, v3}, Lcom/microsoft/azure/keyvault/core/IKeyResolver;->resolveKeyAsync(Ljava/lang/String;)Le/c/b/a/a/a;

    move-result-object v2

    .line 18
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/azure/keyvault/core/IKey;

    const-string v3, "keyEncryptionKey"

    .line 19
    invoke-static {v3, v2}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/EncryptionData;->getWrappedContentKey()Lcom/microsoft/azure/storage/core/WrappedContentKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/azure/storage/core/WrappedContentKey;->getEncryptedKey()[B

    move-result-object v3

    .line 21
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/EncryptionData;->getWrappedContentKey()Lcom/microsoft/azure/storage/core/WrappedContentKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/azure/storage/core/WrappedContentKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    .line 22
    invoke-interface {v2, v3, v4}, Lcom/microsoft/azure/keyvault/core/IKey;->unwrapKeyAsync([BLjava/lang/String;)Le/c/b/a/a/a;

    move-result-object v2

    .line 23
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    goto :goto_2

    .line 24
    :cond_4
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/EncryptionData;->getWrappedContentKey()Lcom/microsoft/azure/storage/core/WrappedContentKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/azure/storage/core/WrappedContentKey;->getKeyId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;->keyWrapper:Lcom/microsoft/azure/keyvault/core/IKey;

    invoke-interface {v3}, Lcom/microsoft/azure/keyvault/core/IKey;->getKid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 25
    iget-object v2, p0, Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;->keyWrapper:Lcom/microsoft/azure/keyvault/core/IKey;

    .line 26
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/EncryptionData;->getWrappedContentKey()Lcom/microsoft/azure/storage/core/WrappedContentKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/azure/storage/core/WrappedContentKey;->getEncryptedKey()[B

    move-result-object v3

    .line 27
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/EncryptionData;->getWrappedContentKey()Lcom/microsoft/azure/storage/core/WrappedContentKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/azure/storage/core/WrappedContentKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-interface {v2, v3, v4}, Lcom/microsoft/azure/keyvault/core/IKey;->unwrapKeyAsync([BLjava/lang/String;)Le/c/b/a/a/a;

    move-result-object v2

    .line 29
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 30
    :goto_2
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/EncryptionData;->getEncryptionAgent()Lcom/microsoft/azure/storage/core/EncryptionAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/azure/storage/core/EncryptionAgent;->getEncryptionAlgorithm()Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-nez v3, :cond_5

    const-string v1, "AES/CBC/PKCS5Padding"

    .line 31
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 32
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/EncryptionData;->getContentEncryptionIV()[B

    move-result-object p2

    invoke-direct {v3, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 33
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    array-length v4, v2

    const-string v5, "AES"

    const/4 v6, 0x0

    invoke-direct {p2, v2, v6, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    const/4 v2, 0x2

    .line 34
    invoke-virtual {v1, v2, p2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 35
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/queue/CloudQueueEncryptedMessage;->getEncryptedMessageContents()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 36
    array-length p2, p1

    invoke-virtual {v1, p1, v6, p2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1

    .line 37
    :cond_5
    new-instance p1, Lcom/microsoft/azure/storage/StorageException;

    const-string p2, "Invalid Encryption Algorithm found on the resource. This version of the client library does not support the specified encryption algorithm."

    invoke-direct {p1, v0, p2, v1}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    .line 38
    :cond_6
    new-instance p1, Lcom/microsoft/azure/storage/StorageException;

    const-string p2, "Key mismatch. The key id stored on the service does not match the specified key."

    invoke-direct {p1, v0, p2, v1}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    .line 39
    :cond_7
    new-instance p1, Lcom/microsoft/azure/storage/StorageException;

    const-string p2, "Invalid Encryption Agent. This version of the client library does not understand the Encryption Agent set on the blob."

    invoke-direct {p1, v0, p2, v1}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    .line 40
    :cond_8
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/queue/CloudQueueEncryptedMessage;->getEncryptedMessageContents()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 41
    new-instance p2, Lcom/microsoft/azure/storage/StorageException;

    const-string v1, "Decryption logic threw error. Please check the inner exception for more details."

    invoke-direct {p2, v0, v1, p1}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 42
    throw p1
.end method

.method public encryptMessage([B)Ljava/lang/String;
    .locals 7

    const-string v0, "inputMessage"

    .line 1
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;->keyWrapper:Lcom/microsoft/azure/keyvault/core/IKey;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/queue/CloudQueueEncryptedMessage;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/queue/CloudQueueEncryptedMessage;-><init>()V

    .line 4
    new-instance v1, Lcom/microsoft/azure/storage/core/EncryptionData;

    invoke-direct {v1}, Lcom/microsoft/azure/storage/core/EncryptionData;-><init>()V

    .line 5
    invoke-virtual {v1}, Lcom/microsoft/azure/storage/core/EncryptionData;->getKeyWrappingMetadata()Ljava/util/HashMap;

    move-result-object v2

    if-nez v2, :cond_0

    .line 6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2}, Lcom/microsoft/azure/storage/core/EncryptionData;->setKeyWrappingMetadata(Ljava/util/HashMap;)V

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/microsoft/azure/storage/core/EncryptionData;->getKeyWrappingMetadata()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "EncryptionLibrary"

    const-string v4, "Java 8.1.0"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v2, Lcom/microsoft/azure/storage/core/EncryptionAgent;

    sget-object v3, Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;->AES_CBC_256:Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;

    const-string v4, "1.0"

    invoke-direct {v2, v4, v3}, Lcom/microsoft/azure/storage/core/EncryptionAgent;-><init>(Ljava/lang/String;Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;)V

    invoke-virtual {v1, v2}, Lcom/microsoft/azure/storage/core/EncryptionData;->setEncryptionAgent(Lcom/microsoft/azure/storage/core/EncryptionAgent;)V

    :try_start_0
    const-string v2, "AES"

    .line 9
    invoke-static {v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    const/16 v3, 0x100

    .line 10
    invoke-virtual {v2, v3}, Ljavax/crypto/KeyGenerator;->init(I)V

    const-string v3, "AES/CBC/PKCS5Padding"

    .line 11
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 12
    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    const/4 v4, 0x1

    .line 13
    invoke-virtual {v3, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 14
    iget-object v4, p0, Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;->keyWrapper:Lcom/microsoft/azure/keyvault/core/IKey;

    .line 15
    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    const/4 v5, 0x0

    invoke-interface {v4, v2, v5}, Lcom/microsoft/azure/keyvault/core/IKey;->wrapKeyAsync([BLjava/lang/String;)Le/c/b/a/a/a;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/a/a/b/e/b;

    .line 16
    new-instance v4, Lcom/microsoft/azure/storage/core/WrappedContentKey;

    iget-object v5, p0, Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;->keyWrapper:Lcom/microsoft/azure/keyvault/core/IKey;

    invoke-interface {v5}, Lcom/microsoft/azure/keyvault/core/IKey;->getKid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lk/a/a/b/e/b;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 17
    invoke-virtual {v2}, Lk/a/a/b/e/b;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v5, v6, v2}, Lcom/microsoft/azure/storage/core/WrappedContentKey;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 18
    invoke-virtual {v1, v4}, Lcom/microsoft/azure/storage/core/EncryptionData;->setWrappedContentKey(Lcom/microsoft/azure/storage/core/WrappedContentKey;)V

    .line 19
    new-instance v2, Ljava/lang/String;

    const/4 v4, 0x0

    array-length v5, p1

    .line 20
    invoke-virtual {v3, p1, v4, v5}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Base64;->encode([B)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, v2}, Lcom/microsoft/azure/storage/queue/CloudQueueEncryptedMessage;->setEncryptedMessageContents(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/microsoft/azure/storage/core/EncryptionData;->setContentEncryptionIV([B)V

    .line 23
    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/queue/CloudQueueEncryptedMessage;->setEncryptionData(Lcom/microsoft/azure/storage/core/EncryptionData;)V

    .line 24
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/queue/CloudQueueEncryptedMessage;->serialize()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 25
    invoke-static {p1}, Lcom/microsoft/azure/storage/StorageException;->translateClientException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object p1

    throw p1

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Key is not initialized. Encryption requires it to be initialized."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getKey()Lcom/microsoft/azure/keyvault/core/IKey;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;->keyWrapper:Lcom/microsoft/azure/keyvault/core/IKey;

    return-object v0
.end method

.method public getKeyResolver()Lcom/microsoft/azure/keyvault/core/IKeyResolver;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;->keyResolver:Lcom/microsoft/azure/keyvault/core/IKeyResolver;

    return-object v0
.end method

.method public setKey(Lcom/microsoft/azure/keyvault/core/IKey;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;->keyWrapper:Lcom/microsoft/azure/keyvault/core/IKey;

    return-void
.end method

.method public setKeyResolver(Lcom/microsoft/azure/keyvault/core/IKeyResolver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;->keyResolver:Lcom/microsoft/azure/keyvault/core/IKeyResolver;

    return-void
.end method
