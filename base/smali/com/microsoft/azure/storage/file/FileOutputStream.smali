.class public Lcom/microsoft/azure/storage/file/FileOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

.field public final completionService:Ljava/util/concurrent/ExecutorCompletionService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ExecutorCompletionService<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public currentBufferedBytes:I

.field public currentOffset:J

.field public internalWriteThreshold:I

.field public lastError:Ljava/io/IOException;

.field public lastErrorLock:Ljava/lang/Object;

.field public md5Digest:Ljava/security/MessageDigest;

.field public opContext:Lcom/microsoft/azure/storage/OperationContext;

.field public options:Lcom/microsoft/azure/storage/file/FileRequestOptions;

.field public outBuffer:Ljava/io/ByteArrayOutputStream;

.field public volatile outstandingRequests:I

.field public final parentFileRef:Lcom/microsoft/azure/storage/file/CloudFile;

.field public volatile streamFaulted:Z

.field public final threadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/file/CloudFile;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->lastErrorLock:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->internalWriteThreshold:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    .line 5
    iput-object p4, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    .line 6
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->parentFileRef:Lcom/microsoft/azure/storage/file/CloudFile;

    .line 7
    new-instance p1, Lcom/microsoft/azure/storage/file/FileRequestOptions;

    invoke-direct {p1, p5}, Lcom/microsoft/azure/storage/file/FileRequestOptions;-><init>(Lcom/microsoft/azure/storage/file/FileRequestOptions;)V

    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->options:Lcom/microsoft/azure/storage/file/FileRequestOptions;

    .line 8
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->outBuffer:Ljava/io/ByteArrayOutputStream;

    .line 9
    iput-object p6, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->streamFaulted:Z

    .line 11
    iget-object p1, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->options:Lcom/microsoft/azure/storage/file/FileRequestOptions;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->getConcurrentRequestCount()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p4, 0x1

    if-lt p1, p4, :cond_1

    .line 12
    iget-object p1, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->options:Lcom/microsoft/azure/storage/file/FileRequestOptions;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->getStoreFileContentMD5()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "MD5"

    .line 13
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->md5Digest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Utility;->generateNewUnexpectedStorageException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object p1

    throw p1

    .line 15
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->options:Lcom/microsoft/azure/storage/file/FileRequestOptions;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->getConcurrentRequestCount()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->threadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 16
    new-instance p1, Ljava/util/concurrent/ExecutorCompletionService;

    iget-object p4, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->threadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p1, p4}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->completionService:Ljava/util/concurrent/ExecutorCompletionService;

    .line 17
    iget-object p1, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->parentFileRef:Lcom/microsoft/azure/storage/file/CloudFile;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/CloudFile;->getStreamWriteSizeInBytes()I

    move-result p1

    int-to-long p4, p1

    invoke-static {p4, p5, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p2, p1

    iput p2, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->internalWriteThreshold:I

    return-void

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ConcurrentRequestCount"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkStreamState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->lastErrorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->streamFaulted:Z

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->lastError:Ljava/io/IOException;

    throw v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private commit()V
    .locals 4
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->options:Lcom/microsoft/azure/storage/file/FileRequestOptions;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->getStoreFileContentMD5()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->parentFileRef:Lcom/microsoft/azure/storage/file/CloudFile;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/file/CloudFile;->getProperties()Lcom/microsoft/azure/storage/file/FileProperties;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->md5Digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/azure/storage/core/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/file/FileProperties;->setContentMD5(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->parentFileRef:Lcom/microsoft/azure/storage/file/CloudFile;

    iget-object v1, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    iget-object v2, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->options:Lcom/microsoft/azure/storage/file/FileRequestOptions;

    iget-object v3, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    invoke-virtual {v0, v1, v2, v3}, Lcom/microsoft/azure/storage/file/CloudFile;->uploadProperties(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method private declared-synchronized dispatchWrite(I)V
    .locals 8
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1
    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->outstandingRequests:I

    iget-object v1, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->options:Lcom/microsoft/azure/storage/file/FileRequestOptions;

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->getConcurrentRequestCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/microsoft/azure/storage/file/FileOutputStream;->waitForTaskToComplete()V

    .line 4
    :cond_1
    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->outBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 5
    iget-object v2, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->parentFileRef:Lcom/microsoft/azure/storage/file/CloudFile;

    .line 6
    iget-wide v4, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->currentOffset:J

    int-to-long v6, p1

    .line 7
    iget-wide v0, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->currentOffset:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->currentOffset:J

    .line 8
    new-instance p1, Lcom/microsoft/azure/storage/file/FileOutputStream$1;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/microsoft/azure/storage/file/FileOutputStream$1;-><init>(Lcom/microsoft/azure/storage/file/FileOutputStream;Lcom/microsoft/azure/storage/file/CloudFile;Ljava/io/ByteArrayInputStream;JJ)V

    .line 9
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->completionService:Ljava/util/concurrent/ExecutorCompletionService;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 10
    iget p1, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->outstandingRequests:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->outstandingRequests:I

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->currentBufferedBytes:I

    .line 12
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->outBuffer:Ljava/io/ByteArrayOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private waitForTaskToComplete()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->completionService:Ljava/util/concurrent/ExecutorCompletionService;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutorCompletionService;->take()Ljava/util/concurrent/Future;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget v0, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->outstandingRequests:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->outstandingRequests:I

    return-void

    :catch_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->initIOException(Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    .line 5
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->initIOException(Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object v0

    throw v0
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
    invoke-direct {p0}, Lcom/microsoft/azure/storage/file/FileOutputStream;->checkStreamState()V

    .line 2
    iget v0, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->internalWriteThreshold:I

    iget v1, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->currentBufferedBytes:I

    sub-int/2addr v0, v1

    .line 3
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->options:Lcom/microsoft/azure/storage/file/FileRequestOptions;

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->getStoreFileContentMD5()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->md5Digest:Ljava/security/MessageDigest;

    invoke-virtual {v1, p1, p2, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->outBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 7
    iget v1, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->currentBufferedBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->currentBufferedBytes:I

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 8
    iget v0, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->internalWriteThreshold:I

    if-ne v1, v0, :cond_0

    .line 9
    iget v0, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->internalWriteThreshold:I

    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/file/FileOutputStream;->dispatchWrite(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 10
    :cond_2
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/microsoft/azure/storage/file/FileOutputStream;->checkStreamState()V

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/FileOutputStream;->flush()V

    .line 3
    iget-object v1, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->threadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-direct {p0}, Lcom/microsoft/azure/storage/file/FileOutputStream;->commit()V
    :try_end_1
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    iget-object v1, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->lastErrorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6
    :try_start_2
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->streamFaulted:Z

    .line 7
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Stream is already closed."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->lastError:Ljava/io/IOException;

    .line 8
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->threadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->threadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 11
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v1

    .line 12
    :try_start_4
    invoke-static {v1}, Lcom/microsoft/azure/storage/core/Utility;->initIOException(Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v1

    .line 13
    invoke-static {v1}, Lcom/microsoft/azure/storage/core/Utility;->initIOException(Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object v1

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    .line 14
    iget-object v2, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->lastErrorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 15
    :try_start_5
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->streamFaulted:Z

    .line 16
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Stream is already closed."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->lastError:Ljava/io/IOException;

    .line 17
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 18
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->threadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->threadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 20
    :cond_1
    throw v1

    :catchall_2
    move-exception v0

    .line 21
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/microsoft/azure/storage/file/FileOutputStream;->checkStreamState()V

    .line 2
    iget v0, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->currentBufferedBytes:I

    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/file/FileOutputStream;->dispatchWrite(I)V

    .line 3
    :goto_0
    iget v0, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->outstandingRequests:I

    if-lez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/microsoft/azure/storage/file/FileOutputStream;->waitForTaskToComplete()V

    .line 5
    invoke-direct {p0}, Lcom/microsoft/azure/storage/file/FileOutputStream;->checkStreamState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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
    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/file/FileOutputStream;->write([B)V

    return-void
.end method

.method public write(Ljava/io/InputStream;J)V
    .locals 9
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 5
    iget-object v6, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    iget-object v7, p0, Lcom/microsoft/azure/storage/file/FileOutputStream;->options:Lcom/microsoft/azure/storage/file/FileRequestOptions;

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

    invoke-virtual {p0, p1, v1, v0}, Lcom/microsoft/azure/storage/file/FileOutputStream;->write([BII)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/FileOutputStream;->writeInternal([BII)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
