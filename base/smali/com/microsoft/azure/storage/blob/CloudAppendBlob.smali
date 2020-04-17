.class public final Lcom/microsoft/azure/storage/blob/CloudAppendBlob;
.super Lcom/microsoft/azure/storage/blob/CloudBlob;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/StorageUri;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0, p2}, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;-><init>(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 1

    .line 7
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->APPEND_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlob;-><init>(Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/blob/CloudAppendBlob;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlob;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;)V
    .locals 1

    .line 8
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->APPEND_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlob;-><init>(Lcom/microsoft/azure/storage/blob/BlobType;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/StorageUri;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;-><init>(Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/microsoft/azure/storage/StorageUri;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p2}, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/lang/String;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 1

    .line 5
    new-instance v0, Lcom/microsoft/azure/storage/StorageUri;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;-><init>(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/azure/storage/blob/CloudAppendBlob;Ljava/net/HttpURLConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;->updateCommittedBlockCountFromResponse(Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method private appendBlockImpl(Ljava/lang/String;Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "J",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudAppendBlob;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v11, Lcom/microsoft/azure/storage/blob/CloudAppendBlob$2;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p6

    move-object v4, p2

    move-wide v5, p3

    move-object/from16 v7, p7

    move-object/from16 v8, p6

    move-object/from16 v9, p5

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/microsoft/azure/storage/blob/CloudAppendBlob$2;-><init>(Lcom/microsoft/azure/storage/blob/CloudAppendBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Ljava/io/InputStream;JLcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;)V

    return-object v11
.end method

.method private createImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudBlob;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/blob/CloudAppendBlob$1;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudAppendBlob$1;-><init>(Lcom/microsoft/azure/storage/blob/CloudAppendBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V

    return-object v6
.end method

.method private openOutputStreamInternal(ZLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/BlobOutputStream;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->assertNoWriteOperationForSnapshot()V

    if-nez p4, :cond_0

    .line 2
    new-instance p4, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p4}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    :cond_0
    move-object v4, p4

    .line 3
    sget-object p4, Lcom/microsoft/azure/storage/blob/BlobType;->APPEND_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    const/4 v1, 0x0

    invoke-static {p3, p4, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Z)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->assertPolicyIfRequired()V

    const/4 p3, 0x0

    .line 5
    invoke-virtual {v3}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 6
    invoke-virtual {v3}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;

    move-result-object p3

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getMetadata()Ljava/util/HashMap;

    move-result-object p4

    invoke-virtual {p3, p4, v1}, Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;->createAndSetEncryptionContext(Ljava/util/Map;Z)Ljavax/crypto/Cipher;

    move-result-object p3

    :cond_1
    move-object v5, p3

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0, p2, v3, v4}, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;->createOrReplace(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v3}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getStoreBlobContentMD5()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_6

    .line 9
    invoke-virtual {v3}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;

    move-result-object p1

    if-nez p1, :cond_5

    .line 10
    invoke-virtual {p0, p2, v3, v4}, Lcom/microsoft/azure/storage/blob/CloudBlob;->downloadAttributes(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    .line 11
    :goto_0
    new-instance v2, Lcom/microsoft/azure/storage/AccessCondition;

    invoke-direct {v2}, Lcom/microsoft/azure/storage/AccessCondition;-><init>()V

    if-eqz p2, :cond_3

    .line 12
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/AccessCondition;->getLeaseID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/microsoft/azure/storage/AccessCondition;->setLeaseID(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/AccessCondition;->getIfAppendPositionEqual()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/microsoft/azure/storage/AccessCondition;->setIfAppendPositionEqual(Ljava/lang/Long;)V

    .line 14
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/AccessCondition;->getIfMaxSizeLessThanOrEqual()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/microsoft/azure/storage/AccessCondition;->setIfMaxSizeLessThanOrEqual(Ljava/lang/Long;)V

    .line 15
    :cond_3
    invoke-virtual {v3}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 16
    new-instance p1, Lcom/microsoft/azure/storage/blob/BlobEncryptStream;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/BlobEncryptStream;-><init>(Lcom/microsoft/azure/storage/blob/CloudAppendBlob;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Ljavax/crypto/Cipher;)V

    return-object p1

    .line 17
    :cond_4
    new-instance p1, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;

    invoke-direct {p1, p0, v2, v3, v4}, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;-><init>(Lcom/microsoft/azure/storage/blob/CloudAppendBlob;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-object p1

    .line 18
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Encryption is not supported for a blob that already exists. Please do not specify an encryption policy."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MD5 cannot be calculated for an existing append blob because it would require reading the existing data. Please disable StoreFileContentMD5."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private updateCommittedBlockCountFromResponse(Ljava/net/HttpURLConnection;)V
    .locals 1

    const-string v0, "x-ms-blob-committed-block-count"

    .line 1
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getProperties()Lcom/microsoft/azure/storage/blob/BlobProperties;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setAppendBlobCommittedBlockCount(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public append(Ljava/io/InputStream;J)V
    .locals 7
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;->append(Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public append(Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->assertNoWriteOperationForSnapshot()V

    if-nez p6, :cond_0

    .line 3
    new-instance p6, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p6}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 4
    :cond_0
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->APPEND_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p5, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p5

    .line 5
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x10000000

    .line 6
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 7
    :cond_1
    invoke-virtual {p0, p4, p5, p6}, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;->openWriteExisting(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/BlobOutputStream;

    move-result-object p4

    .line 8
    :try_start_0
    invoke-virtual {p4, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/BlobOutputStream;->write(Ljava/io/InputStream;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/blob/BlobOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p4}, Lcom/microsoft/azure/storage/blob/BlobOutputStream;->close()V

    .line 10
    throw p1
.end method

.method public appendBlock(Ljava/io/InputStream;J)Ljava/lang/Long;
    .locals 7
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;->appendBlock(Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public appendBlock(Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Long;
    .locals 9
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-ltz v2, :cond_6

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->assertNoWriteOperationForSnapshot()V

    if-nez p6, :cond_0

    .line 3
    new-instance p6, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p6}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 4
    :cond_0
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->APPEND_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p5, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p5

    .line 5
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->assertNoEncryptionPolicyOrStrictMode()V

    .line 6
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x10000000

    .line 7
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 8
    :cond_1
    new-instance v0, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;-><init>()V

    .line 9
    invoke-virtual {v0, p2, p3}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->setLength(J)V

    .line 10
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-nez v1, :cond_3

    .line 11
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v4, 0x0

    .line 12
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getUseTransactionalContentMD5()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v0, p1

    move-object v1, v8

    move-wide v2, p2

    move-object v6, p6

    move-object v7, p5

    .line 13
    invoke-static/range {v0 .. v7}, Lcom/microsoft/azure/storage/core/Utility;->writeToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;JZZLcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/RequestOptions;)Lcom/microsoft/azure/storage/core/StreamMd5AndLength;

    move-result-object v0

    .line 14
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :cond_2
    move-object v2, p1

    goto :goto_0

    :cond_3
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_4

    .line 15
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getUseTransactionalContentMD5()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_4
    const-wide/16 v5, -0x1

    const/4 v7, 0x1

    .line 16
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getUseTransactionalContentMD5()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move-object v2, p1

    move-wide v3, p2

    .line 17
    invoke-static/range {v2 .. v8}, Lcom/microsoft/azure/storage/core/Utility;->analyzeStream(Ljava/io/InputStream;JJZZ)Lcom/microsoft/azure/storage/core/StreamMd5AndLength;

    move-result-object v0

    .line 18
    :goto_0
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getLength()J

    move-result-wide p1

    const-wide/32 v3, 0x400000

    cmp-long p3, p1, v3

    if-gtz p3, :cond_5

    .line 19
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getMd5()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getLength()J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 21
    invoke-direct/range {v0 .. v7}, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;->appendBlockImpl(Ljava/lang/String;Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 22
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {p5}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p3

    invoke-static {p2, p0, p1, p3, p6}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1

    .line 23
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid stream length, length must be less than or equal to 4 MB in size."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid stream length, specify -1 for unknown length stream, or a positive number of bytes."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public appendFromByteArray([BII)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;->appendFromByteArray([BIILcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public appendFromByteArray([BIILcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 8

    .line 2
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    int-to-long v2, p3

    move-object v0, p0

    move-object v1, v7

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 3
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;->append(Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    .line 4
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V

    return-void
.end method

.method public appendFromFile(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;->appendFromFile(Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public appendFromFile(Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 8

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 4
    new-instance p1, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 5
    invoke-virtual/range {v1 .. v7}, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;->append(Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    .line 6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public appendText(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;->appendText(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public appendText(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 7

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    :goto_0
    move-object v1, p1

    const/4 v2, 0x0

    .line 3
    array-length v3, v1

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;->appendFromByteArray([BIILcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public createOrReplace()V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;->createOrReplace(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public createOrReplace(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->assertNoWriteOperationForSnapshot()V

    if-nez p3, :cond_0

    .line 3
    new-instance p3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 4
    :cond_0
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->APPEND_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p2, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;->createImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 7
    invoke-static {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public openWriteExisting()Lcom/microsoft/azure/storage/blob/BlobOutputStream;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;->openWriteExisting(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/BlobOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public openWriteExisting(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/BlobOutputStream;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;->openOutputStreamInternal(ZLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/BlobOutputStream;

    move-result-object p1

    return-object p1
.end method

.method public openWriteNew()Lcom/microsoft/azure/storage/blob/BlobOutputStream;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;->openWriteNew(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/BlobOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public openWriteNew(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/BlobOutputStream;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;->openOutputStreamInternal(ZLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/BlobOutputStream;

    move-result-object p1

    return-object p1
.end method

.method public setStreamWriteSizeInBytes(I)V
    .locals 1

    .line 1
    sget v0, Lcom/microsoft/azure/storage/Constants;->MAX_APPEND_BLOCK_SIZE:I

    if-gt p1, v0, :cond_0

    const/16 v0, 0x4000

    if-lt p1, v0, :cond_0

    .line 2
    iput p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->streamWriteSizeInBytes:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "StreamWriteSizeInBytes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final startCopy(Lcom/microsoft/azure/storage/blob/CloudAppendBlob;)Ljava/lang/String;
    .locals 6
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;->startCopy(Lcom/microsoft/azure/storage/blob/CloudAppendBlob;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final startCopy(Lcom/microsoft/azure/storage/blob/CloudAppendBlob;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;
    .locals 8
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const-string v0, "sourceBlob"

    .line 2
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getSnapshotQualifiedUri()Ljava/net/URI;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getServiceClient()Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getServiceClient()Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getServiceClient()Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v0

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getSnapshotQualifiedUri()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/storage/StorageCredentials;->transformUri(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 6
    invoke-virtual/range {v1 .. v7}, Lcom/microsoft/azure/storage/blob/CloudBlob;->startCopy(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public upload(Ljava/io/InputStream;J)V
    .locals 7
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;->upload(Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public upload(Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->assertNoWriteOperationForSnapshot()V

    if-nez p6, :cond_0

    .line 3
    new-instance p6, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p6}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 4
    :cond_0
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->APPEND_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p5, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p5

    .line 5
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x10000000

    .line 6
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 7
    :cond_1
    invoke-virtual {p0, p4, p5, p6}, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;->openWriteNew(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/BlobOutputStream;

    move-result-object p4

    .line 8
    :try_start_0
    invoke-virtual {p4, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/BlobOutputStream;->write(Ljava/io/InputStream;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/blob/BlobOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p4}, Lcom/microsoft/azure/storage/blob/BlobOutputStream;->close()V

    .line 10
    throw p1
.end method
