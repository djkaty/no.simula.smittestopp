.class public final Lcom/microsoft/azure/storage/queue/QueueRequestOptions;
.super Lcom/microsoft/azure/storage/RequestOptions;
.source "SourceFile"


# instance fields
.field public encryptionPolicy:Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/storage/RequestOptions;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/RequestOptions;-><init>(Lcom/microsoft/azure/storage/RequestOptions;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->setEncryptionPolicy(Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;)V

    :cond_0
    return-void
.end method

.method public static applyDefaults(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)V
    .locals 1

    const-string v0, "modifiedOptions"

    .line 1
    invoke-static {v0, p0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-static {p0}, Lcom/microsoft/azure/storage/RequestOptions;->applyBaseDefaultsInternal(Lcom/microsoft/azure/storage/RequestOptions;)V

    return-void
.end method

.method public static final populateAndApplyDefaults(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/queue/CloudQueueClient;)Lcom/microsoft/azure/storage/queue/QueueRequestOptions;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    invoke-direct {v0, p0}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;-><init>(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)V

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/queue/CloudQueueClient;->getDefaultRequestOptions()Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->populateRequestOptions(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)V

    .line 3
    invoke-static {v0}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->applyDefaults(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)V

    return-object v0
.end method

.method public static populateRequestOptions(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Lcom/microsoft/azure/storage/RequestOptions;->populateRequestOptions(Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/RequestOptions;Z)V

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->setEncryptionPolicy(Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;)V

    :cond_0
    return-void
.end method


# virtual methods
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

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;

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

.method public getEncryptionPolicy()Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->encryptionPolicy:Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;

    return-object v0
.end method

.method public setEncryptionPolicy(Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->encryptionPolicy:Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;

    return-void
.end method
