.class public final Lcom/microsoft/azure/storage/blob/BlobRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APPEND_BLOCK_QUERY_ELEMENT_NAME:Ljava/lang/String; = "appendblock"

.field public static final BLOCK_ID_QUERY_ELEMENT_NAME:Ljava/lang/String; = "blockid"

.field public static final BLOCK_LIST_QUERY_ELEMENT_NAME:Ljava/lang/String; = "blocklist"

.field public static final BLOCK_LIST_TYPE_QUERY_ELEMENT_NAME:Ljava/lang/String; = "blocklisttype"

.field public static final BLOCK_QUERY_ELEMENT_NAME:Ljava/lang/String; = "block"

.field public static final COPY_QUERY_ELEMENT_NAME:Ljava/lang/String; = "copy"

.field public static final DELETED_QUERY_ELEMENT_NAME:Ljava/lang/String; = "deleted"

.field public static final PAGE_LIST_QUERY_ELEMENT_NAME:Ljava/lang/String; = "pagelist"

.field public static final PAGE_QUERY_ELEMENT_NAME:Ljava/lang/String; = "page"

.field public static final SNAPSHOTS_QUERY_ELEMENT_NAME:Ljava/lang/String; = "snapshots"

.field public static final TIER_QUERY_ELEMENT_NAME:Ljava/lang/String; = "tier"

