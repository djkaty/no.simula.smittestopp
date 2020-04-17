.class public final Lcom/microsoft/azure/storage/blob/BlobContainerProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public etag:Ljava/lang/String;

.field public hasImmutabilityPolicy:Ljava/lang/Boolean;

.field public hasLegalHold:Ljava/lang/Boolean;

.field public lastModified:Ljava/util/Date;

.field public leaseDuration:Lcom/microsoft/azure/storage/blob/LeaseDuration;

.field public leaseState:Lcom/microsoft/azure/storage/blob/LeaseState;

.field public leaseStatus:Lcom/microsoft/azure/storage/blob/LeaseStatus;

.field public publicAccess:Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEtag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;->lastModified:Ljava/util/Date;

    return-object v0
.end method

.method public getLeaseDuration()Lcom/microsoft/azure/storage/blob/LeaseDuration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;->leaseDuration:Lcom/microsoft/azure/storage/blob/LeaseDuration;

    return-object v0
.end method

.method public getLeaseState()Lcom/microsoft/azure/storage/blob/LeaseState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;->leaseState:Lcom/microsoft/azure/storage/blob/LeaseState;

    return-object v0
.end method

.method public getLeaseStatus()Lcom/microsoft/azure/storage/blob/LeaseStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;->leaseStatus:Lcom/microsoft/azure/storage/blob/LeaseStatus;

    return-object v0
.end method

.method public getPublicAccess()Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;->publicAccess:Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;

    return-object v0
.end method

.method public hasImmutabilityPolicy()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;->hasImmutabilityPolicy:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hasLegalHold()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;->hasLegalHold:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;->etag:Ljava/lang/String;

    return-void
.end method

.method public setHasImmutabilityPolicy(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;->hasImmutabilityPolicy:Ljava/lang/Boolean;

    return-void
.end method

.method public setHasLegalHold(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;->hasLegalHold:Ljava/lang/Boolean;

    return-void
.end method

.method public setLastModified(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;->lastModified:Ljava/util/Date;

    return-void
.end method

.method public setLeaseDuration(Lcom/microsoft/azure/storage/blob/LeaseDuration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;->leaseDuration:Lcom/microsoft/azure/storage/blob/LeaseDuration;

    return-void
.end method

.method public setLeaseState(Lcom/microsoft/azure/storage/blob/LeaseState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;->leaseState:Lcom/microsoft/azure/storage/blob/LeaseState;

    return-void
.end method

.method public setLeaseStatus(Lcom/microsoft/azure/storage/blob/LeaseStatus;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;->leaseStatus:Lcom/microsoft/azure/storage/blob/LeaseStatus;

    return-void
.end method

.method public setPublicAccess(Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;->publicAccess:Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;

    return-void
.end method
