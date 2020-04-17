.class public final Lcom/microsoft/azure/storage/file/FileRequestOptions;
.super Lcom/microsoft/azure/storage/RequestOptions;
.source "SourceFile"


# instance fields
.field public concurrentRequestCount:Ljava/lang/Integer;

.field public disableContentMD5Validation:Ljava/lang/Boolean;

.field public storeFileContentMD5:Ljava/lang/Boolean;

.field public useTransactionalContentMD5:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/storage/RequestOptions;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/storage/file/FileRequestOptions;->concurrentRequestCount:Ljava/lang/Integer;

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/storage/file/FileRequestOptions;->useTransactionalContentMD5:Ljava/lang/Boolean;

    .line 4
    iput-object v0, p0, Lcom/microsoft/azure/storage/file/FileRequestOptions;->storeFileContentMD5:Ljava/lang/Boolean;

    .line 5
    iput-object v0, p0, Lcom/microsoft/azure/storage/file/FileRequestOptions;->disableContentMD5Validation:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/file/FileRequestOptions;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/RequestOptions;-><init>(Lcom/microsoft/azure/storage/RequestOptions;)V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/microsoft/azure/storage/file/FileRequestOptions;->concurrentRequestCount:Ljava/lang/Integer;

    .line 8
    iput-object v0, p0, Lcom/microsoft/azure/storage/file/FileRequestOptions;->useTransactionalContentMD5:Ljava/lang/Boolean;

    .line 9
    iput-object v0, p0, Lcom/microsoft/azure/storage/file/FileRequestOptions;->storeFileContentMD5:Ljava/lang/Boolean;

    .line 10
    iput-object v0, p0, Lcom/microsoft/azure/storage/file/FileRequestOptions;->disableContentMD5Validation:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->getConcurrentRequestCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->setConcurrentRequestCount(Ljava/lang/Integer;)V

    .line 12
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->getDisableContentMD5Validation()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->setDisableContentMD5Validation(Ljava/lang/Boolean;)V

    .line 13
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->getStoreFileContentMD5()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->setStoreFileContentMD5(Ljava/lang/Boolean;)V

    .line 14
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->getUseTransactionalContentMD5()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->setUseTransactionalContentMD5(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public static applyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;)V
    .locals 2

    const-string v0, "modifiedOptions"

    .line 1
    invoke-static {v0, p0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-static {p0}, Lcom/microsoft/azure/storage/RequestOptions;->applyBaseDefaultsInternal(Lcom/microsoft/azure/storage/RequestOptions;)V

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->getConcurrentRequestCount()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->setConcurrentRequestCount(Ljava/lang/Integer;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->getUseTransactionalContentMD5()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->setUseTransactionalContentMD5(Ljava/lang/Boolean;)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->getStoreFileContentMD5()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_2

    .line 8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->setStoreFileContentMD5(Ljava/lang/Boolean;)V

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->getDisableContentMD5Validation()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_3

    .line 10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->setDisableContentMD5Validation(Ljava/lang/Boolean;)V

    :cond_3
    return-void
.end method

.method public static final populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;Z)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static final populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;Z)Lcom/microsoft/azure/storage/file/FileRequestOptions;
    .locals 1

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/file/FileRequestOptions;

    invoke-direct {v0, p0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;-><init>(Lcom/microsoft/azure/storage/file/FileRequestOptions;)V

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/CloudFileClient;->getDefaultRequestOptions()Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p0

    invoke-static {v0, p0, p2}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateRequestOptions(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/FileRequestOptions;Z)V

    .line 4
    invoke-static {v0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->applyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;)V

    return-object v0
.end method

.method public static populateRequestOptions(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/FileRequestOptions;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/microsoft/azure/storage/RequestOptions;->populateRequestOptions(Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/RequestOptions;Z)V

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->getConcurrentRequestCount()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->getConcurrentRequestCount()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->setConcurrentRequestCount(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getConcurrentRequestCount()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileRequestOptions;->concurrentRequestCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDisableContentMD5Validation()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileRequestOptions;->disableContentMD5Validation:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getStoreFileContentMD5()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileRequestOptions;->storeFileContentMD5:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUseTransactionalContentMD5()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileRequestOptions;->useTransactionalContentMD5:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setConcurrentRequestCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileRequestOptions;->concurrentRequestCount:Ljava/lang/Integer;

    return-void
.end method

.method public setDisableContentMD5Validation(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileRequestOptions;->disableContentMD5Validation:Ljava/lang/Boolean;

    return-void
.end method

.method public final setLocationMode(Lcom/microsoft/azure/storage/LocationMode;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/LocationMode;->PRIMARY_ONLY:Lcom/microsoft/azure/storage/LocationMode;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This operation can only be executed against the primary storage location."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/microsoft/azure/storage/RequestOptions;->setLocationMode(Lcom/microsoft/azure/storage/LocationMode;)V

    return-void
.end method

.method public setRequireEncryption(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Encryption is not supported for files."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setStoreFileContentMD5(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileRequestOptions;->storeFileContentMD5:Ljava/lang/Boolean;

    return-void
.end method

.method public setUseTransactionalContentMD5(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileRequestOptions;->useTransactionalContentMD5:Ljava/lang/Boolean;

    return-void
.end method
