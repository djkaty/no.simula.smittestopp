.class public Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public body:[B

.field public final connection:Ljavax/net/ssl/HttpsURLConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->connection:Ljavax/net/ssl/HttpsURLConnection;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTTPS"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->connection:Ljavax/net/ssl/HttpsURLConnection;

    .line 5
    sget-object p1, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;->PATCH:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

    if-ne p2, p1, :cond_0

    .line 6
    invoke-direct {p0, p2}, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->setUnsupportedMethod(Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;)V

    .line 7
    sget-object p2, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;->POST:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    new-array p1, v2, [B

    .line 9
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->body:[B

    return-void

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, v2

    const-string p2, "Expected URL that uses iotHubServiceClientProtocol HTTPS but received one that uses iotHubServiceClientProtocol \'%s\'.\n"

    .line 10
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static readInputStream(Ljava/io/InputStream;)[B
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    int-to-byte v1, v1

    .line 3
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 5
    new-array v1, p0, [B

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p0, :cond_1

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method private setUnsupportedMethod(Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;->PATCH:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

    if-ne p1, v0, :cond_0

    const-string p1, "X-HTTP-Method-Override"

    const-string v0, "PATCH"

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Http Method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public connect()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->body:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->connection:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->body:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    return-void
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getResponseStatus()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public readError()[B
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 1
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    invoke-static {v1}, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->readInputStream(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 3
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    .line 4
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object v0
.end method

.method public readInput()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->readInputStream(Ljava/io/InputStream;)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    .line 4
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 5
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method public setReadTimeoutMillis(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRequestMethod(Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;->POST:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;->PUT:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

    if-eq p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->body:[B

    array-length v0, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot change the request method from POST or PUT when the request body is non-empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setSSLContext(Ljavax/net/ssl/SSLContext;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->connection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SSL context cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeOutput([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->connection:Ljavax/net/ssl/HttpsURLConnection;

    .line 2
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;->valueOf(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;->POST:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;->PUT:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

    if-eq v0, v1, :cond_1

    .line 5
    array-length p1, p1

    if-gtz p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot write a body to a request that is not a POST or a PUT request."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->body:[B

    :goto_0
    return-void
.end method
