.class public abstract Lcom/microsoft/azure/storage/StorageCredentials;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public httpsOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/StorageCredentials;->httpsOnly:Z

    return-void
.end method

.method public static tryParseCredentials(Ljava/lang/String;)Lcom/microsoft/azure/storage/StorageCredentials;
    .locals 0

    .line 11
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->parseAccountString(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/azure/storage/StorageCredentials;->tryParseCredentials(Ljava/util/Map;)Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object p0

    return-object p0
.end method

.method public static tryParseCredentials(Ljava/util/Map;)Lcom/microsoft/azure/storage/StorageCredentials;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/azure/storage/StorageCredentials;"
        }
    .end annotation

    const-string v0, "AccountName"

    .line 1
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const-string v1, "AccountKey"

    .line 3
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    const-string v3, "SharedAccessSignature"

    .line 5
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 6
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object p0, v2

    :goto_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-nez p0, :cond_4

    .line 7
    invoke-static {v1}, Lcom/microsoft/azure/storage/core/Base64;->validateIsBase64String(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 8
    new-instance p0, Lcom/microsoft/azure/storage/StorageCredentialsAccountAndKey;

    invoke-direct {p0, v0, v1}, Lcom/microsoft/azure/storage/StorageCredentialsAccountAndKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 9
    :cond_3
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string v0, "Storage Key is not a valid base64 encoded string."

    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    if-nez v1, :cond_5

    if-eqz p0, :cond_5

    .line 10
    new-instance v0, Lcom/microsoft/azure/storage/StorageCredentialsSharedAccessSignature;

    invoke-direct {v0, p0}, Lcom/microsoft/azure/storage/StorageCredentialsSharedAccessSignature;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_5
    return-object v2
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isHttpsOnly()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/storage/StorageCredentials;->httpsOnly:Z

    return v0
.end method

.method public setHttpsOnly(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/azure/storage/StorageCredentials;->httpsOnly:Z

    return-void
.end method

.method public abstract toString(Z)Ljava/lang/String;
.end method

.method public transformUri(Lcom/microsoft/azure/storage/StorageUri;)Lcom/microsoft/azure/storage/StorageUri;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/azure/storage/StorageCredentials;->transformUri(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    return-object p1
.end method

.method public abstract transformUri(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;
.end method

.method public transformUri(Ljava/net/URI;)Ljava/net/URI;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/azure/storage/StorageCredentials;->transformUri(Ljava/net/URI;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/URI;

    move-result-object p1

    return-object p1
.end method

.method public abstract transformUri(Ljava/net/URI;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/URI;
.end method
