.class public final Lcom/microsoft/azure/storage/file/FileRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final RANGE_LIST_QUERY_ELEMENT_NAME:Ljava/lang/String; = "rangelist"

.field public static final RANGE_QUERY_ELEMENT_NAME:Ljava/lang/String; = "range"

.field public static final SNAPSHOTS_QUERY_ELEMENT_NAME:Ljava/lang/String; = "snapshots"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abortCopy(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    const-string v1, "comp"

    const-string v2, "copy"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "copyid"

    .line 3
    invoke-virtual {v0, v1, p4}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p0, p1, v0, p2}, Lcom/microsoft/azure/storage/core/BaseRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string p1, "PUT"

    .line 7
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string p1, "x-ms-copy-action"

    const-string p2, "abort"

    .line 8
    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 9
    invoke-virtual {p3, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyConditionToRequest(Ljava/net/HttpURLConnection;)V

    :cond_0
    return-object p0
.end method

.method public static addMetadata(Ljava/net/HttpURLConnection;Ljava/util/Map;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/microsoft/azure/storage/core/BaseRequest;->addMetadata(Ljava/net/HttpURLConnection;Ljava/util/Map;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public static addProperties(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/file/FileProperties;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/FileProperties;->getCacheControl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-ms-cache-control"

    invoke-static {p0, v1, v0}, Lcom/microsoft/azure/storage/core/BaseRequest;->addOptionalHeader(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/FileProperties;->getContentDisposition()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-ms-content-disposition"

    .line 3
    invoke-static {p0, v1, v0}, Lcom/microsoft/azure/storage/core/BaseRequest;->addOptionalHeader(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/FileProperties;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-ms-content-encoding"

    invoke-static {p0, v1, v0}, Lcom/microsoft/azure/storage/core/BaseRequest;->addOptionalHeader(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/FileProperties;->getContentLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-ms-content-language"

    invoke-static {p0, v1, v0}, Lcom/microsoft/azure/storage/core/BaseRequest;->addOptionalHeader(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/FileProperties;->getContentMD5()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-ms-content-md5"

    invoke-static {p0, v1, v0}, Lcom/microsoft/azure/storage/core/BaseRequest;->addOptionalHeader(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/FileProperties;->getContentType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "x-ms-content-type"

    invoke-static {p0, v0, p1}, Lcom/microsoft/azure/storage/core/BaseRequest;->addOptionalHeader(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addProperties(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/file/FileShareProperties;)V
    .locals 1

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/FileShareProperties;->getShareQuota()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "x-ms-share-quota"

    .line 10
    invoke-static {p0, v0, p1}, Lcom/microsoft/azure/storage/core/BaseRequest;->addOptionalHeader(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addShareSnapshot(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "sharesnapshot"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static copyFrom(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, p2}, Lcom/microsoft/azure/storage/core/BaseRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string p1, "PUT"

    .line 4
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string p1, "x-ms-copy-source"

    .line 5
    invoke-virtual {p0, p1, p5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p3, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyConditionToRequest(Ljava/net/HttpURLConnection;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 7
    invoke-virtual {p4, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyConditionToRequest(Ljava/net/HttpURLConnection;)V

    :cond_1
    return-object p0
.end method

.method public static createDirectory(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/file/FileRequest;->getDirectoryUriQueryBuilder()Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    move-result-object v0

    .line 2
    invoke-static {p0, p1, v0, p2}, Lcom/microsoft/azure/storage/core/BaseRequest;->create(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method public static createShare(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/file/FileShareProperties;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/file/FileRequest;->getShareUriQueryBuilder()Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    move-result-object v0

    .line 2
    invoke-static {p0, p1, v0, p2}, Lcom/microsoft/azure/storage/core/BaseRequest;->create(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    .line 3
    invoke-static {p0, p3}, Lcom/microsoft/azure/storage/file/FileRequest;->addProperties(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/file/FileShareProperties;)V

    return-object p0
.end method

.method public static deleteDirectory(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/file/FileRequest;->getDirectoryUriQueryBuilder()Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    move-result-object v0

    .line 2
    invoke-static {p0, p1, v0, p2}, Lcom/microsoft/azure/storage/core/BaseRequest;->delete(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p3, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyConditionToRequest(Ljava/net/HttpURLConnection;)V

    :cond_0
    return-object p0
.end method

.method public static deleteFile(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    .line 2
    invoke-static {p0, p1, v0, p2}, Lcom/microsoft/azure/storage/core/BaseRequest;->delete(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p3, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyConditionToRequest(Ljava/net/HttpURLConnection;)V

    :cond_0
    return-object p0
.end method

.method public static deleteShare(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;Lcom/microsoft/azure/storage/file/DeleteShareSnapshotsOption;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/file/FileRequest;->getShareUriQueryBuilder()Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    move-result-object v0

    .line 2
    invoke-static {v0, p4}, Lcom/microsoft/azure/storage/file/FileRequest;->addShareSnapshot(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1, v0, p2}, Lcom/microsoft/azure/storage/core/BaseRequest;->delete(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p3, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyConditionToRequest(Ljava/net/HttpURLConnection;)V

    .line 5
    :cond_0
    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "x-ms-delete-snapshots"

    const-string p2, "include"

    .line 6
    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public static getAcl(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 3

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/file/FileRequest;->getShareUriQueryBuilder()Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    move-result-object v0

    const-string v1, "comp"

    const-string v2, "acl"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1, v0, p3}, Lcom/microsoft/azure/storage/core/BaseRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const-string p1, "GET"

    .line 4
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/AccessCondition;->getLeaseID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p2, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyLeaseConditionToRequest(Ljava/net/HttpURLConnection;)V

    :cond_0
    return-object p0
.end method

.method public static getDirectoryProperties(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 6

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/file/FileRequest;->getDirectoryUriQueryBuilder()Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/microsoft/azure/storage/file/FileRequest;->getProperties(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method public static getDirectoryUriQueryBuilder()Lcom/microsoft/azure/storage/core/UriQueryBuilder;
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    :try_start_0
    const-string v1, "restype"

    const-string v2, "directory"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->generateNewUnexpectedStorageException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object v0

    throw v0
.end method

.method public static getFile(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/net/HttpURLConnection;
    .locals 8

    if-eqz p5, :cond_0

    if-eqz p7, :cond_0

    const-string v0, "count"

    .line 1
    invoke-static {v0, p6}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sget v0, Lcom/microsoft/azure/storage/Constants;->MAX_RANGE_CONTENT_MD5:I

    int-to-long v6, v0

    const-string v1, "count"

    invoke-static/range {v1 .. v7}, Lcom/microsoft/azure/storage/core/Utility;->assertInBounds(Ljava/lang/String;JJJ)V

    .line 3
    :cond_0
    new-instance v0, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    .line 4
    invoke-static {v0, p4}, Lcom/microsoft/azure/storage/file/FileRequest;->addShareSnapshot(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;)V

    .line 5
    invoke-static {p0, p1, v0, p2}, Lcom/microsoft/azure/storage/core/BaseRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const-string p1, "GET"

    .line 6
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 7
    invoke-virtual {p3, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyConditionToRequest(Ljava/net/HttpURLConnection;)V

    :cond_1
    if-eqz p5, :cond_3

    .line 8
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const/4 p3, 0x0

    const/4 p4, 0x1

    const-string v0, "x-ms-range"

    if-eqz p6, :cond_2

    .line 9
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, v1

    const-wide/16 v1, 0x1

    sub-long/2addr v3, v1

    .line 10
    sget-object p6, Lcom/microsoft/azure/storage/core/Utility;->LOCALE_US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, p3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, p4

    const-string p1, "bytes=%d-%d"

    .line 12
    invoke-static {p6, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_2
    sget-object p6, Lcom/microsoft/azure/storage/core/Utility;->LOCALE_US:Ljava/util/Locale;

    new-array p4, p4, [Ljava/lang/Object;

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p4, p3

    const-string p1, "bytes=%d-"

    .line 15
    invoke-static {p6, p1, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    if-eqz p5, :cond_4

    if-eqz p7, :cond_4

    const-string p1, "x-ms-range-get-content-md5"

    const-string p2, "true"

    .line 16
    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object p0
.end method

.method public static getFileProperties(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 6

    .line 1
    new-instance v4, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v4}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/microsoft/azure/storage/file/FileRequest;->getProperties(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method public static getFileRanges(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    .line 2
    invoke-static {v0, p4}, Lcom/microsoft/azure/storage/file/FileRequest;->addShareSnapshot(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;)V

    const-string p4, "comp"

    const-string v1, "rangelist"

    .line 3
    invoke-virtual {v0, p4, v1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p0, p1, v0, p2}, Lcom/microsoft/azure/storage/core/BaseRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const-string p1, "GET"

    .line 5
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p3, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyConditionToRequest(Ljava/net/HttpURLConnection;)V

    :cond_0
    return-object p0
.end method

.method public static getProperties(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    invoke-static {p4, p5}, Lcom/microsoft/azure/storage/file/FileRequest;->addShareSnapshot(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1, p4, p2}, Lcom/microsoft/azure/storage/core/BaseRequest;->getProperties(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p3, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyLeaseConditionToRequest(Ljava/net/HttpURLConnection;)V

    :cond_0
    return-object p0
.end method

.method public static getShareProperties(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 6

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/file/FileRequest;->getShareUriQueryBuilder()Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/microsoft/azure/storage/file/FileRequest;->getProperties(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method public static getShareStats(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 3

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/file/FileRequest;->getShareUriQueryBuilder()Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    move-result-object v0

    const-string v1, "comp"

    const-string v2, "stats"

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

.method public static getShareUriQueryBuilder()Lcom/microsoft/azure/storage/core/UriQueryBuilder;
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    :try_start_0
    const-string v1, "restype"

    const-string v2, "share"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->generateNewUnexpectedStorageException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object v0

    throw v0
.end method

.method public static listFilesAndDirectories(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/core/ListingContext;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/file/FileRequest;->getDirectoryUriQueryBuilder()Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    move-result-object v0

    .line 2
    invoke-static {v0, p4}, Lcom/microsoft/azure/storage/file/FileRequest;->addShareSnapshot(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;)V

    const-string p4, "comp"

    const-string v1, "list"

    .line 3
    invoke-virtual {v0, p4, v1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    .line 4
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/core/ListingContext;->getMarker()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 5
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/core/ListingContext;->getMarker()Ljava/lang/String;

    move-result-object p4

    const-string v1, "marker"

    invoke-virtual {v0, v1, p4}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/core/ListingContext;->getMaxResults()Ljava/lang/Integer;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-virtual {p3}, Lcom/microsoft/azure/storage/core/ListingContext;->getMaxResults()Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-lez p4, :cond_1

    .line 7
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/core/ListingContext;->getMaxResults()Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v1, "maxresults"

    invoke-virtual {v0, v1, p4}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/core/ListingContext;->getPrefix()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 9
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/core/ListingContext;->getPrefix()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "prefix"

    invoke-virtual {v0, p4, p3}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_2
    invoke-static {p0, p1, v0, p2}, Lcom/microsoft/azure/storage/core/BaseRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const-string p1, "GET"

    .line 11
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object p0
.end method

.method public static listShares(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/core/ListingContext;Ljava/util/EnumSet;)Ljava/net/HttpURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            "Lcom/microsoft/azure/storage/core/ListingContext;",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/file/ShareListingDetails;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lcom/microsoft/azure/storage/core/BaseRequest;->getListUriQueryBuilder(Lcom/microsoft/azure/storage/core/ListingContext;)Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    move-result-object p3

    if-eqz p4, :cond_3

    .line 2
    invoke-virtual {p4}, Ljava/util/EnumSet;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 4
    sget-object v2, Lcom/microsoft/azure/storage/file/ShareListingDetails;->SNAPSHOTS:Lcom/microsoft/azure/storage/file/ShareListingDetails;

    invoke-virtual {p4, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    const-string v2, "snapshots"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    sget-object v2, Lcom/microsoft/azure/storage/file/ShareListingDetails;->METADATA:Lcom/microsoft/azure/storage/file/ShareListingDetails;

    invoke-virtual {p4, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    if-eqz v1, :cond_1

    const-string p4, ","

    .line 7
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p4, "metadata"

    .line 8
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "include"

    invoke-virtual {p3, v0, p4}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_3
    invoke-static {p0, p1, p3, p2}, Lcom/microsoft/azure/storage/core/BaseRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const-string p1, "GET"

    .line 11
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object p0
.end method

.method public static putFile(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileProperties;J)Ljava/net/HttpURLConnection;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, p2}, Lcom/microsoft/azure/storage/core/BaseRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string p1, "PUT"

    .line 3
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 4
    invoke-static {p0, p4}, Lcom/microsoft/azure/storage/file/FileRequest;->addProperties(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/file/FileProperties;)V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const-string p1, "Content-Length"

    const-string p2, "0"

    .line 6
    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "x-ms-type"

    const-string p2, "File"

    .line 7
    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "x-ms-content-length"

    invoke-virtual {p0, p2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p4, p5, p6}, Lcom/microsoft/azure/storage/file/FileProperties;->setLength(J)V

    if-eqz p3, :cond_0

    .line 10
    invoke-virtual {p3, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyConditionToRequest(Ljava/net/HttpURLConnection;)V

    :cond_0
    return-object p0
.end method

.method public static putRange(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRange;Lcom/microsoft/azure/storage/file/FileRangeOperationType;)Ljava/net/HttpURLConnection;
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    const-string v1, "comp"

    const-string v2, "range"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1, v0, p2}, Lcom/microsoft/azure/storage/core/BaseRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string p1, "PUT"

    .line 5
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 6
    sget-object p1, Lcom/microsoft/azure/storage/file/FileRangeOperationType;->CLEAR:Lcom/microsoft/azure/storage/file/FileRangeOperationType;

    if-ne p5, p1, :cond_0

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 8
    :cond_0
    invoke-virtual {p5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "x-ms-write"

    invoke-virtual {p0, p2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/file/FileRange;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "x-ms-range"

    invoke-virtual {p0, p2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 10
    invoke-virtual {p3, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyConditionToRequest(Ljava/net/HttpURLConnection;)V

    :cond_1
    return-object p0
.end method

.method public static resize(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/Long;)Ljava/net/HttpURLConnection;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/microsoft/azure/storage/file/FileRequest;->setFileProperties(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileProperties;)Ljava/net/HttpURLConnection;

    move-result-object p0

    if-eqz p4, :cond_0

    .line 2
    invoke-virtual {p4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "x-ms-content-length"

    invoke-virtual {p0, p2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static setAcl(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;)Ljava/net/HttpURLConnection;
    .locals 3

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/file/FileRequest;->getShareUriQueryBuilder()Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    move-result-object v0

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

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/AccessCondition;->getLeaseID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p3, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyLeaseConditionToRequest(Ljava/net/HttpURLConnection;)V

    :cond_0
    return-object p0
.end method

.method public static setDirectoryMetadata(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/file/FileRequest;->getDirectoryUriQueryBuilder()Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    move-result-object v0

    .line 2
    invoke-static {p0, p1, p2, p3, v0}, Lcom/microsoft/azure/storage/file/FileRequest;->setMetadata(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/core/UriQueryBuilder;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method public static setFileMetadata(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;)Ljava/net/HttpURLConnection;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/microsoft/azure/storage/file/FileRequest;->setMetadata(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/core/UriQueryBuilder;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method public static setFileProperties(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileProperties;)Ljava/net/HttpURLConnection;
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    const-string v1, "comp"

    const-string v2, "properties"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1, v0, p2}, Lcom/microsoft/azure/storage/core/BaseRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string p1, "PUT"

    .line 6
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p3, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyConditionToRequest(Ljava/net/HttpURLConnection;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 8
    invoke-static {p0, p4}, Lcom/microsoft/azure/storage/file/FileRequest;->addProperties(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/file/FileProperties;)V

    :cond_1
    return-object p0
.end method

.method public static setMetadata(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/core/UriQueryBuilder;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    invoke-static {p0, p1, p4, p2}, Lcom/microsoft/azure/storage/core/BaseRequest;->setMetadata(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyConditionToRequest(Ljava/net/HttpURLConnection;)V

    :cond_0
    return-object p0
.end method

.method public static setShareMetadata(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/file/FileRequest;->getShareUriQueryBuilder()Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    move-result-object v0

    .line 2
    invoke-static {p0, p1, p2, p3, v0}, Lcom/microsoft/azure/storage/file/FileRequest;->setMetadata(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/core/UriQueryBuilder;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method public static setShareProperties(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileShareProperties;)Ljava/net/HttpURLConnection;
    .locals 3

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/file/FileRequest;->getShareUriQueryBuilder()Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    move-result-object v0

    const-string v1, "comp"

    const-string v2, "properties"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1, v0, p2}, Lcom/microsoft/azure/storage/core/BaseRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string p1, "PUT"

    .line 6
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p3, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyConditionToRequest(Ljava/net/HttpURLConnection;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 8
    invoke-static {p0, p4}, Lcom/microsoft/azure/storage/file/FileRequest;->addProperties(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/file/FileShareProperties;)V

    :cond_1
    return-object p0
.end method

.method public static snapshotShare(Ljava/net/URI;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;)Ljava/net/HttpURLConnection;
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    const-string v1, "restype"

    const-string v2, "share"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "comp"

    const-string v2, "snapshot"

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p0, p1, v0, p2}, Lcom/microsoft/azure/storage/core/BaseRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string p1, "PUT"

    .line 7
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 8
    invoke-virtual {p3, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyConditionToRequest(Ljava/net/HttpURLConnection;)V

    :cond_0
    return-object p0
.end method
