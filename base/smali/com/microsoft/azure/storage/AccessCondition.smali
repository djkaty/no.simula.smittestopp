.class public final Lcom/microsoft/azure/storage/AccessCondition;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ifAppendPositionEqual:Ljava/lang/Long;

.field public ifMatchETag:Ljava/lang/String;

.field public ifMaxSizeLessThanOrEqual:Ljava/lang/Long;

.field public ifModifiedSinceDate:Ljava/util/Date;

.field public ifNoneMatchETag:Ljava/lang/String;

.field public ifSequenceNumberEqual:Ljava/lang/Long;

.field public ifSequenceNumberLessThan:Ljava/lang/Long;

.field public ifSequenceNumberLessThanOrEqual:Ljava/lang/Long;

.field public ifUnmodifiedSinceDate:Ljava/util/Date;

.field public leaseID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->leaseID:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifMatchETag:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifNoneMatchETag:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifModifiedSinceDate:Ljava/util/Date;

    .line 6
    iput-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifUnmodifiedSinceDate:Ljava/util/Date;

    .line 7
    iput-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifSequenceNumberLessThanOrEqual:Ljava/lang/Long;

    .line 8
    iput-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifSequenceNumberLessThan:Ljava/lang/Long;

    .line 9
    iput-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifSequenceNumberEqual:Ljava/lang/Long;

    .line 10
    iput-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifMaxSizeLessThanOrEqual:Ljava/lang/Long;

    .line 11
    iput-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifAppendPositionEqual:Ljava/lang/Long;

    return-void
.end method

.method public static generateEmptyCondition()Lcom/microsoft/azure/storage/AccessCondition;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/AccessCondition;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/AccessCondition;-><init>()V

    return-object v0
.end method

.method public static generateIfExistsCondition()Lcom/microsoft/azure/storage/AccessCondition;
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/AccessCondition;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/AccessCondition;-><init>()V

    const-string v1, "*"

    .line 2
    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/AccessCondition;->setIfMatch(Ljava/lang/String;)V

    return-object v0
.end method

.method public static generateIfMatchCondition(Ljava/lang/String;)Lcom/microsoft/azure/storage/AccessCondition;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/AccessCondition;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/AccessCondition;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/microsoft/azure/storage/AccessCondition;->setIfMatch(Ljava/lang/String;)V

    return-object v0
.end method

.method public static generateIfModifiedSinceCondition(Ljava/util/Date;)Lcom/microsoft/azure/storage/AccessCondition;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/AccessCondition;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/AccessCondition;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/microsoft/azure/storage/AccessCondition;->ifModifiedSinceDate:Ljava/util/Date;

    return-object v0
.end method

.method public static generateIfNoneMatchCondition(Ljava/lang/String;)Lcom/microsoft/azure/storage/AccessCondition;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/AccessCondition;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/AccessCondition;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/microsoft/azure/storage/AccessCondition;->setIfNoneMatch(Ljava/lang/String;)V

    return-object v0
.end method

.method public static generateIfNotExistsCondition()Lcom/microsoft/azure/storage/AccessCondition;
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/AccessCondition;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/AccessCondition;-><init>()V

    const-string v1, "*"

    .line 2
    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/AccessCondition;->setIfNoneMatch(Ljava/lang/String;)V

    return-object v0
.end method

.method public static generateIfNotModifiedSinceCondition(Ljava/util/Date;)Lcom/microsoft/azure/storage/AccessCondition;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/AccessCondition;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/AccessCondition;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/microsoft/azure/storage/AccessCondition;->ifUnmodifiedSinceDate:Ljava/util/Date;

    return-object v0
.end method

.method public static generateIfSequenceNumberEqualCondition(J)Lcom/microsoft/azure/storage/AccessCondition;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/AccessCondition;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/AccessCondition;-><init>()V

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, v0, Lcom/microsoft/azure/storage/AccessCondition;->ifSequenceNumberEqual:Ljava/lang/Long;

    return-object v0
.end method

.method public static generateIfSequenceNumberLessThanCondition(J)Lcom/microsoft/azure/storage/AccessCondition;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/AccessCondition;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/AccessCondition;-><init>()V

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, v0, Lcom/microsoft/azure/storage/AccessCondition;->ifSequenceNumberLessThan:Ljava/lang/Long;

    return-object v0
.end method

.method public static generateIfSequenceNumberLessThanOrEqualCondition(J)Lcom/microsoft/azure/storage/AccessCondition;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/AccessCondition;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/AccessCondition;-><init>()V

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, v0, Lcom/microsoft/azure/storage/AccessCondition;->ifSequenceNumberLessThanOrEqual:Ljava/lang/Long;

    return-object v0
.end method

.method public static generateLeaseCondition(Ljava/lang/String;)Lcom/microsoft/azure/storage/AccessCondition;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/AccessCondition;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/AccessCondition;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/microsoft/azure/storage/AccessCondition;->leaseID:Ljava/lang/String;

    return-object v0
.end method

.method public static normalizeEtag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "\""

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "\"%s\""

    .line 3
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method


