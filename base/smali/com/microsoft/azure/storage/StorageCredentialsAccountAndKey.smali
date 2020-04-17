.class public final Lcom/microsoft/azure/storage/StorageCredentialsAccountAndKey;
.super Lcom/microsoft/azure/storage/StorageCredentials;
.source "SourceFile"


# instance fields
.field public accountName:Ljava/lang/String;

.field public hmacSha256:Ljavax/crypto/Mac;

.field public key:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-static {p2}, Lcom/microsoft/azure/storage/core/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/StorageCredentialsAccountAndKey;-><init>(Ljava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/storage/StorageCredentials;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 3
    array-length v0, p2

    if-eqz v0, :cond_0

    .line 4
    iput-object p1, p0, Lcom/microsoft/azure/storage/StorageCredentialsAccountAndKey;->accountName:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/microsoft/azure/storage/StorageCredentialsAccountAndKey;->key:[B

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Storage Key is not a valid base64 encoded string."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid account name."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public exportBase64EncodedKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/StorageCredentialsAccountAndKey;->key:[B

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public exportKey()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/StorageCredentialsAccountAndKey;->key:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/StorageCredentialsAccountAndKey;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getHmac256()Ljavax/crypto/Mac;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/StorageCredentialsAccountAndKey;->hmacSha256:Ljavax/crypto/Mac;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "HmacSHA256"

    .line 2
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/StorageCredentialsAccountAndKey;->hmacSha256:Ljavax/crypto/Mac;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/microsoft/azure/storage/StorageCredentialsAccountAndKey;->key:[B

    const-string v3, "HmacSHA256"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    goto :goto_0

    .line 4
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 5
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/StorageCredentialsAccountAndKey;->hmacSha256:Ljavax/crypto/Mac;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/StorageCredentialsAccountAndKey;->accountName:Ljava/lang/String;

    return-void
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "AccountName"

    aput-object v2, v0, v1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/StorageCredentialsAccountAndKey;->getAccountName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "AccountKey"

    aput-object v2, v0, v1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/StorageCredentialsAccountAndKey;->exportBase64EncodedKey()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "[key hidden]"

    :goto_0
    const/4 v1, 0x3

    aput-object p1, v0, v1

    const-string p1, "%s=%s;%s=%s"

    .line 3
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public transformUri(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;
    .locals 0

    return-object p1
.end method

.method public transformUri(Ljava/net/URI;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/URI;
    .locals 0

    return-object p1
.end method

.method public declared-synchronized updateKey(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/StorageCredentialsAccountAndKey;->updateKey([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateKey([B)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 4
    iput-object p1, p0, Lcom/microsoft/azure/storage/StorageCredentialsAccountAndKey;->key:[B

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/microsoft/azure/storage/StorageCredentialsAccountAndKey;->hmacSha256:Ljavax/crypto/Mac;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Storage Key is not a valid base64 encoded string."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
