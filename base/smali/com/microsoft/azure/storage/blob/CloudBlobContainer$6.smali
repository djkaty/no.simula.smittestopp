.class public Lcom/microsoft/azure/storage/blob/CloudBlobContainer$6;
.super Lcom/microsoft/azure/storage/core/StorageRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getBlobReferenceFromServerImpl(Ljava/lang/String;Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/azure/storage/core/StorageRequest<",
        "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
        "Lcom/microsoft/azure/storage/blob/CloudBlobContainer;",
        "Lcom/microsoft/azure/storage/blob/CloudBlob;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

.field public final synthetic val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

.field public final synthetic val$blobName:Ljava/lang/String;

.field public final synthetic val$blobUri:Lcom/microsoft/azure/storage/StorageUri;

.field public final synthetic val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

.field public final synthetic val$snapshotID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$6;->this$0:Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    iput-object p4, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$6;->val$blobUri:Lcom/microsoft/azure/storage/StorageUri;

    iput-object p5, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$6;->val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iput-object p6, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$6;->val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    iput-object p7, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$6;->val$snapshotID:Ljava/lang/String;

    iput-object p8, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$6;->val$blobName:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;-><init>(Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method


# virtual methods
.method public buildRequest(Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$6;->this$0:Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getServiceClient()Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$6;->val$blobUri:Lcom/microsoft/azure/storage/StorageUri;

    invoke-virtual {p1, p2, p3}, Lcom/microsoft/azure/storage/StorageCredentials;->transformUri(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/StorageUri;->getUri(Lcom/microsoft/azure/storage/StorageLocation;)Ljava/net/URI;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$6;->val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$6;->val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$6;->val$snapshotID:Ljava/lang/String;

    invoke-static {p1, p2, p3, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequest;->getBlobProperties(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildRequest(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$6;->buildRequest(Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public preProcessResponse(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/CloudBlob;
    .locals 6

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result p2

    const/4 p3, 0x1

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_0

    .line 3
    invoke-virtual {p0, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;->setNonExceptionedRetryableFailure(Z)V

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p2

    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$6;->val$blobUri:Lcom/microsoft/azure/storage/StorageUri;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$6;->val$snapshotID:Ljava/lang/String;

    invoke-static {p2, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobResponse;->getBlobAttributes(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/BlobAttributes;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/blob/BlobAttributes;->getProperties()Lcom/microsoft/azure/storage/blob/BlobProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, p3, :cond_3

    const/4 p3, 0x2

    if-eq v0, p3, :cond_2

    const/4 p3, 0x3

    if-ne v0, p3, :cond_1

    .line 6
    iget-object p3, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$6;->val$blobName:Ljava/lang/String;

    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$6;->val$snapshotID:Ljava/lang/String;

    invoke-virtual {p1, p3, v0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getAppendBlobReference(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CloudAppendBlob;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Lcom/microsoft/azure/storage/StorageException;

    const/16 v3, 0x132

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, "IncorrectBlobType"

    const-string v2, "The response received is invalid or improperly formatted."

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V

    throw p1

    .line 8
    :cond_2
    iget-object p3, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$6;->val$blobName:Ljava/lang/String;

    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$6;->val$snapshotID:Ljava/lang/String;

    invoke-virtual {p1, p3, v0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getPageBlobReference(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CloudPageBlob;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_3
    iget-object p3, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$6;->val$blobName:Ljava/lang/String;

    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$6;->val$snapshotID:Ljava/lang/String;

    invoke-virtual {p1, p3, v0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getBlockBlobReference(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CloudBlockBlob;

    move-result-object p1

    .line 10
    :goto_0
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/blob/BlobAttributes;->getProperties()Lcom/microsoft/azure/storage/blob/BlobProperties;

    move-result-object p3

    iput-object p3, p1, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    .line 11
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/blob/BlobAttributes;->getMetadata()Ljava/util/HashMap;

    move-result-object p2

    iput-object p2, p1, Lcom/microsoft/azure/storage/blob/CloudBlob;->metadata:Ljava/util/HashMap;

    return-object p1
.end method

.method public bridge synthetic preProcessResponse(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$6;->preProcessResponse(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/CloudBlob;

    move-result-object p1

    return-object p1
.end method

.method public setRequestLocationMode()V
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/core/RequestLocationMode;->PRIMARY_OR_SECONDARY:Lcom/microsoft/azure/storage/core/RequestLocationMode;

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/core/StorageRequest;->setRequestLocationMode(Lcom/microsoft/azure/storage/core/RequestLocationMode;)V

    return-void
.end method

.method public signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 2
    invoke-static {p1, p2, v0, v1, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;->signBlobQueueAndFileRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/ServiceClient;JLcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public bridge synthetic signRequest(Ljava/net/HttpURLConnection;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$6;->signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method
