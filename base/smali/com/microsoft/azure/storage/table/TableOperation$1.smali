.class public Lcom/microsoft/azure/storage/table/TableOperation$1;
.super Lcom/microsoft/azure/storage/core/StorageRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/storage/table/TableOperation;->deleteImpl(Lcom/microsoft/azure/storage/table/CloudTableClient;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/azure/storage/core/StorageRequest<",
        "Lcom/microsoft/azure/storage/table/CloudTableClient;",
        "Lcom/microsoft/azure/storage/table/TableOperation;",
        "Lcom/microsoft/azure/storage/table/TableResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/azure/storage/table/TableOperation;

.field public final synthetic val$isTableEntry:Z

.field public final synthetic val$opContext:Lcom/microsoft/azure/storage/OperationContext;

.field public final synthetic val$options:Lcom/microsoft/azure/storage/table/TableRequestOptions;

.field public final synthetic val$tableIdentity:Ljava/lang/String;

.field public final synthetic val$tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/table/TableOperation;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/table/TableRequestOptions;Ljava/lang/String;ZLjava/lang/String;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/TableOperation$1;->this$0:Lcom/microsoft/azure/storage/table/TableOperation;

    iput-object p4, p0, Lcom/microsoft/azure/storage/table/TableOperation$1;->val$options:Lcom/microsoft/azure/storage/table/TableRequestOptions;

    iput-object p5, p0, Lcom/microsoft/azure/storage/table/TableOperation$1;->val$tableName:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/microsoft/azure/storage/table/TableOperation$1;->val$isTableEntry:Z

    iput-object p7, p0, Lcom/microsoft/azure/storage/table/TableOperation$1;->val$tableIdentity:Ljava/lang/String;

    iput-object p8, p0, Lcom/microsoft/azure/storage/table/TableOperation$1;->val$opContext:Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p0, p2, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;-><init>(Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method


# virtual methods
.method public buildRequest(Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/table/TableOperation;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 8

    .line 2
    invoke-virtual {p1, p3}, Lcom/microsoft/azure/storage/table/CloudTableClient;->getTransformedEndPoint(Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/storage/StorageUri;->getUri(Lcom/microsoft/azure/storage/StorageLocation;)Ljava/net/URI;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/azure/storage/table/TableOperation$1;->val$options:Lcom/microsoft/azure/storage/table/TableRequestOptions;

    iget-object v5, p0, Lcom/microsoft/azure/storage/table/TableOperation$1;->val$tableName:Ljava/lang/String;

    iget-object p1, p0, Lcom/microsoft/azure/storage/table/TableOperation$1;->this$0:Lcom/microsoft/azure/storage/table/TableOperation;

    iget-boolean v0, p0, Lcom/microsoft/azure/storage/table/TableOperation$1;->val$isTableEntry:Z

    iget-object v3, p0, Lcom/microsoft/azure/storage/table/TableOperation$1;->val$tableIdentity:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v0, v3}, Lcom/microsoft/azure/storage/table/TableOperation;->generateRequestIdentity(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object p1

    invoke-interface {p1}, Lcom/microsoft/azure/storage/table/TableEntity;->getEtag()Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    move-object v4, p3

    .line 5
    invoke-static/range {v1 .. v7}, Lcom/microsoft/azure/storage/table/TableRequest;->delete(Ljava/net/URI;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildRequest(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/table/CloudTableClient;

    check-cast p2, Lcom/microsoft/azure/storage/table/TableOperation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/table/TableOperation$1;->buildRequest(Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/table/TableOperation;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

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

.method public preProcessResponse(Lcom/microsoft/azure/storage/table/TableOperation;Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/TableResult;
    .locals 6

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result p2

    const/16 p3, 0xcc

    if-ne p2, p3, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/microsoft/azure/storage/table/TableOperation$1;->val$opContext:Lcom/microsoft/azure/storage/OperationContext;

    iget-object v5, p0, Lcom/microsoft/azure/storage/table/TableOperation$1;->val$options:Lcom/microsoft/azure/storage/table/TableRequestOptions;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/table/TableOperation;->parseResponse(Ljava/io/InputStream;ILjava/lang/String;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/table/TableRequestOptions;)Lcom/microsoft/azure/storage/table/TableResult;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p2

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p3

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p3

    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableOperation$1;->val$options:Lcom/microsoft/azure/storage/table/TableRequestOptions;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getTablePayloadFormat()Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    move-result-object v0

    .line 6
    invoke-static {p2, p1, p3, v0}, Lcom/microsoft/azure/storage/table/TableServiceException;->generateTableServiceException(Lcom/microsoft/azure/storage/RequestResult;Lcom/microsoft/azure/storage/table/TableOperation;Ljava/io/InputStream;Lcom/microsoft/azure/storage/table/TablePayloadFormat;)Lcom/microsoft/azure/storage/table/TableServiceException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic preProcessResponse(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/table/TableOperation;

    check-cast p2, Lcom/microsoft/azure/storage/table/CloudTableClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/table/TableOperation$1;->preProcessResponse(Lcom/microsoft/azure/storage/table/TableOperation;Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/TableResult;

    move-result-object p1

    return-object p1
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

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/table/TableOperation$1;->signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method
