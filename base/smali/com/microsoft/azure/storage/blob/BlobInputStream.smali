.class public final Lcom/microsoft/azure/storage/blob/BlobInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

.field public final blobRangeOffset:J

.field public bufferSize:I

.field public bufferStartOffset:J

.field public currentAbsoluteReadPosition:J

.field public currentBuffer:Ljava/io/ByteArrayInputStream;

.field public lastError:Ljava/io/IOException;

.field public markExpiry:I

.field public markedPosition:J

.field public md5Digest:Ljava/security/MessageDigest;

.field public final opContext:Lcom/microsoft/azure/storage/OperationContext;

.field public final options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

.field public final parentBlobRef:Lcom/microsoft/azure/storage/blob/CloudBlob;

.field public final readSize:I

.field public final retrievedContentMD5Value:Ljava/lang/String;

.field public volatile streamFaulted:Z

.field public streamLength:J

.field public validateBlobMd5:Z


# direct methods
.method public constructor <init>(JLjava/lang/Long;Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 15
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    move-object v1, p0

    move-wide/from16 v9, p1

    move-object/from16 v0, p4

    move-object/from16 v11, p5

    .line 2
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v12, 0x0

    .line 3
    iput-object v12, v1, Lcom/microsoft/azure/storage/blob/BlobInputStream;->accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    .line 4
    iput-wide v9, v1, Lcom/microsoft/azure/storage/blob/BlobInputStream;->blobRangeOffset:J

    .line 5
    iput-object v0, v1, Lcom/microsoft/azure/storage/blob/BlobInputStream;->parentBlobRef:Lcom/microsoft/azure/storage/blob/CloudBlob;

    .line 6
    invoke-virtual/range {p4 .. p4}, Lcom/microsoft/azure/storage/blob/CloudBlob;->assertCorrectBlobType()V

    .line 7
    new-instance v2, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-object/from16 v13, p6

    invoke-direct {v2, v13}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;-><init>(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)V

    iput-object v2, v1, Lcom/microsoft/azure/storage/blob/BlobInputStream;->options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-object/from16 v2, p7

    .line 8
    iput-object v2, v1, Lcom/microsoft/azure/storage/blob/BlobInputStream;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    const/4 v14, 0x0

    .line 9
    iput-boolean v14, v1, Lcom/microsoft/azure/storage/blob/BlobInputStream;->streamFaulted:Z

    .line 10
    iput-wide v9, v1, Lcom/microsoft/azure/storage/blob/BlobInputStream;->currentAbsoluteReadPosition:J

    .line 11
    invoke-virtual/range {p4 .. p4}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStreamMinimumReadSizeInBytes()I

    move-result v2

    iput v2, v1, Lcom/microsoft/azure/storage/blob/BlobInputStream;->readSize:I

    .line 12
    invoke-virtual/range {p6 .. p6}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getUseTransactionalContentMD5()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/microsoft/azure/storage/blob/BlobInputStream;->readSize:I

    const/high16 v3, 0x400000

    if-gt v2, v3, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot specify x-ms-range-get-content-md5 header on ranges larger than 4 MB. Either use a BlobReadStream via openRead, or disable TransactionalMD5 via the BlobRequestOptions."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_1
    :goto_0
    iget-object v2, v1, Lcom/microsoft/azure/storage/blob/BlobInputStream;->options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iget-object v3, v1, Lcom/microsoft/azure/storage/blob/BlobInputStream;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    invoke-virtual {v0, v11, v2, v3}, Lcom/microsoft/azure/storage/blob/CloudBlob;->downloadAttributes(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    const-wide/16 v5, 0x0

    .line 15
    invoke-virtual/range {p4 .. p4}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getProperties()Lcom/microsoft/azure/storage/blob/BlobProperties;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getLength()J

    move-result-wide v2

    const-wide/16 v7, 0x1

    sub-long v7, v2, v7

    const-string v2, "blobRangeOffset"

    move-wide/from16 v3, p1

    invoke-static/range {v2 .. v8}, Lcom/microsoft/azure/storage/core/Utility;->assertInBounds(Ljava/lang/String;JJJ)V

    const-wide/16 v2, 0x0

    if-eqz p3, :cond_2

    .line 16
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v6, "blobRangeLength"

    invoke-static {v6, v4, v5, v2, v3}, Lcom/microsoft/azure/storage/core/Utility;->assertGreaterThanOrEqual(Ljava/lang/String;JJ)V

    .line 17
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getProperties()Lcom/microsoft/azure/storage/blob/BlobProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getContentMD5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/microsoft/azure/storage/blob/BlobInputStream;->retrievedContentMD5Value:Ljava/lang/String;

    .line 18
    invoke-virtual/range {p6 .. p6}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getDisableContentMD5Validation()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/microsoft/azure/storage/blob/BlobInputStream;->retrievedContentMD5Value:Ljava/lang/String;

    .line 19
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v1, Lcom/microsoft/azure/storage/blob/BlobInputStream;->validateBlobMd5:Z

    cmp-long v0, v9, v2

    if-nez v0, :cond_4

    if-eqz p3, :cond_5

    .line 20
    :cond_4
    iput-boolean v14, v1, Lcom/microsoft/azure/storage/blob/BlobInputStream;->validateBlobMd5:Z

    :cond_5
    if-eqz v11, :cond_7

    .line 21
    invoke-virtual/range {p5 .. p5}, Lcom/microsoft/azure/storage/AccessCondition;->getLeaseID()Ljava/lang/String;

    move-result-object v12

    .line 22
    iget-object v0, v1, Lcom/microsoft/azure/storage/blob/BlobInputStream;->parentBlobRef:Lcom/microsoft/azure/storage/blob/CloudBlob;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getProperties()Lcom/microsoft/azure/storage/blob/BlobProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getEtag()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/microsoft/azure/storage/blob/BlobInputStream;->parentBlobRef:Lcom/microsoft/azure/storage/blob/CloudBlob;

    .line 23
    invoke-virtual {v2}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getProperties()Lcom/microsoft/azure/storage/blob/BlobProperties;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getLastModified()Ljava/util/Date;

    move-result-object v2

    .line 24
    invoke-virtual {v11, v0, v2}, Lcom/microsoft/azure/storage/AccessCondition;->verifyConditional(Ljava/lang/String;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 25
    :cond_6
    new-instance v0, Lcom/microsoft/azure/storage/StorageException;

    sget-object v2, Lcom/microsoft/azure/storage/StorageErrorCode;->CONDITION_FAILED:Lcom/microsoft/azure/storage/StorageErrorCode;

    const/16 v2, 0x19c

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "CONDITION_FAILED"

    const-string v6, "The conditionals specified for this operation did not match server."

    move-object/from16 p1, v0

    move-object/from16 p2, v5

    move-object/from16 p3, v6

    move/from16 p4, v2

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    invoke-direct/range {p1 .. p6}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V

    throw v0

    .line 26
    :cond_7
    :goto_2
    new-instance v0, Lcom/microsoft/azure/storage/AccessCondition;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/AccessCondition;-><init>()V

    iput-object v0, v1, Lcom/microsoft/azure/storage/blob/BlobInputStream;->accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    .line 27
    invoke-virtual {v0, v12}, Lcom/microsoft/azure/storage/AccessCondition;->setLeaseID(Ljava/lang/String;)V

    .line 28
    invoke-virtual/range {p6 .. p6}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getSkipEtagLocking()Z

    move-result v0

    if-nez v0, :cond_8

    .line 29
    iget-object v0, v1, Lcom/microsoft/azure/storage/blob/BlobInputStream;->accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    iget-object v2, v1, Lcom/microsoft/azure/storage/blob/BlobInputStream;->parentBlobRef:Lcom/microsoft/azure/storage/blob/CloudBlob;

    invoke-virtual {v2}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getProperties()Lcom/microsoft/azure/storage/blob/BlobProperties;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getEtag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/azure/storage/AccessCondition;->setIfMatch(Ljava/lang/String;)V

    :cond_8
    if-nez p3, :cond_9

    .line 30
    iget-object v0, v1, Lcom/microsoft/azure/storage/blob/BlobInputStream;->parentBlobRef:Lcom/microsoft/azure/storage/blob/CloudBlob;

    .line 31
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getProperties()Lcom/microsoft/azure/storage/blob/BlobProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getLength()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/microsoft/azure/storage/blob/BlobInputStream;->blobRangeOffset:J

    sub-long/2addr v2, v4

    goto :goto_3

    :cond_9
    iget-object v0, v1, Lcom/microsoft/azure/storage/blob/BlobInputStream;->parentBlobRef:Lcom/microsoft/azure/storage/blob/CloudBlob;

    .line 32
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getProperties()Lcom/microsoft/azure/storage/blob/BlobProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getLength()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/microsoft/azure/storage/blob/BlobInputStream;->blobRangeOffset:J

    sub-long/2addr v2, v4

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_3
    iput-wide v2, v1, Lcom/microsoft/azure/storage/blob/BlobInputStream;->streamLength:J

    .line 33
    iget-boolean v0, v1, Lcom/microsoft/azure/storage/blob/BlobInputStream;->validateBlobMd5:Z

    if-eqz v0, :cond_a

    :try_start_0
    const-string v0, "MD5"

    .line 34
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, v1, Lcom/microsoft/azure/storage/blob/BlobInputStream;->md5Digest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 35
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->generateNewUnexpectedStorageException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object v0

    throw v0

    .line 36
    :cond_a
    :goto_4
    invoke-direct/range {p0 .. p2}, Lcom/microsoft/azure/storage/blob/BlobInputStream;->reposition(J)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 8
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/microsoft/azure/storage/blob/BlobInputStream;-><init>(JLjava/lang/Long;Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method private declared-synchronized checkStreamState()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->streamFaulted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->lastError:Ljava/io/IOException;

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
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->parentBlobRef:Lcom/microsoft/azure/storage/blob/CloudBlob;

    iget-wide v1, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->currentAbsoluteReadPosition:J

    int-to-long v3, p1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    iget-object v7, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iget-object v8, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    move-object v4, v9

    invoke-virtual/range {v0 .. v8}, Lcom/microsoft/azure/storage/blob/CloudBlob;->downloadRangeInternal(JLjava/lang/Long;[BILcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)I

    .line 3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->currentBuffer:Ljava/io/ByteArrayInputStream;

    .line 4
    iput p1, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->bufferSize:I

    .line 5
    iget-wide v0, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->currentAbsoluteReadPosition:J

    iput-wide v0, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->bufferStartOffset:J
    :try_end_0
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    .line 7
    :try_start_1
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->streamFaulted:Z

    .line 8
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Utility;->initIOException(Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->lastError:Ljava/io/IOException;

    .line 9
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
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
    invoke-direct {p0}, Lcom/microsoft/azure/storage/blob/BlobInputStream;->checkStreamState()V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->currentBuffer:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->currentBuffer:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->currentAbsoluteReadPosition:J

    iget-wide v2, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->streamLength:J

    iget-wide v4, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->blobRangeOffset:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 3
    iget v0, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->readSize:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->streamLength:J

    iget-wide v4, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->blobRangeOffset:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->currentAbsoluteReadPosition:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-direct {p0, v1}, Lcom/microsoft/azure/storage/blob/BlobInputStream;->dispatchRead(I)V

    .line 4
    :cond_1
    iget v0, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->readSize:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->currentBuffer:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result p3

    const/4 v0, 0x0

    if-lez p3, :cond_3

    .line 6
    iget-wide v1, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->currentAbsoluteReadPosition:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->currentAbsoluteReadPosition:J

    .line 7
    iget-boolean v1, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->validateBlobMd5:Z

    if-eqz v1, :cond_3

    .line 8
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->md5Digest:Ljava/security/MessageDigest;

    invoke-virtual {v1, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 9
    iget-wide p1, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->currentAbsoluteReadPosition:J

    iget-wide v1, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->streamLength:J

    iget-wide v3, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->blobRangeOffset:J

    add-long/2addr v1, v3

    cmp-long v3, p1, v1

    if-nez v3, :cond_3

    .line 10
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->md5Digest:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Base64;->encode([B)Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->retrievedContentMD5Value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    new-instance p2, Lcom/microsoft/azure/storage/StorageException;

    const-string v2, "InvalidMd5"

    const-string p3, "Blob data corrupted (integrity check failed), Expected value is %s, retrieved %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->retrievedContentMD5Value:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->lastError:Ljava/io/IOException;

    .line 15
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->streamFaulted:Z

    .line 16
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->lastError:Ljava/io/IOException;

    throw p1

    .line 17
    :cond_3
    :goto_0
    iget p1, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->markExpiry:I

    if-lez p1, :cond_4

    iget-wide p1, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->markedPosition:J

    iget v1, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->markExpiry:I

    int-to-long v1, v1

    add-long/2addr p1, v1

    iget-wide v1, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->currentAbsoluteReadPosition:J

    cmp-long v3, p1, v1

    if-gez v3, :cond_4

    .line 18
    iget-wide p1, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->blobRangeOffset:J

    iput-wide p1, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->markedPosition:J

    .line 19
    iput v0, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->markExpiry:I
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
    iput-wide p1, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->currentAbsoluteReadPosition:J

    .line 2
    new-instance p1, Ljava/io/ByteArrayInputStream;

    const/4 p2, 0x0

    new-array p2, p2, [B

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->currentBuffer:Ljava/io/ByteArrayInputStream;
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
    iget v0, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->bufferSize:I

    iget-wide v1, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->currentAbsoluteReadPosition:J

    iget-wide v3, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->bufferStartOffset:J
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
    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->currentBuffer:Ljava/io/ByteArrayInputStream;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->streamFaulted:Z

    .line 3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is already closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->lastError:Ljava/io/IOException;
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
    iget-wide v0, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->currentAbsoluteReadPosition:J

    iput-wide v0, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->markedPosition:J

    .line 2
    iput p1, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->markExpiry:I
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
    invoke-virtual {p0, v1, v2, v0}, Lcom/microsoft/azure/storage/blob/BlobInputStream;->read([BII)I

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

    invoke-virtual {p0, p1, v1, v0}, Lcom/microsoft/azure/storage/blob/BlobInputStream;->read([BII)I

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
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/BlobInputStream;->readInternal([BII)I

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
    iget-wide v0, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->markedPosition:J

    iget v2, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->markExpiry:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->currentAbsoluteReadPosition:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->validateBlobMd5:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->md5Digest:Ljava/security/MessageDigest;

    .line 4
    iget-wide v0, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->markedPosition:J

    invoke-direct {p0, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobInputStream;->reposition(J)V
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
    .locals 6

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
    iget-wide v0, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->currentAbsoluteReadPosition:J

    add-long/2addr v0, p1

    iget-wide v2, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->streamLength:J

    iget-wide v4, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->blobRangeOffset:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->validateBlobMd5:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->md5Digest:Ljava/security/MessageDigest;

    .line 5
    iget-wide v0, p0, Lcom/microsoft/azure/storage/blob/BlobInputStream;->currentAbsoluteReadPosition:J

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobInputStream;->reposition(J)V
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