.field public static final UNCOMMITTED_BLOBS_QUERY_ELEMENT_NAME:Ljava/lang/String; = "uncommittedblobs"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abortCopy(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;)Ljava/net/HttpURLConnection;
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
    invoke-virtual {p3, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyLeaseConditionToRequest(Ljava/net/HttpURLConnection;)V

    :cond_0
    return-object p0
.end method

.method public static addMetadata(Ljava/net/HttpURLConnection;Ljava/util/HashMap;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/HashMap<",
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

.method public static addProperties(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/BlobProperties;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getCacheControl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-ms-blob-cache-control"

    .line 2
    invoke-static {p0, v1, v0}, Lcom/microsoft/azure/storage/core/BaseRequest;->addOptionalHeader(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getContentDisposition()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-ms-blob-content-disposition"

    .line 4
    invoke-static {p0, v1, v0}, Lcom/microsoft/azure/storage/core/BaseRequest;->addOptionalHeader(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-ms-blob-content-encoding"

    invoke-static {p0, v1, v0}, Lcom/microsoft/azure/storage/core/BaseRequest;->addOptionalHeader(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getContentLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-ms-blob-content-language"

    invoke-static {p0, v1, v0}, Lcom/microsoft/azure/storage/core/BaseRequest;->addOptionalHeader(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getContentMD5()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-ms-blob-content-md5"

    invoke-static {p0, v1, v0}, Lcom/microsoft/azure/storage/core/BaseRequest;->addOptionalHeader(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getContentType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "x-ms-blob-content-type"

    invoke-static {p0, v0, p1}, Lcom/microsoft/azure/storage/core/BaseRequest;->addOptionalHeader(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addRange(Ljava/net/HttpURLConnection;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1

    const-string v0, "x-ms-range"

    .line 1
    invoke-static {v0, p0, p1, p2}, Lcom/microsoft/azure/storage/blob/BlobRequest;->addRangeImpl(Ljava/lang/String;Ljava/net/HttpURLConnection;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method public static addRangeImpl(Ljava/lang/String;Ljava/net/HttpURLConnection;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 8

    if-eqz p3, :cond_0

    const-string v0, "offset"

    .line 1
    invoke-static {v0, p2}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    const-wide v6, 0x7fffffffffffffffL

    const-string v1, "count"

    invoke-static/range {v1 .. v7}, Lcom/microsoft/azure/storage/core/Utility;->assertInBounds(Ljava/lang/String;JJJ)V

    :cond_0
    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    add-long/2addr p2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr p2, v4

    .line 5
    sget-object v4, Lcom/microsoft/azure/storage/core/Utility;->LOCALE_US:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v5, v3

    const-string p2, "bytes=%d-%d"

    .line 7
    invoke-static {v4, p2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    sget-object p2, Lcom/microsoft/azure/storage/core/Utility;->LOCALE_US:Ljava/util/Locale;

    new-array p3, v3, [Ljava/lang/Object;

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p3, v2

    const-string v0, "bytes=%d-"

    .line 10
    invoke-static {p2, v0, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static addSnapshot(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "snapshot"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static addSourceRange(Ljava/net/HttpURLConnection;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1

    const-string v0, "x-ms-source-range"

    .line 1
    invoke-static {v0, p0, p1, p2}, Lcom/microsoft/azure/storage/blob/BlobRequest;->addRangeImpl(Ljava/lang/String;Ljava/net/HttpURLConnection;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method public static appendBlock(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;)Ljava/net/HttpURLConnection;
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    const-string v1, "comp"

    const-string v2, "appendblock"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, v0, p1, p2}, Lcom/microsoft/azure/storage/blob/BlobRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string p1, "PUT"

    .line 5
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p3, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyConditionToRequest(Ljava/net/HttpURLConnection;)V

    .line 7
    invoke-virtual {p3, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyAppendConditionToRequest(Ljava/net/HttpURLConnection;)V

    :cond_0
    return-object p0
.end method

.method public static copyFrom(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;Ljava/lang/String;ZLcom/microsoft/azure/storage/blob/PremiumPageBlobTier;)Ljava/net/HttpURLConnection;
    .locals 11

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v10, p8

    .line 1
    invoke-static/range {v0 .. v10}, Lcom/microsoft/azure/storage/blob/BlobRequest;->copyFrom(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static copyFrom(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;)Ljava/net/HttpURLConnection;
    .locals 1

    if-nez p8, :cond_1

    .line 2
    invoke-static {p9}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MD5 can only be specified with a synchronous copy operation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p6, :cond_2

    const-string v0, "?snapshot="

    .line 4
    invoke-virtual {p5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 5
    invoke-virtual {p5, p6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    :cond_2
    const/4 p6, 0x0

    if-eqz p7, :cond_3

    .line 6
    new-instance p6, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {p6}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    const-string p7, "comp"

    const-string v0, "incrementalcopy"

    .line 7
    invoke-virtual {p6, p7, v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_3
    invoke-static {p0, p1, p6, p2}, Lcom/microsoft/azure/storage/core/BaseRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string p1, "PUT"

    .line 11
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string p1, "x-ms-copy-source"

    .line 12
    invoke-virtual {p0, p1, p5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p10, :cond_4

    .line 13
    invoke-static {p10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "x-ms-access-tier"

    invoke-virtual {p0, p2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz p3, :cond_5

    .line 14
    invoke-virtual {p3, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applySourceConditionToRequest(Ljava/net/HttpURLConnection;)V

    :cond_5
    if-eqz p4, :cond_6

    .line 15
    invoke-virtual {p4, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyConditionToRequest(Ljava/net/HttpURLConnection;)V

    :cond_6
    if-eqz p8, :cond_7

    const-string p1, "x-ms-requires-sync"

    const-string p2, "true"

    .line 16
    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_7
    invoke-static {p9}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "x-ms-source-content-md5"

    .line 18
    invoke-virtual {p0, p1, p9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-object p0
.end method

.method public static createContainer(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;->UNKNOWN:Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;

    if-eq p3, v0, :cond_1

    .line 2
    invoke-static {}, Lcom/microsoft/azure/storage/blob/BlobRequest;->getContainerUriQueryBuilder()Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    move-result-object v0

    .line 3
    invoke-static {p0, p1, v0, p2}, Lcom/microsoft/azure/storage/core/BaseRequest;->create(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    if-eqz p3, :cond_0

    .line 4
    sget-object p1, Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;->OFF:Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;

    if-eq p3, p1, :cond_0

    .line 5
    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p2, "x-ms-blob-public-access"

    invoke-virtual {p0, p2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/microsoft/azure/storage/core/Utility;->LOCALE_US:Ljava/util/Locale;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "accessType"

    aput-object v1, p2, v0

    const/4 v0, 0x1

    aput-object p3, p2, v0

    const-string p3, "The argument is out of range. Argument name: %s, Value passed: %s."

    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    invoke-static {p0, p2, p1, p3}, Lcom/microsoft/azure/storage/core/BaseRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method public static deleteBlob(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;Lcom/microsoft/azure/storage/blob/DeleteSnapshotsOption;)Ljava/net/HttpURLConnection;
    .locals 2

    const/4 v0, 0x1

    if-eqz p4, :cond_1

    .line 1
    sget-object v1, Lcom/microsoft/azure/storage/blob/DeleteSnapshotsOption;->NONE:Lcom/microsoft/azure/storage/blob/DeleteSnapshotsOption;

    if-ne p5, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "deleteSnapshotsOption"

    aput-object p3, p1, p2

    const-string p2, "snapshot"

    aput-object p2, p1, v0

    const-string p2, "The option \'%s\' must be \'None\' to delete a specific snapshot specified by \'%s\'."

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    :goto_0
    new-instance v1, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    .line 4
    invoke-static {v1, p4}, Lcom/microsoft/azure/storage/blob/BlobRequest;->addSnapshot(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;)V

    .line 5
    invoke-static {p0, p1, v1, p2}, Lcom/microsoft/azure/storage/core/BaseRequest;->delete(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    if-eqz p3, :cond_2

    .line 6
    invoke-virtual {p3, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyConditionToRequest(Ljava/net/HttpURLConnection;)V

    .line 7
    :cond_2
    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string p2, "x-ms-delete-snapshots"

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, "include"

    .line 8
    invoke-virtual {p0, p2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p1, "only"

    .line 9
    invoke-virtual {p0, p2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method public static deleteContainer(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/blob/BlobRequest;->getContainerUriQueryBuilder()Lcom/microsoft/azure/storage/core/UriQueryBuilder;

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

.method public static getAcl(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 3

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/blob/BlobRequest;->getContainerUriQueryBuilder()Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    move-result-object v0

    const-string v1, "comp"

    const-string v2, "acl"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, v0, p1, p3}, Lcom/microsoft/azure/storage/blob/BlobRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const-string p1, "GET"

    .line 4
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyLeaseConditionToRequest(Ljava/net/HttpURLConnection;)V

    :cond_0
    return-object p0
.end method

.method public static getBlob(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/net/HttpURLConnection;
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
    invoke-static {v0, p4}, Lcom/microsoft/azure/storage/blob/BlobRequest;->addSnapshot(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;)V

    .line 5
    invoke-static {p0, p1, v0, p2}, Lcom/microsoft/azure/storage/core/BaseRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const-string p1, "GET"

    .line 6
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 7
    invoke-virtual {p3, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyConditionToRequest(Ljava/net/HttpURLConnection;)V

    .line 8
    :cond_1
    invoke-static {p0, p5, p6}, Lcom/microsoft/azure/storage/blob/BlobRequest;->addRange(Ljava/net/HttpURLConnection;Ljava/lang/Long;Ljava/lang/Long;)V

    if-eqz p5, :cond_2

    if-eqz p7, :cond_2

    const-string p1, "x-ms-range-get-content-md5"

    const-string p2, "true"

    .line 9
    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object p0
.end method

.method public static getBlobProperties(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    .line 2
    invoke-static {v0, p4}, Lcom/microsoft/azure/storage/blob/BlobRequest;->addSnapshot(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1, p2, p3, v0}, Lcom/microsoft/azure/storage/blob/BlobRequest;->getProperties(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/core/UriQueryBuilder;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method public static getBlockList(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;Lcom/microsoft/azure/storage/blob/BlockListingFilter;)Ljava/net/HttpURLConnection;
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    const-string v1, "comp"

    const-string v2, "blocklist"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v1, "blocklisttype"

    invoke-virtual {v0, v1, p5}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {v0, p4}, Lcom/microsoft/azure/storage/blob/BlobRequest;->addSnapshot(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;)V

    .line 5
    invoke-static {p0, p1, v0, p2}, Lcom/microsoft/azure/storage/core/BaseRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const-string p1, "GET"

    .line 6
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p3, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyConditionToRequest(Ljava/net/HttpURLConnection;)V

    :cond_0
    return-object p0
.end method

.method public static getContainerProperties(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/blob/BlobRequest;->getContainerUriQueryBuilder()Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    move-result-object v0

    .line 2
    invoke-static {p0, p1, p2, p3, v0}, Lcom/microsoft/azure/storage/blob/BlobRequest;->getProperties(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/core/UriQueryBuilder;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method public static getContainerUriQueryBuilder()Lcom/microsoft/azure/storage/core/UriQueryBuilder;
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    :try_start_0
    const-string v1, "restype"

    const-string v2, "container"

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

.method public static getPageRanges(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Ljava/net/HttpURLConnection;
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    const-string v1, "comp"

    const-string v2, "pagelist"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {v0, p4}, Lcom/microsoft/azure/storage/blob/BlobRequest;->addSnapshot(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;)V

    .line 4
    invoke-static {p0, v0, p1, p2}, Lcom/microsoft/azure/storage/blob/BlobRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const-string p1, "GET"

    .line 5
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p3, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyConditionToRequest(Ljava/net/HttpURLConnection;)V

    .line 7
    :cond_0
    invoke-static {p0, p5, p6}, Lcom/microsoft/azure/storage/blob/BlobRequest;->addRange(Ljava/net/HttpURLConnection;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object p0
.end method

.method public static getPageRangesDiff(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Ljava/net/HttpURLConnection;
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    const-string v1, "comp"

    const-string v2, "pagelist"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "prevsnapshot"

    .line 3
    invoke-virtual {v0, v1, p5}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {v0, p4}, Lcom/microsoft/azure/storage/blob/BlobRequest;->addSnapshot(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;)V

    .line 5
    invoke-static {p0, v0, p1, p2}, Lcom/microsoft/azure/storage/blob/BlobRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const-string p1, "GET"

    .line 6
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p3, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyConditionToRequest(Ljava/net/HttpURLConnection;)V

    .line 8
    :cond_0
    invoke-static {p0, p6, p7}, Lcom/microsoft/azure/storage/blob/BlobRequest;->addRange(Ljava/net/HttpURLConnection;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object p0
.end method

.method public static getProperties(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/core/UriQueryBuilder;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    invoke-static {p0, p1, p4, p2}, Lcom/microsoft/azure/storage/core/BaseRequest;->getProperties(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyLeaseConditionToRequest(Ljava/net/HttpURLConnection;)V

    :cond_0
    return-object p0
.end method

.method public static lease(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/LeaseAction;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lcom/microsoft/azure/storage/core/UriQueryBuilder;)Ljava/net/HttpURLConnection;
    .locals 7

    .line 1
    invoke-static {p0, p8, p1, p2}, Lcom/microsoft/azure/storage/blob/BlobRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string p1, "PUT"

    .line 3
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 5
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/blob/LeaseAction;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "x-ms-lease-action"

    invoke-virtual {p0, p2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object p1, Lcom/microsoft/azure/storage/blob/LeaseAction;->ACQUIRE:Lcom/microsoft/azure/storage/blob/LeaseAction;

    if-ne p4, p1, :cond_2

    if-eqz p5, :cond_0

    .line 7
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 8
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    const-wide/16 v3, 0xf

    const-wide/16 v5, 0x3c

    const-string v0, "leaseTimeInSeconds"

    invoke-static/range {v0 .. v6}, Lcom/microsoft/azure/storage/core/Utility;->assertInBounds(Ljava/lang/String;JJJ)V

    :cond_0
    if-nez p5, :cond_1

    const-string p1, "-1"

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "x-ms-lease-duration"

    .line 10
    invoke-virtual {p0, p2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p6, :cond_3

    const-string p1, "x-ms-proposed-lease-id"

    .line 11
    invoke-virtual {p0, p1, p6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p7, :cond_4

    .line 12
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3c

    const-string v0, "breakPeriodInSeconds"

    invoke-static/range {v0 .. v6}, Lcom/microsoft/azure/storage/core/Utility;->assertInBounds(Ljava/lang/String;JJJ)V

    .line 13
    invoke-virtual {p7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "x-ms-lease-break-period"

    invoke-virtual {p0, p2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz p3, :cond_5

    .line 14
    invoke-virtual {p3, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyConditionToRequest(Ljava/net/HttpURLConnection;)V

    :cond_5
    return-object p0
.end method

.method public static leaseBlob(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/LeaseAction;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Ljava/net/HttpURLConnection;
    .locals 9

    .line 1
    new-instance v8, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v8}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    const-string v0, "comp"

    const-string v1, "lease"

    .line 2
    invoke-virtual {v8, v0, v1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 3
    invoke-static/range {v0 .. v8}, Lcom/microsoft/azure/storage/blob/BlobRequest;->lease(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/LeaseAction;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lcom/microsoft/azure/storage/core/UriQueryBuilder;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static leaseContainer(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/LeaseAction;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Ljava/net/HttpURLConnection;
    .locals 9

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/blob/BlobRequest;->getContainerUriQueryBuilder()Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    move-result-object v8

    const-string v0, "comp"

    const-string v1, "lease"

    .line 2
    invoke-virtual {v8, v0, v1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 3
    invoke-static/range {v0 .. v8}, Lcom/microsoft/azure/storage/blob/BlobRequest;->lease(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/LeaseAction;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lcom/microsoft/azure/storage/core/UriQueryBuilder;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static listBlobs(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/blob/BlobListingContext;)Ljava/net/HttpURLConnection;
    .locals 7

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/blob/BlobRequest;->getContainerUriQueryBuilder()Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    move-result-object v0

    const-string v1, "comp"

    const-string v2, "list"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_d

    .line 3
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/core/ListingContext;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/core/ListingContext;->getPrefix()Ljava/lang/String;

    move-result-object v1

    const-string v2, "prefix"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/blob/BlobListingContext;->getDelimiter()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/blob/BlobListingContext;->getDelimiter()Ljava/lang/String;

    move-result-object v1

    const-string v2, "delimiter"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/core/ListingContext;->getMarker()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/core/ListingContext;->getMarker()Ljava/lang/String;

    move-result-object v1

    const-string v2, "marker"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_2
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/core/ListingContext;->getMaxResults()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p3}, Lcom/microsoft/azure/storage/core/ListingContext;->getMaxResults()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_3

    .line 10
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/core/ListingContext;->getMaxResults()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "maxresults"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_3
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/blob/BlobListingContext;->getListingDetails()Ljava/util/EnumSet;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p3}, Lcom/microsoft/azure/storage/blob/BlobListingContext;->getListingDetails()Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/EnumSet;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 13
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/blob/BlobListingContext;->getListingDetails()Ljava/util/EnumSet;

    move-result-object v3

    sget-object v4, Lcom/microsoft/azure/storage/blob/BlobListingDetails;->SNAPSHOTS:Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    const-string v2, "snapshots"

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 15
    :cond_4
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/blob/BlobListingContext;->getListingDetails()Ljava/util/EnumSet;

    move-result-object v3

    sget-object v5, Lcom/microsoft/azure/storage/blob/BlobListingDetails;->UNCOMMITTED_BLOBS:Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    invoke-virtual {v3, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, ","

    if-eqz v3, :cond_6

    if-nez v2, :cond_5

    const/4 v2, 0x1

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v3, "uncommittedblobs"

    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_6
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/blob/BlobListingContext;->getListingDetails()Ljava/util/EnumSet;

    move-result-object v3

    sget-object v6, Lcom/microsoft/azure/storage/blob/BlobListingDetails;->COPY:Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    invoke-virtual {v3, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_1

    .line 19
    :cond_7
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v3, "copy"

    .line 20
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_8
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/blob/BlobListingContext;->getListingDetails()Ljava/util/EnumSet;

    move-result-object v3

    sget-object v6, Lcom/microsoft/azure/storage/blob/BlobListingDetails;->METADATA:Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    invoke-virtual {v3, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez v2, :cond_9

    goto :goto_2

    .line 22
    :cond_9
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v2

    :goto_2
    const-string v2, "metadata"

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v4

    .line 24
    :cond_a
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/blob/BlobListingContext;->getListingDetails()Ljava/util/EnumSet;

    move-result-object p3

    sget-object v3, Lcom/microsoft/azure/storage/blob/BlobListingDetails;->DELETED:Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    invoke-virtual {p3, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    if-nez v2, :cond_b

    goto :goto_3

    .line 25
    :cond_b
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const-string p3, "deleted"

    .line 26
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "include"

    invoke-virtual {v0, v1, p3}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_d
    invoke-static {p0, v0, p1, p2}, Lcom/microsoft/azure/storage/blob/BlobRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const-string p1, "GET"

    .line 29
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object p0
.end method

.method public static listContainers(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/core/ListingContext;Lcom/microsoft/azure/storage/blob/ContainerListingDetails;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 1
    invoke-static {p3}, Lcom/microsoft/azure/storage/core/BaseRequest;->getListUriQueryBuilder(Lcom/microsoft/azure/storage/core/ListingContext;)Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    move-result-object p3

    .line 2
    sget-object v0, Lcom/microsoft/azure/storage/blob/ContainerListingDetails;->ALL:Lcom/microsoft/azure/storage/blob/ContainerListingDetails;

    if-eq p4, v0, :cond_0

    sget-object v0, Lcom/microsoft/azure/storage/blob/ContainerListingDetails;->METADATA:Lcom/microsoft/azure/storage/blob/ContainerListingDetails;

    if-ne p4, v0, :cond_1

    :cond_0
    const-string p4, "include"

    const-string v0, "metadata"

    .line 3
    invoke-virtual {p3, p4, v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_1
    invoke-static {p0, p3, p1, p2}, Lcom/microsoft/azure/storage/blob/BlobRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const-string p1, "GET"

    .line 5
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object p0
.end method

.method public static putBlob(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobProperties;Lcom/microsoft/azure/storage/blob/BlobType;J)Ljava/net/HttpURLConnection;
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    .line 1
    invoke-static/range {v0 .. v8}, Lcom/microsoft/azure/storage/blob/BlobRequest;->putBlob(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobProperties;Lcom/microsoft/azure/storage/blob/BlobType;JLcom/microsoft/azure/storage/blob/PremiumPageBlobTier;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static putBlob(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobProperties;Lcom/microsoft/azure/storage/blob/BlobType;JLcom/microsoft/azure/storage/blob/PremiumPageBlobTier;)Ljava/net/HttpURLConnection;
    .locals 3

    .line 2
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/BlobType;

    if-eq p5, v0, :cond_5

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, v0, p1, p2}, Lcom/microsoft/azure/storage/blob/BlobRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string p1, "PUT"

    .line 5
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 6
    invoke-static {p0, p4}, Lcom/microsoft/azure/storage/blob/BlobRequest;->addProperties(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/BlobProperties;)V

    .line 7
    sget-object p1, Lcom/microsoft/azure/storage/blob/BlobType;->PAGE_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    const-string p2, "0"

    const-string v0, "Content-Length"

    const/4 v1, 0x0

    const-string v2, "x-ms-blob-type"

    if-ne p5, p1, :cond_1

    .line 8
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 9
    invoke-virtual {p0, v0, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "PageBlob"

    .line 10
    invoke-virtual {p0, v2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "x-ms-blob-content-length"

    invoke-virtual {p0, p2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p8, :cond_0

    .line 12
    invoke-static {p8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "x-ms-access-tier"

    invoke-virtual {p0, p2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_0
    invoke-virtual {p4, p6, p7}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setLength(J)V

    goto :goto_0

    .line 14
    :cond_1
    sget-object p1, Lcom/microsoft/azure/storage/blob/BlobType;->BLOCK_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    if-ne p5, p1, :cond_2

    const-string p1, "BlockBlob"

    .line 15
    invoke-virtual {p0, v2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_2
    sget-object p1, Lcom/microsoft/azure/storage/blob/BlobType;->APPEND_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    if-ne p5, p1, :cond_3

    .line 17
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const-string p1, "AppendBlob"

    .line 18
    invoke-virtual {p0, v2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, v0, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    .line 20
    invoke-virtual {p3, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyConditionToRequest(Ljava/net/HttpURLConnection;)V

    :cond_4
    return-object p0

    .line 21
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The blob type is not defined.  Allowed types are BlobType.BLOCK_BLOB and BlobType.Page_BLOB."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static putBlock(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    const-string v1, "comp"

    const-string v2, "block"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "blockid"

    .line 3
    invoke-virtual {v0, v1, p4}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p0, v0, p1, p2}, Lcom/microsoft/azure/storage/blob/BlobRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

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
    return-object p0
.end method

.method public static putBlock(Ljava/net/URI;Ljava/lang/String;JLjava/lang/Long;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Ljava/lang/String;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3

    .line 8
    new-instance v0, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    const-string v1, "comp"

    const-string v2, "block"

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "blockid"

    .line 10
    invoke-virtual {v0, v1, p9}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {p0, v0, p5, p7}, Lcom/microsoft/azure/storage/blob/BlobRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const/4 p5, 0x1

    .line 12
    invoke-virtual {p0, p5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string p5, "PUT"

    .line 13
    invoke-virtual {p0, p5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p5, 0x0

    .line 14
    invoke-virtual {p0, p5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const-string p5, "Content-Length"

    const-string p7, "0"

    .line 15
    invoke-virtual {p0, p5, p7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "x-ms-copy-source"

    .line 16
    invoke-virtual {p0, p5, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p8, :cond_0

    .line 17
    invoke-virtual {p8, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyConditionToRequest(Ljava/net/HttpURLConnection;)V

    .line 18
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1, p4}, Lcom/microsoft/azure/storage/blob/BlobRequest;->addSourceRange(Ljava/net/HttpURLConnection;Ljava/lang/Long;Ljava/lang/Long;)V

    const-string p1, "x-ms-source-content-md5"

    .line 19
    invoke-static {p0, p1, p6}, Lcom/microsoft/azure/storage/core/BaseRequest;->addOptionalHeader(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static putBlockList(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobProperties;)Ljava/net/HttpURLConnection;
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    const-string v1, "comp"

    const-string v2, "blocklist"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, v0, p1, p2}, Lcom/microsoft/azure/storage/blob/BlobRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string p1, "PUT"

    .line 5
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p3, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyConditionToRequest(Ljava/net/HttpURLConnection;)V

    .line 7
    :cond_0
    invoke-static {p0, p4}, Lcom/microsoft/azure/storage/blob/BlobRequest;->addProperties(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/BlobProperties;)V

    return-object p0
.end method

.method public static putPage(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/PageRange;Lcom/microsoft/azure/storage/blob/PageOperationType;)Ljava/net/HttpURLConnection;
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    const-string v1, "comp"

    const-string v2, "page"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, v0, p1, p2}, Lcom/microsoft/azure/storage/blob/BlobRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string p1, "PUT"

    .line 5
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 6
    sget-object p1, Lcom/microsoft/azure/storage/blob/PageOperationType;->CLEAR:Lcom/microsoft/azure/storage/blob/PageOperationType;

    if-ne p5, p1, :cond_0

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 8
    :cond_0
    invoke-virtual {p5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "x-ms-page-write"

    invoke-virtual {p0, p2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/blob/PageRange;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "x-ms-range"

    invoke-virtual {p0, p2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 10
    invoke-virtual {p3, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyConditionToRequest(Ljava/net/HttpURLConnection;)V

    .line 11
    invoke-virtual {p3, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applySequenceConditionToRequest(Ljava/net/HttpURLConnection;)V

    :cond_1
    return-object p0
.end method

.method public static resize(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/Long;)Ljava/net/HttpURLConnection;
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    const-string v1, "comp"

    const-string v2, "properties"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, v0, p1, p2}, Lcom/microsoft/azure/storage/blob/BlobRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

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
    invoke-virtual {p4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "x-ms-blob-content-length"

    invoke-virtual {p0, p2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public static setAcl(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;)Ljava/net/HttpURLConnection;
    .locals 4

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;->UNKNOWN:Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;

    const/4 v1, 0x1

    if-eq p4, v0, :cond_2

    .line 2
    invoke-static {}, Lcom/microsoft/azure/storage/blob/BlobRequest;->getContainerUriQueryBuilder()Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    move-result-object v0

    const-string v2, "comp"

    const-string v3, "acl"

    .line 3
    invoke-virtual {v0, v2, v3}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p0, v0, p1, p2}, Lcom/microsoft/azure/storage/blob/BlobRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const-string p1, "PUT"

    .line 5
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 7
    sget-object p1, Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;->OFF:Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;

    if-eq p4, p1, :cond_0

    .line 8
    invoke-virtual {p4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p2, "x-ms-blob-public-access"

    invoke-virtual {p0, p2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 9
    invoke-virtual {p3, p0}, Lcom/microsoft/azure/storage/AccessCondition;->applyLeaseConditionToRequest(Ljava/net/HttpURLConnection;)V

    :cond_1
    return-object p0

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/microsoft/azure/storage/core/Utility;->LOCALE_US:Ljava/util/Locale;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "accessType"

    aput-object v0, p2, p3

    aput-object p4, p2, v1

    const-string p3, "The argument is out of range. Argument name: %s, Value passed: %s."

    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setBlobMetadata(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;)Ljava/net/HttpURLConnection;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/microsoft/azure/storage/blob/BlobRequest;->setMetadata(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/core/UriQueryBuilder;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method public static setBlobProperties(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobProperties;)Ljava/net/HttpURLConnection;
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    const-string v1, "comp"

    const-string v2, "properties"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, v0, p1, p2}, Lcom/microsoft/azure/storage/blob/BlobRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

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
    invoke-static {p0, p4}, Lcom/microsoft/azure/storage/blob/BlobRequest;->addProperties(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/BlobProperties;)V

    :cond_1
    return-object p0
.end method

.method public static setBlobTier(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    const-string v1, "comp"

    const-string v2, "tier"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, v0, p1, p2}, Lcom/microsoft/azure/storage/blob/BlobRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string p1, "PUT"

    .line 5
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const-string p1, "Content-Length"

    const-string p2, "0"

    .line 7
    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "x-ms-access-tier"

    .line 8
    invoke-virtual {p0, p1, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static setContainerMetadata(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/blob/BlobRequest;->getContainerUriQueryBuilder()Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    move-result-object v0

    .line 2
    invoke-static {p0, p1, p2, p3, v0}, Lcom/microsoft/azure/storage/blob/BlobRequest;->setMetadata(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/core/UriQueryBuilder;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method public static setMetadata(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/core/UriQueryBuilder;)Ljava/net/HttpURLConnection;
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

.method public static snapshot(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;)Ljava/net/HttpURLConnection;
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    const-string v1, "comp"

    const-string v2, "snapshot"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, v0, p1, p2}, Lcom/microsoft/azure/storage/blob/BlobRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

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
    return-object p0
.end method

.method public static undeleteBlob(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    .line 2
    invoke-static {p0, p1, v0, p2}, Lcom/microsoft/azure/storage/core/BaseRequest;->undelete(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method
