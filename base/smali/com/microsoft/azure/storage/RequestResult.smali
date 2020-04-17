.class public final Lcom/microsoft/azure/storage/RequestResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public contentMD5:Ljava/lang/String;

.field public errorCode:Ljava/lang/String;

.field public etag:Ljava/lang/String;

.field public exception:Ljava/lang/Exception;

.field public requestDate:Ljava/lang/String;

.field public requestServiceEncrypted:Z

.field public serviceRequestID:Ljava/lang/String;

.field public startDate:Ljava/util/Date;

.field public statusCode:I

.field public statusMessage:Ljava/lang/String;

.field public stopDate:Ljava/util/Date;

.field public targetLocation:Lcom/microsoft/azure/storage/StorageLocation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/microsoft/azure/storage/RequestResult;->statusCode:I

    return-void
.end method


# virtual methods
.method public getContentMD5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/RequestResult;->contentMD5:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/RequestResult;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/RequestResult;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/RequestResult;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getRequestDate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/RequestResult;->requestDate:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceRequestID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/RequestResult;->serviceRequestID:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/RequestResult;->startDate:Ljava/util/Date;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/azure/storage/RequestResult;->statusCode:I

    return v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/RequestResult;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStopDate()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/RequestResult;->stopDate:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/RequestResult;->stopDate:Ljava/util/Date;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/RequestResult;->stopDate:Ljava/util/Date;

    return-object v0
.end method

.method public getTargetLocation()Lcom/microsoft/azure/storage/StorageLocation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/RequestResult;->targetLocation:Lcom/microsoft/azure/storage/StorageLocation;

    return-object v0
.end method

.method public isRequestServiceEncrypted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/storage/RequestResult;->requestServiceEncrypted:Z

    return v0
.end method

.method public setContentMD5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/RequestResult;->contentMD5:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/RequestResult;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/RequestResult;->etag:Ljava/lang/String;

    return-void
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/RequestResult;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public setRequestDate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/RequestResult;->requestDate:Ljava/lang/String;

    return-void
.end method

.method public setRequestServiceEncrypted(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/azure/storage/RequestResult;->requestServiceEncrypted:Z

    return-void
.end method

.method public setServiceRequestID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/RequestResult;->serviceRequestID:Ljava/lang/String;

    return-void
.end method

.method public setStartDate(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/RequestResult;->startDate:Ljava/util/Date;

    return-void
.end method

.method public setStatusCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/microsoft/azure/storage/RequestResult;->statusCode:I

    return-void
.end method

.method public setStatusMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/RequestResult;->statusMessage:Ljava/lang/String;

    return-void
.end method

.method public setStopDate(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/RequestResult;->stopDate:Ljava/util/Date;

    return-void
.end method

.method public setTargetLocation(Lcom/microsoft/azure/storage/StorageLocation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/RequestResult;->targetLocation:Lcom/microsoft/azure/storage/StorageLocation;

    return-void
.end method
