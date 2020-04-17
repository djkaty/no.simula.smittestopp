.class public final Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;
.super Lcom/microsoft/azure/storage/blob/BlobOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal$BlobOutputStreamThreadFactory;
    }
.end annotation


# instance fields
.field public accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

.field public blockIdPrefix:Ljava/lang/String;

.field public blockList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/azure/storage/blob/BlockEntry;",
            ">;"
        }
    .end annotation
.end field

.field public final completionService:Ljava/util/concurrent/ExecutorCompletionService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ExecutorCompletionService<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public currentBlobOffset:J

.field public final futureSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field public internalWriteThreshold:I

.field public volatile lastError:Ljava/io/IOException;

.field public md5Digest:Ljava/security/MessageDigest;

.field public final opContext:Lcom/microsoft/azure/storage/OperationContext;

.field public final options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

.field public volatile outBuffer:Ljava/io/ByteArrayOutputStream;

.field public final parentBlobRef:Lcom/microsoft/azure/storage/blob/CloudBlob;

.field public streamType:Lcom/microsoft/azure/storage/blob/BlobType;

.field public final threadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/blob/CloudAppendBlob;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    .line 32
    sget-object p3, Lcom/microsoft/azure/storage/blob/BlobType;->APPEND_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    iput-object p3, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->streamType:Lcom/microsoft/azure/storage/blob/BlobType;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    new-instance p2, Lcom/microsoft/azure/storage/AccessCondition;

    invoke-direct {p2}, Lcom/microsoft/azure/storage/AccessCondition;-><init>()V

    :goto_0
    iput-object p2, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    .line 34
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/AccessCondition;->getIfAppendPositionEqual()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 35
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/AccessCondition;->getIfAppendPositionEqual()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->currentBlobOffset:J

    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getProperties()Lcom/microsoft/azure/storage/blob/BlobProperties;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getLength()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->currentBlobOffset:J

    .line 37
    :goto_1
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->parentBlobRef:Lcom/microsoft/azure/storage/blob/CloudBlob;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStreamWriteSizeInBytes()I

    move-result p1

    iput p1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->internalWriteThreshold:I

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/storage/blob/BlobOutputStream;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->internalWriteThreshold:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->lastError:Ljava/io/IOException;

    .line 4
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/BlobType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->streamType:Lcom/microsoft/azure/storage/blob/BlobType;

    .line 5
    iput-object p2, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    .line 6
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->parentBlobRef:Lcom/microsoft/azure/storage/blob/CloudBlob;

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->assertCorrectBlobType()V

    .line 8
    new-instance p1, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    invoke-direct {p1, p3}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;-><init>(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)V

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    .line 9
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->outBuffer:Ljava/io/ByteArrayOutputStream;

    .line 10
    iput-object p4, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    .line 11
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getConcurrentRequestCount()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    if-lt p1, p2, :cond_2

    .line 12
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p3, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    .line 13
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getConcurrentRequestCount()Ljava/lang/Integer;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getConcurrentRequestCount()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    :goto_0
    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 14
    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->futureSet:Ljava/util/Set;

    .line 15
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getStoreBlobContentMD5()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    :try_start_0
    const-string p1, "MD5"

    .line 16
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->md5Digest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 17
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Utility;->generateNewUnexpectedStorageException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object p1

    throw p1

    .line 18
    :cond_1
    :goto_1
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    .line 19
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getConcurrentRequestCount()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    .line 20
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getConcurrentRequestCount()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal$BlobOutputStreamThreadFactory;

    invoke-direct {v7}, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal$BlobOutputStreamThreadFactory;-><init>()V

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->threadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 21
    new-instance p1, Ljava/util/concurrent/ExecutorCompletionService;

    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->threadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {p1, p2}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->completionService:Ljava/util/concurrent/ExecutorCompletionService;

    return-void

    .line 22
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ConcurrentRequestCount"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/blob/CloudBlockBlob;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->blockList:Ljava/util/ArrayList;

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->blockIdPrefix:Ljava/lang/String;

    .line 26
    sget-object p1, Lcom/microsoft/azure/storage/blob/BlobType;->BLOCK_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->streamType:Lcom/microsoft/azure/storage/blob/BlobType;

    .line 27
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->parentBlobRef:Lcom/microsoft/azure/storage/blob/CloudBlob;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStreamWriteSizeInBytes()I

    move-result p1

    iput p1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->internalWriteThreshold:I

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/blob/CloudPageBlob;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 28
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    .line 29
    sget-object p1, Lcom/microsoft/azure/storage/blob/BlobType;->PAGE_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->streamType:Lcom/microsoft/azure/storage/blob/BlobType;

    .line 30
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->parentBlobRef:Lcom/microsoft/azure/storage/blob/CloudBlob;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStreamWriteSizeInBytes()I

    move-result p1

    int-to-long p4, p1

    invoke-static {p4, p5, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p2, p1

    iput p2, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->internalWriteThreshold:I

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;Ljava/io/ByteArrayInputStream;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->writeBlock(Ljava/io/ByteArrayInputStream;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic access$100(Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;Ljava/io/ByteArrayInputStream;JJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->writePages(Ljava/io/ByteArrayInputStream;JJ)V

    return-void
.end method

.method public static synthetic access$200(Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;Ljava/io/ByteArrayInputStream;JJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->appendBlock(Ljava/io/ByteArrayInputStream;JJ)V

    return-void
.end method

.method private appendBlock(Ljava/io/ByteArrayInputStream;JJ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->parentBlobRef:Lcom/microsoft/azure/storage/blob/CloudBlob;

    move-object v1, v0

    check-cast v1, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/microsoft/azure/storage/AccessCondition;->setIfAppendPositionEqual(Ljava/lang/Long;)V

    .line 3
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/OperationContext;->getRequestResults()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 4
    :try_start_0
    iget-object v5, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    iget-object v6, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iget-object v7, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    move-object v2, p1

    move-wide v3, p4

    invoke-virtual/range {v1 .. v7}, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;->appendBlock(Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    iget-object p3, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    invoke-virtual {p3}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getAbsorbConditionalErrorsOnRetry()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageException;->getHttpStatusCode()I

    move-result p3

    const/16 p4, 0x19c

    if-ne p3, p4, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageException;->getExtendedErrorInformation()Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageException;->getErrorCode()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageException;->getErrorCode()Ljava/lang/String;

    move-result-object p3

    const-string p4, "AppendPositionConditionNotMet"

    .line 10
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageException;->getErrorCode()Ljava/lang/String;

    move-result-object p3

    const-string p4, "MaxBlobSizeConditionNotMet"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    :cond_0
    iget-object p3, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    .line 12
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/OperationContext;->getRequestResults()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, p2

    const/4 p2, 0x1

    if-le p3, p2, :cond_1

    .line 13
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    const-string p2, "Pre-condition failure on a retry is being ignored since the request should have succeeded in the first attempt."

    invoke-static {p1, p2}, Lcom/microsoft/azure/storage/core/Logger;->info(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Utility;->initIOException(Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->lastError:Ljava/io/IOException;

    goto :goto_0

    :catch_1
    move-exception p1

    .line 15
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->lastError:Ljava/io/IOException;

    :goto_0
    return-void
.end method

.method private checkStreamState()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->lastError:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->lastError:Ljava/io/IOException;

    throw v0
.end method

.method private clearCompletedFutures()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->futureSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 2
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->futureSet:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private declared-synchronized commit()V
    .locals 5
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getStoreBlobContentMD5()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->parentBlobRef:Lcom/microsoft/azure/storage/blob/CloudBlob;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getProperties()Lcom/microsoft/azure/storage/blob/BlobProperties;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->md5Digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/azure/storage/core/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setContentMD5(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->streamType:Lcom/microsoft/azure/storage/blob/BlobType;

    sget-object v1, Lcom/microsoft/azure/storage/blob/BlobType;->BLOCK_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->parentBlobRef:Lcom/microsoft/azure/storage/blob/CloudBlob;

    check-cast v0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;

    .line 5
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->blockList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    iget-object v3, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iget-object v4, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->commitBlockList(Ljava/lang/Iterable;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getStoreBlobContentMD5()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->parentBlobRef:Lcom/microsoft/azure/storage/blob/CloudBlob;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    iget-object v2, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iget-object v3, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    invoke-virtual {v0, v1, v2, v3}, Lcom/microsoft/azure/storage/blob/CloudBlob;->uploadProperties(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized dispatchWrite()V
    .locals 9
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->outBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->streamType:Lcom/microsoft/azure/storage/blob/BlobType;

    sget-object v1, Lcom/microsoft/azure/storage/blob/BlobType;->PAGE_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    if-ne v0, v1, :cond_2

    rem-int/lit16 v0, v6, 0x200

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Page data must be a multiple of 512 bytes. Buffer currently contains %d bytes."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->threadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    iget-object v2, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    invoke-virtual {v2}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getConcurrentRequestCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_3

    .line 6
    invoke-direct {p0}, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->waitForTaskToComplete()V

    .line 7
    :cond_3
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->futureSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    invoke-virtual {v2}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getConcurrentRequestCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_4

    .line 8
    invoke-direct {p0}, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->clearCompletedFutures()V

    .line 9
    :cond_4
    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->outBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 10
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->streamType:Lcom/microsoft/azure/storage/blob/BlobType;

    sget-object v2, Lcom/microsoft/azure/storage/blob/BlobType;->BLOCK_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    if-ne v1, v2, :cond_5

    .line 11
    invoke-direct {p0}, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->getCurrentBlockId()Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->blockList:Ljava/util/ArrayList;

    new-instance v2, Lcom/microsoft/azure/storage/blob/BlockEntry;

    sget-object v4, Lcom/microsoft/azure/storage/blob/BlockSearchMode;->LATEST:Lcom/microsoft/azure/storage/blob/BlockSearchMode;

    invoke-direct {v2, v0, v4}, Lcom/microsoft/azure/storage/blob/BlockEntry;-><init>(Ljava/lang/String;Lcom/microsoft/azure/storage/blob/BlockSearchMode;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v1, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal$1;

    invoke-direct {v1, p0, v3, v0, v6}, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal$1;-><init>(Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;Ljava/io/ByteArrayInputStream;Ljava/lang/String;I)V

    move-object v0, v1

    goto :goto_2

    .line 14
    :cond_5
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->streamType:Lcom/microsoft/azure/storage/blob/BlobType;

    sget-object v2, Lcom/microsoft/azure/storage/blob/BlobType;->PAGE_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    if-ne v1, v2, :cond_6

    .line 15
    iget-wide v4, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->currentBlobOffset:J

    .line 16
    iget-wide v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->currentBlobOffset:J

    int-to-long v7, v6

    add-long/2addr v0, v7

    iput-wide v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->currentBlobOffset:J

    .line 17
    new-instance v0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal$2;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal$2;-><init>(Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;Ljava/io/ByteArrayInputStream;JI)V

    goto :goto_2

    .line 18
    :cond_6
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->streamType:Lcom/microsoft/azure/storage/blob/BlobType;

    sget-object v2, Lcom/microsoft/azure/storage/blob/BlobType;->APPEND_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    if-ne v1, v2, :cond_9

    .line 19
    iget-wide v4, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->currentBlobOffset:J

    .line 20
    iget-wide v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->currentBlobOffset:J

    int-to-long v7, v6

    add-long/2addr v0, v7

    iput-wide v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->currentBlobOffset:J

    .line 21
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/AccessCondition;->getIfMaxSizeLessThanOrEqual()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->currentBlobOffset:J

    iget-object v2, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    .line 22
    invoke-virtual {v2}, Lcom/microsoft/azure/storage/AccessCondition;->getIfMaxSizeLessThanOrEqual()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v2, v0, v7

    if-gtz v2, :cond_7

    goto :goto_1

    .line 23
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Append block data should not exceed the maximum blob size condition value."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->lastError:Ljava/io/IOException;

    .line 24
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->lastError:Ljava/io/IOException;

    throw v0

    .line 25
    :cond_8
    :goto_1
    new-instance v0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal$3;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal$3;-><init>(Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;Ljava/io/ByteArrayInputStream;JI)V

    .line 26
    :cond_9
    :goto_2
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->futureSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->completionService:Ljava/util/concurrent/ExecutorCompletionService;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->outBuffer:Ljava/io/ByteArrayOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCurrentBlockId()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->blockList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%06d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->blockIdPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private waitForTaskToComplete()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->completionService:Ljava/util/concurrent/ExecutorCompletionService;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutorCompletionService;->poll()Ljava/util/concurrent/Future;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->completionService:Ljava/util/concurrent/ExecutorCompletionService;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutorCompletionService;->take()Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->initIOException(Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method private writeBlock(Ljava/io/ByteArrayInputStream;Ljava/lang/String;J)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->parentBlobRef:Lcom/microsoft/azure/storage/blob/CloudBlob;

    move-object v1, v0

    check-cast v1, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;

    .line 2
    :try_start_0
    iget-object v6, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    iget-object v7, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iget-object v8, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    move-object v2, p2

    move-object v3, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v8}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->uploadBlock(Ljava/lang/String;Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Utility;->initIOException(Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->lastError:Ljava/io/IOException;

    goto :goto_0

    :catch_1
    move-exception p1

    .line 4
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->lastError:Ljava/io/IOException;

    :goto_0
    return-void
.end method

.method private declared-synchronized writeInternal([BII)V
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    monitor-enter p0

    :cond_0
    :goto_0
    if-lez p3, :cond_2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->checkStreamState()V

    .line 2
    iget v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->internalWriteThreshold:I

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->outBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getStoreBlobContentMD5()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->md5Digest:Ljava/security/MessageDigest;

    invoke-virtual {v1, p1, p2, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->outBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 7
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->outBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget v1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->internalWriteThreshold:I

    if-ne v0, v1, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->dispatchWrite()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 9
    :cond_2
    monitor-exit p0

    return-void
.end method

.method private writePages(Ljava/io/ByteArrayInputStream;JJ)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->parentBlobRef:Lcom/microsoft/azure/storage/blob/CloudBlob;

    move-object v1, v0

    check-cast v1, Lcom/microsoft/azure/storage/blob/CloudPageBlob;

    .line 2
    :try_start_0
    iget-object v7, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    iget-object v8, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iget-object v9, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v9}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->uploadPages(Ljava/io/InputStream;JJLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Utility;->initIOException(Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->lastError:Ljava/io/IOException;

    goto :goto_0

    :catch_1
    move-exception p1

    .line 4
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->lastError:Ljava/io/IOException;

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->checkStreamState()V

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->flush()V

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->threadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-direct {p0}, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->commit()V
    :try_end_1
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is already closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->lastError:Ljava/io/IOException;

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->threadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->threadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    :cond_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 9
    :try_start_3
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->initIOException(Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 10
    :try_start_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Stream is already closed."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->lastError:Ljava/io/IOException;

    .line 11
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->threadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 12
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->threadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 13
    :cond_1
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public flush()V
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->checkStreamState()V

    .line 2
    invoke-direct {p0}, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->dispatchWrite()V

    .line 3
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->futureSet:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 5
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-direct {p0}, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->checkStreamState()V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->initIOException(Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 6
    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->write([B)V

    return-void
.end method

.method public write(Ljava/io/InputStream;J)V
    .locals 9
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 5
    iget-object v6, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    iget-object v7, p0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v8}, Lcom/microsoft/azure/storage/core/Utility;->writeToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;JZZLcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/RequestOptions;Ljava/lang/Boolean;)Lcom/microsoft/azure/storage/core/StreamMd5AndLength;

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    .line 2
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;->writeInternal([BII)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
