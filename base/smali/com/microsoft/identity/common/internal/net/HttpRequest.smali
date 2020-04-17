.class public final Lcom/microsoft/identity/common/internal/net/HttpRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static CONNECT_TIMEOUT:I = 0x7530

.field public static final HOST:Ljava/lang/String; = "Host"

.field public static READ_TIMEOUT:I = 0x7530

.field public static final REQUEST_METHOD_GET:Ljava/lang/String; = "GET"

.field public static final REQUEST_METHOD_POST:Ljava/lang/String; = "POST"

.field public static final RETRY_TIME_WAITING_PERIOD_MSEC:I = 0x3e8

.field public static final STREAM_BUFFER_SIZE:I = 0x400


# instance fields
.field public final mRequestContent:[B

.field public final mRequestContentType:Ljava/lang/String;

.field public final mRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mRequestMethod:Ljava/lang/String;

.field public final mRequestUrl:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/microsoft/identity/common/internal/net/HttpRequest;-><init>(Ljava/net/URL;Ljava/util/Map;Ljava/lang/String;[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/util/Map;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/net/HttpRequest;->mRequestHeaders:Ljava/util/Map;

    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/net/HttpRequest;->mRequestUrl:Ljava/net/URL;

    .line 5
    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Host"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/net/HttpRequest;->mRequestHeaders:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 7
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/net/HttpRequest;->mRequestMethod:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/microsoft/identity/common/internal/net/HttpRequest;->mRequestContent:[B

    .line 9
    iput-object p5, p0, Lcom/microsoft/identity/common/internal/net/HttpRequest;->mRequestContentType:Ljava/lang/String;

    return-void
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v2, v1, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/net/HttpRequest;->safeCloseStream(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/microsoft/identity/common/internal/net/HttpRequest;->safeCloseStream(Ljava/io/Closeable;)V

    .line 7
    throw v0
.end method

.method private executeHttpSend()Lcom/microsoft/identity/common/internal/net/HttpResponse;
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/net/HttpRequest;->setupConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/net/HttpRequest;->mRequestMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 4
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/net/HttpRequest;->mRequestContent:[B

    iget-object v2, p0, Lcom/microsoft/identity/common/internal/net/HttpRequest;->mRequestContentType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/microsoft/identity/common/internal/net/HttpRequest;->setRequestBody(Ljava/net/HttpURLConnection;[BLjava/lang/String;)V

    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 6
    :catch_0
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 7
    :goto_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    if-nez v1, :cond_0

    const-string v3, ""

    goto :goto_1

    .line 8
    :cond_0
    invoke-static {v1}, Lcom/microsoft/identity/common/internal/net/HttpRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 9
    :goto_1
    new-instance v4, Lcom/microsoft/identity/common/internal/net/HttpResponse;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v4, v2, v3, v0}, Lcom/microsoft/identity/common/internal/net/HttpResponse;-><init>(ILjava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-static {v1}, Lcom/microsoft/identity/common/internal/net/HttpRequest;->safeCloseStream(Ljava/io/Closeable;)V

    return-object v4

    :catch_1
    move-exception v0

    .line 11
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :goto_2
    invoke-static {v1}, Lcom/microsoft/identity/common/internal/net/HttpRequest;->safeCloseStream(Ljava/io/Closeable;)V

    .line 13
    throw v0
.end method

.method public static isRetryableError(I)Z
    .locals 1

    const/16 v0, 0x1f4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1f8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1f7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static safeCloseStream(Ljava/io/Closeable;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private send()Lcom/microsoft/identity/common/internal/net/HttpResponse;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/net/HttpRequest;->sendWithRetry()Lcom/microsoft/identity/common/internal/net/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/net/HttpResponse;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Lcom/microsoft/identity/common/internal/net/HttpRequest;->isRetryableError(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/net/UnknownServiceException;

    const-string v1, "Retry failed again with 500/503/504"

    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static sendGet(Ljava/net/URL;Ljava/util/Map;)Lcom/microsoft/identity/common/internal/net/HttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/identity/common/internal/net/HttpResponse;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/HttpStartEvent;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/HttpStartEvent;-><init>()V

    const-string v1, "GET"

    .line 2
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/HttpStartEvent;->putMethod(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/HttpStartEvent;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/internal/telemetry/events/HttpStartEvent;->putPath(Ljava/net/URL;)Lcom/microsoft/identity/common/internal/telemetry/events/HttpStartEvent;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "client-request-id"

    .line 4
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/telemetry/events/HttpStartEvent;->putRequestIdHeader(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/HttpStartEvent;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    .line 6
    new-instance v0, Lcom/microsoft/identity/common/internal/net/HttpRequest;

    invoke-direct {v0, p0, p1, v1}, Lcom/microsoft/identity/common/internal/net/HttpRequest;-><init>(Ljava/net/URL;Ljava/util/Map;Ljava/lang/String;)V

    .line 7
    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/net/HttpRequest;->send()Lcom/microsoft/identity/common/internal/net/HttpResponse;

    move-result-object p0

    .line 8
    new-instance p1, Lcom/microsoft/identity/common/internal/telemetry/events/HttpEndEvent;

    invoke-direct {p1}, Lcom/microsoft/identity/common/internal/telemetry/events/HttpEndEvent;-><init>()V

    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/net/HttpResponse;->getStatusCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/HttpEndEvent;->putStatusCode(I)Lcom/microsoft/identity/common/internal/telemetry/events/HttpEndEvent;

    .line 10
    :cond_1
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    return-object p0
.end method

.method public static sendPost(Ljava/net/URL;Ljava/util/Map;[BLjava/lang/String;)Lcom/microsoft/identity/common/internal/net/HttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/identity/common/internal/net/HttpResponse;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/HttpStartEvent;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/HttpStartEvent;-><init>()V

    const-string v1, "POST"

    .line 2
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/HttpStartEvent;->putMethod(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/HttpStartEvent;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/internal/telemetry/events/HttpStartEvent;->putPath(Ljava/net/URL;)Lcom/microsoft/identity/common/internal/telemetry/events/HttpStartEvent;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "client-request-id"

    .line 4
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/HttpStartEvent;->putRequestIdHeader(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/HttpStartEvent;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    .line 6
    new-instance v0, Lcom/microsoft/identity/common/internal/net/HttpRequest;

    const-string v4, "POST"

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/identity/common/internal/net/HttpRequest;-><init>(Ljava/net/URL;Ljava/util/Map;Ljava/lang/String;[BLjava/lang/String;)V

    .line 7
    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/net/HttpRequest;->send()Lcom/microsoft/identity/common/internal/net/HttpResponse;

    move-result-object p0

    .line 8
    new-instance p1, Lcom/microsoft/identity/common/internal/telemetry/events/HttpEndEvent;

    invoke-direct {p1}, Lcom/microsoft/identity/common/internal/telemetry/events/HttpEndEvent;-><init>()V

    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/net/HttpResponse;->getStatusCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/microsoft/identity/common/internal/telemetry/events/HttpEndEvent;->putStatusCode(I)Lcom/microsoft/identity/common/internal/telemetry/events/HttpEndEvent;

    .line 10
    :cond_1
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    return-object p0
.end method

.method private sendWithRetry()Lcom/microsoft/identity/common/internal/net/HttpResponse;
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/net/HttpRequest;->executeHttpSend()Lcom/microsoft/identity/common/internal/net/HttpResponse;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/net/HttpResponse;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Lcom/microsoft/identity/common/internal/net/HttpRequest;->isRetryableError(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/net/HttpRequest;->waitBeforeRetry()V

    .line 4
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/net/HttpRequest;->executeHttpSend()Lcom/microsoft/identity/common/internal/net/HttpResponse;

    move-result-object v0

    :cond_0
    return-object v0

    .line 5
    :catch_0
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/net/HttpRequest;->waitBeforeRetry()V

    .line 6
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/net/HttpRequest;->executeHttpSend()Lcom/microsoft/identity/common/internal/net/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public static setRequestBody(Ljava/net/HttpURLConnection;[BLjava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 2
    invoke-static {p2}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-Type"

    .line 3
    invoke-virtual {p0, v0, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_1
    array-length p2, p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 6
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {p2}, Lcom/microsoft/identity/common/internal/net/HttpRequest;->safeCloseStream(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p2}, Lcom/microsoft/identity/common/internal/net/HttpRequest;->safeCloseStream(Ljava/io/Closeable;)V

    .line 8
    throw p0
.end method

.method private setupConnection()Ljava/net/HttpURLConnection;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/net/HttpRequest;->mRequestUrl:Ljava/net/URL;

    invoke-static {v0}, Lcom/microsoft/identity/common/internal/net/HttpUrlConnectionFactory;->createHttpURLConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/net/HttpRequest;->mRequestHeaders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    sget v1, Lcom/microsoft/identity/common/internal/net/HttpRequest;->CONNECT_TIMEOUT:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 6
    sget v1, Lcom/microsoft/identity/common/internal/net/HttpRequest;->READ_TIMEOUT:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 9
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-object v0
.end method

.method private waitBeforeRetry()V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
