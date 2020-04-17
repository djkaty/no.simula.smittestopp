.class public final Lcom/microsoft/azure/storage/blob/BlobRequestOptions;
.super Lcom/microsoft/azure/storage/RequestOptions;
.source "SourceFile"


# instance fields
.field public absorbConditionalErrorsOnRetry:Ljava/lang/Boolean;

.field public concurrentRequestCount:Ljava/lang/Integer;

.field public disableContentMD5Validation:Ljava/lang/Boolean;

.field public encryptionPolicy:Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;

.field public singleBlobPutThresholdInBytes:Ljava/lang/Integer;

.field public skipEtagLocking:Z

.field public storeBlobContentMD5:Ljava/lang/Boolean;

.field public useTransactionalContentMD5:Ljava/lang/Boolean;

.field public validateEncryptionPolicy:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/storage/RequestOptions;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->absorbConditionalErrorsOnRetry:Ljava/lang/Boolean;

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->concurrentRequestCount:Ljava/lang/Integer;

    .line 4
    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->useTransactionalContentMD5:Ljava/lang/Boolean;

    .line 5
    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->storeBlobContentMD5:Ljava/lang/Boolean;

    .line 6
    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->disableContentMD5Validation:Ljava/lang/Boolean;

    .line 7
    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->singleBlobPutThresholdInBytes:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->validateEncryptionPolicy:Z

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->skipEtagLocking:Z

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)V
    .locals 1

    .line 10
    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/RequestOptions;-><init>(Lcom/microsoft/azure/storage/RequestOptions;)V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->absorbConditionalErrorsOnRetry:Ljava/lang/Boolean;

    .line 12
    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->concurrentRequestCount:Ljava/lang/Integer;

    .line 13
    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->useTransactionalContentMD5:Ljava/lang/Boolean;

    .line 14
    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->storeBlobContentMD5:Ljava/lang/Boolean;

    .line 15
    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->disableContentMD5Validation:Ljava/lang/Boolean;

    .line 16
    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->singleBlobPutThresholdInBytes:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->validateEncryptionPolicy:Z

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->skipEtagLocking:Z

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getAbsorbConditionalErrorsOnRetry()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->setAbsorbConditionalErrorsOnRetry(Ljava/lang/Boolean;)V

    .line 20
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getConcurrentRequestCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->setConcurrentRequestCount(Ljava/lang/Integer;)V

    .line 21
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getUseTransactionalContentMD5()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->setUseTransactionalContentMD5(Ljava/lang/Boolean;)V

    .line 22
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getStoreBlobContentMD5()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->setStoreBlobContentMD5(Ljava/lang/Boolean;)V

    .line 23
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getDisableContentMD5Validation()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->setDisableContentMD5Validation(Ljava/lang/Boolean;)V

    .line 24
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getSingleBlobPutThresholdInBytes()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->setSingleBlobPutThresholdInBytes(Ljava/lang/Integer;)V

    .line 25
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->setEncryptionPolicy(Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;)V

    .line 26
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getValidateEncryptionPolicy()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->setValidateEncryptionPolicy(Z)V

    .line 27
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getSkipEtagLocking()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->setSkipEtagLocking(Z)V

    :cond_0
    return-void
.end method

.method public static applyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;)V
    .locals 4

    const-string v0, "modifiedOptions"

    .line 1
    invoke-static {v0, p0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-static {p0}, Lcom/microsoft/azure/storage/RequestOptions;->applyBaseDefaultsInternal(Lcom/microsoft/azure/storage/RequestOptions;)V

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getAbsorbConditionalErrorsOnRetry()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->setAbsorbConditionalErrorsOnRetry(Ljava/lang/Boolean;)V

    .line 5
    :cond_0
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->APPEND_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    const/4 v3, 0x1

    if-ne p1, v0, :cond_1

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->setConcurrentRequestCount(Ljava/lang/Integer;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getConcurrentRequestCount()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->setConcurrentRequestCount(Ljava/lang/Integer;)V

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getSingleBlobPutThresholdInBytes()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_3

    const/high16 v0, 0x8000000

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->setSingleBlobPutThresholdInBytes(Ljava/lang/Integer;)V

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getUseTransactionalContentMD5()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_4

    .line 12
    invoke-virtual {p0, v2}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->setUseTransactionalContentMD5(Ljava/lang/Boolean;)V

    .line 13
    :cond_4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getStoreBlobContentMD5()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_6

    .line 14
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/BlobType;

    if-eq p1, v0, :cond_6

    .line 15
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->BLOCK_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    if-ne p1, v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->setStoreBlobContentMD5(Ljava/lang/Boolean;)V

    .line 16
    :cond_6
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getDisableContentMD5Validation()Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_7

    .line 17
    invoke-virtual {p0, v2}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->setDisableContentMD5Validation(Ljava/lang/Boolean;)V

    :cond_7
    return-void
.end method

.method public static final populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Z)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static final populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Z)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;
    .locals 1

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    invoke-direct {v0, p0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;-><init>(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)V

    .line 3
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->getDefaultRequestOptions()Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p0

    invoke-static {v0, p0, p3}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateRequestOptions(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Z)V

    .line 4
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->applyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;)V

    return-object v0
