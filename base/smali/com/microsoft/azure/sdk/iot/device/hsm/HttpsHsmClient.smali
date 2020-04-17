.class public Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final API_VERSION_QUERY_STRING_PREFIX:Ljava/lang/String; = "api-version="

.field public static final HTTPS_SCHEME:Ljava/lang/String; = "https"

.field public static final HTTP_SCHEME:Ljava/lang/String; = "http"

.field public static final UNIX_SCHEME:Ljava/lang/String; = "unix"

.field public static final log:Lk/f/b;


# instance fields
.field public baseUrl:Ljava/lang/String;

.field public scheme:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;->log:Lk/f/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;->log:Lk/f/b;

    const-string v1, "Creating HttpsHsmClient with base url {}"

    invoke-interface {v0, v1, p1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;->baseUrl:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;->scheme:Ljava/lang/String;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "baseUrl cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readResponseFromChannel(Lg/e/i;)Ljava/lang/String;
    .locals 8

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;->log:Lk/f/b;

    const-string v1, "Reading response from unix socket channel..."

    invoke-interface {v0, v1}, Lk/f/b;->b(Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    :cond_0
    if-ltz v3, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 4
    invoke-virtual {p1, v0}, Lg/e/i;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 6
    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    aput-byte v7, v6, v1

    sget-object v7, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private sendHttpRequestUsingUnixSocket(Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsResponse;
    .locals 3

    const-string v0, "Closing unix socket channel..."

    .line 1
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;->log:Lk/f/b;

    const-string v2, "Sending data over unix socket..."

    invoke-interface {v1, v2}, Lk/f/b;->b(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsRequestResponseSerializer;->serializeRequest(Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p2

    .line 3
    new-instance p3, Lg/e/h;

    invoke-direct {p3, p4}, Lg/e/h;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p4, Lg/e/i;

    invoke-direct {p4}, Lg/e/i;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {p4, p3}, Lg/e/i;->a(Lg/e/h;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->getBody()[B

    move-result-object p3

    if-eqz p3, :cond_0

    .line 7
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 8
    invoke-virtual {p3, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->getBody()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 10
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p4, p1}, Lg/e/i;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p4, p1}, Lg/e/i;->write(Ljava/nio/ByteBuffer;)I

    .line 12
    :goto_0
    invoke-direct {p0, p4}, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;->readResponseFromChannel(Lg/e/i;)Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance p2, Ljava/io/BufferedReader;

    new-instance p3, Ljava/io/StringReader;

    invoke-direct {p3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {p2}, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsRequestResponseSerializer;->deserializeResponse(Ljava/io/BufferedReader;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsResponse;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    sget-object p2, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;->log:Lk/f/b;

    invoke-interface {p2, v0}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p4}, Ljava/nio/channels/SocketChannel;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v1, p4

    goto :goto_1

    :catch_0
    move-exception p1

    .line 16
    :try_start_3
    invoke-virtual {p4}, Ljava/nio/channels/SocketChannel;->close()V

    .line 17
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v1, :cond_1

    .line 18
    sget-object p2, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;->log:Lk/f/b;

    invoke-interface {p2, v0}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V

    .line 20
    :cond_1
    throw p1
.end method

.method private sendRequestBasedOnScheme(Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsResponse;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;->scheme:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "unrecognized URI scheme. Only HTTPS, HTTP and UNIX are supported"

    const-string v3, "unix"

    const-string v4, "http"

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-eqz p5, :cond_3

    .line 4
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    new-instance v0, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_3
    new-instance v0, Ljava/net/URL;

    invoke-static {p3, p4}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 7
    :goto_1
    new-instance v5, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;

    const-string v6, ""

    invoke-direct {v5, v0, p1, p2, v6}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;-><init>(Ljava/net/URL;Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;[BLjava/lang/String;)V

    const-string p1, "application/json"

    const-string v0, "Accept"

    .line 8
    invoke-virtual {v5, v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;

    .line 9
    array-length p2, p2

    if-lez p2, :cond_4

    const-string p2, "Content-Type"

    .line 10
    invoke-virtual {v5, p2, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;->scheme:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;->scheme:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 12
    :cond_5
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;->scheme:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "unix://"

    .line 13
    invoke-virtual {p3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    invoke-virtual {p3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-direct {p0, v5, p4, p5, p1}, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;->sendHttpRequestUsingUnixSocket(Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsResponse;

    move-result-object p1

    goto :goto_3

    .line 15
    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_7
    :goto_2
    invoke-virtual {v5}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->send()Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsResponse;

    move-result-object p1

    :goto_3
    return-object p1
.end method


# virtual methods
.method public getTrustBundle(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/hsm/parser/TrustBundleResponse;
    .locals 8

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;->log:Lk/f/b;

    const-string v1, "Getting trust bundle..."

    invoke-interface {v0, v1}, Lk/f/b;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;->baseUrl:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string v2, "/*$"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v1

    .line 4
    :goto_0
    sget-object v3, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;->GET:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;

    const/4 v0, 0x0

    new-array v4, v0, [B

    const-string v0, "api-version="

    invoke-static {v0, p1}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v6, "/trust-bundle"

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;->sendRequestBasedOnScheme(Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsResponse;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsResponse;->getStatus()I

    move-result v0

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsResponse;->getBody()[B

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsResponse;->getBody()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    :cond_1
    const/16 p1, 0xc8

    if-lt v0, p1, :cond_2

    const/16 p1, 0x12c

    if-ge v0, p1, :cond_2

    .line 7
    invoke-static {v1}, Lcom/microsoft/azure/sdk/iot/device/hsm/parser/TrustBundleResponse;->fromJson(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/hsm/parser/TrustBundleResponse;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    invoke-static {v1}, Lcom/microsoft/azure/sdk/iot/device/hsm/parser/ErrorResponse;->fromJson(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/hsm/parser/ErrorResponse;

    move-result-object p1

    const-string v1, "Received error from hsm with status code "

    if-eqz p1, :cond_3

    .line 9
    new-instance v2, Lcom/microsoft/azure/sdk/iot/device/hsm/HsmException;

    const-string v3, " and message "

    invoke-static {v1, v0, v3}, Le/a/a/a/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/hsm/parser/ErrorResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/microsoft/azure/sdk/iot/device/hsm/HsmException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 10
    :cond_3
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/hsm/HsmException;

    invoke-static {v1, v0}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/hsm/HsmException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "api version cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sign(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/device/hsm/parser/SignRequest;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/hsm/parser/SignResponse;
    .locals 8

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;->log:Lk/f/b;

    const-string v1, "Sending sign request..."

    invoke-interface {v0, v1}, Lk/f/b;->b(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;->baseUrl:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string v2, "/*$"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v5, v1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/modules/"

    .line 4
    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {p2, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/genid/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/sign"

    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p3}, Lcom/microsoft/azure/sdk/iot/device/hsm/parser/SignRequest;->toJson()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 8
    sget-object v3, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;->POST:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string p2, "api-version="

    invoke-static {p2, p1}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;->sendRequestBasedOnScheme(Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsResponse;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsResponse;->getStatus()I

    move-result p2

    .line 10
    new-instance p3, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsResponse;->getBody()[B

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/String;-><init>([B)V

    const/16 p1, 0xc8

    if-lt p2, p1, :cond_1

    const/16 p1, 0x12c

    if-ge p2, p1, :cond_1

    .line 11
    invoke-static {p3}, Lcom/microsoft/azure/sdk/iot/device/hsm/parser/SignResponse;->fromJson(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/hsm/parser/SignResponse;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "HttpsHsmClient received status code "

    const-string p4, " from provided uri."

    .line 12
    invoke-static {p1, p2, p4}, Le/a/a/a/a;->b(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {p3}, Lcom/microsoft/azure/sdk/iot/device/hsm/parser/ErrorResponse;->fromJson(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/hsm/parser/ErrorResponse;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string p3, " Error response message: "

    .line 14
    invoke-static {p1, p3}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/microsoft/azure/sdk/iot/device/hsm/parser/ErrorResponse;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    :cond_2
    new-instance p2, Lcom/microsoft/azure/sdk/iot/device/hsm/HsmException;

    invoke-direct {p2, p1}, Lcom/microsoft/azure/sdk/iot/device/hsm/HsmException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
