.class public final Lcom/microsoft/azure/storage/blob/CloudBlockBlob;
.super Lcom/microsoft/azure/storage/blob/CloudBlob;
.source "SourceFile"


# instance fields
.field public isStreamWriteSizeModified:Z


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/StorageUri;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0, p2}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;-><init>(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 1

    .line 8
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->BLOCK_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlob;-><init>(Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Lcom/microsoft/azure/storage/StorageCredentials;)V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->isStreamWriteSizeModified:Z

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/blob/CloudBlockBlob;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlob;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->isStreamWriteSizeModified:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;)V
    .locals 1

    .line 10
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->BLOCK_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlob;-><init>(Lcom/microsoft/azure/storage/blob/BlobType;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;)V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->isStreamWriteSizeModified:Z

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/StorageUri;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;-><init>(Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 1

    .line 5
    new-instance v0, Lcom/microsoft/azure/storage/StorageUri;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p2}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/lang/String;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 1

    .line 7
    new-instance v0, Lcom/microsoft/azure/storage/StorageUri;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;-><init>(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method private commitBlockListImpl(Ljava/lang/Iterable;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/blob/BlockEntry;",
            ">;",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudBlob;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1, p4}, Lcom/microsoft/azure/storage/blob/BlockEntryListSerializer;->writeBlockListToStream(Ljava/lang/Iterable;Lcom/microsoft/azure/storage/OperationContext;)[B

    move-result-object p1

    .line 2
    new-instance p4, Ljava/io/ByteArrayInputStream;

    invoke-direct {p4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-wide/16 v1, -0x1

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    .line 3
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getUseTransactionalContentMD5()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object v0, p4

    .line 4
    invoke-static/range {v0 .. v6}, Lcom/microsoft/azure/storage/core/Utility;->analyzeStream(Ljava/io/InputStream;JJZZ)Lcom/microsoft/azure/storage/core/StreamMd5AndLength;

    move-result-object v5

    .line 5
    new-instance p1, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$1;

    .line 6
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, p1

    move-object v1, p0

    move-object v2, p3

    move-object v4, p4

    move-object v6, p3

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$1;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlockBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Ljava/io/ByteArrayInputStream;Lcom/microsoft/azure/storage/core/StreamMd5AndLength;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lcom/microsoft/azure/storage/StorageException;->translateClientException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object p1

    .line 8
    throw p1

    :catch_1
    move-exception p1

    .line 9
    invoke-static {p1}, Lcom/microsoft/azure/storage/StorageException;->translateClientException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object p1

    .line 10
    throw p1
.end method

.method private createBlockFromURIImpl(Ljava/lang/String;Ljava/net/URI;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URI;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudBlob;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v12, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$6;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v4, p8

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object v11, p1

    invoke-direct/range {v0 .. v11}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$6;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlockBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/OperationContext;Ljava/net/URI;Ljava/lang/Long;Ljava/lang/Long;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;)V

    return-object v12
.end method

.method private createBlockFromURIInternal(Ljava/lang/String;Ljava/net/URI;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 2
    invoke-direct/range {p0 .. p8}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->createBlockFromURIImpl(Ljava/lang/String;Ljava/net/URI;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 3
    invoke-virtual {p7}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 4
    invoke-static {v0, p0, p1, p2, p8}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method private downloadBlockListImpl(Lcom/microsoft/azure/storage/blob/BlockListingFilter;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/blob/BlockListingFilter;",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudBlob;",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/azure/storage/blob/BlockEntry;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$2;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$2;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlockBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlockListingFilter;)V

    return-object v7
.end method

.method private uploadBlockImpl(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "J",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudBlob;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v12, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$5;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    move-object/from16 v9, p6

    move-object v10, p1

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$5;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlockBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Ljava/io/InputStream;JLcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;Ljava/lang/String;)V

    return-object v12
.end method

.method private uploadBlockInternal(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 2
    invoke-direct/range {p0 .. p8}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->uploadBlockImpl(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 3
    invoke-virtual {p7}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 4
    invoke-static {v0, p0, p1, p2, p8}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method private uploadFromMultiStream(Ljava/lang/Iterable;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            "Ljava/util/List<",
            "Lcom/microsoft/azure/storage/blob/BlockEntry;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v10, p0

    .line 1
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getConcurrentRequestCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2
    new-instance v11, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v4, 0xa

    move-object v1, v11

    move v2, v3

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 3
    new-instance v0, Ljava/util/concurrent/ExecutorCompletionService;

    invoke-direct {v0, v11}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 4
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/io/InputStream;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    add-int/lit8 v14, v1, 0x1

    .line 5
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v13

    const-string v1, "Block_%05d"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 6
    invoke-static {v1}, Lcom/microsoft/azure/storage/core/Base64;->encode([B)Ljava/lang/String;

    move-result-object v3

    .line 7
    new-instance v1, Lcom/microsoft/azure/storage/blob/BlockEntry;

    invoke-direct {v1, v3}, Lcom/microsoft/azure/storage/blob/BlockEntry;-><init>(Ljava/lang/String;)V

    move-object/from16 v15, p5

    .line 8
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    instance-of v1, v4, Lcom/microsoft/azure/storage/blob/SubStream;

    if-eqz v1, :cond_0

    move-object v1, v4

    check-cast v1, Lcom/microsoft/azure/storage/blob/SubStream;

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/blob/SubStream;->getLength()J

    move-result-wide v1

    goto :goto_1

    :cond_0
    iget v1, v10, Lcom/microsoft/azure/storage/blob/CloudBlob;->streamWriteSizeInBytes:I

    int-to-long v1, v1

    :goto_1
    move-wide v5, v1

    .line 10
    new-instance v9, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$3;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object v13, v9

    move-object/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$3;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlockBlob;Ljava/lang/String;Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    invoke-virtual {v0, v13}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move v1, v14

    const/4 v13, 0x0

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v1, :cond_2

    .line 11
    invoke-direct {v10, v0}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->waitAny(Ljava/util/concurrent/ExecutorCompletionService;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 12
    :cond_2
    :try_start_0
    invoke-virtual {v11}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {v11}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    invoke-virtual {v11}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 15
    invoke-virtual {v11}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_4

    .line 16
    invoke-virtual {v11}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 17
    :cond_4
    throw v1
.end method

.method private uploadFullBlobImpl(Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "J",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudBlob;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v10, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$4;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p5

    move-object v4, p1

    move-wide v5, p2

    move-object/from16 v7, p6

    move-object/from16 v8, p5

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$4;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlockBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Ljava/io/InputStream;JLcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V

    return-object v10
.end method

.method private waitAny(Ljava/util/concurrent/ExecutorCompletionService;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorCompletionService<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutorCompletionService;->take()Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    instance-of v1, v0, Lcom/microsoft/azure/storage/StorageException;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    check-cast v0, Lcom/microsoft/azure/storage/StorageException;

    throw v0

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Utility;->initIOException(Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public commitBlockList(Ljava/lang/Iterable;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/blob/BlockEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->commitBlockList(Ljava/lang/Iterable;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public commitBlockList(Ljava/lang/Iterable;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/blob/BlockEntry;",
            ">;",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->assertNoWriteOperationForSnapshot()V

    if-nez p4, :cond_0

    .line 3
    new-instance p4, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p4}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 4
    :cond_0
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->BLOCK_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p3, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p3

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->commitBlockListImpl(Ljava/lang/Iterable;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 7
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 8
    invoke-static {v0, p0, p1, p2, p4}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public createBlockFromURI(Ljava/lang/String;Ljava/net/URI;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 9
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v8}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->createBlockFromURI(Ljava/lang/String;Ljava/net/URI;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public createBlockFromURI(Ljava/lang/String;Ljava/net/URI;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 11
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const-string v0, "copySource"

    move-object v3, p2

    .line 2
    invoke-static {v0, p2}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->assertNoWriteOperationForSnapshot()V

    if-nez p8, :cond_0

    .line 4
    new-instance v0, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object/from16 v9, p8

    .line 5
    :goto_0
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->BLOCK_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    move-object v10, p0

    iget-object v1, v10, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-object/from16 v2, p7

    invoke-static {v2, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object v8

    .line 6
    invoke-virtual {v8}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->assertNoEncryptionPolicyOrStrictMode()V

    .line 7
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Base64;->validateIsBase64String(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p4, :cond_2

    .line 8
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget v2, Lcom/microsoft/azure/storage/Constants;->MAX_BLOCK_SIZE:I

    int-to-long v4, v2

    cmp-long v2, v0, v4

    if-gtz v2, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid copy length, length must be less than or equal to 100 MB in size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 10
    invoke-direct/range {v1 .. v9}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->createBlockFromURIInternal(Ljava/lang/String;Ljava/net/URI;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void

    .line 11
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid blockID, blockID must be a valid Base64 String."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public downloadBlockList()Ljava/util/ArrayList;
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/azure/storage/blob/BlockEntry;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlockListingFilter;->COMMITTED:Lcom/microsoft/azure/storage/blob/BlockListingFilter;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->downloadBlockList(Lcom/microsoft/azure/storage/blob/BlockListingFilter;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public downloadBlockList(Lcom/microsoft/azure/storage/blob/BlockListingFilter;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/util/ArrayList;
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/blob/BlockListingFilter;",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/azure/storage/blob/BlockEntry;",
            ">;"
        }
    .end annotation

    const-string v0, "blockListingFilter"

    .line 2
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p4, :cond_0

    .line 3
    new-instance p4, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p4}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 4
    :cond_0
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 5
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->BLOCK_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p3, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p3

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->downloadBlockListImpl(Lcom/microsoft/azure/storage/blob/BlockListingFilter;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 8
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 9
    invoke-static {v0, p0, p1, p2, p4}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1
.end method

.method public downloadText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->downloadText(Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public downloadText(Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;
    .locals 1

    .line 2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/microsoft/azure/storage/blob/CloudBlob;->download(Ljava/io/OutputStream;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public isStreamWriteSizeModified()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->isStreamWriteSizeModified:Z

    return v0
.end method

.method public openOutputStream()Lcom/microsoft/azure/storage/blob/BlobOutputStream;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->openOutputStream(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/BlobOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public openOutputStream(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/BlobOutputStream;
    .locals 6

    if-nez p3, :cond_0

    .line 2
    new-instance p3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    :cond_0
    move-object v4, p3

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->assertNoWriteOperationForSnapshot()V

    .line 4
    sget-object p3, Lcom/microsoft/azure/storage/blob/BlobType;->BLOCK_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Z)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->assertPolicyIfRequired()V

    .line 6
    invoke-virtual {v3}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {v3}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;

    move-result-object p2

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getMetadata()Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p2, p3, v1}, Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;->createAndSetEncryptionContext(Ljava/util/Map;Z)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 8
    new-instance p2, Lcom/microsoft/azure/storage/blob/BlobEncryptStream;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/BlobEncryptStream;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlockBlob;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Ljavax/crypto/Cipher;)V

    return-object p2

    .line 9
    :cond_1
    new-instance p2, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;

    invoke-direct {p2, p0, p1, v3, v4}, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlockBlob;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-object p2
.end method

.method public setStreamWriteSizeInBytes(I)V
    .locals 1

    .line 1
    sget v0, Lcom/microsoft/azure/storage/Constants;->MAX_BLOCK_SIZE:I

    if-gt p1, v0, :cond_0

    const/16 v0, 0x4000

    if-lt p1, v0, :cond_0

    .line 2
    iput p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->streamWriteSizeInBytes:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->isStreamWriteSizeModified:Z

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "StreamWriteSizeInBytes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final startCopy(Lcom/microsoft/azure/storage/blob/CloudBlockBlob;)Ljava/lang/String;
    .locals 8
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->startCopy(Lcom/microsoft/azure/storage/blob/CloudBlockBlob;Ljava/lang/String;ZLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final startCopy(Lcom/microsoft/azure/storage/blob/CloudBlockBlob;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;
    .locals 10
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const-string v0, "sourceBlob"

    .line 2
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getSnapshotQualifiedUri()Ljava/net/URI;

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getServiceClient()Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getServiceClient()Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getServiceClient()Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v0

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getSnapshotQualifiedUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/StorageCredentials;->transformUri(Ljava/net/URI;)Ljava/net/URI;

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    .line 6
    invoke-virtual/range {v2 .. v9}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->startCopy(Lcom/microsoft/azure/storage/blob/CloudBlockBlob;Ljava/lang/String;ZLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final startCopy(Lcom/microsoft/azure/storage/blob/CloudBlockBlob;Ljava/lang/String;ZLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;
    .locals 10
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const-string v0, "sourceBlob"

    move-object v1, p1

    .line 7
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getSnapshotQualifiedUri()Ljava/net/URI;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getServiceClient()Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getServiceClient()Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getServiceClient()Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v0

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getSnapshotQualifiedUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/StorageCredentials;->transformUri(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    :cond_0
    move-object v2, v0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 11
    invoke-virtual/range {v1 .. v9}, Lcom/microsoft/azure/storage/blob/CloudBlob;->startCopy(Ljava/net/URI;Ljava/lang/String;ZLcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final startCopy(Lcom/microsoft/azure/storage/file/CloudFile;)Ljava/lang/String;
    .locals 6
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->startCopy(Lcom/microsoft/azure/storage/file/CloudFile;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final startCopy(Lcom/microsoft/azure/storage/file/CloudFile;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;
    .locals 8
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const-string v0, "sourceFile"

    .line 13
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/CloudFile;->getServiceClient()Lcom/microsoft/azure/storage/file/CloudFileClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v0

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/CloudFile;->getUri()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/storage/StorageCredentials;->transformUri(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v2

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 15
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
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->upload(Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public upload(Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 24
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-ltz v5, :cond_10

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->assertNoWriteOperationForSnapshot()V

    if-nez p6, :cond_0

    .line 3
    new-instance v6, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {v6}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    move-object v7, v6

    goto :goto_0

    :cond_0
    move-object/from16 v7, p6

    .line 4
    :goto_0
    invoke-virtual {v7}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 5
    sget-object v6, Lcom/microsoft/azure/storage/blob/BlobType;->BLOCK_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v9, v8, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-object/from16 v10, p5

    invoke-static {v10, v6, v9}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object v6

    .line 6
    invoke-virtual {v6}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->assertPolicyIfRequired()V

    .line 7
    new-instance v9, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;

    invoke-direct {v9}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;-><init>()V

    .line 8
    invoke-virtual {v9, v1, v2}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->setLength(J)V

    .line 9
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v10

    if-nez v10, :cond_1

    instance-of v10, v0, Ljava/io/FileInputStream;

    if-eqz v10, :cond_1

    .line 10
    new-instance v10, Lcom/microsoft/azure/storage/core/MarkableFileStream;

    check-cast v0, Ljava/io/FileInputStream;

    invoke-direct {v10, v0}, Lcom/microsoft/azure/storage/core/MarkableFileStream;-><init>(Ljava/io/FileInputStream;)V

    goto :goto_1

    :cond_1
    move-object v10, v0

    .line 11
    :goto_1
    invoke-virtual {v10}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    const/4 v11, 0x0

    const/16 v18, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v9}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getLength()J

    move-result-wide v12

    invoke-virtual {v6}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getSingleBlobPutThresholdInBytes()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v14, v0

    cmp-long v0, v12, v14

    if-lez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    .line 12
    :goto_3
    invoke-virtual {v10}, Ljava/io/InputStream;->markSupported()Z

    move-result v12

    if-eqz v12, :cond_4

    const/high16 v12, 0x10000000

    .line 13
    invoke-virtual {v10, v12}, Ljava/io/InputStream;->mark(I)V

    :cond_4
    const-wide/16 v19, 0x0

    if-nez v0, :cond_6

    .line 14
    invoke-virtual {v6}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 15
    invoke-virtual {v6}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getMetadata()Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v12, v13, v11}, Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;->createAndSetEncryptionContext(Ljava/util/Map;Z)Ljavax/crypto/Cipher;

    move-result-object v13

    .line 16
    new-instance v14, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$1GettableByteArrayOutputStream;

    invoke-direct {v14, v8}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$1GettableByteArrayOutputStream;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlockBlob;)V

    .line 17
    invoke-virtual {v9}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getLength()J

    move-result-wide v15

    .line 18
    invoke-virtual {v6}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getSingleBlobPutThresholdInBytes()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    int-to-long v11, v11

    move-wide/from16 v21, v11

    move-object v11, v10

    move-object v12, v14

    move-object/from16 v23, v14

    move-wide v14, v15

    move-wide/from16 v16, v21

    .line 19
    invoke-static/range {v11 .. v17}, Lcom/microsoft/azure/storage/core/Utility;->encryptStreamIfUnderThreshold(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;Ljavax/crypto/Cipher;JJ)J

    move-result-wide v11

    cmp-long v13, v11, v19

    if-ltz v13, :cond_5

    .line 20
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v23 .. v23}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$1GettableByteArrayOutputStream;->getByteArray()[B

    move-result-object v13

    invoke-direct {v10, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 21
    invoke-virtual {v9, v11, v12}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->setLength(J)V

    goto :goto_4

    :cond_5
    move-object v15, v10

    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    :goto_4
    move-object v15, v10

    :goto_5
    if-nez v0, :cond_9

    .line 22
    invoke-virtual {v9}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getLength()J

    move-result-wide v10

    cmp-long v12, v10, v19

    if-ltz v12, :cond_7

    invoke-virtual {v6}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getStoreBlobContentMD5()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 23
    :cond_7
    invoke-virtual {v9}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getLength()J

    move-result-wide v11

    .line 24
    invoke-virtual {v6}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getSingleBlobPutThresholdInBytes()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    int-to-long v13, v9

    const/4 v9, 0x1

    .line 25
    invoke-virtual {v6}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getStoreBlobContentMD5()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    move-object v10, v15

    move-object/from16 p1, v15

    move v15, v9

    .line 26
    invoke-static/range {v10 .. v16}, Lcom/microsoft/azure/storage/core/Utility;->analyzeStream(Ljava/io/InputStream;JJZZ)Lcom/microsoft/azure/storage/core/StreamMd5AndLength;

    move-result-object v9

    .line 27
    invoke-virtual {v9}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getMd5()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {v6}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getStoreBlobContentMD5()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 28
    iget-object v10, v8, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {v9}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getMd5()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setContentMD5(Ljava/lang/String;)V

    .line 29
    :cond_8
    invoke-virtual {v9}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getLength()J

    move-result-wide v10

    cmp-long v12, v10, v3

    if-eqz v12, :cond_b

    invoke-virtual {v9}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getLength()J

    move-result-wide v10

    invoke-virtual {v6}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getSingleBlobPutThresholdInBytes()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v12, v12

    cmp-long v14, v10, v12

    if-lez v14, :cond_a

    goto :goto_6

    :cond_9
    move-object/from16 p1, v15

    :cond_a
    move/from16 v18, v0

    :cond_b
    :goto_6
    if-nez v18, :cond_c

    .line 30
    invoke-virtual {v9}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getLength()J

    move-result-wide v3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->uploadFullBlob(Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    goto :goto_8

    :cond_c
    long-to-double v10, v1

    .line 31
    iget v0, v8, Lcom/microsoft/azure/storage/blob/CloudBlob;->streamWriteSizeInBytes:I

    int-to-double v12, v0

    div-double v12, v10, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v0, v12

    if-eqz v5, :cond_e

    int-to-long v12, v0

    const-wide/32 v14, 0xc350

    cmp-long v0, v12, v14

    if-lez v0, :cond_e

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->isStreamWriteSizeModified()Z

    move-result v0

    if-nez v0, :cond_d

    const-wide v12, 0x40e86a0000000000L    # 50000.0

    div-double v12, v10, v12

    .line 33
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v0, v12

    iput v0, v8, Lcom/microsoft/azure/storage/blob/CloudBlob;->streamWriteSizeInBytes:I

    int-to-double v12, v0

    div-double/2addr v10, v12

    .line 34
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    goto :goto_7

    .line 35
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The total blocks for this upload exceeds the maximum allowable limit. Please increase the block size."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_e
    :goto_7
    invoke-virtual {v6}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;

    move-result-object v0

    if-nez v0, :cond_f

    .line 37
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, v8, Lcom/microsoft/azure/storage/blob/CloudBlob;->streamWriteSizeInBytes:I

    sget v5, Lcom/microsoft/azure/storage/Constants;->MIN_LARGE_BLOCK_SIZE:I

    if-lt v0, v5, :cond_f

    .line 38
    invoke-virtual {v6}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getStoreBlobContentMD5()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    .line 39
    invoke-virtual {v9}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getLength()J

    move-result-wide v9

    cmp-long v0, v9, v3

    :cond_f
    move-object/from16 v0, p4

    .line 40
    invoke-virtual {v8, v0, v6, v7}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->openOutputStream(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/BlobOutputStream;

    move-result-object v3

    move-object/from16 v10, p1

    .line 41
    :try_start_0
    invoke-virtual {v3, v10, v1, v2}, Lcom/microsoft/azure/storage/blob/BlobOutputStream;->write(Ljava/io/InputStream;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-virtual {v3}, Lcom/microsoft/azure/storage/blob/BlobOutputStream;->close()V

    :goto_8
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v3}, Lcom/microsoft/azure/storage/blob/BlobOutputStream;->close()V

    .line 43
    throw v1

    .line 44
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid stream length, specify -1 for unknown length stream, or a positive number of bytes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public uploadBlock(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 8
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->uploadBlock(Ljava/lang/String;Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public uploadBlock(Ljava/lang/String;Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 12
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    move-object v0, p2

    move-wide v2, p3

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_8

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->assertNoWriteOperationForSnapshot()V

    if-nez p7, :cond_0

    .line 3
    new-instance v1, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {v1}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    move-object v10, v1

    goto :goto_0

    :cond_0
    move-object/from16 v10, p7

    .line 4
    :goto_0
    sget-object v1, Lcom/microsoft/azure/storage/blob/BlobType;->BLOCK_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    move-object v11, p0

    iget-object v4, v11, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-object/from16 v5, p6

    invoke-static {v5, v1, v4}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object v9

    .line 5
    invoke-virtual {v9}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->assertNoEncryptionPolicyOrStrictMode()V

    .line 6
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Base64;->validateIsBase64String(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 7
    invoke-virtual {p2}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/io/FileInputStream;

    if-eqz v1, :cond_1

    .line 8
    new-instance v1, Lcom/microsoft/azure/storage/core/MarkableFileStream;

    check-cast v0, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Lcom/microsoft/azure/storage/core/MarkableFileStream;-><init>(Ljava/io/FileInputStream;)V

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object v7, v0

    .line 9
    :goto_1
    invoke-virtual {v7}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x10000000

    .line 10
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->mark(I)V

    .line 11
    :cond_2
    new-instance v0, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;-><init>()V

    .line 12
    invoke-virtual {v0, v2, v3}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->setLength(J)V

    .line 13
    invoke-virtual {v7}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-nez v1, :cond_3

    .line 14
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v4, 0x0

    .line 15
    invoke-virtual {v9}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getUseTransactionalContentMD5()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v0, v7

    move-object v1, v8

    move-wide v2, p3

    move-object v6, v10

    move-object v7, v9

    .line 16
    invoke-static/range {v0 .. v7}, Lcom/microsoft/azure/storage/core/Utility;->writeToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;JZZLcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/RequestOptions;)Lcom/microsoft/azure/storage/core/StreamMd5AndLength;

    move-result-object v0

    .line 17
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v5, v1

    goto :goto_2

    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_4

    .line 18
    invoke-virtual {v9}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getUseTransactionalContentMD5()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    .line 19
    invoke-virtual {v9}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getUseTransactionalContentMD5()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move-object v0, v7

    move-wide v1, p3

    move-wide v3, v4

    move v5, v6

    move v6, v8

    .line 20
    invoke-static/range {v0 .. v6}, Lcom/microsoft/azure/storage/core/Utility;->analyzeStream(Ljava/io/InputStream;JJZZ)Lcom/microsoft/azure/storage/core/StreamMd5AndLength;

    move-result-object v0

    :cond_5
    move-object v5, v7

    .line 21
    :goto_2
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getLength()J

    move-result-wide v1

    sget v3, Lcom/microsoft/azure/storage/Constants;->MAX_BLOCK_SIZE:I

    int-to-long v3, v3

    cmp-long v6, v1, v3

    if-gtz v6, :cond_6

    .line 22
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getMd5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getLength()J

    move-result-wide v6

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v10}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->uploadBlockInternal(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void

    .line 23
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid stream length, length must be less than or equal to 100 MB in size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid blockID, blockID must be a valid Base64 String."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object v11, p0

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid stream length, specify -1 for unknown length stream, or a positive number of bytes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final uploadFullBlob(Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 3
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->assertNoWriteOperationForSnapshot()V

    const/high16 v0, 0x10000000

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const-wide/32 v0, 0x10000000

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 4
    invoke-direct/range {p0 .. p6}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->uploadFullBlobImpl(Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 5
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 6
    invoke-static {v0, p0, p1, p2, p6}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    const/16 p4, 0x100

    .line 8
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const-string p3, "Invalid stream length; stream must be between 0 and %s MB in length."

    .line 9
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public uploadStandardBlobTier(Lcom/microsoft/azure/storage/blob/StandardBlobTier;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->uploadStandardBlobTier(Lcom/microsoft/azure/storage/blob/StandardBlobTier;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public uploadStandardBlobTier(Lcom/microsoft/azure/storage/blob/StandardBlobTier;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->assertNoWriteOperationForSnapshot()V

    const-string v0, "standardBlobTier"

    .line 3
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p3, :cond_0

    .line 4
    new-instance p3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 5
    :cond_0
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->BLOCK_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p2, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/azure/storage/blob/CloudBlob;->uploadBlobTierImpl(Ljava/lang/String;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 8
    invoke-static {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public uploadText(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->uploadText(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public uploadText(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
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

    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudBlob;->uploadFromByteArray([BIILcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method
