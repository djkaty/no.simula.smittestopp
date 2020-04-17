.class public Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final connection:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpRequest;->connection:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;[B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;

    invoke-direct {v0, p1, p2}, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;-><init>(Ljava/net/URL;Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpRequest;->connection:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;

    .line 3
    invoke-virtual {v0, p3}, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->writeOutput([B)V

    return-void
.end method


# virtual methods
.method public send()Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpResponse;
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [B

    new-array v0, v0, [B

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpRequest;->connection:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->connect()V

    .line 2
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpRequest;->connection:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->getResponseStatus()I

    move-result v2

    .line 3
    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpRequest;->connection:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;

    invoke-virtual {v3}, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->getResponseHeaders()Ljava/util/Map;

    move-result-object v3

    .line 4
    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpRequest;->connection:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;

    invoke-virtual {v4}, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->readInput()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpRequest;->connection:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->getResponseStatus()I

    move-result v2

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpRequest;->connection:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->getResponseHeaders()Ljava/util/Map;

    move-result-object v3

    .line 7
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpRequest;->connection:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->readError()[B

    move-result-object v0

    .line 8
    :goto_0
    new-instance v4, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpResponse;

    invoke-direct {v4, v2, v1, v3, v0}, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpResponse;-><init>(I[BLjava/util/Map;[B)V

    return-object v4
.end method

.method public setHeaderField(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpRequest;->connection:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setReadTimeoutMillis(I)Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpRequest;->connection:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->setReadTimeoutMillis(I)V

    return-object p0
.end method

.method public setSSLContext(Ljavax/net/ssl/SSLContext;)Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpRequest;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpRequest;->connection:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpConnection;->setSSLContext(Ljavax/net/ssl/SSLContext;)V

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
