.class public final Lcom/microsoft/azure/storage/table/TableRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyContinuationToQueryBuilder(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/ResultContinuation;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ResultContinuation;->getNextPartitionKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ResultContinuation;->getNextPartitionKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NextPartitionKey"

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ResultContinuation;->getNextRowKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ResultContinuation;->getNextRowKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NextRowKey"

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ResultContinuation;->getNextTableName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ResultContinuation;->getNextTableName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NextTableName"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static batch(Ljava/net/URI;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1

    const-string v0, "$batch"

    .line 1
    invoke-static {p0, v0}, Lcom/microsoft/azure/storage/core/PathUtility;->appendPathToSingleUri(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/BaseRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getTablePayloadFormat()Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/microsoft/azure/storage/table/TableRequest;->setAcceptHeaderForHttpWebRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/table/TablePayloadFormat;)V

    const/4 p1, 0x1

    new-array p2, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p4, p2, p3

    const-string p3, "multipart/mixed; boundary=%s"

    .line 4
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Content-Type"

    .line 5
    invoke-virtual {p0, p3, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "MaxDataServiceVersion"

    const-string p3, "3.0"

    .line 6
    invoke-virtual {p0, p2, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "POST"

    .line 7
    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    return-object p0
.end method

.method public static coreCreate(Ljava/net/URI;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 1
    invoke-static {p6}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p6, v0, v1

    const-string p6, "(%s)"

    .line 2
    invoke-static {p6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p4}, Lcom/microsoft/azure/storage/core/PathUtility;->appendPathToSingleUri(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p4}, Lcom/microsoft/azure/storage/core/PathUtility;->appendPathToSingleUri(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    .line 4
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/BaseRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getTablePayloadFormat()Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/microsoft/azure/storage/table/TableRequest;->setAcceptHeaderForHttpWebRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/table/TablePayloadFormat;)V

    const-string p1, "Content-Type"

    const-string p2, "application/json"

    .line 6
    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "MaxDataServiceVersion"

    const-string p2, "3.0"

    .line 7
    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {p5}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "If-Match"

    .line 9
    invoke-virtual {p0, p1, p5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    invoke-virtual {p0, p7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object p0
.end method

.method public static delete(Ljava/net/URI;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 8

    const-string v7, "DELETE"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object v6, p5

    .line 1
    invoke-static/range {v0 .. v7}, Lcom/microsoft/azure/storage/table/TableRequest;->coreCreate(Ljava/net/URI;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method public static getAcl(Ljava/net/URI;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    const-string v1, "comp"

    const-string v2, "acl"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1, v0, p2}, Lcom/microsoft/azure/storage/core/BaseRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const-string p1, "GET"

    .line 4
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object p0
.end method

.method public static insert(Ljava/net/URI;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/microsoft/azure/storage/table/TableUpdateType;)Ljava/net/HttpURLConnection;
    .locals 10

    move-object/from16 v0, p8

    if-nez v0, :cond_1

    const/4 v6, 0x0

    const-string v7, "POST"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p6

    .line 1
    invoke-static/range {v0 .. v7}, Lcom/microsoft/azure/storage/table/TableRequest;->coreCreate(Ljava/net/URI;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-eqz p7, :cond_0

    const-string v1, "return-content"

    goto :goto_0

    :cond_0
    const-string v1, "return-no-content"

    :goto_0
    const-string v2, "Prefer"

    .line 2
    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :cond_1
    sget-object v1, Lcom/microsoft/azure/storage/table/TableUpdateType;->MERGE:Lcom/microsoft/azure/storage/table/TableUpdateType;

    if-ne v0, v1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->assertNoEncryptionPolicyOrStrictMode()V

    const/4 v7, 0x0

    const-string v9, "POST"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v8, p5

    .line 5
    invoke-static/range {v2 .. v9}, Lcom/microsoft/azure/storage/table/TableRequest;->coreCreate(Ljava/net/URI;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    const-string v1, "X-HTTP-Method"

    const-string v2, "MERGE"

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_2
    sget-object v1, Lcom/microsoft/azure/storage/table/TableUpdateType;->REPLACE:Lcom/microsoft/azure/storage/table/TableUpdateType;

    if-ne v0, v1, :cond_3

    const/4 v7, 0x0

    const-string v9, "PUT"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v8, p5

    .line 8
    invoke-static/range {v2 .. v9}, Lcom/microsoft/azure/storage/table/TableRequest;->coreCreate(Ljava/net/URI;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    return-object v0
.end method

.method public static merge(Ljava/net/URI;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->assertNoEncryptionPolicyOrStrictMode()V

    const-string v7, "POST"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object v6, p5

    .line 2
    invoke-static/range {v0 .. v7}, Lcom/microsoft/azure/storage/table/TableRequest;->coreCreate(Ljava/net/URI;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const-string p1, "X-HTTP-Method"

    const-string p2, "MERGE"

    .line 3
    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    return-object p0
.end method

.method public static query(Ljava/net/URI;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/ResultContinuation;)Ljava/net/HttpURLConnection;
    .locals 8

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {p2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    :cond_0
    move-object v2, p2

    .line 2
    invoke-static {v2, p6}, Lcom/microsoft/azure/storage/table/TableRequest;->applyContinuationToQueryBuilder(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/ResultContinuation;)V

    const/4 v5, 0x0

    const-string v7, "GET"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 3
    invoke-static/range {v0 .. v7}, Lcom/microsoft/azure/storage/table/TableRequest;->coreCreate(Ljava/net/URI;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method public static setAcceptHeaderForHttpWebRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/table/TablePayloadFormat;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/table/TablePayloadFormat;->JsonFullMetadata:Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    const-string v1, "Accept"

    if-ne p1, v0, :cond_0

    const-string p1, "application/json;odata=fullmetadata"

    .line 2
    invoke-virtual {p0, v1, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/microsoft/azure/storage/table/TablePayloadFormat;->Json:Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    if-ne p1, v0, :cond_1

    const-string p1, "application/json;odata=minimalmetadata"

    .line 4
    invoke-virtual {p0, v1, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/microsoft/azure/storage/table/TablePayloadFormat;->JsonNoMetadata:Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    if-ne p1, v0, :cond_2

    const-string p1, "application/json;odata=nometadata"

    .line 6
    invoke-virtual {p0, v1, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static setAcl(Ljava/net/URI;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    const-string v1, "comp"

    const-string v2, "acl"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1, v0, p2}, Lcom/microsoft/azure/storage/core/BaseRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const-string p1, "PUT"

    .line 4
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    return-object p0
.end method

.method public static update(Ljava/net/URI;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 8

    const-string v7, "PUT"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object v6, p5

    .line 1
    invoke-static/range {v0 .. v7}, Lcom/microsoft/azure/storage/table/TableRequest;->coreCreate(Ljava/net/URI;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    return-object p0
.end method
