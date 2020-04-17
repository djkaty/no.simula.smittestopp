.class public abstract Lcom/microsoft/azure/storage/core/StorageRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public arePropertiesPopulated:Z

.field public connection:Ljava/net/HttpURLConnection;

.field public contentMD5:Ljava/lang/String;

.field public currentDescriptor:Lcom/microsoft/azure/storage/core/StreamMd5AndLength;

.field public currentLocation:Lcom/microsoft/azure/storage/StorageLocation;

.field public currentRequestByteCount:J

.field public etagLockCondition:Lcom/microsoft/azure/storage/AccessCondition;

.field public exceptionReference:Lcom/microsoft/azure/storage/StorageException;

.field public isSent:Z

.field public length:Ljava/lang/Long;

.field public locationMode:Lcom/microsoft/azure/storage/LocationMode;

.field public lockedETag:Ljava/lang/String;

.field public nonExceptionedRetryableFailure:Z

.field public offset:Ljava/lang/Long;

.field public requestLocationMode:Lcom/microsoft/azure/storage/core/RequestLocationMode;

.field public requestOptions:Lcom/microsoft/azure/storage/RequestOptions;

.field public result:Lcom/microsoft/azure/storage/RequestResult;

.field public sendStream:Ljava/io/InputStream;

.field public storageUri:Lcom/microsoft/azure/storage/StorageUri;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->offset:Ljava/lang/Long;

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->length:Ljava/lang/Long;

    .line 4
    iput-object v0, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->lockedETag:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->etagLockCondition:Lcom/microsoft/azure/storage/AccessCondition;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->arePropertiesPopulated:Z

    .line 7
    iput-object v0, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->contentMD5:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->currentDescriptor:Lcom/microsoft/azure/storage/core/StreamMd5AndLength;

    const-wide/16 v2, 0x0

    .line 9
    iput-wide v2, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->currentRequestByteCount:J

    .line 10
    iput-boolean v1, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->isSent:Z

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;)V
    .locals 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->offset:Ljava/lang/Long;

    .line 13
    iput-object v0, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->length:Ljava/lang/Long;

    .line 14
    iput-object v0, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->lockedETag:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->etagLockCondition:Lcom/microsoft/azure/storage/AccessCondition;

    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->arePropertiesPopulated:Z

    .line 17
    iput-object v0, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->contentMD5:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->currentDescriptor:Lcom/microsoft/azure/storage/core/StreamMd5AndLength;

    const-wide/16 v2, 0x0

    .line 19
    iput-wide v2, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->currentRequestByteCount:J

    .line 20
    iput-boolean v1, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->isSent:Z

    .line 21
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setRequestOptions(Lcom/microsoft/azure/storage/RequestOptions;)V

    .line 22
    invoke-virtual {p0, p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->setStorageUri(Lcom/microsoft/azure/storage/StorageUri;)V

    .line 23
    sget-object p1, Lcom/microsoft/azure/storage/LocationMode;->PRIMARY_ONLY:Lcom/microsoft/azure/storage/LocationMode;

    iput-object p1, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->locationMode:Lcom/microsoft/azure/storage/LocationMode;

    .line 24
    sget-object p1, Lcom/microsoft/azure/storage/core/RequestLocationMode;->PRIMARY_ONLY:Lcom/microsoft/azure/storage/core/RequestLocationMode;

    iput-object p1, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->requestLocationMode:Lcom/microsoft/azure/storage/core/RequestLocationMode;

    return-void
.end method

.method public static final signBlobQueueAndFileRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/ServiceClient;JLcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object p1

    invoke-static {p1, p0, p2, p3, p4}, Lcom/microsoft/azure/storage/core/StorageCredentialsHelper;->signBlobQueueAndFileRequest(Lcom/microsoft/azure/storage/StorageCredentials;Ljava/net/HttpURLConnection;JLcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public static final signTableRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/ServiceClient;JLcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object p1

    invoke-static {p1, p0, p2, p3, p4}, Lcom/microsoft/azure/storage/core/StorageCredentialsHelper;->signTableRequest(Lcom/microsoft/azure/storage/StorageCredentials;Ljava/net/HttpURLConnection;JLcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method


# virtual methods
.method public applyLocationModeToRequest()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getRequestOptions()Lcom/microsoft/azure/storage/RequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/RequestOptions;->getLocationMode()Lcom/microsoft/azure/storage/LocationMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getRequestOptions()Lcom/microsoft/azure/storage/RequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/RequestOptions;->getLocationMode()Lcom/microsoft/azure/storage/LocationMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/core/StorageRequest;->setLocationMode(Lcom/microsoft/azure/storage/LocationMode;)V

    :cond_0
    return-void
.end method

.method public abstract buildRequest(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TP;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation
.end method

.method public getArePropertiesPopulated()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->arePropertiesPopulated:Z

    return v0
.end method

.method public final getConnection()Ljava/net/HttpURLConnection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public final getContentMD5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->contentMD5:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentDescriptor()Lcom/microsoft/azure/storage/core/StreamMd5AndLength;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->currentDescriptor:Lcom/microsoft/azure/storage/core/StreamMd5AndLength;

    return-object v0
.end method

.method public getCurrentLocation()Lcom/microsoft/azure/storage/StorageLocation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->currentLocation:Lcom/microsoft/azure/storage/StorageLocation;

    return-object v0
.end method

.method public getCurrentRequestByteCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->currentRequestByteCount:J

    return-wide v0
.end method

.method public getETagLockCondition()Lcom/microsoft/azure/storage/AccessCondition;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->etagLockCondition:Lcom/microsoft/azure/storage/AccessCondition;

    return-object v0
.end method

.method public final getException()Lcom/microsoft/azure/storage/StorageException;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->exceptionReference:Lcom/microsoft/azure/storage/StorageException;

    return-object v0
.end method

.method public getLength()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->length:Ljava/lang/Long;

    return-object v0
.end method

.method public getLocationMode()Lcom/microsoft/azure/storage/LocationMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->locationMode:Lcom/microsoft/azure/storage/LocationMode;

    return-object v0
.end method

.method public final getLockedETag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->lockedETag:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->offset:Ljava/lang/Long;

    return-object v0
.end method

.method public getRequestLocationMode()Lcom/microsoft/azure/storage/core/RequestLocationMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->requestLocationMode:Lcom/microsoft/azure/storage/core/RequestLocationMode;

    return-object v0
.end method

.method public final getRequestOptions()Lcom/microsoft/azure/storage/RequestOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->requestOptions:Lcom/microsoft/azure/storage/RequestOptions;

    return-object v0
.end method

.method public final getResult()Lcom/microsoft/azure/storage/RequestResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->result:Lcom/microsoft/azure/storage/RequestResult;

    return-object v0
.end method

.method public final getSendStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->sendStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getStorageUri()Lcom/microsoft/azure/storage/StorageUri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    return-object v0
.end method

.method public final initialize(Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/RequestResult;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/RequestResult;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/core/StorageRequest;->setResult(Lcom/microsoft/azure/storage/RequestResult;)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/microsoft/azure/storage/OperationContext;->appendRequestResult(Lcom/microsoft/azure/storage/RequestResult;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setException(Lcom/microsoft/azure/storage/StorageException;)V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setNonExceptionedRetryableFailure(Z)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setIsSent(Z)V

    return-void
.end method

.method public initializeLocation()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getLocationMode()Lcom/microsoft/azure/storage/LocationMode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "locationMode"

    aput-object v4, v2, v3

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getLocationMode()Lcom/microsoft/azure/storage/LocationMode;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "The argument is out of range. Argument name: %s, Value passed: %s."

    .line 5
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/microsoft/azure/storage/StorageLocation;->SECONDARY:Lcom/microsoft/azure/storage/StorageLocation;

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/core/StorageRequest;->setCurrentLocation(Lcom/microsoft/azure/storage/StorageLocation;)V

    goto :goto_1

    .line 7
    :cond_2
    sget-object v0, Lcom/microsoft/azure/storage/StorageLocation;->PRIMARY:Lcom/microsoft/azure/storage/StorageLocation;

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/core/StorageRequest;->setCurrentLocation(Lcom/microsoft/azure/storage/StorageLocation;)V

    goto :goto_1

    .line 8
    :cond_3
    sget-object v0, Lcom/microsoft/azure/storage/StorageLocation;->PRIMARY:Lcom/microsoft/azure/storage/StorageLocation;

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/core/StorageRequest;->setCurrentLocation(Lcom/microsoft/azure/storage/StorageLocation;)V

    :goto_1
    return-void
.end method

.method public final isNonExceptionedRetryableFailure()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->nonExceptionedRetryableFailure:Z

    return v0
.end method

.method public isSent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->isSent:Z

    return v0
.end method

.method public final materializeException(Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageException;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getException()Lcom/microsoft/azure/storage/StorageException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getException()Lcom/microsoft/azure/storage/StorageException;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-static {p0, v0, p1}, Lcom/microsoft/azure/storage/StorageException;->translateException(Lcom/microsoft/azure/storage/core/StorageRequest;Ljava/lang/Exception;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object p1

    return-object p1
.end method

.method public parseErrorDetails()Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/azure/storage/core/StorageErrorHandler;->getExtendedErrorInformation(Ljava/io/InputStream;)Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public postProcessResponse(Ljava/net/HttpURLConnection;Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "TP;TC;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            "TR;)TR;"
        }
    .end annotation

    return-object p5
.end method

.method public abstract preProcessResponse(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;TC;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")TR;"
        }
    .end annotation
.end method

.method public recoveryAction(Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    return-void
.end method

.method public setArePropertiesPopulated(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->arePropertiesPopulated:Z

    return-void
.end method

.method public final setConnection(Ljava/net/HttpURLConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->connection:Ljava/net/HttpURLConnection;

    return-void
.end method

.method public setContentMD5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->contentMD5:Ljava/lang/String;

    return-void
.end method

.method public setCurrentDescriptor(Lcom/microsoft/azure/storage/core/StreamMd5AndLength;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->currentDescriptor:Lcom/microsoft/azure/storage/core/StreamMd5AndLength;

    return-void
.end method

.method public setCurrentLocation(Lcom/microsoft/azure/storage/StorageLocation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->currentLocation:Lcom/microsoft/azure/storage/StorageLocation;

    return-void
.end method

.method public setCurrentRequestByteCount(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->currentRequestByteCount:J

    return-void
.end method

.method public setETagLockCondition(Lcom/microsoft/azure/storage/AccessCondition;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->etagLockCondition:Lcom/microsoft/azure/storage/AccessCondition;

    return-void
.end method

.method public final setException(Lcom/microsoft/azure/storage/StorageException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->exceptionReference:Lcom/microsoft/azure/storage/StorageException;

    return-void
.end method

.method public setHeaders(Ljava/net/HttpURLConnection;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "TP;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public setIsSent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->isSent:Z

    return-void
.end method

.method public setLength(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->length:Ljava/lang/Long;

    return-void
.end method

.method public setLocationMode(Lcom/microsoft/azure/storage/LocationMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->locationMode:Lcom/microsoft/azure/storage/LocationMode;

    return-void
.end method

.method public setLockedETag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->lockedETag:Ljava/lang/String;

    return-void
.end method

.method public final setNonExceptionedRetryableFailure(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->nonExceptionedRetryableFailure:Z

    return-void
.end method

.method public setOffset(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->offset:Ljava/lang/Long;

    return-void
.end method

.method public setRequestLocationMode()V
    .locals 0

    return-void
.end method

.method public setRequestLocationMode(Lcom/microsoft/azure/storage/core/RequestLocationMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->requestLocationMode:Lcom/microsoft/azure/storage/core/RequestLocationMode;

    return-void
.end method

.method public final setRequestOptions(Lcom/microsoft/azure/storage/RequestOptions;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->requestOptions:Lcom/microsoft/azure/storage/RequestOptions;

    return-void
.end method

.method public final setResult(Lcom/microsoft/azure/storage/RequestResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->result:Lcom/microsoft/azure/storage/RequestResult;

    return-void
.end method

.method public setSendStream(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->sendStream:Ljava/io/InputStream;

    return-void
.end method

.method public setStorageUri(Lcom/microsoft/azure/storage/StorageUri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    return-void
.end method

.method public abstract signRequest(Ljava/net/HttpURLConnection;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "TC;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")V"
        }
    .end annotation
.end method

.method public validateLocation()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->locationMode:Lcom/microsoft/azure/storage/LocationMode;

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/StorageUri;->validateLocationMode(Lcom/microsoft/azure/storage/LocationMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The URI for the target storage location is not specified. Please consider changing the request\'s location mode."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getRequestLocationMode()Lcom/microsoft/azure/storage/core/RequestLocationMode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getLocationMode()Lcom/microsoft/azure/storage/LocationMode;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/storage/LocationMode;->PRIMARY_ONLY:Lcom/microsoft/azure/storage/LocationMode;

    if-eq v0, v1, :cond_3

    .line 6
    sget-object v0, Lcom/microsoft/azure/storage/StorageLocation;->SECONDARY:Lcom/microsoft/azure/storage/StorageLocation;

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/core/StorageRequest;->setCurrentLocation(Lcom/microsoft/azure/storage/StorageLocation;)V

    .line 7
    sget-object v0, Lcom/microsoft/azure/storage/LocationMode;->SECONDARY_ONLY:Lcom/microsoft/azure/storage/LocationMode;

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/core/StorageRequest;->setLocationMode(Lcom/microsoft/azure/storage/LocationMode;)V

    goto :goto_1

    .line 8
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This operation can only be executed against the secondary storage location."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getLocationMode()Lcom/microsoft/azure/storage/LocationMode;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/storage/LocationMode;->SECONDARY_ONLY:Lcom/microsoft/azure/storage/LocationMode;

    if-eq v0, v1, :cond_5

    .line 10
    sget-object v0, Lcom/microsoft/azure/storage/StorageLocation;->PRIMARY:Lcom/microsoft/azure/storage/StorageLocation;

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/core/StorageRequest;->setCurrentLocation(Lcom/microsoft/azure/storage/StorageLocation;)V

    .line 11
    sget-object v0, Lcom/microsoft/azure/storage/LocationMode;->PRIMARY_ONLY:Lcom/microsoft/azure/storage/LocationMode;

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/core/StorageRequest;->setLocationMode(Lcom/microsoft/azure/storage/LocationMode;)V

    .line 12
    :goto_1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/core/StorageRequest;->currentLocation:Lcom/microsoft/azure/storage/StorageLocation;

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/RequestResult;->setTargetLocation(Lcom/microsoft/azure/storage/StorageLocation;)V

    return-void

    .line 13
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This operation can only be executed against the primary storage location."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validateStreamWrite(Lcom/microsoft/azure/storage/core/StreamMd5AndLength;)V
    .locals 0

    return-void
.end method
