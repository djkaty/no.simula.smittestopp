.class public Lcom/microsoft/azure/storage/table/CloudTableClient$2;
.super Lcom/microsoft/azure/storage/core/StorageRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/storage/table/CloudTableClient;->executeQuerySegmentedCoreImpl(Lcom/microsoft/azure/storage/table/TableQuery;Lcom/microsoft/azure/storage/table/EntityResolver;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;)Lcom/microsoft/azure/storage/core/StorageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/azure/storage/core/StorageRequest<",
        "Lcom/microsoft/azure/storage/table/CloudTableClient;",
        "Lcom/microsoft/azure/storage/table/TableQuery<",
        "TT;>;",
        "Lcom/microsoft/azure/storage/ResultSegment<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/azure/storage/table/CloudTableClient;

.field public final synthetic val$options:Lcom/microsoft/azure/storage/table/TableRequestOptions;

.field public final synthetic val$queryToExecute:Lcom/microsoft/azure/storage/table/TableQuery;

.field public final synthetic val$segmentedRequest:Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/table/TableQuery;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/CloudTableClient$2;->this$0:Lcom/microsoft/azure/storage/table/CloudTableClient;

    iput-object p4, p0, Lcom/microsoft/azure/storage/table/CloudTableClient$2;->val$segmentedRequest:Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;

    iput-object p5, p0, Lcom/microsoft/azure/storage/table/CloudTableClient$2;->val$options:Lcom/microsoft/azure/storage/table/TableRequestOptions;

    iput-object p6, p0, Lcom/microsoft/azure/storage/table/CloudTableClient$2;->val$queryToExecute:Lcom/microsoft/azure/storage/table/TableQuery;

    invoke-direct {p0, p2, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;-><init>(Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method


# virtual methods
.method public buildRequest(Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/table/TableQuery;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/table/CloudTableClient;",
            "Lcom/microsoft/azure/storage/table/TableQuery<",
            "TT;>;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1, p3}, Lcom/microsoft/azure/storage/table/CloudTableClient;->getTransformedEndPoint(Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/StorageUri;->getUri(Lcom/microsoft/azure/storage/StorageLocation;)Ljava/net/URI;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/table/CloudTableClient$2;->val$options:Lcom/microsoft/azure/storage/table/TableRequestOptions;

    iget-object p1, p0, Lcom/microsoft/azure/storage/table/CloudTableClient$2;->val$queryToExecute:Lcom/microsoft/azure/storage/table/TableQuery;

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableQuery;->generateQueryBuilder()Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    move-result-object v2

    iget-object p1, p0, Lcom/microsoft/azure/storage/table/CloudTableClient$2;->val$queryToExecute:Lcom/microsoft/azure/storage/table/TableQuery;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableQuery;->getSourceTableName()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/microsoft/azure/storage/table/CloudTableClient$2;->val$segmentedRequest:Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;->getToken()Lcom/microsoft/azure/storage/ResultContinuation;

    move-result-object v6

    const/4 v5, 0x0

    move-object v3, p3

    .line 5
    invoke-static/range {v0 .. v6}, Lcom/microsoft/azure/storage/table/TableRequest;->query(Ljava/net/URI;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/ResultContinuation;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildRequest(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/table/CloudTableClient;

    check-cast p2, Lcom/microsoft/azure/storage/table/TableQuery;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/table/CloudTableClient$2;->buildRequest(Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/table/TableQuery;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public parseErrorDetails()Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/microsoft/azure/storage/table/TableStorageErrorDeserializer;->parseErrorDetails(Lcom/microsoft/azure/storage/core/StorageRequest;)Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;

    move-result-object v0

    return-object v0
.end method

.method public postProcessResponse(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/table/TableQuery;Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/ResultSegment;)Lcom/microsoft/azure/storage/ResultSegment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/microsoft/azure/storage/table/TableQuery<",
            "TT;>;",
            "Lcom/microsoft/azure/storage/table/CloudTableClient;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "TT;>;)",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    .line 3
    iget-object p3, p0, Lcom/microsoft/azure/storage/table/CloudTableClient$2;->val$options:Lcom/microsoft/azure/storage/table/TableRequestOptions;

    iget-object p5, p0, Lcom/microsoft/azure/storage/table/CloudTableClient$2;->val$queryToExecute:Lcom/microsoft/azure/storage/table/TableQuery;

    .line 4
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/table/TableQuery;->getClazzType()Ljava/lang/Class;

    move-result-object p5

    const/4 v0, 0x0

    .line 5
    invoke-static {p2, p3, p5, v0, p4}, Lcom/microsoft/azure/storage/table/TableDeserializer;->parseQueryResponse(Ljava/io/InputStream;Lcom/microsoft/azure/storage/table/TableRequestOptions;Ljava/lang/Class;Lcom/microsoft/azure/storage/table/EntityResolver;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/ODataPayload;

    move-result-object p2

    .line 6
    invoke-static {p1}, Lcom/microsoft/azure/storage/table/TableResponse;->getTableContinuationFromResponse(Ljava/net/HttpURLConnection;)Lcom/microsoft/azure/storage/ResultContinuation;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p3

    invoke-virtual {p3}, Lcom/microsoft/azure/storage/RequestResult;->getTargetLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/microsoft/azure/storage/ResultContinuation;->setTargetLocation(Lcom/microsoft/azure/storage/StorageLocation;)V

    .line 8
    :cond_0
    iget-object p3, p0, Lcom/microsoft/azure/storage/table/CloudTableClient$2;->val$segmentedRequest:Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;

    invoke-virtual {p3, p1}, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;->setToken(Lcom/microsoft/azure/storage/ResultContinuation;)V

    .line 9
    new-instance p3, Lcom/microsoft/azure/storage/ResultSegment;

    iget-object p4, p2, Lcom/microsoft/azure/storage/table/ODataPayload;->results:Ljava/util/ArrayList;

    iget-object p5, p0, Lcom/microsoft/azure/storage/table/CloudTableClient$2;->val$queryToExecute:Lcom/microsoft/azure/storage/table/TableQuery;

    .line 10
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/table/TableQuery;->getTakeCount()Ljava/lang/Integer;

    move-result-object p5

    if-nez p5, :cond_1

    iget-object p2, p2, Lcom/microsoft/azure/storage/table/ODataPayload;->results:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/microsoft/azure/storage/table/CloudTableClient$2;->val$queryToExecute:Lcom/microsoft/azure/storage/table/TableQuery;

    .line 11
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/table/TableQuery;->getTakeCount()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 12
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p3, p4, p2, p1}, Lcom/microsoft/azure/storage/ResultSegment;-><init>(Ljava/util/ArrayList;Ljava/lang/Integer;Lcom/microsoft/azure/storage/ResultContinuation;)V

    return-object p3
.end method

.method public bridge synthetic postProcessResponse(Ljava/net/HttpURLConnection;Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lcom/microsoft/azure/storage/table/TableQuery;

    check-cast p3, Lcom/microsoft/azure/storage/table/CloudTableClient;

    check-cast p5, Lcom/microsoft/azure/storage/ResultSegment;

    invoke-virtual/range {p0 .. p5}, Lcom/microsoft/azure/storage/table/CloudTableClient$2;->postProcessResponse(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/table/TableQuery;Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/ResultSegment;)Lcom/microsoft/azure/storage/ResultSegment;

    move-result-object p1

    return-object p1
.end method

.method public preProcessResponse(Lcom/microsoft/azure/storage/table/TableQuery;Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/table/TableQuery<",
            "TT;>;",
            "Lcom/microsoft/azure/storage/table/CloudTableClient;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result p1

    const/4 p2, 0x0

    const/16 p3, 0xc8

    if-ne p1, p3, :cond_0

    return-object p2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p3

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p3

    iget-object v0, p0, Lcom/microsoft/azure/storage/table/CloudTableClient$2;->val$options:Lcom/microsoft/azure/storage/table/TableRequestOptions;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getTablePayloadFormat()Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    move-result-object v0

    .line 5
    invoke-static {p1, p2, p3, v0}, Lcom/microsoft/azure/storage/table/TableServiceException;->generateTableServiceException(Lcom/microsoft/azure/storage/RequestResult;Lcom/microsoft/azure/storage/table/TableOperation;Ljava/io/InputStream;Lcom/microsoft/azure/storage/table/TablePayloadFormat;)Lcom/microsoft/azure/storage/table/TableServiceException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic preProcessResponse(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/table/TableQuery;

    check-cast p2, Lcom/microsoft/azure/storage/table/CloudTableClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/table/CloudTableClient$2;->preProcessResponse(Lcom/microsoft/azure/storage/table/TableQuery;Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;

    move-result-object p1

    return-object p1
.end method

.method public setRequestLocationMode()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/CloudTableClient$2;->val$segmentedRequest:Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;->getToken()Lcom/microsoft/azure/storage/ResultContinuation;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->getListingLocationMode(Lcom/microsoft/azure/storage/ResultContinuation;)Lcom/microsoft/azure/storage/core/RequestLocationMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/core/StorageRequest;->setRequestLocationMode(Lcom/microsoft/azure/storage/core/RequestLocationMode;)V

    return-void
.end method

.method public signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 2
    invoke-static {p1, p2, v0, v1, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;->signTableRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/ServiceClient;JLcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public bridge synthetic signRequest(Ljava/net/HttpURLConnection;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/microsoft/azure/storage/table/CloudTableClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/table/CloudTableClient$2;->signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method
