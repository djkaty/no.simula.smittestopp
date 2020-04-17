.class public Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public body:[B

.field public final connection:Ljava/net/HttpURLConnection;

.field public proxySettings:Lcom/microsoft/azure/sdk/iot/device/ProxySettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->connection:Ljava/net/HttpURLConnection;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;-><init>(Ljava/net/URL;Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;Lcom/microsoft/azure/sdk/iot/device/ProxySettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;Lcom/microsoft/azure/sdk/iot/device/ProxySettings;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTTPS"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "HTTP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, v2

    const-string p2, "Expected URL that uses protocol HTTPS or HTTP but received one that uses protocol \'%s\'.%n"

    .line 5
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    new-array v0, v2, [B

    .line 7
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->body:[B

    .line 8
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->connection:Ljava/net/HttpURLConnection;

    .line 9
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    iput-object p3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->proxySettings:Lcom/microsoft/azure/sdk/iot/device/ProxySettings;

    return-void

    :catch_0
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->buildTransportException(Ljava/io/IOException;)Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    move-result-object p1

    throw p1
.end method

.method public static buildTransportException(Ljava/io/IOException;)Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    invoke-direct {v0, p0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/Throwable;)V

    .line 2
    instance-of v1, p0, Ljava/net/NoRouteToHostException;

    if-nez v1, :cond_0

    instance-of p0, p0, Ljava/net/UnknownHostException;

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    .line 3
    invoke-virtual {v0, p0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->setRetryable(Z)V

    :cond_1
    return-object v0
.end method

.method public static readInputStream(Ljava/io/InputStream;)[B
    .locals 4

    .line 1
    :try_start_0
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
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1

    :catch_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->buildTransportException(Ljava/io/IOException;)Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public connect()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->body:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->connection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->body:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->buildTransportException(Ljava/io/IOException;)Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    move-result-object v0

    throw v0
.end method

.method public getBody()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->body:[B

    return-object v0
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
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getResponseStatus()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->buildTransportException(Ljava/io/IOException;)Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    move-result-object v0

    throw v0
.end method

.method public readError()[B
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :try_start_1
    new-array v1, v1, [B

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->readInputStream(Ljava/io/InputStream;)[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-object v1

    :catchall_0
    move-exception v1

    .line 4
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    .line 5
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->buildTransportException(Ljava/io/IOException;)Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    move-result-object v0

    throw v0
.end method

.method public readInput()[B
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->readInputStream(Ljava/io/InputStream;)[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 3
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    .line 4
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 5
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->buildTransportException(Ljava/io/IOException;)Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    move-result-object v0

    throw v0
.end method

.method public setReadTimeoutMillis(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRequestMethod(Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;->POST:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;->PUT:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;

    if-eq p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->body:[B

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
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 6
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setSSLContext(Ljavax/net/ssl/SSLContext;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->connection:Ljava/net/HttpURLConnection;

    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->proxySettings:Lcom/microsoft/azure/sdk/iot/device/ProxySettings;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/transport/HttpProxySocketFactory;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->proxySettings:Lcom/microsoft/azure/sdk/iot/device/ProxySettings;

    invoke-direct {v1, p1, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/HttpProxySocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;Lcom/microsoft/azure/sdk/iot/device/ProxySettings;)V

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_0

    .line 4
    :cond_0
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :goto_0
    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "HTTP connections do not support using ssl socket factory"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SSL context cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeOutput([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->connection:Ljava/net/HttpURLConnection;

    .line 2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;->valueOf(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;->POST:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;->PUT:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;

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

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->body:[B

    :goto_0
    return-void
.end method