# virtual methods
.method public applyAppendConditionToRequest(Ljava/net/HttpURLConnection;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifMaxSizeLessThanOrEqual:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-ms-blob-condition-maxsize"

    .line 3
    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifAppendPositionEqual:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-ms-blob-condition-appendpos"

    .line 6
    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public applyConditionToRequest(Ljava/net/HttpURLConnection;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/AccessCondition;->applyLeaseConditionToRequest(Ljava/net/HttpURLConnection;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifModifiedSinceDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->getGMTTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "If-Modified-Since"

    .line 4
    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifUnmodifiedSinceDate:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 6
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->getGMTTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "If-Unmodified-Since"

    .line 7
    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifMatchETag:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifMatchETag:Ljava/lang/String;

    const-string v1, "If-Match"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifNoneMatchETag:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifNoneMatchETag:Ljava/lang/String;

    const-string v1, "If-None-Match"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public applyLeaseConditionToRequest(Ljava/net/HttpURLConnection;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->leaseID:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->leaseID:Ljava/lang/String;

    const-string v1, "x-ms-lease-id"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public applySequenceConditionToRequest(Ljava/net/HttpURLConnection;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifSequenceNumberLessThanOrEqual:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-ms-if-sequence-number-le"

    .line 3
    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifSequenceNumberLessThan:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-ms-if-sequence-number-lt"

    .line 6
    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifSequenceNumberEqual:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-ms-if-sequence-number-eq"

    .line 9
    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public applySourceConditionToRequest(Ljava/net/HttpURLConnection;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->leaseID:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifModifiedSinceDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->getGMTTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-ms-source-if-modified-since"

    .line 4
    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifUnmodifiedSinceDate:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 6
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->getGMTTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-ms-source-if-unmodified-since"

    .line 7
    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifMatchETag:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifMatchETag:Ljava/lang/String;

    const-string v1, "x-ms-source-if-match"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifNoneMatchETag:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifNoneMatchETag:Ljava/lang/String;

    const-string v1, "x-ms-source-if-none-match"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 12
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A lease condition cannot be specified on the source of a copy."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getIfAppendPositionEqual()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifAppendPositionEqual:Ljava/lang/Long;

    return-object v0
.end method

.method public getIfMatch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifMatchETag:Ljava/lang/String;

    return-object v0
.end method

.method public getIfMaxSizeLessThanOrEqual()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifMaxSizeLessThanOrEqual:Ljava/lang/Long;

    return-object v0
.end method

.method public getIfModifiedSinceDate()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifModifiedSinceDate:Ljava/util/Date;

    return-object v0
.end method

.method public getIfNoneMatch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifNoneMatchETag:Ljava/lang/String;

    return-object v0
.end method

.method public getIfSequenceNumberEqual()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifSequenceNumberEqual:Ljava/lang/Long;

    return-object v0
.end method

.method public getIfSequenceNumberLessThan()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifSequenceNumberLessThan:Ljava/lang/Long;

    return-object v0
.end method

.method public getIfSequenceNumberLessThanOrEqual()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifSequenceNumberLessThanOrEqual:Ljava/lang/Long;

    return-object v0
.end method

.method public getIfUnmodifiedSinceDate()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifUnmodifiedSinceDate:Ljava/util/Date;

    return-object v0
.end method

.method public getLeaseID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->leaseID:Ljava/lang/String;

    return-object v0
.end method

.method public setIfAppendPositionEqual(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifAppendPositionEqual:Ljava/lang/Long;

    return-void
.end method

.method public setIfMatch(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/microsoft/azure/storage/AccessCondition;->normalizeEtag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifMatchETag:Ljava/lang/String;

    return-void
.end method

.method public setIfMaxSizeLessThanOrEqual(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifMaxSizeLessThanOrEqual:Ljava/lang/Long;

    return-void
.end method

.method public setIfModifiedSinceDate(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifModifiedSinceDate:Ljava/util/Date;

    return-void
.end method

.method public setIfNoneMatch(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/microsoft/azure/storage/AccessCondition;->normalizeEtag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifNoneMatchETag:Ljava/lang/String;

    return-void
.end method

.method public setIfSequenceNumberEqual(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifSequenceNumberEqual:Ljava/lang/Long;

    return-void
.end method

.method public setIfSequenceNumberLessThan(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifSequenceNumberLessThan:Ljava/lang/Long;

    return-void
.end method

.method public setIfSequenceNumberLessThanOrEqual(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifSequenceNumberLessThanOrEqual:Ljava/lang/Long;

    return-void
.end method

.method public setIfUnmodifiedSinceDate(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifUnmodifiedSinceDate:Ljava/util/Date;

    return-void
.end method

.method public setLeaseID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/AccessCondition;->leaseID:Ljava/lang/String;

    return-void
.end method

.method public verifyConditional(Ljava/lang/String;Ljava/util/Date;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifModifiedSinceDate:Ljava/util/Date;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifUnmodifiedSinceDate:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p2, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v1

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifMatchETag:Ljava/lang/String;

    invoke-static {p2}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 6
    iget-object p2, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifMatchETag:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifMatchETag:Ljava/lang/String;

    const-string v0, "*"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    return v1

    .line 7
    :cond_2
    iget-object p2, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifNoneMatchETag:Ljava/lang/String;

    invoke-static {p2}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 8
    iget-object p2, p0, Lcom/microsoft/azure/storage/AccessCondition;->ifNoneMatchETag:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
