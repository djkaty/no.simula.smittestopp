.class public final Lcom/microsoft/azure/storage/file/FileResponse;
.super Lcom/microsoft/azure/storage/core/BaseResponse;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/storage/core/BaseResponse;-><init>()V

    return-void
.end method

.method public static getCopyState(Ljava/net/HttpURLConnection;)Lcom/microsoft/azure/storage/file/CopyState;
    .locals 4

    const-string v0, "x-ms-copy-status"

    .line 1
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3
    new-instance v1, Lcom/microsoft/azure/storage/file/CopyState;

    invoke-direct {v1}, Lcom/microsoft/azure/storage/file/CopyState;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/microsoft/azure/storage/file/CopyStatus;->parse(Ljava/lang/String;)Lcom/microsoft/azure/storage/file/CopyStatus;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/azure/storage/file/CopyState;->setStatus(Lcom/microsoft/azure/storage/file/CopyStatus;)V

    const-string v0, "x-ms-copy-id"

    .line 5
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/azure/storage/file/CopyState;->setCopyId(Ljava/lang/String;)V

    const-string v0, "x-ms-copy-status-description"

    .line 6
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/azure/storage/file/CopyState;->setStatusDescription(Ljava/lang/String;)V

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

    invoke-virtual {v1, v2}, Lcom/microsoft/azure/storage/file/CopyState;->setBytesCopied(Ljava/lang/Long;)V

    const/4 v2, 0x1

    .line 11
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/azure/storage/file/CopyState;->setTotalBytes(Ljava/lang/Long;)V

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

    invoke-virtual {v1, v2}, Lcom/microsoft/azure/storage/file/CopyState;->setSource(Ljava/net/URI;)V

    :cond_1
    const-string v0, "x-ms-copy-completion-time"

    .line 15
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 17
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->parseRFC1123DateFromStringInGMT(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/microsoft/azure/storage/file/CopyState;->setCompletionTime(Ljava/util/Date;)V

    :cond_2
    return-object v1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFileAttributes(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/StorageUri;)Lcom/microsoft/azure/storage/file/FileAttributes;
    .locals 7

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/file/FileAttributes;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/file/FileAttributes;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/file/FileAttributes;->getProperties()Lcom/microsoft/azure/storage/file/FileProperties;

    move-result-object v1

    const-string v2, "Cache-Control"

    .line 3
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/azure/storage/file/FileProperties;->setCacheControl(Ljava/lang/String;)V

    const-string v2, "Content-Disposition"

    .line 4
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/azure/storage/file/FileProperties;->setContentDisposition(Ljava/lang/String;)V

    const-string v2, "Content-Encoding"

    .line 5
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/azure/storage/file/FileProperties;->setContentEncoding(Ljava/lang/String;)V

    const-string v2, "Content-Language"

    .line 6
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/azure/storage/file/FileProperties;->setContentLanguage(Ljava/lang/String;)V

    const-string v2, "Content-Range"

    .line 7
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "x-ms-content-md5"

    .line 8
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/microsoft/azure/storage/file/FileProperties;->setContentMD5(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, "Content-MD5"

    .line 9
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/microsoft/azure/storage/file/FileProperties;->setContentMD5(Ljava/lang/String;)V

    :goto_0
    const-string v3, "Content-Type"

    .line 10
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/microsoft/azure/storage/file/FileProperties;->setContentType(Ljava/lang/String;)V

    .line 11
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/BaseResponse;->getEtag(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/microsoft/azure/storage/file/FileProperties;->setEtag(Ljava/lang/String;)V

    .line 12
    invoke-static {p0}, Lcom/microsoft/azure/storage/file/FileResponse;->getCopyState(Ljava/net/HttpURLConnection;)Lcom/microsoft/azure/storage/file/CopyState;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/microsoft/azure/storage/file/FileProperties;->setCopyState(Lcom/microsoft/azure/storage/file/CopyState;)V

    const-string v3, "x-ms-server-encrypted"

    .line 13
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 14
    invoke-virtual {v1, v3}, Lcom/microsoft/azure/storage/file/FileProperties;->setServerEncrypted(Z)V

    .line 15
    sget-object v3, Lcom/microsoft/azure/storage/core/Utility;->LOCALE_US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    .line 16
    sget-object v4, Lcom/microsoft/azure/storage/core/Utility;->UTC_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 17
    new-instance v4, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 18
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/microsoft/azure/storage/file/FileProperties;->setLastModified(Ljava/util/Date;)V

    .line 19
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "x-ms-content-length"

    .line 20
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-static {v2}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v3, "/"

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/microsoft/azure/storage/file/FileProperties;->setLength(J)V

    goto :goto_1

    .line 23
    :cond_1
    invoke-static {v3}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 24
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/microsoft/azure/storage/file/FileProperties;->setLength(J)V

    goto :goto_1

    :cond_2
    const-string v2, "Content-Length"

    .line 25
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-static {v2}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 27
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/microsoft/azure/storage/file/FileProperties;->setLength(J)V

    .line 28
    :cond_3
    :goto_1
    invoke-virtual {v0, p1}, Lcom/microsoft/azure/storage/file/FileAttributes;->setStorageUri(Lcom/microsoft/azure/storage/StorageUri;)V

    .line 29
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/BaseResponse;->getMetadata(Ljava/net/HttpURLConnection;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/microsoft/azure/storage/file/FileAttributes;->setMetadata(Ljava/util/HashMap;)V

    return-object v0
.end method

.method public static getFileDirectoryAttributes(Ljava/net/HttpURLConnection;Z)Lcom/microsoft/azure/storage/file/FileDirectoryAttributes;
    .locals 4

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/file/FileDirectoryAttributes;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/file/FileDirectoryAttributes;-><init>()V

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
    invoke-static {v1, p1}, Lcom/microsoft/azure/storage/core/PathUtility;->getDirectoryNameFromURI(Ljava/net/URI;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/storage/file/FileDirectoryAttributes;->setName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/file/FileDirectoryAttributes;->getProperties()Lcom/microsoft/azure/storage/file/FileDirectoryProperties;

    move-result-object p1

    .line 5
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/BaseResponse;->getEtag(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/microsoft/azure/storage/file/FileDirectoryProperties;->setEtag(Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v1}, Lcom/microsoft/azure/storage/file/FileDirectoryProperties;->setLastModified(Ljava/util/Date;)V

    .line 7
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/BaseResponse;->getMetadata(Ljava/net/HttpURLConnection;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/file/FileDirectoryAttributes;->setMetadata(Ljava/util/HashMap;)V

    const-string v1, "x-ms-server-encrypted"

    .line 8
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "true"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 9
    invoke-virtual {p1, p0}, Lcom/microsoft/azure/storage/file/FileDirectoryProperties;->setServerEncrypted(Z)V

    return-object v0

    :catch_0
    move-exception p0

    .line 10
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->generateNewUnexpectedStorageException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object p0

    .line 11
    throw p0
.end method

.method public static getFileShareAttributes(Ljava/net/HttpURLConnection;Z)Lcom/microsoft/azure/storage/file/FileShareAttributes;
    .locals 4

    .line 1
    new-instance p1, Lcom/microsoft/azure/storage/file/FileShareAttributes;

    invoke-direct {p1}, Lcom/microsoft/azure/storage/file/FileShareAttributes;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/FileShareAttributes;->getProperties()Lcom/microsoft/azure/storage/file/FileShareProperties;

    move-result-object v0

    .line 3
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/BaseResponse;->getEtag(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/file/FileShareProperties;->setEtag(Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Lcom/microsoft/azure/storage/file/FileResponse;->parseShareQuota(Ljava/net/HttpURLConnection;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/file/FileShareProperties;->setShareQuota(Ljava/lang/Integer;)V

    .line 5
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/file/FileShareProperties;->setLastModified(Ljava/util/Date;)V

    .line 6
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/BaseResponse;->getMetadata(Ljava/net/HttpURLConnection;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/microsoft/azure/storage/file/FileShareAttributes;->setMetadata(Ljava/util/HashMap;)V

    return-object p1
.end method

.method public static getSnapshotTime(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 1

    const-string v0, "x-ms-snapshot"

    .line 1
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseShareQuota(Ljava/net/HttpURLConnection;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, -0x1

    const-string v1, "x-ms-share-quota"

    .line 1
    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method
