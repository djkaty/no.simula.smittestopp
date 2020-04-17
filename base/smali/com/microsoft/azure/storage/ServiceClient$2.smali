.class public Lcom/microsoft/azure/storage/ServiceClient$2;
.super Lcom/microsoft/azure/storage/core/StorageRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/storage/ServiceClient;->getServiceStatsImpl(Lcom/microsoft/azure/storage/RequestOptions;Z)Lcom/microsoft/azure/storage/core/StorageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/azure/storage/core/StorageRequest<",
        "Lcom/microsoft/azure/storage/ServiceClient;",
        "Ljava/lang/Void;",
        "Lcom/microsoft/azure/storage/ServiceStats;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/azure/storage/ServiceClient;

.field public final synthetic val$options:Lcom/microsoft/azure/storage/RequestOptions;

.field public final synthetic val$signAsTable:Z


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/ServiceClient;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/RequestOptions;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/ServiceClient$2;->this$0:Lcom/microsoft/azure/storage/ServiceClient;

    iput-object p4, p0, Lcom/microsoft/azure/storage/ServiceClient$2;->val$options:Lcom/microsoft/azure/storage/RequestOptions;

    iput-boolean p5, p0, Lcom/microsoft/azure/storage/ServiceClient$2;->val$signAsTable:Z

    invoke-direct {p0, p2, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;-><init>(Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method


# virtual methods
.method public buildRequest(Lcom/microsoft/azure/storage/ServiceClient;Ljava/lang/Void;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 2
    iget-object p2, p0, Lcom/microsoft/azure/storage/ServiceClient$2;->this$0:Lcom/microsoft/azure/storage/ServiceClient;

    iget-object p2, p2, Lcom/microsoft/azure/storage/ServiceClient;->credentials:Lcom/microsoft/azure/storage/StorageCredentials;

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ServiceClient;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/storage/StorageUri;->getUri(Lcom/microsoft/azure/storage/StorageLocation;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/microsoft/azure/storage/StorageCredentials;->transformUri(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/azure/storage/ServiceClient$2;->val$options:Lcom/microsoft/azure/storage/RequestOptions;

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, p2, v0, p3}, Lcom/microsoft/azure/storage/core/BaseRequest;->getServiceStats(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildRequest(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/ServiceClient;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/ServiceClient$2;->buildRequest(Lcom/microsoft/azure/storage/ServiceClient;Ljava/lang/Void;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public postProcessResponse(Ljava/net/HttpURLConnection;Ljava/lang/Void;Lcom/microsoft/azure/storage/ServiceClient;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/ServiceStats;)Lcom/microsoft/azure/storage/ServiceStats;
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/azure/storage/ServiceStatsHandler;->readServiceStatsFromStream(Ljava/io/InputStream;)Lcom/microsoft/azure/storage/ServiceStats;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic postProcessResponse(Ljava/net/HttpURLConnection;Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    check-cast p3, Lcom/microsoft/azure/storage/ServiceClient;

    check-cast p5, Lcom/microsoft/azure/storage/ServiceStats;

    invoke-virtual/range {p0 .. p5}, Lcom/microsoft/azure/storage/ServiceClient$2;->postProcessResponse(Ljava/net/HttpURLConnection;Ljava/lang/Void;Lcom/microsoft/azure/storage/ServiceClient;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/ServiceStats;)Lcom/microsoft/azure/storage/ServiceStats;

    move-result-object p1

    return-object p1
.end method

.method public preProcessResponse(Ljava/lang/Void;Lcom/microsoft/azure/storage/ServiceClient;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ServiceStats;
    .locals 0

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

    check-cast p2, Lcom/microsoft/azure/storage/ServiceClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/ServiceClient$2;->preProcessResponse(Ljava/lang/Void;Lcom/microsoft/azure/storage/ServiceClient;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ServiceStats;

    move-result-object p1

    return-object p1
.end method

.method public setRequestLocationMode()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->applyLocationModeToRequest()V

    .line 2
    sget-object v0, Lcom/microsoft/azure/storage/core/RequestLocationMode;->PRIMARY_OR_SECONDARY:Lcom/microsoft/azure/storage/core/RequestLocationMode;

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/core/StorageRequest;->setRequestLocationMode(Lcom/microsoft/azure/storage/core/RequestLocationMode;)V

    return-void
.end method

.method public signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/ServiceClient;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 3

    .line 2
    iget-boolean v0, p0, Lcom/microsoft/azure/storage/ServiceClient$2;->val$signAsTable:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1, p2, v1, v2, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;->signTableRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/ServiceClient;JLcom/microsoft/azure/storage/OperationContext;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1, p2, v1, v2, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;->signBlobQueueAndFileRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/ServiceClient;JLcom/microsoft/azure/storage/OperationContext;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic signRequest(Ljava/net/HttpURLConnection;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/microsoft/azure/storage/ServiceClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/ServiceClient$2;->signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/ServiceClient;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method
