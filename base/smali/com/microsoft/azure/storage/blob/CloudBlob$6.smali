.class public Lcom/microsoft/azure/storage/blob/CloudBlob$6;
.super Lcom/microsoft/azure/storage/core/StorageRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/storage/blob/CloudBlob;->createSnapshotImpl(Ljava/util/HashMap;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/azure/storage/core/StorageRequest<",
        "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
        "Lcom/microsoft/azure/storage/blob/CloudBlob;",
        "Lcom/microsoft/azure/storage/blob/CloudBlob;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/azure/storage/blob/CloudBlob;

.field public final synthetic val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

.field public final synthetic val$metadata:Ljava/util/HashMap;

.field public final synthetic val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$6;->this$0:Lcom/microsoft/azure/storage/blob/CloudBlob;

    iput-object p4, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$6;->val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iput-object p5, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$6;->val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    iput-object p6, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$6;->val$metadata:Ljava/util/HashMap;

    invoke-direct {p0, p2, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;-><init>(Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method


# virtual methods
.method public buildRequest(Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 2
    invoke-virtual {p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getTransformedAddress(Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/StorageUri;->getUri(Lcom/microsoft/azure/storage/StorageLocation;)Ljava/net/URI;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$6;->val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$6;->val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    invoke-static {p1, p2, p3, v0}, Lcom/microsoft/azure/storage/blob/BlobRequest;->snapshot(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildRequest(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlob;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlob$6;->buildRequest(Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public preProcessResponse(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/CloudBlob;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result p2

    const/4 p3, 0x0

    const/16 v0, 0xc9

    if-eq p2, v0, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setNonExceptionedRetryableFailure(Z)V

    return-object p3

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/azure/storage/blob/BlobResponse;->getSnapshotTime(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p2

    .line 5
    instance-of v0, p1, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;

    if-eqz v0, :cond_1

    .line 6
    new-instance p3, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$6;->this$0:Lcom/microsoft/azure/storage/blob/CloudBlob;

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getContainer()Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    move-result-object v1

    invoke-direct {p3, v0, p2, v1}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;)V

    goto :goto_0

    .line 7
    :cond_1
    instance-of v0, p1, Lcom/microsoft/azure/storage/blob/CloudPageBlob;

    if-eqz v0, :cond_2

    .line 8
    new-instance p3, Lcom/microsoft/azure/storage/blob/CloudPageBlob;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$6;->this$0:Lcom/microsoft/azure/storage/blob/CloudBlob;

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getContainer()Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    move-result-object v1

    invoke-direct {p3, v0, p2, v1}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;)V

    goto :goto_0

    .line 9
    :cond_2
    instance-of v0, p1, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;

    if-eqz v0, :cond_3

    .line 10
    new-instance p3, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$6;->this$0:Lcom/microsoft/azure/storage/blob/CloudBlob;

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getContainer()Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    move-result-object v1

    invoke-direct {p3, v0, p2, v1}, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;)V

    .line 11
    :cond_3
    :goto_0
    iget-object p2, p1, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {p3, p2}, Lcom/microsoft/azure/storage/blob/CloudBlob;->setProperties(Lcom/microsoft/azure/storage/blob/BlobProperties;)V

    .line 12
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$6;->val$metadata:Ljava/util/HashMap;

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    iget-object p2, p1, Lcom/microsoft/azure/storage/blob/CloudBlob;->metadata:Ljava/util/HashMap;

    :goto_1
    invoke-virtual {p3, p2}, Lcom/microsoft/azure/storage/blob/CloudBlob;->setMetadata(Ljava/util/HashMap;)V

    .line 13
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->updateEtagAndLastModifiedFromResponse(Ljava/net/HttpURLConnection;)V

    return-object p3
.end method

.method public bridge synthetic preProcessResponse(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/blob/CloudBlob;

    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlob$6;->preProcessResponse(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/CloudBlob;

    move-result-object p1

    return-object p1
.end method

.method public setHeaders(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 2
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$6;->val$metadata:Ljava/util/HashMap;

    if-eqz p2, :cond_0

    .line 3
    invoke-static {p1, p2, p3}, Lcom/microsoft/azure/storage/blob/BlobRequest;->addMetadata(Ljava/net/HttpURLConnection;Ljava/util/HashMap;Lcom/microsoft/azure/storage/OperationContext;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setHeaders(Ljava/net/HttpURLConnection;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlob;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlob$6;->setHeaders(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/OperationContext;)V

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlob$6;->signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method
