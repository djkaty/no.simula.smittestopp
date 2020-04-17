.class public Lcom/microsoft/azure/storage/blob/CloudBlobClient$1;
.super Lcom/microsoft/azure/storage/core/StorageRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/storage/blob/CloudBlobClient;->listContainersWithPrefixSegmentedImpl(Ljava/lang/String;Lcom/microsoft/azure/storage/blob/ContainerListingDetails;Ljava/lang/Integer;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;)Lcom/microsoft/azure/storage/core/StorageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/azure/storage/core/StorageRequest<",
        "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
        "Ljava/lang/Void;",
        "Lcom/microsoft/azure/storage/ResultSegment<",
        "Lcom/microsoft/azure/storage/blob/CloudBlobContainer;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

.field public final synthetic val$detailsIncluded:Lcom/microsoft/azure/storage/blob/ContainerListingDetails;

.field public final synthetic val$listingContext:Lcom/microsoft/azure/storage/core/ListingContext;

.field public final synthetic val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

.field public final synthetic val$segmentedRequest:Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;Lcom/microsoft/azure/storage/core/ListingContext;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/ContainerListingDetails;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobClient$1;->this$0:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    iput-object p4, p0, Lcom/microsoft/azure/storage/blob/CloudBlobClient$1;->val$segmentedRequest:Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;

    iput-object p5, p0, Lcom/microsoft/azure/storage/blob/CloudBlobClient$1;->val$listingContext:Lcom/microsoft/azure/storage/core/ListingContext;

    iput-object p6, p0, Lcom/microsoft/azure/storage/blob/CloudBlobClient$1;->val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iput-object p7, p0, Lcom/microsoft/azure/storage/blob/CloudBlobClient$1;->val$detailsIncluded:Lcom/microsoft/azure/storage/blob/ContainerListingDetails;

    invoke-direct {p0, p2, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;-><init>(Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method


# virtual methods
.method public buildRequest(Lcom/microsoft/azure/storage/blob/CloudBlobClient;Ljava/lang/Void;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 2
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/CloudBlobClient$1;->val$listingContext:Lcom/microsoft/azure/storage/core/ListingContext;

    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobClient$1;->val$segmentedRequest:Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;->getToken()Lcom/microsoft/azure/storage/ResultContinuation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobClient$1;->val$segmentedRequest:Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;->getToken()Lcom/microsoft/azure/storage/ResultContinuation;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/ResultContinuation;->getNextMarker()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p2, v0}, Lcom/microsoft/azure/storage/core/ListingContext;->setMarker(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object p2

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ServiceClient;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/microsoft/azure/storage/StorageCredentials;->transformUri(Lcom/microsoft/azure/storage/StorageUri;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/StorageUri;->getUri(Lcom/microsoft/azure/storage/StorageLocation;)Ljava/net/URI;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/CloudBlobClient$1;->val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobClient$1;->val$listingContext:Lcom/microsoft/azure/storage/core/ListingContext;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobClient$1;->val$detailsIncluded:Lcom/microsoft/azure/storage/blob/ContainerListingDetails;

    .line 6
    invoke-static {p1, p2, p3, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequest;->listContainers(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/core/ListingContext;Lcom/microsoft/azure/storage/blob/ContainerListingDetails;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildRequest(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlobClient$1;->buildRequest(Lcom/microsoft/azure/storage/blob/CloudBlobClient;Ljava/lang/Void;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public postProcessResponse(Ljava/net/HttpURLConnection;Ljava/lang/Void;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/ResultSegment;)Lcom/microsoft/azure/storage/ResultSegment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/lang/Void;",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobContainer;",
            ">;)",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobContainer;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 3
    invoke-static {p1, p3}, Lcom/microsoft/azure/storage/blob/ContainerListHandler;->getContainerList(Ljava/io/InputStream;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/core/ListResponse;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/core/ListResponse;->getNextMarker()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5
    new-instance p2, Lcom/microsoft/azure/storage/ResultContinuation;

    invoke-direct {p2}, Lcom/microsoft/azure/storage/ResultContinuation;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/core/ListResponse;->getNextMarker()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/microsoft/azure/storage/ResultContinuation;->setNextMarker(Ljava/lang/String;)V

    .line 7
    sget-object p3, Lcom/microsoft/azure/storage/ResultContinuationType;->CONTAINER:Lcom/microsoft/azure/storage/ResultContinuationType;

    invoke-virtual {p2, p3}, Lcom/microsoft/azure/storage/ResultContinuation;->setContinuationType(Lcom/microsoft/azure/storage/ResultContinuationType;)V

    .line 8
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p3

    invoke-virtual {p3}, Lcom/microsoft/azure/storage/RequestResult;->getTargetLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/microsoft/azure/storage/ResultContinuation;->setTargetLocation(Lcom/microsoft/azure/storage/StorageLocation;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 9
    :goto_0
    new-instance p3, Lcom/microsoft/azure/storage/ResultSegment;

    .line 10
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/core/ListResponse;->getResults()Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/core/ListResponse;->getMaxResults()Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p3, p4, p1, p2}, Lcom/microsoft/azure/storage/ResultSegment;-><init>(Ljava/util/ArrayList;Ljava/lang/Integer;Lcom/microsoft/azure/storage/ResultContinuation;)V

    .line 11
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobClient$1;->val$segmentedRequest:Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;

    invoke-virtual {p3}, Lcom/microsoft/azure/storage/ResultSegment;->getContinuationToken()Lcom/microsoft/azure/storage/ResultContinuation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;->setToken(Lcom/microsoft/azure/storage/ResultContinuation;)V

    return-object p3
.end method

.method public bridge synthetic postProcessResponse(Ljava/net/HttpURLConnection;Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    check-cast p3, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    check-cast p5, Lcom/microsoft/azure/storage/ResultSegment;

    invoke-virtual/range {p0 .. p5}, Lcom/microsoft/azure/storage/blob/CloudBlobClient$1;->postProcessResponse(Ljava/net/HttpURLConnection;Ljava/lang/Void;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/ResultSegment;)Lcom/microsoft/azure/storage/ResultSegment;

    move-result-object p1

    return-object p1
.end method

.method public preProcessResponse(Ljava/lang/Void;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobContainer;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result p1

    const/16 p2, 0xc8

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setNonExceptionedRetryableFailure(Z)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic preProcessResponse(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlobClient$1;->preProcessResponse(Ljava/lang/Void;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;

    move-result-object p1

    return-object p1
.end method

.method public setRequestLocationMode()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobClient$1;->val$segmentedRequest:Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;->getToken()Lcom/microsoft/azure/storage/ResultContinuation;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->getListingLocationMode(Lcom/microsoft/azure/storage/ResultContinuation;)Lcom/microsoft/azure/storage/core/RequestLocationMode;

    move-result-object v0

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlobClient$1;->signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method
