.class public Lcom/microsoft/azure/storage/table/TableBatchOperation$1;
.super Lcom/microsoft/azure/storage/core/StorageRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/storage/table/TableBatchOperation;->executeImpl(Lcom/microsoft/azure/storage/table/CloudTableClient;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/azure/storage/core/StorageRequest<",
        "Lcom/microsoft/azure/storage/table/CloudTableClient;",
        "Lcom/microsoft/azure/storage/table/TableBatchOperation;",
        "Ljava/util/ArrayList<",
        "Lcom/microsoft/azure/storage/table/TableResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/azure/storage/table/TableBatchOperation;

.field public final synthetic val$batchBytes:[B

.field public final synthetic val$batchID:Ljava/lang/String;

.field public final synthetic val$opContext:Lcom/microsoft/azure/storage/OperationContext;

.field public final synthetic val$options:Lcom/microsoft/azure/storage/table/TableRequestOptions;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/table/TableBatchOperation;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;[BLcom/microsoft/azure/storage/table/TableRequestOptions;Ljava/lang/String;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/TableBatchOperation$1;->this$0:Lcom/microsoft/azure/storage/table/TableBatchOperation;

    iput-object p4, p0, Lcom/microsoft/azure/storage/table/TableBatchOperation$1;->val$batchBytes:[B

    iput-object p5, p0, Lcom/microsoft/azure/storage/table/TableBatchOperation$1;->val$options:Lcom/microsoft/azure/storage/table/TableRequestOptions;

    iput-object p6, p0, Lcom/microsoft/azure/storage/table/TableBatchOperation$1;->val$batchID:Ljava/lang/String;

    iput-object p7, p0, Lcom/microsoft/azure/storage/table/TableBatchOperation$1;->val$opContext:Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p0, p2, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;-><init>(Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method


# virtual methods
.method public buildRequest(Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/table/TableBatchOperation;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 2
    new-instance p2, Ljava/io/ByteArrayInputStream;

    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableBatchOperation$1;->val$batchBytes:[B

    invoke-direct {p2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->setSendStream(Ljava/io/InputStream;)V

    .line 3
    iget-object p2, p0, Lcom/microsoft/azure/storage/table/TableBatchOperation$1;->val$batchBytes:[B

    array-length p2, p2

    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->setLength(Ljava/lang/Long;)V

    .line 4
    invoke-virtual {p1, p3}, Lcom/microsoft/azure/storage/table/CloudTableClient;->getTransformedEndPoint(Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/StorageUri;->getUri(Lcom/microsoft/azure/storage/StorageLocation;)Ljava/net/URI;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/azure/storage/table/TableBatchOperation$1;->val$options:Lcom/microsoft/azure/storage/table/TableRequestOptions;

    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableBatchOperation$1;->val$batchID:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, p3, v0}, Lcom/microsoft/azure/storage/table/TableRequest;->batch(Ljava/net/URI;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildRequest(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/table/CloudTableClient;

    check-cast p2, Lcom/microsoft/azure/storage/table/TableBatchOperation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/table/TableBatchOperation$1;->buildRequest(Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/table/TableBatchOperation;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

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

.method public bridge synthetic postProcessResponse(Ljava/net/HttpURLConnection;Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lcom/microsoft/azure/storage/table/TableBatchOperation;

    check-cast p3, Lcom/microsoft/azure/storage/table/CloudTableClient;

    check-cast p5, Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p5}, Lcom/microsoft/azure/storage/table/TableBatchOperation$1;->postProcessResponse(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/table/TableBatchOperation;Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/OperationContext;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public postProcessResponse(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/table/TableBatchOperation;Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/OperationContext;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/microsoft/azure/storage/table/TableBatchOperation;",
            "Lcom/microsoft/azure/storage/table/CloudTableClient;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/azure/storage/table/TableResult;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/azure/storage/table/TableResult;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    .line 2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "Content-Type"

    move-object v3, p1

    .line 3
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "multipart/mixed; boundary="

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 5
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a

    const/4 v3, 0x1

    .line 6
    aget-object v2, v2, v3

    iget-object v4, v0, Lcom/microsoft/azure/storage/table/TableBatchOperation$1;->val$opContext:Lcom/microsoft/azure/storage/OperationContext;

    iget-object v5, v0, Lcom/microsoft/azure/storage/table/TableBatchOperation$1;->val$options:Lcom/microsoft/azure/storage/table/TableRequestOptions;

    .line 7
    invoke-virtual {v5}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getTablePayloadFormat()Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    move-result-object v5

    .line 8
    invoke-static {v1, v2, v4, v5}, Lcom/microsoft/azure/storage/table/MimeHelper;->readBatchResponseStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/table/TablePayloadFormat;)Ljava/util/ArrayList;

    move-result-object v1

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 10
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    move-object/from16 v6, p2

    .line 11
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Lcom/microsoft/azure/storage/table/TableOperation;

    .line 12
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/microsoft/azure/storage/table/MimePart;

    .line 13
    invoke-virtual {v11}, Lcom/microsoft/azure/storage/table/TableOperation;->getOperationType()Lcom/microsoft/azure/storage/table/TableOperationType;

    move-result-object v8

    sget-object v9, Lcom/microsoft/azure/storage/table/TableOperationType;->INSERT:Lcom/microsoft/azure/storage/table/TableOperationType;

    const/16 v10, 0xcc

    if-ne v8, v9, :cond_1

    .line 14
    invoke-virtual {v11}, Lcom/microsoft/azure/storage/table/TableOperation;->getEchoContent()Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, v7, Lcom/microsoft/azure/storage/table/MimePart;->httpStatusCode:I

    const/16 v9, 0xc9

    if-eq v8, v9, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {v11}, Lcom/microsoft/azure/storage/table/TableOperation;->getEchoContent()Z

    move-result v8

    if-nez v8, :cond_4

    iget v8, v7, Lcom/microsoft/azure/storage/table/MimePart;->httpStatusCode:I

    if-eq v8, v10, :cond_4

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {v11}, Lcom/microsoft/azure/storage/table/TableOperation;->getOperationType()Lcom/microsoft/azure/storage/table/TableOperationType;

    move-result-object v8

    sget-object v9, Lcom/microsoft/azure/storage/table/TableOperationType;->RETRIEVE:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-ne v8, v9, :cond_3

    .line 17
    iget v8, v7, Lcom/microsoft/azure/storage/table/MimePart;->httpStatusCode:I

    const/16 v9, 0x194

    if-ne v8, v9, :cond_2

    .line 18
    new-instance v1, Lcom/microsoft/azure/storage/table/TableResult;

    invoke-direct {v1, v8}, Lcom/microsoft/azure/storage/table/TableResult;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2

    :cond_2
    const/16 v9, 0xc8

    if-eq v8, v9, :cond_4

    goto :goto_1

    .line 19
    :cond_3
    iget v8, v7, Lcom/microsoft/azure/storage/table/MimePart;->httpStatusCode:I

    if-eq v8, v10, :cond_4

    :goto_1
    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    if-nez v8, :cond_8

    const/4 v8, 0x0

    .line 20
    invoke-virtual {v11}, Lcom/microsoft/azure/storage/table/TableOperation;->getOperationType()Lcom/microsoft/azure/storage/table/TableOperationType;

    move-result-object v9

    sget-object v10, Lcom/microsoft/azure/storage/table/TableOperationType;->INSERT:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-ne v9, v10, :cond_5

    invoke-virtual {v11}, Lcom/microsoft/azure/storage/table/TableOperation;->getEchoContent()Z

    move-result v9

    if-nez v9, :cond_6

    .line 21
    :cond_5
    invoke-virtual {v11}, Lcom/microsoft/azure/storage/table/TableOperation;->getOperationType()Lcom/microsoft/azure/storage/table/TableOperationType;

    move-result-object v9

    sget-object v10, Lcom/microsoft/azure/storage/table/TableOperationType;->RETRIEVE:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-ne v9, v10, :cond_7

    .line 22
    :cond_6
    new-instance v8, Ljava/io/ByteArrayInputStream;

    iget-object v9, v7, Lcom/microsoft/azure/storage/table/MimePart;->payload:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :cond_7
    move-object v9, v8

    .line 23
    iget v10, v7, Lcom/microsoft/azure/storage/table/MimePart;->httpStatusCode:I

    iget-object v7, v7, Lcom/microsoft/azure/storage/table/MimePart;->headers:Ljava/util/HashMap;

    const-string v8, "ETag"

    .line 24
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v12, v0, Lcom/microsoft/azure/storage/table/TableBatchOperation$1;->val$opContext:Lcom/microsoft/azure/storage/OperationContext;

    iget-object v13, v0, Lcom/microsoft/azure/storage/table/TableBatchOperation$1;->val$options:Lcom/microsoft/azure/storage/table/TableRequestOptions;

    move-object v8, v11

    move-object v11, v7

    .line 25
    invoke-virtual/range {v8 .. v13}, Lcom/microsoft/azure/storage/table/TableOperation;->parseResponse(Ljava/io/InputStream;ILjava/lang/String;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/table/TableRequestOptions;)Lcom/microsoft/azure/storage/table/TableResult;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 26
    :cond_8
    new-instance v1, Lcom/microsoft/azure/storage/table/TableServiceException;

    iget v9, v7, Lcom/microsoft/azure/storage/table/MimePart;->httpStatusCode:I

    iget-object v10, v7, Lcom/microsoft/azure/storage/table/MimePart;->httpStatusMessage:Ljava/lang/String;

    new-instance v12, Ljava/io/StringReader;

    iget-object v2, v7, Lcom/microsoft/azure/storage/table/MimePart;->payload:Ljava/lang/String;

    invoke-direct {v12, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/microsoft/azure/storage/table/TableBatchOperation$1;->val$options:Lcom/microsoft/azure/storage/table/TableRequestOptions;

    .line 27
    invoke-virtual {v2}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getTablePayloadFormat()Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    move-result-object v13

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/microsoft/azure/storage/table/TableServiceException;-><init>(ILjava/lang/String;Lcom/microsoft/azure/storage/table/TableOperation;Ljava/io/Reader;Lcom/microsoft/azure/storage/table/TablePayloadFormat;)V

    throw v1

    :cond_9
    return-object v2

    .line 28
    :cond_a
    new-instance v1, Lcom/microsoft/azure/storage/StorageException;

    const/16 v5, 0x132

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, "OutOfRangeInput"

    const-string v4, "An incorrect Content-Type was returned from the server."

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V

    throw v1
.end method

.method public bridge synthetic preProcessResponse(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/table/TableBatchOperation;

    check-cast p2, Lcom/microsoft/azure/storage/table/CloudTableClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/table/TableBatchOperation$1;->preProcessResponse(Lcom/microsoft/azure/storage/table/TableBatchOperation;Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public preProcessResponse(Lcom/microsoft/azure/storage/table/TableBatchOperation;Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/table/TableBatchOperation;",
            "Lcom/microsoft/azure/storage/table/CloudTableClient;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/azure/storage/table/TableResult;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result p1

    const/16 p2, 0xca

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setNonExceptionedRetryableFailure(Z)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setRequestLocationMode()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableBatchOperation$1;->this$0:Lcom/microsoft/azure/storage/table/TableBatchOperation;

    invoke-static {v0}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->access$000(Lcom/microsoft/azure/storage/table/TableBatchOperation;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/microsoft/azure/storage/core/RequestLocationMode;->PRIMARY_ONLY:Lcom/microsoft/azure/storage/core/RequestLocationMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/microsoft/azure/storage/core/RequestLocationMode;->PRIMARY_OR_SECONDARY:Lcom/microsoft/azure/storage/core/RequestLocationMode;

    :goto_0
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

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/table/TableBatchOperation$1;->signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method
