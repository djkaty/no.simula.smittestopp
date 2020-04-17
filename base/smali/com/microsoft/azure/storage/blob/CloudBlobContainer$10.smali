.class public Lcom/microsoft/azure/storage/blob/CloudBlobContainer$10;
.super Lcom/microsoft/azure/storage/core/StorageRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->acquireLeaseImpl(Ljava/lang/Integer;Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

.field public final synthetic val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

.field public final synthetic val$leaseTimeInSeconds:Ljava/lang/Integer;

.field public final synthetic val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

.field public final synthetic val$proposedLeaseId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$10;->this$0:Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    iput-object p4, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$10;->val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iput-object p5, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$10;->val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    iput-object p6, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$10;->val$leaseTimeInSeconds:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$10;->val$proposedLeaseId:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;-><init>(Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method


# virtual methods
.method public buildRequest(Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 8

    .line 2
    invoke-static {p2}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->access$000(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/StorageUri;->getUri(Lcom/microsoft/azure/storage/StorageLocation;)Ljava/net/URI;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$10;->val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iget-object v3, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$10;->val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    sget-object v4, Lcom/microsoft/azure/storage/blob/LeaseAction;->ACQUIRE:Lcom/microsoft/azure/storage/blob/LeaseAction;

    iget-object v5, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$10;->val$leaseTimeInSeconds:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$10;->val$proposedLeaseId:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v2, p3

    invoke-static/range {v0 .. v7}, Lcom/microsoft/azure/storage/blob/BlobRequest;->leaseContainer(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/LeaseAction;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildRequest(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$10;->buildRequest(Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic preProcessResponse(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$10;->preProcessResponse(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public preProcessResponse(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result p2

    const/16 p3, 0xc9

    if-eq p2, p3, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setNonExceptionedRetryableFailure(Z)V

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->updatePropertiesFromResponse(Ljava/net/HttpURLConnection;)V

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/azure/storage/blob/BlobResponse;->getLeaseID(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p1

    return-object p1
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

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$10;->signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method
