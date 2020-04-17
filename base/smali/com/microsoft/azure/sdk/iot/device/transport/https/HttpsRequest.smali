.class public Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public body:[B

.field public connectionTimeout:I

.field public headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public method:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;

.field public proxySettings:Lcom/microsoft/azure/sdk/iot/device/ProxySettings;

.field public sslContext:Ljavax/net/ssl/SSLContext;

.field public url:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;[BLjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;-><init>(Ljava/net/URL;Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;[BLjava/lang/String;Lcom/microsoft/azure/sdk/iot/device/ProxySettings;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;[BLjava/lang/String;Lcom/microsoft/azure/sdk/iot/device/ProxySettings;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->url:Ljava/net/URL;

    .line 4
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->method:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;

    .line 5
    iput-object p3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->body:[B

    .line 6
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->headers:Ljava/util/Map;

    .line 7
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    .line 9
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p3

    .line 10
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v0, ":"

    .line 11
    invoke-static {p3, v0}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 12
    :cond_0
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->headers:Ljava/util/Map;

    const-string p3, "Host"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p4, :cond_2

    .line 14
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->headers:Ljava/util/Map;

    const-string p3, "User-Agent"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_2
    iput-object p5, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->proxySettings:Lcom/microsoft/azure/sdk/iot/device/ProxySettings;

    return-void
.end method


# virtual methods
.method public getBody()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->body:[B

    return-object v0
.end method

.method public getHttpMethod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->method:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestHeaders()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2
    invoke-static {v1, v2}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ": "

    .line 3
    invoke-static {v1, v3}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->headers:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-static {v1, v3}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "; "

    .line 6
    invoke-static {v1, v3}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\r\n"

    .line 8
    invoke-static {v1, v2}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getRequestUrl()Ljava/net/URL;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->url:Ljava/net/URL;

    return-object v0
.end method

.method public send()Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsResponse;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->url:Ljava/net/URL;

    if-eqz v0, :cond_5

    .line 2
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->method:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->proxySettings:Lcom/microsoft/azure/sdk/iot/device/ProxySettings;

    invoke-direct {v1, v0, v2, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;-><init>(Ljava/net/URL;Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMethod;Lcom/microsoft/azure/sdk/iot/device/ProxySettings;)V

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->headers:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v2, v4}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->body:[B

    invoke-virtual {v1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->writeOutput([B)V

    .line 7
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->sslContext:Ljavax/net/ssl/SSLContext;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->setSSLContext(Ljavax/net/ssl/SSLContext;)V

    .line 9
    :cond_2
    iget v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->connectionTimeout:I

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->setReadTimeoutMillis(I)V

    :cond_3
    const/4 v0, 0x0

    new-array v2, v0, [B

    new-array v0, v0, [B

    .line 11
    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->connect()V

    .line 12
    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->getResponseStatus()I

    move-result v3

    .line 13
    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->getResponseHeaders()Ljava/util/Map;

    move-result-object v4

    const/16 v5, 0xc8

    if-ne v3, v5, :cond_4

    .line 14
    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsConnection;->readInput()[B

    move-result-object v2

    .line 15
    :cond_4
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsResponse;

    invoke-direct {v1, v3, v2, v4, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsResponse;-><init>(I[BLjava/util/Map;[B)V

    return-object v1

    .line 16
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHeaderField(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->headers:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public setReadTimeoutMillis(I)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;
    .locals 0

    .line 1
    iput p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->connectionTimeout:I

    return-object p0
.end method

.method public setSSLContext(Ljavax/net/ssl/SSLContext;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsRequest;->sslContext:Ljavax/net/ssl/SSLContext;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
