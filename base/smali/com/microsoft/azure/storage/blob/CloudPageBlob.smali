.class public final Lcom/microsoft/azure/storage/blob/CloudPageBlob;
.super Lcom/microsoft/azure/storage/blob/CloudBlob;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/StorageUri;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0, p2}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;-><init>(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 1

    .line 7
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->PAGE_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlob;-><init>(Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/blob/CloudPageBlob;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlob;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;)V
    .locals 1

    .line 8
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->PAGE_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlob;-><init>(Lcom/microsoft/azure/storage/blob/BlobType;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/StorageUri;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;-><init>(Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/microsoft/azure/storage/StorageUri;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p2}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/lang/String;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 1

    .line 5
    new-instance v0, Lcom/microsoft/azure/storage/StorageUri;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;-><init>(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method private createImpl(JLcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;",
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
    new-instance v9, Lcom/microsoft/azure/storage/blob/CloudPageBlob$1;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v9

    move-object v1, p0

    move-object v2, p5

    move-object v4, p5

    move-object v5, p4

    move-wide v6, p1

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/microsoft/azure/storage/blob/CloudPageBlob$1;-><init>(Lcom/microsoft/azure/storage/blob/CloudPageBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;JLcom/microsoft/azure/storage/blob/PremiumPageBlobTier;)V

    return-object v9
.end method

.method private downloadPageRangesDiffImpl(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudBlob;",
            "Ljava/util/List<",
            "Lcom/microsoft/azure/storage/blob/PageRangeDiff;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v9, Lcom/microsoft/azure/storage/blob/CloudPageBlob$3;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v9

    move-object v1, p0

    move-object v2, p5

    move-object v4, p5

    move-object v5, p4

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/microsoft/azure/storage/blob/CloudPageBlob$3;-><init>(Lcom/microsoft/azure/storage/blob/CloudPageBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v9
.end method

.method private downloadPageRangesImpl(Ljava/lang/Long;Ljava/lang/Long;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudBlob;",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/azure/storage/blob/PageRange;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/microsoft/azure/storage/blob/CloudPageBlob$2;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v8

    move-object v1, p0

    move-object v2, p4

    move-object v4, p4

    move-object v5, p3

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/microsoft/azure/storage/blob/CloudPageBlob$2;-><init>(Lcom/microsoft/azure/storage/blob/CloudPageBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v8
.end method

.method private openOutputStreamInternal(Ljava/lang/Long;Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/BlobOutputStream;
    .locals 8

    if-nez p5, :cond_0

    .line 1
    new-instance p5, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p5}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->assertNoWriteOperationForSnapshot()V

    .line 3
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->PAGE_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    const/4 v2, 0x0

    invoke-static {p4, v0, v1, v2}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Z)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p4

    .line 4
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->assertPolicyIfRequired()V

    .line 5
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getStoreBlobContentMD5()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getMetadata()Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;->createAndSetEncryptionContext(Ljava/util/Map;Z)Ljavax/crypto/Cipher;

    move-result-object v0

    :cond_1
    move-object v7, v0

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x200

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 9
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->create(JLcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    goto :goto_0

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Page blob length must be multiple of 512."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;

    move-result-object p1

    if-nez p1, :cond_6

    .line 12
    invoke-virtual {p0, p3, p4, p5}, Lcom/microsoft/azure/storage/blob/CloudBlob;->downloadAttributes(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    .line 13
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getProperties()Lcom/microsoft/azure/storage/blob/BlobProperties;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getLength()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    if-eqz p3, :cond_4

    .line 14
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/AccessCondition;->getLeaseID()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/azure/storage/AccessCondition;->generateLeaseCondition(Ljava/lang/String;)Lcom/microsoft/azure/storage/AccessCondition;

    move-result-object p3

    :cond_4
    move-object v4, p3

    .line 15
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 16
    new-instance p2, Lcom/microsoft/azure/storage/blob/BlobEncryptStream;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v0, p2

    move-object v1, p0

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/microsoft/azure/storage/blob/BlobEncryptStream;-><init>(Lcom/microsoft/azure/storage/blob/CloudPageBlob;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Ljavax/crypto/Cipher;)V

    return-object p2

    .line 17
    :cond_5
    new-instance p2, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v0, p2

    move-object v1, p0

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;-><init>(Lcom/microsoft/azure/storage/blob/CloudPageBlob;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-object p2

    .line 18
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Encryption is not supported for a blob that already exists. Please do not specify an encryption policy."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Blob level MD5 is not supported for page blobs."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private putPagesImpl(Lcom/microsoft/azure/storage/blob/PageRange;Lcom/microsoft/azure/storage/blob/PageOperationType;[BJLjava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/blob/PageRange;",
            "Lcom/microsoft/azure/storage/blob/PageOperationType;",
            "[BJ",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudPageBlob;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v13, Lcom/microsoft/azure/storage/blob/CloudPageBlob$4;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p9

    move-object/from16 v9, p8

    move-object/from16 v10, p7

    move-object v11, p1

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v12}, Lcom/microsoft/azure/storage/blob/CloudPageBlob$4;-><init>(Lcom/microsoft/azure/storage/blob/CloudPageBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/PageOperationType;[BJLcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/PageRange;Ljava/lang/String;)V

    return-object v13
.end method

.method private putPagesInternal(Lcom/microsoft/azure/storage/blob/PageRange;Lcom/microsoft/azure/storage/blob/PageOperationType;[BJLjava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 2
    invoke-direct/range {p0 .. p9}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->putPagesImpl(Lcom/microsoft/azure/storage/blob/PageRange;Lcom/microsoft/azure/storage/blob/PageOperationType;[BJLjava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 3
    invoke-virtual {p8}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 4
    invoke-static {v0, p0, p1, p2, p9}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method private resizeImpl(JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudPageBlob;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/microsoft/azure/storage/blob/CloudPageBlob$5;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v8

    move-object v1, p0

    move-object v2, p4

    move-object v4, p4

    move-object v5, p3

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/microsoft/azure/storage/blob/CloudPageBlob$5;-><init>(Lcom/microsoft/azure/storage/blob/CloudPageBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;J)V

    return-object v8
.end method


# virtual methods
.method public clearPages(JJ)V
    .locals 8
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->clearPages(JJLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public clearPages(JJLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 11
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    move-wide v0, p1

    const-wide/16 v2, 0x200

    .line 2
    rem-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    .line 3
    rem-long v2, p3, v2

    cmp-long v4, v2, v6

    if-nez v4, :cond_1

    if-nez p7, :cond_0

    .line 4
    new-instance v2, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {v2}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object/from16 v9, p7

    .line 5
    :goto_0
    sget-object v2, Lcom/microsoft/azure/storage/blob/BlobType;->PAGE_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    move-object v10, p0

    iget-object v3, v10, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-object/from16 v4, p6

    invoke-static {v4, v2, v3}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object v8

    .line 6
    invoke-virtual {v8}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->assertNoEncryptionPolicyOrStrictMode()V

    .line 7
    new-instance v2, Lcom/microsoft/azure/storage/blob/PageRange;

    add-long v3, v0, p3

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    invoke-direct {v2, p1, p2, v3, v4}, Lcom/microsoft/azure/storage/blob/PageRange;-><init>(JJ)V

    .line 8
    sget-object v3, Lcom/microsoft/azure/storage/blob/PageOperationType;->CLEAR:Lcom/microsoft/azure/storage/blob/PageOperationType;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-wide v4, p3

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v9}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->putPagesInternal(Lcom/microsoft/azure/storage/blob/PageRange;Lcom/microsoft/azure/storage/blob/PageOperationType;[BJLjava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void

    :cond_1
    move-object v10, p0

    .line 9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Page blob length must be multiple of 512."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v10, p0

    .line 10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Page start offset must be multiple of 512."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public create(J)V
    .locals 6
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->create(JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public create(JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 7
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->create(JLcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public create(JLcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 8
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->assertNoWriteOperationForSnapshot()V

    const-wide/16 v0, 0x200

    .line 4
    rem-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    if-nez p6, :cond_0

    .line 5
    new-instance p6, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p6}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 6
    :cond_0
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->PAGE_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p5, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p5

    .line 7
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 8
    invoke-direct/range {v2 .. v7}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->createImpl(JLcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p5}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 9
    invoke-static {v0, p0, p1, p2, p6}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Page blob length must be multiple of 512."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public downloadPageRanges()Ljava/util/ArrayList;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/azure/storage/blob/PageRange;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->downloadPageRanges(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public downloadPageRanges(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/util/ArrayList;
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/azure/storage/blob/PageRange;",
            ">;"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 2
    new-instance p3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 3
    :cond_0
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->PAGE_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p2, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v1, v1, p1, p2}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->downloadPageRangesImpl(Ljava/lang/Long;Ljava/lang/Long;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 6
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 7
    invoke-static {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1
.end method

.method public downloadPageRanges(JLjava/lang/Long;)Ljava/util/List;
    .locals 7
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/azure/storage/blob/PageRange;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->downloadPageRanges(JLjava/lang/Long;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public downloadPageRanges(JLjava/lang/Long;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/util/List;
    .locals 5
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Long;",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/azure/storage/blob/PageRange;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    if-eqz p3, :cond_0

    .line 9
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    :cond_0
    if-nez p6, :cond_1

    .line 10
    new-instance p6, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p6}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 11
    :cond_1
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->PAGE_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p5, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p5

    .line 12
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 13
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->downloadPageRangesImpl(Ljava/lang/Long;Ljava/lang/Long;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p5}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 14
    invoke-static {v0, p0, p1, p2, p6}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 15
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public downloadPageRangesDiff(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/azure/storage/blob/PageRangeDiff;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->downloadPageRangesDiff(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public downloadPageRangesDiff(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/util/List;
    .locals 8
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/azure/storage/blob/PageRangeDiff;",
            ">;"
        }
    .end annotation

    if-nez p6, :cond_0

    .line 2
    new-instance p6, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p6}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 3
    :cond_0
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->PAGE_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p5, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p5

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 5
    invoke-direct/range {v2 .. v7}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->downloadPageRangesDiffImpl(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 6
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 7
    invoke-static {v0, p0, p1, p2, p6}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public openWriteExisting()Lcom/microsoft/azure/storage/blob/BlobOutputStream;
    .locals 6
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->openOutputStreamInternal(Ljava/lang/Long;Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/BlobOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public openWriteExisting(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/BlobOutputStream;
    .locals 6
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->openOutputStreamInternal(Ljava/lang/Long;Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/BlobOutputStream;

    move-result-object p1

    return-object p1
.end method

.method public openWriteNew(J)Lcom/microsoft/azure/storage/blob/BlobOutputStream;
    .locals 6
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->openOutputStreamInternal(Ljava/lang/Long;Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/BlobOutputStream;

    move-result-object p1

    return-object p1
.end method

.method public openWriteNew(JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/BlobOutputStream;
    .locals 6
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->openOutputStreamInternal(Ljava/lang/Long;Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/BlobOutputStream;

    move-result-object p1

    return-object p1
.end method

.method public openWriteNew(JLcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/BlobOutputStream;
    .locals 6
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->openOutputStreamInternal(Ljava/lang/Long;Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/BlobOutputStream;

    move-result-object p1

    return-object p1
.end method

.method public resize(J)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->resize(JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public resize(JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 5

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->assertNoWriteOperationForSnapshot()V

    const-wide/16 v0, 0x200

    .line 3
    rem-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    if-nez p5, :cond_0

    .line 4
    new-instance p5, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p5}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 5
    :cond_0
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p4, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p4

    .line 7
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->resizeImpl(JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 8
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 9
    invoke-static {v0, p0, p1, p2, p5}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Page blob length must be multiple of 512."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStreamWriteSizeInBytes(I)V
    .locals 1

    .line 1
    sget v0, Lcom/microsoft/azure/storage/Constants;->MAX_PAGE_WRITE_SIZE:I

    if-gt p1, v0, :cond_0

    const/16 v0, 0x200

    if-lt p1, v0, :cond_0

    rem-int/lit16 v0, p1, 0x200

    if-nez v0, :cond_0

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

.method public final startCopy(Lcom/microsoft/azure/storage/blob/CloudPageBlob;)Ljava/lang/String;
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
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->startCopy(Lcom/microsoft/azure/storage/blob/CloudPageBlob;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final startCopy(Lcom/microsoft/azure/storage/blob/CloudPageBlob;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;
    .locals 7
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->startCopy(Lcom/microsoft/azure/storage/blob/CloudPageBlob;Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final startCopy(Lcom/microsoft/azure/storage/blob/CloudPageBlob;Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;
    .locals 8
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const-string v0, "sourceBlob"

    .line 3
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getSnapshotQualifiedUri()Ljava/net/URI;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getServiceClient()Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getServiceClient()Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
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

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 7
    invoke-virtual/range {v1 .. v7}, Lcom/microsoft/azure/storage/blob/CloudBlob;->startCopy(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final startIncrementalCopy(Lcom/microsoft/azure/storage/blob/CloudPageBlob;)Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    .line 2
    iget-object v1, p1, Lcom/microsoft/azure/storage/blob/CloudBlob;->snapshotID:Ljava/lang/String;

    const-string v2, "snapshot"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getTransformedAddress(Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->addToURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1, v1, v1, v1}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->startIncrementalCopy(Ljava/net/URI;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final startIncrementalCopy(Lcom/microsoft/azure/storage/blob/CloudPageBlob;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 6
    new-instance v0, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    .line 7
    iget-object v1, p1, Lcom/microsoft/azure/storage/blob/CloudBlob;->snapshotID:Ljava/lang/String;

    const-string v2, "snapshot"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getTransformedAddress(Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->addToURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->startIncrementalCopy(Ljava/net/URI;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final startIncrementalCopy(Ljava/net/URI;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->startIncrementalCopy(Ljava/net/URI;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final startIncrementalCopy(Ljava/net/URI;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;
    .locals 11
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const-string v0, "sourceSnapshot"

    .line 10
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->assertNoWriteOperationForSnapshot()V

    if-nez p4, :cond_0

    .line 12
    new-instance p4, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p4}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 13
    :cond_0
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 14
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p3, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p3

    .line 15
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v4, ""

    move-object v2, p0

    move-object v3, p1

    move-object v9, p2

    move-object v10, p3

    .line 16
    invoke-virtual/range {v2 .. v10}, Lcom/microsoft/azure/storage/blob/CloudBlob;->startCopyImpl(Ljava/net/URI;Ljava/lang/String;ZZLcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 17
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 18
    invoke-static {v0, p0, p1, p2, p4}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public updateSequenceNumberFromResponse(Ljava/net/HttpURLConnection;)V
    .locals 3

    const-string v0, "x-ms-blob-sequence-number"

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

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setPageBlobSequenceNumber(Ljava/lang/Long;)V

    :cond_0
    return-void
.end method

.method public upload(Ljava/io/InputStream;J)V
    .locals 8
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->upload(Ljava/io/InputStream;JLcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public upload(Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 8
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 2
    invoke-virtual/range {v0 .. v7}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->upload(Ljava/io/InputStream;JLcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public upload(Ljava/io/InputStream;JLcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 7
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->assertNoWriteOperationForSnapshot()V

    if-nez p7, :cond_0

    .line 4
    new-instance p7, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p7}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    :cond_0
    move-object v6, p7

    .line 5
    sget-object p7, Lcom/microsoft/azure/storage/blob/BlobType;->PAGE_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p6, p7, v0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object v5

    .line 6
    invoke-virtual {v5}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->assertPolicyIfRequired()V

    const-wide/16 p6, 0x0

    cmp-long v0, p2, p6

    if-lez v0, :cond_3

    const-wide/16 v0, 0x200

    .line 7
    rem-long v0, p2, v0

    cmp-long v2, v0, p6

    if-nez v2, :cond_3

    .line 8
    invoke-virtual {v5}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getStoreBlobContentMD5()Ljava/lang/Boolean;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p6

    if-nez p6, :cond_2

    .line 9
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result p6

    if-eqz p6, :cond_1

    const/high16 p6, 0x10000000

    .line 10
    invoke-virtual {p1, p6}, Ljava/io/InputStream;->mark(I)V

    :cond_1
    move-object v0, p0

    move-wide v1, p2

    move-object v3, p4

    move-object v4, p5

    .line 11
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->openWriteNew(JLcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/BlobOutputStream;

    move-result-object p4

    .line 12
    :try_start_0
    invoke-virtual {p4, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/BlobOutputStream;->write(Ljava/io/InputStream;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/blob/BlobOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p4}, Lcom/microsoft/azure/storage/blob/BlobOutputStream;->close()V

    .line 14
    throw p1

    .line 15
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Blob level MD5 is not supported for page blobs."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Page blob length must be multiple of 512."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public uploadFromByteArray([BIILcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 9

    move v0, p3

    .line 1
    new-instance v8, Ljava/io/ByteArrayInputStream;

    move-object v1, p1

    move v2, p2

    invoke-direct {v8, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    int-to-long v2, v0

    move-object v0, p0

    move-object v1, v8

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 2
    invoke-virtual/range {v0 .. v7}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->upload(Ljava/io/InputStream;JLcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    .line 3
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->close()V

    return-void
.end method

.method public uploadFromFile(Ljava/lang/String;Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 3
    new-instance p1, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 4
    invoke-virtual/range {v1 .. v8}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->upload(Ljava/io/InputStream;JLcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    .line 5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public uploadPages(Ljava/io/InputStream;JJ)V
    .locals 9
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 1
    invoke-virtual/range {v0 .. v8}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->uploadPages(Ljava/io/InputStream;JJLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public uploadPages(Ljava/io/InputStream;JJLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 15
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    move-wide/from16 v0, p2

    move-wide/from16 v4, p4

    const-wide/16 v2, 0x200

    .line 2
    rem-long v6, v0, v2

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_5

    cmp-long v6, v4, v8

    if-eqz v6, :cond_4

    .line 3
    rem-long v2, v4, v2

    cmp-long v6, v2, v8

    if-nez v6, :cond_4

    const-wide/32 v2, 0x400000

    cmp-long v6, v4, v2

    if-gtz v6, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->assertNoWriteOperationForSnapshot()V

    if-nez p8, :cond_0

    .line 5
    new-instance v2, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {v2}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object/from16 v9, p8

    .line 6
    :goto_0
    sget-object v2, Lcom/microsoft/azure/storage/blob/BlobType;->PAGE_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    move-object v10, p0

    iget-object v3, v10, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-object/from16 v6, p7

    invoke-static {v6, v2, v3}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object v8

    .line 7
    invoke-virtual {v8}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->assertNoEncryptionPolicyOrStrictMode()V

    .line 8
    new-instance v2, Lcom/microsoft/azure/storage/blob/PageRange;

    add-long v6, v0, v4

    const-wide/16 v11, 0x1

    sub-long/2addr v6, v11

    invoke-direct {v2, v0, v1, v6, v7}, Lcom/microsoft/azure/storage/blob/PageRange;-><init>(JJ)V

    long-to-int v0, v4

    .line 9
    new-array v3, v0, [B

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    int-to-long v11, v7

    cmp-long v13, v11, v4

    if-gez v13, :cond_1

    sub-long v11, v4, v11

    const-wide/32 v13, 0x7fffffff

    .line 10
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v12, v11

    move-object/from16 v11, p1

    invoke-virtual {v11, v3, v7, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    add-int/2addr v7, v12

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v8}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getUseTransactionalContentMD5()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    :try_start_0
    const-string v1, "MD5"

    .line 12
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 13
    invoke-virtual {v1, v3, v6, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 14
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 15
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->generateNewUnexpectedStorageException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object v0

    throw v0

    :cond_2
    move-object v6, v1

    .line 16
    :goto_2
    sget-object v7, Lcom/microsoft/azure/storage/blob/PageOperationType;->UPDATE:Lcom/microsoft/azure/storage/blob/PageOperationType;

    move-object v0, p0

    move-object v1, v2

    move-object v2, v7

    move-wide/from16 v4, p4

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->putPagesInternal(Lcom/microsoft/azure/storage/blob/PageRange;Lcom/microsoft/azure/storage/blob/PageOperationType;[BJLjava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void

    :cond_3
    move-object v10, p0

    .line 17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max write size is 4MB. Please specify a smaller range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-object v10, p0

    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Page blob length must be multiple of 512."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object v10, p0

    .line 19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Page start offset must be multiple of 512."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public uploadPremiumPageBlobTier(Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->uploadPremiumPageBlobTier(Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public uploadPremiumPageBlobTier(Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->assertNoWriteOperationForSnapshot()V

    const-string v0, "premiumBlobTier"

    .line 3
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p3, :cond_0

    .line 4
    new-instance p3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 5
    :cond_0
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->PAGE_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p2, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/microsoft/azure/storage/blob/CloudBlob;->uploadBlobTierImpl(Ljava/lang/String;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object v1

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 8
    invoke-static {v0, p0, v1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    .line 9
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {p2, p1}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setPremiumPageBlobTier(Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;)V

    .line 10
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setBlobTierInferred(Ljava/lang/Boolean;)V

    return-void
.end method
