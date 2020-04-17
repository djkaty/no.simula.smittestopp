.class public final Lcom/microsoft/azure/storage/core/BaseRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACCOUNT:Ljava/lang/String; = "account"

.field public static final METADATA:Ljava/lang/String; = "metadata"

.field public static final SERVICE:Ljava/lang/String; = "service"

.field public static final STATS:Ljava/lang/String; = "stats"

.field public static final TIMEOUT:Ljava/lang/String; = "timeout"

.field public static userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMetadata(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 1

    .line 3
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 4
    invoke-static {p2}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "x-ms-meta-"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The value for one of the metadata key-value pairs is null, empty, or whitespace."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The key for one of the metadata key-value pairs is null, empty, or whitespace."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static addMetadata(Ljava/net/HttpURLConnection;Ljava/util/Map;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2
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

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v1, v0, p2}, Lcom/microsoft/azure/storage/core/BaseRequest;->addMetadata(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/OperationContext;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static addOptionalHeader(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, ""

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static create(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {p2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    .line 2
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/BaseRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string p1, "PUT"

    .line 5
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object p0
.end method

.method public static createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 2

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {p2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestOptions;->getTimeoutIntervalInMs()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestOptions;->getTimeoutIntervalInMs()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestOptions;->getTimeoutIntervalInMs()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "timeout"

    invoke-virtual {p2, v1, v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_1
    invoke-virtual {p2, p0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->addToURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p0

    .line 5
    invoke-static {}, Lcom/microsoft/azure/storage/OperationContext;->getDefaultProxy()Ljava/net/Proxy;

    move-result-object p2

    if-eqz p3, :cond_2

    .line 6
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/OperationContext;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/OperationContext;->getProxy()Ljava/net/Proxy;

    move-result-object p2

    :cond_2
    if-eqz p2, :cond_3

    .line 8
    invoke-virtual {p0, p2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 10
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestOptions;->getOperationExpiryTimeInMs()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestOptions;->getTimeoutIntervalInMs()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/microsoft/azure/storage/core/Utility;->getRemainingTimeout(Ljava/lang/Long;Ljava/lang/Integer;)I

    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 12
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string p1, "Accept"

    const-string p2, "application/xml"

    .line 13
    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Accept-Charset"

    const-string p2, "UTF-8"

    .line 14
    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Type"

    const-string p2, ""

    .line 15
    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "x-ms-version"

    const-string p2, "2018-03-28"

    .line 16
    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/microsoft/azure/storage/core/BaseRequest;->getUserAgent()Ljava/lang/String;

    move-result-object p1

    const-string p2, "User-Agent"

    invoke-virtual {p0, p2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/OperationContext;->getClientRequestID()Ljava/lang/String;

    move-result-object p1

    const-string p2, "x-ms-client-request-id"

    .line 19
    invoke-virtual {p0, p2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static delete(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {p2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    .line 2
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/BaseRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const-string p1, "DELETE"

    .line 3
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getAccountInfo(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 2

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {p2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    :cond_0
    const-string v0, "restype"

    const-string v1, "account"

    .line 2
    invoke-virtual {p2, v0, v1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "comp"

    const-string v1, "properties"

    .line 3
    invoke-virtual {p2, v0, v1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/BaseRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const-string p1, "HEAD"

    .line 5
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getListUriQueryBuilder(Lcom/microsoft/azure/storage/core/ListingContext;)Lcom/microsoft/azure/storage/core/UriQueryBuilder;
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    const-string v1, "comp"

    const-string v2, "list"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/ListingContext;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/ListingContext;->getPrefix()Ljava/lang/String;

    move-result-object v1

    const-string v2, "prefix"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/ListingContext;->getMarker()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/ListingContext;->getMarker()Ljava/lang/String;

    move-result-object v1

    const-string v2, "marker"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/ListingContext;->getMaxResults()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/ListingContext;->getMaxResults()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/ListingContext;->getMaxResults()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "maxresults"

    invoke-virtual {v0, v1, p0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public static getProperties(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {p2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    .line 2
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/BaseRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const-string p1, "HEAD"

    .line 3
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getServiceProperties(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 2

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {p2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    :cond_0
    const-string v0, "comp"

    const-string v1, "properties"

    .line 2
    invoke-virtual {p2, v0, v1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "restype"

    const-string v1, "service"

    .line 3
    invoke-virtual {p2, v0, v1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/BaseRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const-string p1, "GET"

    .line 5
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getServiceStats(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 2

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {p2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    :cond_0
    const-string v0, "comp"

    const-string v1, "stats"

    .line 2
    invoke-virtual {p2, v0, v1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "restype"

    const-string v1, "service"

    .line 3
    invoke-virtual {p2, v0, v1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/BaseRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const-string p1, "GET"

    .line 5
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 7

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/core/BaseRequest;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/microsoft/azure/storage/core/Utility;->LOCALE_US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "java.version"

    .line 3
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "os.name"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "os.version"

    .line 4
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "(JavaJRE %s; %s %s)"

    .line 5
    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Azure-Storage"

    aput-object v2, v1, v4

    const-string v2, "8.1.0"

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    const-string v0, "%s/%s %s"

    .line 6
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/storage/core/BaseRequest;->userAgent:Ljava/lang/String;

    .line 7
    :cond_0
    sget-object v0, Lcom/microsoft/azure/storage/core/BaseRequest;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static setMetadata(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 2

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {p2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    :cond_0
    const-string v0, "comp"

    const-string v1, "metadata"

    .line 2
    invoke-virtual {p2, v0, v1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/BaseRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

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

    return-object p0
.end method

.method public static setServiceProperties(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 2

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {p2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    :cond_0
    const-string v0, "comp"

    const-string v1, "properties"

    .line 2
    invoke-virtual {p2, v0, v1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "restype"

    const-string v1, "service"

    .line 3
    invoke-virtual {p2, v0, v1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/BaseRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string p1, "PUT"

    .line 6
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object p0
.end method

.method public static undelete(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 2

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {p2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    :cond_0
    const-string v0, "comp"

    const-string v1, "undelete"

    .line 2
    invoke-virtual {p2, v0, v1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/BaseRequest;->createURLConnection(Ljava/net/URI;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/core/UriQueryBuilder;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

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

    return-object p0
.end method
