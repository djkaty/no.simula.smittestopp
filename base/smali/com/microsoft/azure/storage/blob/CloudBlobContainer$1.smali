.class public Lcom/microsoft/azure/storage/blob/CloudBlobContainer$1;
.super Lcom/microsoft/azure/storage/core/StorageRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->createImpl(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;)Lcom/microsoft/azure/storage/core/StorageRequest;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

.field public final synthetic val$accessType:Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;

.field public final synthetic val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$1;->this$0:Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    iput-object p4, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$1;->val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iput-object p5, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$1;->val$accessType:Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;

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

    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$1;->val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$1;->val$accessType:Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;

    .line 3
    invoke-static {p1, p2, p3, v0}, Lcom/microsoft/azure/storage/blob/BlobRequest;->createContainer(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildRequest(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$1;->buildRequest(Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic preProcessResponse(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$1;->preProcessResponse(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public preProcessResponse(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Void;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p3

    invoke-virtual {p3}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result p3

    const/4 v0, 0x0

    const/16 v1, 0xc9

    if-eq p3, v1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setNonExceptionedRetryableFailure(Z)V

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p3

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->isUsePathStyleUris()Z

    move-result p2

    .line 5
    invoke-static {p3, p2}, Lcom/microsoft/azure/storage/blob/BlobResponse;->getBlobContainerAttributes(Ljava/net/HttpURLConnection;Z)Lcom/microsoft/azure/storage/blob/BlobContainerAttributes;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/blob/BlobContainerAttributes;->getProperties()Lcom/microsoft/azure/storage/blob/BlobContainerProperties;

    move-result-object p3

    iput-object p3, p1, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->properties:Lcom/microsoft/azure/storage/blob/BlobContainerProperties;

    .line 7
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/blob/BlobContainerAttributes;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->name:Ljava/lang/String;

    .line 8
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$1;->val$accessType:Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;

    if-eqz p2, :cond_1

    .line 9
    iget-object p1, p1, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->properties:Lcom/microsoft/azure/storage/blob/BlobContainerProperties;

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;->setPublicAccess(Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p1, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->properties:Lcom/microsoft/azure/storage/blob/BlobContainerProperties;

    sget-object p2, Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;->OFF:Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;->setPublicAccess(Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;)V

    :goto_0
    return-object v0
.end method

.method public setHeaders(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 2
    iget-object p2, p2, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->metadata:Ljava/util/HashMap;

    invoke-static {p1, p2, p3}, Lcom/microsoft/azure/storage/blob/BlobRequest;->addMetadata(Ljava/net/HttpURLConnection;Ljava/util/HashMap;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public bridge synthetic setHeaders(Ljava/net/HttpURLConnection;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$1;->setHeaders(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2
    invoke-static {p1, p2, v0, v1, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;->signBlobQueueAndFileRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/ServiceClient;JLcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public bridge synthetic signRequest(Ljava/net/HttpURLConnection;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$1;->signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method
