.class public Lcom/microsoft/azure/storage/table/TableRequestOptions;
.super Lcom/microsoft/azure/storage/RequestOptions;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/azure/storage/table/TableRequestOptions$EncryptionResolver;,
        Lcom/microsoft/azure/storage/table/TableRequestOptions$PropertyResolver;
    }
.end annotation


# instance fields
.field public dateBackwardCompatibility:Ljava/lang/Boolean;

.field public encryptionPolicy:Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;

.field public encryptionResolver:Lcom/microsoft/azure/storage/table/TableRequestOptions$EncryptionResolver;

.field public payloadFormat:Lcom/microsoft/azure/storage/table/TablePayloadFormat;

.field public propertyResolver:Lcom/microsoft/azure/storage/table/TableRequestOptions$PropertyResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/storage/RequestOptions;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/table/TableRequestOptions;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/RequestOptions;-><init>(Lcom/microsoft/azure/storage/RequestOptions;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getTablePayloadFormat()Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->setTablePayloadFormat(Lcom/microsoft/azure/storage/table/TablePayloadFormat;)V

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getPropertyResolver()Lcom/microsoft/azure/storage/table/TableRequestOptions$PropertyResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->setPropertyResolver(Lcom/microsoft/azure/storage/table/TableRequestOptions$PropertyResolver;)V

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getDateBackwardCompatibility()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->setDateBackwardCompatibility(Ljava/lang/Boolean;)V

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->setEncryptionPolicy(Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;)V

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getEncryptionResolver()Lcom/microsoft/azure/storage/table/TableRequestOptions$EncryptionResolver;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->setEncryptionResolver(Lcom/microsoft/azure/storage/table/TableRequestOptions$EncryptionResolver;)V

    :cond_0
    return-void
.end method

.method public static applyDefaults(Lcom/microsoft/azure/storage/table/TableRequestOptions;)V
    .locals 1

    const-string v0, "modifiedOptions"

    .line 1
    invoke-static {v0, p0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-static {p0}, Lcom/microsoft/azure/storage/RequestOptions;->applyBaseDefaultsInternal(Lcom/microsoft/azure/storage/RequestOptions;)V

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getTablePayloadFormat()Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/microsoft/azure/storage/table/TablePayloadFormat;->Json:Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->setTablePayloadFormat(Lcom/microsoft/azure/storage/table/TablePayloadFormat;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getDateBackwardCompatibility()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->setDateBackwardCompatibility(Ljava/lang/Boolean;)V

    :cond_1
    return-void
.end method

.method public static populate(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/table/TableRequestOptions;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Lcom/microsoft/azure/storage/RequestOptions;->populateRequestOptions(Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/RequestOptions;Z)V

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getTablePayloadFormat()Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getTablePayloadFormat()Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->setTablePayloadFormat(Lcom/microsoft/azure/storage/table/TablePayloadFormat;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getPropertyResolver()Lcom/microsoft/azure/storage/table/TableRequestOptions$PropertyResolver;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getPropertyResolver()Lcom/microsoft/azure/storage/table/TableRequestOptions$PropertyResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->setPropertyResolver(Lcom/microsoft/azure/storage/table/TableRequestOptions$PropertyResolver;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getDateBackwardCompatibility()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getDateBackwardCompatibility()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->setDateBackwardCompatibility(Ljava/lang/Boolean;)V

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;

    move-result-object v0

    if-nez v0, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->setEncryptionPolicy(Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;)V

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getEncryptionResolver()Lcom/microsoft/azure/storage/table/TableRequestOptions$EncryptionResolver;

    move-result-object v0

    if-nez v0, :cond_4

    .line 11
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getEncryptionResolver()Lcom/microsoft/azure/storage/table/TableRequestOptions$EncryptionResolver;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->setEncryptionResolver(Lcom/microsoft/azure/storage/table/TableRequestOptions$EncryptionResolver;)V

    :cond_4
    return-void
.end method

.method public static final populateAndApplyDefaults(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/table/CloudTableClient;)Lcom/microsoft/azure/storage/table/TableRequestOptions;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/table/TableRequestOptions;

    invoke-direct {v0, p0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;-><init>(Lcom/microsoft/azure/storage/table/TableRequestOptions;)V

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/CloudTableClient;->getDefaultRequestOptions()Lcom/microsoft/azure/storage/table/TableRequestOptions;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->populate(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/table/TableRequestOptions;)V

    .line 3
    invoke-static {v0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->applyDefaults(Lcom/microsoft/azure/storage/table/TableRequestOptions;)V

    return-object v0
.end method


# virtual methods
.method public assertNoEncryptionPolicyOrStrictMode()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->assertPolicyIfRequired()V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Encryption is not supported for the current operation. Please ensure that EncryptionPolicy is not set on RequestOptions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;

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

.method public clearEncryption()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/RequestOptions;->setRequireEncryption(Ljava/lang/Boolean;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->setEncryptionPolicy(Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->setEncryptionResolver(Lcom/microsoft/azure/storage/table/TableRequestOptions$EncryptionResolver;)V

    return-void
.end method

.method public getDateBackwardCompatibility()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableRequestOptions;->dateBackwardCompatibility:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEncryptionPolicy()Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableRequestOptions;->encryptionPolicy:Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;

    return-object v0
.end method

.method public getEncryptionResolver()Lcom/microsoft/azure/storage/table/TableRequestOptions$EncryptionResolver;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableRequestOptions;->encryptionResolver:Lcom/microsoft/azure/storage/table/TableRequestOptions$EncryptionResolver;

    return-object v0
.end method

.method public getPropertyResolver()Lcom/microsoft/azure/storage/table/TableRequestOptions$PropertyResolver;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableRequestOptions;->propertyResolver:Lcom/microsoft/azure/storage/table/TableRequestOptions$PropertyResolver;

    return-object v0
.end method

.method public getTablePayloadFormat()Lcom/microsoft/azure/storage/table/TablePayloadFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableRequestOptions;->payloadFormat:Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    return-object v0
.end method

.method public setDateBackwardCompatibility(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/TableRequestOptions;->dateBackwardCompatibility:Ljava/lang/Boolean;

    return-void
.end method

.method public setEncryptionPolicy(Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/TableRequestOptions;->encryptionPolicy:Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;

    return-void
.end method

.method public setEncryptionResolver(Lcom/microsoft/azure/storage/table/TableRequestOptions$EncryptionResolver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/TableRequestOptions;->encryptionResolver:Lcom/microsoft/azure/storage/table/TableRequestOptions$EncryptionResolver;

    return-void
.end method

.method public setPropertyResolver(Lcom/microsoft/azure/storage/table/TableRequestOptions$PropertyResolver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/TableRequestOptions;->propertyResolver:Lcom/microsoft/azure/storage/table/TableRequestOptions$PropertyResolver;

    return-void
.end method

.method public setTablePayloadFormat(Lcom/microsoft/azure/storage/table/TablePayloadFormat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/TableRequestOptions;->payloadFormat:Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    return-void
.end method
