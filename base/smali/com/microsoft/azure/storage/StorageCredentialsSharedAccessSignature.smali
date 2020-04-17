.class public final Lcom/microsoft/azure/storage/StorageCredentialsSharedAccessSignature;
.super Lcom/microsoft/azure/storage/StorageCredentials;
.source "SourceFile"


# instance fields
.field public final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/storage/StorageCredentials;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/storage/StorageCredentialsSharedAccessSignature;->token:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/StorageCredentials;->setHttpsOnly(Z)V

    goto :goto_1

    .line 4
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/PathUtility;->parseQueryString(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const-string v1, "spr"

    .line 5
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v1, "https"

    .line 6
    aget-object p1, p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/StorageCredentials;->setHttpsOnly(Z)V
    :try_end_0
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 7
    :catch_0
    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/StorageCredentials;->setHttpsOnly(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/StorageCredentialsSharedAccessSignature;->token:Ljava/lang/String;

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "SharedAccessSignature"

    aput-object v2, v0, v1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/microsoft/azure/storage/StorageCredentialsSharedAccessSignature;->token:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "[signature hidden]"

    :goto_0
    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%s=%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public transformUri(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;
    .locals 2

    .line 5
    new-instance v0, Lcom/microsoft/azure/storage/StorageUri;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/microsoft/azure/storage/StorageCredentialsSharedAccessSignature;->transformUri(Ljava/net/URI;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/URI;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageUri;->getSecondaryUri()Ljava/net/URI;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/azure/storage/StorageCredentialsSharedAccessSignature;->transformUri(Ljava/net/URI;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/URI;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;Ljava/net/URI;)V

    return-object v0
.end method

.method public transformUri(Ljava/net/URI;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/URI;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/StorageCredentials;->isHttpsOnly()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p2

    const-string v0, "https"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot use HTTP with credentials that only support HTTPS."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/microsoft/azure/storage/StorageCredentialsSharedAccessSignature;->token:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/microsoft/azure/storage/core/PathUtility;->addToQuery(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    const-string p2, "api-version=2018-03-28"

    .line 4
    invoke-static {p1, p2}, Lcom/microsoft/azure/storage/core/PathUtility;->addToQuery(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    return-object p1
.end method
