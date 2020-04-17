.class public final Lcom/microsoft/azure/storage/blob/BlobResponse;
.super Lcom/microsoft/azure/storage/core/BaseResponse;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/storage/core/BaseResponse;-><init>()V

    return-void
.end method

.method public static getAccountInformation(Ljava/net/HttpURLConnection;)Lcom/microsoft/azure/storage/AccountInformation;
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/AccountInformation;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/AccountInformation;-><init>()V

    const-string v1, "x-ms-sku-name"

    .line 2
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/AccountInformation;->setSkuName(Ljava/lang/String;)V

    const-string v1, "x-ms-account-kind"

    .line 3
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/microsoft/azure/storage/AccountInformation;->setAccountKind(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAcl(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 1

    const-string v0, "x-ms-blob-public-access"

    .line 1
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBlobAttributes(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/BlobAttributes;
    .locals 8

    const-string v0, "x-ms-blob-type"

    .line 1
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/microsoft/azure/storage/blob/BlobAttributes;

    invoke-static {v0}, Lcom/microsoft/azure/storage/blob/BlobType;->parse(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/microsoft/azure/storage/blob/BlobAttributes;-><init>(Lcom/microsoft/azure/storage/blob/BlobType;)V

    .line 3
    invoke-virtual {v1}, Lcom/microsoft/azure/storage/blob/BlobAttributes;->getProperties()Lcom/microsoft/azure/storage/blob/BlobProperties;

    move-result-object v0

    const-string v2, "Cache-Control"

    .line 4
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setCacheControl(Ljava/lang/String;)V

    const-string v2, "Content-Disposition"

    .line 5
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setContentDisposition(Ljava/lang/String;)V

    const-string v2, "Content-Encoding"

    .line 6
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setContentEncoding(Ljava/lang/String;)V

    const-string v2, "Content-Language"

    .line 7
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setContentLanguage(Ljava/lang/String;)V

    const-string v2, "Content-Range"

    .line 8
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "x-ms-blob-content-md5"

    .line 9
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setContentMD5(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, "Content-MD5"

    .line 10
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setContentMD5(Ljava/lang/String;)V

    :goto_0
    const-string v3, "Content-Type"

    .line 11
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setContentType(Ljava/lang/String;)V

    .line 12
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/BaseResponse;->getEtag(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setEtag(Ljava/lang/String;)V

    const-string v3, "x-ms-server-encrypted"

    .line 13
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 14
    invoke-virtual {v0, v3}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setServerEncrypted(Z)V

    .line 15
    sget-object v3, Lcom/microsoft/azure/storage/core/Utility;->LOCALE_US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    .line 16
    sget-object v5, Lcom/microsoft/azure/storage/core/Utility;->UTC_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 17
    new-instance v5, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 18
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setLastModified(Ljava/util/Date;)V

    .line 19
    invoke-static {p0}, Lcom/microsoft/azure/storage/blob/BlobResponse;->getLeaseStatus(Ljava/net/HttpURLConnection;)Lcom/microsoft/azure/storage/blob/LeaseStatus;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setLeaseStatus(Lcom/microsoft/azure/storage/blob/LeaseStatus;)V

    .line 20
    invoke-static {p0}, Lcom/microsoft/azure/storage/blob/BlobResponse;->getLeaseState(Ljava/net/HttpURLConnection;)Lcom/microsoft/azure/storage/blob/LeaseState;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setLeaseState(Lcom/microsoft/azure/storage/blob/LeaseState;)V

    .line 21
    invoke-static {p0}, Lcom/microsoft/azure/storage/blob/BlobResponse;->getLeaseDuration(Ljava/net/HttpURLConnection;)Lcom/microsoft/azure/storage/blob/LeaseDuration;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setLeaseDuration(Lcom/microsoft/azure/storage/blob/LeaseDuration;)V

    .line 22
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "x-ms-blob-content-length"

    .line 23
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-static {v2}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v3, "/"

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setLength(J)V

    goto :goto_1

    .line 26
    :cond_1
    invoke-static {v3}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 27
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setLength(J)V

    goto :goto_1

    :cond_2
    const-string v2, "Content-Length"

    .line 28
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-static {v2}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 30
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setLength(J)V

    :cond_3
    :goto_1
    const-string v2, "x-ms-blob-sequence-number"

    .line 31
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-static {v2}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 33
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setPageBlobSequenceNumber(Ljava/lang/Long;)V

    :cond_4
    const-string v2, "x-ms-blob-committed-block-count"

    .line 34
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-static {v2}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setAppendBlobCommittedBlockCount(Ljava/lang/Integer;)V

    :cond_5
    const-string v2, "x-ms-access-tier"

    .line 37
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-static {v2}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v3

    sget-object v5, Lcom/microsoft/azure/storage/blob/BlobType;->PAGE_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    invoke-virtual {v3, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 39
    invoke-static {v2}, Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;->parse(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;

    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setPremiumPageBlobTier(Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;)V

    goto :goto_2

    .line 41
    :cond_6
    invoke-static {v2}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v3

    sget-object v5, Lcom/microsoft/azure/storage/blob/BlobType;->BLOCK_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    invoke-virtual {v3, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 42
    invoke-static {v2}, Lcom/microsoft/azure/storage/blob/StandardBlobTier;->parse(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    move-result-object v2

    .line 43
    invoke-virtual {v0, v2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setStandardBlobTier(Lcom/microsoft/azure/storage/blob/StandardBlobTier;)V

    goto :goto_2

    .line 44
    :cond_7
    invoke-static {v2}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v3

    sget-object v5, Lcom/microsoft/azure/storage/blob/BlobType;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/BlobType;

    invoke-virtual {v3, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 45
    invoke-static {v2}, Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;->parse(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;

    move-result-object v3

    .line 46
    invoke-static {v2}, Lcom/microsoft/azure/storage/blob/StandardBlobTier;->parse(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    move-result-object v2

    .line 47
    sget-object v5, Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;->UNKNOWN:Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;

    invoke-virtual {v3, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 48
    invoke-virtual {v0, v3}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setPremiumPageBlobTier(Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;)V

    goto :goto_2

    .line 49
    :cond_8
    sget-object v3, Lcom/microsoft/azure/storage/blob/StandardBlobTier;->UNKNOWN:Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 50
    invoke-virtual {v0, v2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setStandardBlobTier(Lcom/microsoft/azure/storage/blob/StandardBlobTier;)V

    goto :goto_2

    .line 51
    :cond_9
    sget-object v2, Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;->UNKNOWN:Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;

    invoke-virtual {v0, v2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setPremiumPageBlobTier(Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;)V

    .line 52
    sget-object v2, Lcom/microsoft/azure/storage/blob/StandardBlobTier;->UNKNOWN:Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    invoke-virtual {v0, v2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setStandardBlobTier(Lcom/microsoft/azure/storage/blob/StandardBlobTier;)V

    :cond_a
    :goto_2
    const-string v2, "x-ms-access-tier-inferred"

    .line 53
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-static {v2}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 55
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setBlobTierInferred(Ljava/lang/Boolean;)V

    goto :goto_3

    .line 56
    :cond_b
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getPremiumPageBlobTier()Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;

    move-result-object v2

    if-nez v2, :cond_c

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getStandardBlobTier()Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    move-result-object v2

    if-eqz v2, :cond_d

    :cond_c
    const/4 v2, 0x0

    .line 57
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setBlobTierInferred(Ljava/lang/Boolean;)V

    :cond_d
    :goto_3
    const-string v2, "x-ms-archive-status"

    .line 58
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-static {v2}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 60
    invoke-static {v2}, Lcom/microsoft/azure/storage/blob/RehydrationStatus;->parse(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/RehydrationStatus;

    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setRehydrationStatus(Lcom/microsoft/azure/storage/blob/RehydrationStatus;)V

    goto :goto_4

    :cond_e
    const/4 v2, 0x0

    .line 62
    invoke-virtual {v0, v2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setRehydrationStatus(Lcom/microsoft/azure/storage/blob/RehydrationStatus;)V

    :goto_4
    const-wide/16 v2, 0x0

    const-string v5, "x-ms-access-tier-change-time"

    .line 63
    invoke-virtual {p0, v5, v2, v3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-eqz v7, :cond_f

    .line 64
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v7}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setTierChangeTime(Ljava/util/Date;)V

    :cond_f
    const-string v5, "x-ms-creation-time"

    .line 65
    invoke-virtual {p0, v5, v2, v3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-eqz v7, :cond_10

    .line 66
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setCreatedTime(Ljava/util/Date;)V

    :cond_10
    const-string v2, "x-ms-incremental-copy"

    .line 67
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v2}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 69
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setIncrementalCopy(Z)V

    .line 70
    :cond_11
    invoke-virtual {v1, p1}, Lcom/microsoft/azure/storage/blob/BlobAttributes;->setStorageUri(Lcom/microsoft/azure/storage/StorageUri;)V

    .line 71
    invoke-virtual {v1, p2}, Lcom/microsoft/azure/storage/blob/BlobAttributes;->setSnapshotID(Ljava/lang/String;)V

    .line 72
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/BaseResponse;->getMetadata(Ljava/net/HttpURLConnection;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/microsoft/azure/storage/blob/BlobAttributes;->setMetadata(Ljava/util/HashMap;)V

    .line 73
    invoke-static {p0}, Lcom/microsoft/azure/storage/blob/BlobResponse;->getCopyState(Ljava/net/HttpURLConnection;)Lcom/microsoft/azure/storage/blob/CopyState;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setCopyState(Lcom/microsoft/azure/storage/blob/CopyState;)V

    .line 74
    invoke-virtual {v1, v0}, Lcom/microsoft/azure/storage/blob/BlobAttributes;->setProperties(Lcom/microsoft/azure/storage/blob/BlobProperties;)V

    return-object v1
.end method

.method public static getBlobContainerAttributes(Ljava/net/HttpURLConnection;Z)Lcom/microsoft/azure/storage/blob/BlobContainerAttributes;
    .locals 4

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/blob/BlobContainerAttributes;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/blob/BlobContainerAttributes;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/azure/storage/core/PathUtility;->stripSingleURIQueryAndFragment(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-static {v1, p1}, Lcom/microsoft/azure/storage/core/PathUtility;->getContainerNameFromUri(Ljava/net/URI;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/storage/blob/BlobContainerAttributes;->setName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobContainerAttributes;->getProperties()Lcom/microsoft/azure/storage/blob/BlobContainerProperties;

    move-result-object p1

    .line 5
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/BaseResponse;->getEtag(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;->setEtag(Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v1}, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;->setLastModified(Ljava/util/Date;)V

    .line 7
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/BaseResponse;->getMetadata(Ljava/net/HttpURLConnection;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/blob/BlobContainerAttributes;->setMetadata(Ljava/util/HashMap;)V

    .line 8
    invoke-static {p0}, Lcom/microsoft/azure/storage/blob/BlobResponse;->getLeaseStatus(Ljava/net/HttpURLConnection;)Lcom/microsoft/azure/storage/blob/LeaseStatus;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;->setLeaseStatus(Lcom/microsoft/azure/storage/blob/LeaseStatus;)V

    .line 9
    invoke-static {p0}, Lcom/microsoft/azure/storage/blob/BlobResponse;->getLeaseState(Ljava/net/HttpURLConnection;)Lcom/microsoft/azure/storage/blob/LeaseState;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;->setLeaseState(Lcom/microsoft/azure/storage/blob/LeaseState;)V

    .line 10
    invoke-static {p0}, Lcom/microsoft/azure/storage/blob/BlobResponse;->getLeaseDuration(Ljava/net/HttpURLConnection;)Lcom/microsoft/azure/storage/blob/LeaseDuration;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;->setLeaseDuration(Lcom/microsoft/azure/storage/blob/LeaseDuration;)V

    .line 11
    invoke-static {p0}, Lcom/microsoft/azure/storage/blob/BlobResponse;->getPublicAccessLevel(Ljava/net/HttpURLConnection;)Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;->setPublicAccess(Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;)V

    const-string v1, "x-ms-has-immutability-policy"

    .line 12
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 14
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;->setHasImmutabilityPolicy(Ljava/lang/Boolean;)V

    :cond_0
    const-string v1, "x-ms-has-legal-hold"

    .line 15
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 17
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;->setHasLegalHold(Ljava/lang/Boolean;)V

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    .line 18
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->generateNewUnexpectedStorageException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object p0

    .line 19
    throw p0
.end method

.method public static getCopyState(Ljava/net/HttpURLConnection;)Lcom/microsoft/azure/storage/blob/CopyState;
    .locals 4

    const-string v0, "x-ms-copy-status"

    .line 1
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3
    new-instance v1, Lcom/microsoft/azure/storage/blob/CopyState;

    invoke-direct {v1}, Lcom/microsoft/azure/storage/blob/CopyState;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/microsoft/azure/storage/blob/CopyStatus;->parse(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CopyStatus;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/azure/storage/blob/CopyState;->setStatus(Lcom/microsoft/azure/storage/blob/CopyStatus;)V

    const-string v0, "x-ms-copy-id"

    .line 5
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/azure/storage/blob/CopyState;->setCopyId(Ljava/lang/String;)V

    const-string v0, "x-ms-copy-status-description"

    .line 6
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/azure/storage/blob/CopyState;->setStatusDescription(Ljava/lang/String;)V

    const-string v0, "x-ms-copy-progress"

    .line 7
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "/"

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 10
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/azure/storage/blob/CopyState;->setBytesCopied(Ljava/lang/Long;)V

    const/4 v2, 0x1

    .line 11
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/azure/storage/blob/CopyState;->setTotalBytes(Ljava/lang/Long;)V

    :cond_0
    const-string v0, "x-ms-copy-source"

    .line 12
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 14
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/microsoft/azure/storage/blob/CopyState;->setSource(Ljava/net/URI;)V

    :cond_1
    const-string v0, "x-ms-copy-completion-time"

    .line 15
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 17
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->parseRFC1123DateFromStringInGMT(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/azure/storage/blob/CopyState;->setCompletionTime(Ljava/util/Date;)V

    :cond_2
    const-string v0, "x-ms-copy-destination-snapshot"

    .line 18
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 19
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 20
    invoke-virtual {v1, p0}, Lcom/microsoft/azure/storage/blob/CopyState;->setCopyDestinationSnapshotID(Ljava/lang/String;)V

    :cond_3
    return-object v1

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLeaseDuration(Ljava/net/HttpURLConnection;)Lcom/microsoft/azure/storage/blob/LeaseDuration;
    .locals 1

    const-string v0, "x-ms-lease-duration"

    .line 1
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/microsoft/azure/storage/blob/LeaseDuration;->parse(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/LeaseDuration;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    sget-object p0, Lcom/microsoft/azure/storage/blob/LeaseDuration;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/LeaseDuration;

    return-object p0
.end method

.method public static getLeaseID(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 1

    const-string v0, "x-ms-lease-id"

    .line 1
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLeaseState(Ljava/net/HttpURLConnection;)Lcom/microsoft/azure/storage/blob/LeaseState;
    .locals 1

    const-string v0, "x-ms-lease-state"

    .line 1
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/microsoft/azure/storage/blob/LeaseState;->parse(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/LeaseState;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    sget-object p0, Lcom/microsoft/azure/storage/blob/LeaseState;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/LeaseState;

    return-object p0
.end method

.method public static getLeaseStatus(Ljava/net/HttpURLConnection;)Lcom/microsoft/azure/storage/blob/LeaseStatus;
    .locals 1

    const-string v0, "x-ms-lease-status"

    .line 1
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/microsoft/azure/storage/blob/LeaseStatus;->parse(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/LeaseStatus;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    sget-object p0, Lcom/microsoft/azure/storage/blob/LeaseStatus;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/LeaseStatus;

    return-object p0
.end method

.method public static getLeaseTime(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 1

    const-string v0, "x-ms-lease-time"

    .line 1
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPublicAccessLevel(Ljava/net/HttpURLConnection;)Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;
    .locals 1

    const-string v0, "x-ms-blob-public-access"

    .line 1
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;->parse(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    sget-object p0, Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;->OFF:Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;

    return-object p0
.end method

.method public static getSnapshotTime(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 1

    const-string v0, "x-ms-snapshot"

    .line 1
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
