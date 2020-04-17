.class public Lcom/microsoft/azure/storage/file/FileInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

.field public bufferSize:I

.field public bufferStartOffset:J

.field public currentAbsoluteReadPosition:J

.field public currentBuffer:Ljava/io/ByteArrayInputStream;

.field public lastError:Ljava/io/IOException;

.field public markExpiry:I

.field public markedPosition:J

.field public md5Digest:Ljava/security/MessageDigest;

.field public final opContext:Lcom/microsoft/azure/storage/OperationContext;

.field public final options:Lcom/microsoft/azure/storage/file/FileRequestOptions;

.field public final parentFileRef:Lcom/microsoft/azure/storage/file/CloudFile;

.field public final readSize:I

.field public final retrievedContentMD5Value:Ljava/lang/String;

.field public volatile streamFaulted:Z

.field public streamLength:J

.field public validateFileMd5:Z


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/file/CloudFile;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 5
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->streamLength:J

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    .line 4
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->parentFileRef:Lcom/microsoft/azure/storage/file/CloudFile;

    .line 5
    new-instance v1, Lcom/microsoft/azure/storage/file/FileRequestOptions;

    invoke-direct {v1, p3}, Lcom/microsoft/azure/storage/file/FileRequestOptions;-><init>(Lcom/microsoft/azure/storage/file/FileRequestOptions;)V

    iput-object v1, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->options:Lcom/microsoft/azure/storage/file/FileRequestOptions;

    .line 6
    iput-object p4, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    const/4 p4, 0x0

    .line 7
    iput-boolean p4, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->streamFaulted:Z

    const-wide/16 v1, 0x0

    .line 8
    iput-wide v1, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->currentAbsoluteReadPosition:J

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/CloudFile;->getStreamMinimumReadSizeInBytes()I

    move-result v3

    iput v3, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->readSize:I

    .line 10
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->getUseTransactionalContentMD5()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->readSize:I

    const/high16 v4, 0x400000

    if-gt v3, v4, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot specify x-ms-range-get-content-md5 header on ranges larger than 4 MB. Either use a BlobReadStream via openRead, or disable TransactionalMD5 via the BlobRequestOptions."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->options:Lcom/microsoft/azure/storage/file/FileRequestOptions;

    iget-object v4, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    invoke-virtual {p1, p2, v3, v4}, Lcom/microsoft/azure/storage/file/CloudFile;->downloadAttributes(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    .line 13
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/CloudFile;->getProperties()Lcom/microsoft/azure/storage/file/FileProperties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/azure/storage/file/FileProperties;->getContentMD5()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->retrievedContentMD5Value:Ljava/lang/String;

    .line 14
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->getDisableContentMD5Validation()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->retrievedContentMD5Value:Ljava/lang/String;

    .line 15
    invoke-static {p3}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    const/4 p4, 0x1

    :cond_2
    iput-boolean p4, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->validateFileMd5:Z

    if-eqz p2, :cond_3

    .line 16
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/AccessCondition;->getLeaseID()Ljava/lang/String;

    move-result-object v0

    .line 17
    :cond_3
    iget-object p2, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->parentFileRef:Lcom/microsoft/azure/storage/file/CloudFile;

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/file/CloudFile;->getProperties()Lcom/microsoft/azure/storage/file/FileProperties;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/file/FileProperties;->getEtag()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/azure/storage/AccessCondition;->generateIfMatchCondition(Ljava/lang/String;)Lcom/microsoft/azure/storage/AccessCondition;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    .line 18
    invoke-virtual {p2, v0}, Lcom/microsoft/azure/storage/AccessCondition;->setLeaseID(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/CloudFile;->getProperties()Lcom/microsoft/azure/storage/file/FileProperties;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/FileProperties;->getLength()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->streamLength:J

    .line 20
    iget-boolean p1, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->validateFileMd5:Z

    if-eqz p1, :cond_4

    :try_start_0
    const-string p1, "MD5"

    .line 21
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->md5Digest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 22
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Utility;->generateNewUnexpectedStorageException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object p1

    throw p1

    .line 23
    :cond_4
    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/microsoft/azure/storage/file/FileInputStream;->reposition(J)V

    return-void
.end method

.method private declared-synchronized checkStreamState()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->streamFaulted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->lastError:Ljava/io/IOException;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized dispatchRead(I)V
    .locals 10
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-array v9, p1, [B

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->parentFileRef:Lcom/microsoft/azure/storage/file/CloudFile;

    iget-wide v1, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->currentAbsoluteReadPosition:J

    int-to-long v3, p1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->options:Lcom/microsoft/azure/storage/file/FileRequestOptions;

    iget-object v8, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    move-object v4, v9

    invoke-virtual/range {v0 .. v8}, Lcom/microsoft/azure/storage/file/CloudFile;->downloadRangeInternal(JLjava/lang/Long;[BILcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)I

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/AccessCondition;->getIfMatch()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->parentFileRef:Lcom/microsoft/azure/storage/file/CloudFile;

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/file/CloudFile;->getProperties()Lcom/microsoft/azure/storage/file/FileProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/file/FileProperties;->getEtag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lcom/microsoft/azure/storage/StorageException;

    sget-object v0, Lcom/microsoft/azure/storage/StorageErrorCode;->CONDITION_FAILED:Lcom/microsoft/azure/storage/StorageErrorCode;

    const-string v3, "The conditionals specified for this operation did not match server."

    const/16 v4, 0x19c

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v2, "CONDITION_FAILED"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V

    throw p1

    .line 6
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->currentBuffer:Ljava/io/ByteArrayInputStream;

    .line 7
    iput p1, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->bufferSize:I

    .line 8
    iget-wide v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->currentAbsoluteReadPosition:J

    iput-wide v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->bufferStartOffset:J
    :try_end_0
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    .line 10
    :try_start_1
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->streamFaulted:Z

    .line 11
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Utility;->initIOException(Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->lastError:Ljava/io/IOException;

    .line 12
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized readInternal([BII)I
    .locals 7
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/microsoft/azure/storage/file/FileInputStream;->checkStreamState()V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->currentBuffer:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->currentBuffer:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->currentAbsoluteReadPosition:J

    iget-wide v2, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->streamLength:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 3
    iget v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->readSize:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->streamLength:J

    iget-wide v4, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->currentAbsoluteReadPosition:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-direct {p0, v1}, Lcom/microsoft/azure/storage/file/FileInputStream;->dispatchRead(I)V

    .line 4
    :cond_1
    iget v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->readSize:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->currentBuffer:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result p3

    const/4 v0, 0x0

    if-lez p3, :cond_3

    .line 6
    iget-wide v1, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->currentAbsoluteReadPosition:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->currentAbsoluteReadPosition:J

    .line 7
    iget-boolean v1, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->validateFileMd5:Z

    if-eqz v1, :cond_3

    .line 8
    iget-object v1, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->md5Digest:Ljava/security/MessageDigest;

    invoke-virtual {v1, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 9
    iget-wide p1, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->currentAbsoluteReadPosition:J

    iget-wide v1, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->streamLength:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_3

    .line 10
    iget-object p1, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->md5Digest:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Base64;->encode([B)Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->retrievedContentMD5Value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    new-instance p2, Lcom/microsoft/azure/storage/StorageException;

    const-string v2, "InvalidMd5"

    const-string p3, "File data corrupted (integrity check failed), Expected value is %s, retrieved %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->retrievedContentMD5Value:Ljava/lang/String;

    aput-object v3, v1, v0

    const/4 v0, 0x1

    aput-object p1, v1, v0

    .line 13
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x132

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V

    .line 14
    invoke-static {p2}, Lcom/microsoft/azure/storage/core/Utility;->initIOException(Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->lastError:Ljava/io/IOException;

    .line 15
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->streamFaulted:Z

    .line 16
    iget-object p1, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->lastError:Ljava/io/IOException;

    throw p1

    .line 17
    :cond_3
    :goto_0
    iget p1, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->markExpiry:I

    if-lez p1, :cond_4

    iget-wide p1, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->markedPosition:J

    iget v1, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->markExpiry:I

    int-to-long v1, v1

    add-long/2addr p1, v1

    iget-wide v1, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->currentAbsoluteReadPosition:J

    cmp-long v3, p1, v1

    if-gez v3, :cond_4

    const-wide/16 p1, 0x0

    .line 18
    iput-wide p1, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->markedPosition:J

    .line 19
    iput v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->markExpiry:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_4
    monitor-exit p0

    return p3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized reposition(J)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-wide p1, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->currentAbsoluteReadPosition:J

    .line 2
    new-instance p1, Ljava/io/ByteArrayInputStream;

    const/4 p2, 0x0

    new-array p2, p2, [B

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->currentBuffer:Ljava/io/ByteArrayInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->bufferSize:I

    iget-wide v1, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->currentAbsoluteReadPosition:J

    iget-wide v3, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->bufferStartOffset:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v1, v3

    long-to-int v2, v1

    sub-int/2addr v0, v2

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->currentBuffer:Ljava/io/ByteArrayInputStream;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->streamFaulted:Z

    .line 3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is already closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->lastError:Ljava/io/IOException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->currentAbsoluteReadPosition:J

    iput-wide v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->markedPosition:J

    .line 2
    iput p1, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->markExpiry:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v1, v2, v0}, Lcom/microsoft/azure/storage/file/FileInputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, -0x1

    return v0

    .line 3
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected error. Stream returned unexpected number of bytes."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/microsoft/azure/storage/file/FileInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    .line 5
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/FileInputStream;->readInternal([BII)I

    move-result p1

    return p1

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->markedPosition:J

    iget v2, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->markExpiry:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->currentAbsoluteReadPosition:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->validateFileMd5:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->md5Digest:Ljava/security/MessageDigest;

    .line 4
    iget-wide v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->markedPosition:J

    invoke-direct {p0, v0, v1}, Lcom/microsoft/azure/storage/file/FileInputStream;->reposition(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream mark expired."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized skip(J)J
    .locals 5

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1
    monitor-exit p0

    return-wide v0

    :cond_0
    if-ltz v2, :cond_1

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->currentAbsoluteReadPosition:J

    add-long/2addr v0, p1

    iget-wide v2, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->streamLength:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->validateFileMd5:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->md5Digest:Ljava/security/MessageDigest;

    .line 5
    iget-wide v0, p0, Lcom/microsoft/azure/storage/file/FileInputStream;->currentAbsoluteReadPosition:J

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/microsoft/azure/storage/file/FileInputStream;->reposition(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-wide p1

    .line 7
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