.end method

.method public static populateRequestOptions(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/microsoft/azure/storage/RequestOptions;->populateRequestOptions(Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/RequestOptions;Z)V

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getAbsorbConditionalErrorsOnRetry()Ljava/lang/Boolean;

    move-result-object p2

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getAbsorbConditionalErrorsOnRetry()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->setAbsorbConditionalErrorsOnRetry(Ljava/lang/Boolean;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getConcurrentRequestCount()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getConcurrentRequestCount()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->setConcurrentRequestCount(Ljava/lang/Integer;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getSingleBlobPutThresholdInBytes()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getSingleBlobPutThresholdInBytes()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->setSingleBlobPutThresholdInBytes(Ljava/lang/Integer;)V

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getUseTransactionalContentMD5()Ljava/lang/Boolean;

    move-result-object p2

    if-nez p2, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getUseTransactionalContentMD5()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->setUseTransactionalContentMD5(Ljava/lang/Boolean;)V

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getStoreBlobContentMD5()Ljava/lang/Boolean;

    move-result-object p2

    if-nez p2, :cond_4

    .line 11
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getStoreBlobContentMD5()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->setStoreBlobContentMD5(Ljava/lang/Boolean;)V

    .line 12
    :cond_4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getDisableContentMD5Validation()Ljava/lang/Boolean;

    move-result-object p2

    if-nez p2, :cond_5

    .line 13
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getDisableContentMD5Validation()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->setDisableContentMD5Validation(Ljava/lang/Boolean;)V

    .line 14
    :cond_5
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;

    move-result-object p2

    if-nez p2, :cond_6

    .line 15
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->setEncryptionPolicy(Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public assertNoEncryptionPolicyOrStrictMode()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getValidateEncryptionPolicy()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Encryption is not supported for the current operation. Please ensure that EncryptionPolicy is not set on RequestOptions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->assertPolicyIfRequired()V

    return-void
.end method

.method public assertPolicyIfRequired()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/RequestOptions;->requireEncryption()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/RequestOptions;->requireEncryption()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Encryption Policy is mandatory when RequireEncryption is set to true. If you do not want to encrypt/decrypt data, please set RequireEncryption to false in request options."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public getAbsorbConditionalErrorsOnRetry()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->absorbConditionalErrorsOnRetry:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getConcurrentRequestCount()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->concurrentRequestCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDisableContentMD5Validation()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->disableContentMD5Validation:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEncryptionPolicy()Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->encryptionPolicy:Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;

    return-object v0
.end method

.method public getSingleBlobPutThresholdInBytes()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->singleBlobPutThresholdInBytes:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSkipEtagLocking()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->skipEtagLocking:Z

    return v0
.end method

.method public getStoreBlobContentMD5()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->storeBlobContentMD5:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUseTransactionalContentMD5()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->useTransactionalContentMD5:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getValidateEncryptionPolicy()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->validateEncryptionPolicy:Z

    return v0
.end method

.method public setAbsorbConditionalErrorsOnRetry(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->absorbConditionalErrorsOnRetry:Ljava/lang/Boolean;

    return-void
.end method

.method public setConcurrentRequestCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->concurrentRequestCount:Ljava/lang/Integer;

    return-void
.end method

.method public setDisableContentMD5Validation(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->disableContentMD5Validation:Ljava/lang/Boolean;

    return-void
.end method

.method public setEncryptionPolicy(Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->encryptionPolicy:Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;

    return-void
.end method

.method public setSingleBlobPutThresholdInBytes(Ljava/lang/Integer;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v1, 0x10000000

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v1, 0x100000

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcom/microsoft/azure/storage/core/Utility;->LOCALE_US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "singleBlobPutThresholdInBytes"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "The argument is out of range. Argument name: %s, Value passed: %s."

    .line 4
    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->singleBlobPutThresholdInBytes:Ljava/lang/Integer;

    return-void
.end method

.method public setSkipEtagLocking(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->skipEtagLocking:Z

    return-void
.end method

.method public setStoreBlobContentMD5(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->storeBlobContentMD5:Ljava/lang/Boolean;

    return-void
.end method

.method public setUseTransactionalContentMD5(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->useTransactionalContentMD5:Ljava/lang/Boolean;

    return-void
.end method

.method public setValidateEncryptionPolicy(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->validateEncryptionPolicy:Z

    return-void
.end method
