.class public Lcom/microsoft/azure/storage/file/CloudFile$6;
.super Lcom/microsoft/azure/storage/core/StorageRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/storage/file/CloudFile;->downloadToStreamImpl(Ljava/lang/Long;Ljava/lang/Long;Ljava/io/OutputStream;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/azure/storage/core/StorageRequest<",
        "Lcom/microsoft/azure/storage/file/CloudFileClient;",
        "Lcom/microsoft/azure/storage/file/CloudFile;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/azure/storage/file/CloudFile;

.field public final synthetic val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

.field public final synthetic val$fileOffset:Ljava/lang/Long;

.field public final synthetic val$length:Ljava/lang/Long;

.field public final synthetic val$options:Lcom/microsoft/azure/storage/file/FileRequestOptions;

.field public final synthetic val$outStream:Ljava/io/OutputStream;

.field public final synthetic val$startingOffset:J


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/file/CloudFile;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/Long;Ljava/lang/Long;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Ljava/io/OutputStream;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/CloudFile$6;->this$0:Lcom/microsoft/azure/storage/file/CloudFile;

    iput-object p4, p0, Lcom/microsoft/azure/storage/file/CloudFile$6;->val$fileOffset:Ljava/lang/Long;

    iput-object p5, p0, Lcom/microsoft/azure/storage/file/CloudFile$6;->val$length:Ljava/lang/Long;

    iput-object p6, p0, Lcom/microsoft/azure/storage/file/CloudFile$6;->val$options:Lcom/microsoft/azure/storage/file/FileRequestOptions;

    iput-object p7, p0, Lcom/microsoft/azure/storage/file/CloudFile$6;->val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    iput-object p8, p0, Lcom/microsoft/azure/storage/file/CloudFile$6;->val$outStream:Ljava/io/OutputStream;

    iput-wide p9, p0, Lcom/microsoft/azure/storage/file/CloudFile$6;->val$startingOffset:J

    invoke-direct {p0, p2, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;-><init>(Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method


# virtual methods
.method public buildRequest(Lcom/microsoft/azure/storage/file/CloudFileClient;Lcom/microsoft/azure/storage/file/CloudFile;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 9

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getOffset()Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/microsoft/azure/storage/file/CloudFile$6;->val$fileOffset:Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setOffset(Ljava/lang/Long;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getLength()Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/microsoft/azure/storage/file/CloudFile$6;->val$length:Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setLength(Ljava/lang/Long;)V

    .line 6
    :cond_1
    invoke-virtual {p2, p3}, Lcom/microsoft/azure/storage/file/CloudFile;->getTransformedAddress(Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/storage/StorageUri;->getUri(Lcom/microsoft/azure/storage/StorageLocation;)Ljava/net/URI;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/azure/storage/file/CloudFile$6;->val$options:Lcom/microsoft/azure/storage/file/FileRequestOptions;

    iget-object v4, p0, Lcom/microsoft/azure/storage/file/CloudFile$6;->val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    .line 7
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/file/CloudFile;->getShare()Lcom/microsoft/azure/storage/file/CloudFileShare;

    move-result-object p1

    iget-object v5, p1, Lcom/microsoft/azure/storage/file/CloudFileShare;->snapshotID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getOffset()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getLength()Ljava/lang/Long;

    move-result-object v7

    iget-object p1, p0, Lcom/microsoft/azure/storage/file/CloudFile$6;->val$options:Lcom/microsoft/azure/storage/file/FileRequestOptions;

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->getUseTransactionalContentMD5()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getArePropertiesPopulated()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    const/4 v8, 0x0

    :goto_0
    move-object v3, p3

    .line 9
    invoke-static/range {v1 .. v8}, Lcom/microsoft/azure/storage/file/FileRequest;->getFile(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildRequest(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/file/CloudFileClient;

    check-cast p2, Lcom/microsoft/azure/storage/file/CloudFile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFile$6;->buildRequest(Lcom/microsoft/azure/storage/file/CloudFileClient;Lcom/microsoft/azure/storage/file/CloudFile;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public postProcessResponse(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/file/CloudFile;Lcom/microsoft/azure/storage/file/CloudFileClient;Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 16

    move-object/from16 v12, p0

    .line 2
    iget-object v0, v12, Lcom/microsoft/azure/storage/file/CloudFile$6;->val$options:Lcom/microsoft/azure/storage/file/FileRequestOptions;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->getDisableContentMD5Validation()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getContentMD5()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Content-Length"

    move-object/from16 v2, p1

    .line 5
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    new-array v1, v14, [Ljava/lang/Object;

    .line 7
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v13

    const-string v5, "Creating a NetworkInputStream and expecting to read %s bytes."

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v7, p4

    invoke-static {v7, v1}, Lcom/microsoft/azure/storage/core/Logger;->info(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)V

    .line 8
    new-instance v15, Lcom/microsoft/azure/storage/core/NetworkInputStream;

    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v15, v1, v3, v4}, Lcom/microsoft/azure/storage/core/NetworkInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 9
    :try_start_0
    iget-object v2, v12, Lcom/microsoft/azure/storage/file/CloudFile$6;->val$outStream:Ljava/io/OutputStream;

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v8, v12, Lcom/microsoft/azure/storage/file/CloudFile$6;->val$options:Lcom/microsoft/azure/storage/file/FileRequestOptions;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentDescriptor()Lcom/microsoft/azure/storage/core/StreamMd5AndLength;

    move-result-object v11

    move-object v1, v15

    move-object/from16 v7, p4

    move-object/from16 v10, p0

    .line 11
    invoke-static/range {v1 .. v11}, Lcom/microsoft/azure/storage/core/Utility;->writeToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;JZZLcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/RequestOptions;Ljava/lang/Boolean;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/core/StreamMd5AndLength;)Lcom/microsoft/azure/storage/core/StreamMd5AndLength;

    move-result-object v1

    .line 12
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getContentMD5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    new-instance v0, Lcom/microsoft/azure/storage/StorageException;

    const-string v3, "InvalidMd5"

    const-string v2, "File hash mismatch (integrity check failed), Expected value is %s, retrieved %s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getContentMD5()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v13

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getMd5()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v14

    .line 15
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x132

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :cond_2
    :goto_1
    invoke-virtual {v15}, Lcom/microsoft/azure/storage/core/NetworkInputStream;->close()V

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v15}, Lcom/microsoft/azure/storage/core/NetworkInputStream;->close()V

    .line 17
    throw v0
.end method

.method public bridge synthetic postProcessResponse(Ljava/net/HttpURLConnection;Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lcom/microsoft/azure/storage/file/CloudFile;

    check-cast p3, Lcom/microsoft/azure/storage/file/CloudFileClient;

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p5}, Lcom/microsoft/azure/storage/file/CloudFile$6;->postProcessResponse(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/file/CloudFile;Lcom/microsoft/azure/storage/file/CloudFileClient;Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public preProcessResponse(Lcom/microsoft/azure/storage/file/CloudFile;Lcom/microsoft/azure/storage/file/CloudFileClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Integer;
    .locals 7

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    const/16 v1, 0xce

    if-eq p2, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result p2

    const/16 v1, 0xc8

    if-eq p2, v1, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/core/StorageRequest;->setNonExceptionedRetryableFailure(Z)V

    return-object p3

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getArePropertiesPopulated()Z

    move-result p2

    if-nez p2, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/CloudFile;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v1

    .line 8
    invoke-static {p2, v1}, Lcom/microsoft/azure/storage/file/FileResponse;->getFileAttributes(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/StorageUri;)Lcom/microsoft/azure/storage/file/FileAttributes;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/file/FileAttributes;->getProperties()Lcom/microsoft/azure/storage/file/FileProperties;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/microsoft/azure/storage/file/CloudFile;->access$102(Lcom/microsoft/azure/storage/file/CloudFile;Lcom/microsoft/azure/storage/file/FileProperties;)Lcom/microsoft/azure/storage/file/FileProperties;

    .line 10
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/file/FileAttributes;->getMetadata()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/microsoft/azure/storage/file/CloudFile;->access$002(Lcom/microsoft/azure/storage/file/CloudFile;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 11
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p2

    const-string v1, "Content-MD5"

    invoke-virtual {p2, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->setContentMD5(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/microsoft/azure/storage/file/CloudFile$6;->val$options:Lcom/microsoft/azure/storage/file/FileRequestOptions;

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->getDisableContentMD5Validation()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/microsoft/azure/storage/file/CloudFile$6;->val$options:Lcom/microsoft/azure/storage/file/FileRequestOptions;

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->getUseTransactionalContentMD5()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 13
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getContentMD5()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    new-instance p1, Lcom/microsoft/azure/storage/StorageException;

    const/16 v4, 0x132

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v2, "MissingContentMD5Header"

    const-string v3, "ContentMD5 header is missing in the response."

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V

    throw p1

    .line 15
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/microsoft/azure/storage/file/CloudFile;->access$100(Lcom/microsoft/azure/storage/file/CloudFile;)Lcom/microsoft/azure/storage/file/FileProperties;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/FileProperties;->getEtag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setLockedETag(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/core/StorageRequest;->setArePropertiesPopulated(Z)V

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getLockedETag()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 18
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getLockedETag()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/microsoft/azure/storage/file/CloudFile;->access$100(Lcom/microsoft/azure/storage/file/CloudFile;)Lcom/microsoft/azure/storage/file/FileProperties;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/FileProperties;->getEtag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 19
    :cond_4
    new-instance p1, Lcom/microsoft/azure/storage/StorageException;

    sget-object p2, Lcom/microsoft/azure/storage/StorageErrorCode;->CONDITION_FAILED:Lcom/microsoft/azure/storage/StorageErrorCode;

    const/16 v3, 0x19c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, "CONDITION_FAILED"

    const-string v2, "The conditionals specified for this operation did not match server."

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V

    throw p1

    .line 20
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestResult;->getTargetLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object p1

    sget-object p2, Lcom/microsoft/azure/storage/StorageLocation;->PRIMARY:Lcom/microsoft/azure/storage/StorageLocation;

    if-ne p1, p2, :cond_6

    sget-object p1, Lcom/microsoft/azure/storage/core/RequestLocationMode;->PRIMARY_ONLY:Lcom/microsoft/azure/storage/core/RequestLocationMode;

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/microsoft/azure/storage/core/RequestLocationMode;->SECONDARY_ONLY:Lcom/microsoft/azure/storage/core/RequestLocationMode;

    :goto_2
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setRequestLocationMode(Lcom/microsoft/azure/storage/core/RequestLocationMode;)V

    return-object p3
.end method

.method public bridge synthetic preProcessResponse(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/file/CloudFile;

    check-cast p2, Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFile$6;->preProcessResponse(Lcom/microsoft/azure/storage/file/CloudFile;Lcom/microsoft/azure/storage/file/CloudFileClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public recoveryAction(Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getETagLockCondition()Lcom/microsoft/azure/storage/AccessCondition;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getLockedETag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    new-instance p1, Lcom/microsoft/azure/storage/AccessCondition;

    invoke-direct {p1}, Lcom/microsoft/azure/storage/AccessCondition;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getLockedETag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/storage/AccessCondition;->setIfMatch(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFile$6;->val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/AccessCondition;->getLeaseID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/storage/AccessCondition;->setLeaseID(Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setETagLockCondition(Lcom/microsoft/azure/storage/AccessCondition;)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentRequestByteCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    .line 8
    iget-wide v0, p0, Lcom/microsoft/azure/storage/file/CloudFile$6;->val$startingOffset:J

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentRequestByteCount()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setOffset(Ljava/lang/Long;)V

    .line 9
    iget-object p1, p0, Lcom/microsoft/azure/storage/file/CloudFile$6;->val$length:Ljava/lang/Long;

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentRequestByteCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setLength(Ljava/lang/Long;)V

    :cond_2
    return-void
.end method

.method public setRequestLocationMode()V
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/core/RequestLocationMode;->PRIMARY_OR_SECONDARY:Lcom/microsoft/azure/storage/core/RequestLocationMode;

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/core/StorageRequest;->setRequestLocationMode(Lcom/microsoft/azure/storage/core/RequestLocationMode;)V

    return-void
.end method

.method public signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/file/CloudFileClient;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 2
    invoke-static {p1, p2, v0, v1, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;->signBlobQueueAndFileRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/ServiceClient;JLcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public bridge synthetic signRequest(Ljava/net/HttpURLConnection;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/file/CloudFile$6;->signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/file/CloudFileClient;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method
