.class public Lcom/microsoft/azure/storage/blob/CloudBlobContainer$5;
.super Lcom/microsoft/azure/storage/core/StorageRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->existsImpl(ZLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

.field public final synthetic val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

.field public final synthetic val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

.field public final synthetic val$primaryOnly:Z


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;ZLcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$5;->this$0:Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    iput-boolean p4, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$5;->val$primaryOnly:Z

    iput-object p5, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$5;->val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iput-object p6, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$5;->val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    invoke-direct {p0, p2, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;-><init>(Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method


# virtual methods
.method public buildRequest(Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 2
    invoke-static {p2}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->access$000(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/StorageUri;->getUri(Lcom/microsoft/azure/storage/StorageLocation;)Ljava/net/URI;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$5;->val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$5;->val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    .line 3
    invoke-static {p1, p2, p3, v0}, Lcom/microsoft/azure/storage/blob/BlobRequest;->getContainerProperties(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildRequest(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$5;->buildRequest(Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public preProcessResponse(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Boolean;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p3

    invoke-virtual {p3}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result p3

    const/4 v0, 0x1

    const/16 v1, 0xc8

    if-ne p3, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p3

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->isUsePathStyleUris()Z

    move-result p2

    .line 4
    invoke-static {p3, p2}, Lcom/microsoft/azure/storage/blob/BlobResponse;->getBlobContainerAttributes(Ljava/net/HttpURLConnection;Z)Lcom/microsoft/azure/storage/blob/BlobContainerAttributes;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/blob/BlobContainerAttributes;->getMetadata()Ljava/util/HashMap;

    move-result-object p3

    iput-object p3, p1, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->metadata:Ljava/util/HashMap;

    .line 6
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/blob/BlobContainerAttributes;->getProperties()Lcom/microsoft/azure/storage/blob/BlobContainerProperties;

    move-result-object p3

    iput-object p3, p1, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->properties:Lcom/microsoft/azure/storage/blob/BlobContainerProperties;

    .line 7
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/blob/BlobContainerAttributes;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->name:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result p1

    const/16 p2, 0x194

    const/4 p3, 0x0

    if-ne p1, p2, :cond_1

    .line 10
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 11
    :cond_1
    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/core/StorageRequest;->setNonExceptionedRetryableFailure(Z)V

    .line 12
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic preProcessResponse(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$5;->preProcessResponse(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public setRequestLocationMode()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$5;->val$primaryOnly:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/microsoft/azure/storage/core/RequestLocationMode;->PRIMARY_ONLY:Lcom/microsoft/azure/storage/core/RequestLocationMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/microsoft/azure/storage/core/RequestLocationMode;->PRIMARY_OR_SECONDARY:Lcom/microsoft/azure/storage/core/RequestLocationMode;

    :goto_0
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

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$5;->signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method
