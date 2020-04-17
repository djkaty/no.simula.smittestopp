.class public Lcom/microsoft/azure/storage/table/TableOperation$2;
.super Lcom/microsoft/azure/storage/core/StorageRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/storage/table/TableOperation;->insertImpl(Lcom/microsoft/azure/storage/table/CloudTableClient;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;
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

.field public final synthetic val$entityBytes:[B

.field public final synthetic val$isTableEntry:Z

.field public final synthetic val$opContext:Lcom/microsoft/azure/storage/OperationContext;

.field public final synthetic val$options:Lcom/microsoft/azure/storage/table/TableRequestOptions;

.field public final synthetic val$tableIdentity:Ljava/lang/String;

.field public final synthetic val$tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/table/TableOperation;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;[BLcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/table/TableRequestOptions;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/TableOperation$2;->this$0:Lcom/microsoft/azure/storage/table/TableOperation;

    iput-object p4, p0, Lcom/microsoft/azure/storage/table/TableOperation$2;->val$entityBytes:[B

    iput-object p5, p0, Lcom/microsoft/azure/storage/table/TableOperation$2;->val$opContext:Lcom/microsoft/azure/storage/OperationContext;

    iput-object p6, p0, Lcom/microsoft/azure/storage/table/TableOperation$2;->val$options:Lcom/microsoft/azure/storage/table/TableRequestOptions;

    iput-object p7, p0, Lcom/microsoft/azure/storage/table/TableOperation$2;->val$tableName:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/microsoft/azure/storage/table/TableOperation$2;->val$isTableEntry:Z

    iput-object p9, p0, Lcom/microsoft/azure/storage/table/TableOperation$2;->val$tableIdentity:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;-><init>(Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method


# virtual methods
.method public buildRequest(Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/table/TableOperation;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 9

    .line 2
    new-instance p3, Ljava/io/ByteArrayInputStream;

    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableOperation$2;->val$entityBytes:[B

    invoke-direct {p3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;->setSendStream(Ljava/io/InputStream;)V

    .line 3
    iget-object p3, p0, Lcom/microsoft/azure/storage/table/TableOperation$2;->val$entityBytes:[B

    array-length p3, p3

    int-to-long v0, p3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;->setLength(Ljava/lang/Long;)V

    .line 4
    iget-object p3, p0, Lcom/microsoft/azure/storage/table/TableOperation$2;->val$opContext:Lcom/microsoft/azure/storage/OperationContext;

    .line 5
    invoke-virtual {p1, p3}, Lcom/microsoft/azure/storage/table/CloudTableClient;->getTransformedEndPoint(Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/microsoft/azure/storage/StorageUri;->getUri(Lcom/microsoft/azure/storage/StorageLocation;)Ljava/net/URI;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/table/TableOperation$2;->val$options:Lcom/microsoft/azure/storage/table/TableRequestOptions;

    iget-object v3, p0, Lcom/microsoft/azure/storage/table/TableOperation$2;->val$opContext:Lcom/microsoft/azure/storage/OperationContext;

    iget-object v4, p0, Lcom/microsoft/azure/storage/table/TableOperation$2;->val$tableName:Ljava/lang/String;

    iget-object p1, p0, Lcom/microsoft/azure/storage/table/TableOperation$2;->this$0:Lcom/microsoft/azure/storage/table/TableOperation;

    iget-boolean p3, p0, Lcom/microsoft/azure/storage/table/TableOperation$2;->val$isTableEntry:Z

    iget-object v2, p0, Lcom/microsoft/azure/storage/table/TableOperation$2;->val$tableIdentity:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, p3, v2}, Lcom/microsoft/azure/storage/table/TableOperation;->generateRequestIdentity(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-static {p2}, Lcom/microsoft/azure/storage/table/TableOperation;->access$000(Lcom/microsoft/azure/storage/table/TableOperation;)Lcom/microsoft/azure/storage/table/TableOperationType;

    move-result-object p1

    sget-object p3, Lcom/microsoft/azure/storage/table/TableOperationType;->INSERT:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-eq p1, p3, :cond_0

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object p1

    invoke-interface {p1}, Lcom/microsoft/azure/storage/table/TableEntity;->getEtag()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v6, p1

    .line 8
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/table/TableOperation;->getEchoContent()Z

    move-result v7

    invoke-static {p2}, Lcom/microsoft/azure/storage/table/TableOperation;->access$000(Lcom/microsoft/azure/storage/table/TableOperation;)Lcom/microsoft/azure/storage/table/TableOperationType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableOperationType;->getUpdateType()Lcom/microsoft/azure/storage/table/TableUpdateType;

    move-result-object v8

    const/4 v2, 0x0

    .line 9
    invoke-static/range {v0 .. v8}, Lcom/microsoft/azure/storage/table/TableRequest;->insert(Ljava/net/URI;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/microsoft/azure/storage/table/TableUpdateType;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildRequest(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/table/CloudTableClient;

    check-cast p2, Lcom/microsoft/azure/storage/table/TableOperation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/table/TableOperation$2;->buildRequest(Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/table/TableOperation;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

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

.method public postProcessResponse(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/table/TableOperation;Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/table/TableResult;)Lcom/microsoft/azure/storage/table/TableResult;
    .locals 6

    .line 2
    invoke-static {p2}, Lcom/microsoft/azure/storage/table/TableOperation;->access$000(Lcom/microsoft/azure/storage/table/TableOperation;)Lcom/microsoft/azure/storage/table/TableOperationType;

    move-result-object p1

    sget-object p3, Lcom/microsoft/azure/storage/table/TableOperationType;->INSERT:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-ne p1, p3, :cond_0

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/table/TableOperation;->getEchoContent()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result v2

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p1

    const-string p3, "ETag"

    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/azure/storage/table/TableOperation$2;->val$opContext:Lcom/microsoft/azure/storage/OperationContext;

    iget-object v5, p0, Lcom/microsoft/azure/storage/table/TableOperation$2;->val$options:Lcom/microsoft/azure/storage/table/TableRequestOptions;

    move-object v0, p2

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/table/TableOperation;->parseResponse(Ljava/io/InputStream;ILjava/lang/String;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/table/TableRequestOptions;)Lcom/microsoft/azure/storage/table/TableResult;

    move-result-object p5

    :cond_0
    return-object p5
.end method

.method public bridge synthetic postProcessResponse(Ljava/net/HttpURLConnection;Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lcom/microsoft/azure/storage/table/TableOperation;

    check-cast p3, Lcom/microsoft/azure/storage/table/CloudTableClient;

    check-cast p5, Lcom/microsoft/azure/storage/table/TableResult;

    invoke-virtual/range {p0 .. p5}, Lcom/microsoft/azure/storage/table/TableOperation$2;->postProcessResponse(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/table/TableOperation;Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/table/TableResult;)Lcom/microsoft/azure/storage/table/TableResult;

    move-result-object p1

    return-object p1
.end method

.method public preProcessResponse(Lcom/microsoft/azure/storage/table/TableOperation;Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/TableResult;
    .locals 8

    .line 2
    invoke-static {p1}, Lcom/microsoft/azure/storage/table/TableOperation;->access$000(Lcom/microsoft/azure/storage/table/TableOperation;)Lcom/microsoft/azure/storage/table/TableOperationType;

    move-result-object p2

    sget-object p3, Lcom/microsoft/azure/storage/table/TableOperationType;->INSERT:Lcom/microsoft/azure/storage/table/TableOperationType;

    const-string v0, "ETag"

    const/16 v1, 0xcc

    if-ne p2, p3, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableOperation;->getEchoContent()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result p2

    const/16 p3, 0xc9

    if-ne p2, p3, :cond_0

    .line 5
    new-instance p1, Lcom/microsoft/azure/storage/table/TableResult;

    invoke-direct {p1}, Lcom/microsoft/azure/storage/table/TableResult;-><init>()V

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableOperation;->getEchoContent()Z

    move-result p2

    if-nez p2, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result p2

    if-ne p2, v1, :cond_2

    const/4 v3, 0x0

    .line 8
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result v4

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p2

    .line 9
    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/microsoft/azure/storage/table/TableOperation$2;->val$opContext:Lcom/microsoft/azure/storage/OperationContext;

    iget-object v7, p0, Lcom/microsoft/azure/storage/table/TableOperation$2;->val$options:Lcom/microsoft/azure/storage/table/TableRequestOptions;

    move-object v2, p1

    .line 10
    invoke-virtual/range {v2 .. v7}, Lcom/microsoft/azure/storage/table/TableOperation;->parseResponse(Ljava/io/InputStream;ILjava/lang/String;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/table/TableRequestOptions;)Lcom/microsoft/azure/storage/table/TableResult;

    move-result-object p1

    return-object p1

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result p2

    if-ne p2, v1, :cond_2

    const/4 v3, 0x0

    .line 12
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result v4

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p2

    .line 13
    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/microsoft/azure/storage/table/TableOperation$2;->val$opContext:Lcom/microsoft/azure/storage/OperationContext;

    iget-object v7, p0, Lcom/microsoft/azure/storage/table/TableOperation$2;->val$options:Lcom/microsoft/azure/storage/table/TableRequestOptions;

    move-object v2, p1

    .line 14
    invoke-virtual/range {v2 .. v7}, Lcom/microsoft/azure/storage/table/TableOperation;->parseResponse(Ljava/io/InputStream;ILjava/lang/String;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/table/TableRequestOptions;)Lcom/microsoft/azure/storage/table/TableResult;

    move-result-object p1

    return-object p1

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p2

    .line 16
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p3

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p3

    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableOperation$2;->val$options:Lcom/microsoft/azure/storage/table/TableRequestOptions;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getTablePayloadFormat()Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    move-result-object v0

    .line 17
    invoke-static {p2, p1, p3, v0}, Lcom/microsoft/azure/storage/table/TableServiceException;->generateTableServiceException(Lcom/microsoft/azure/storage/RequestResult;Lcom/microsoft/azure/storage/table/TableOperation;Ljava/io/InputStream;Lcom/microsoft/azure/storage/table/TablePayloadFormat;)Lcom/microsoft/azure/storage/table/TableServiceException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic preProcessResponse(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/table/TableOperation;

    check-cast p2, Lcom/microsoft/azure/storage/table/CloudTableClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/table/TableOperation$2;->preProcessResponse(Lcom/microsoft/azure/storage/table/TableOperation;Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/TableResult;

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/table/TableOperation$2;->signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method
