.class public final Lcom/microsoft/azure/storage/blob/BlobProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public appendBlobCommittedBlockCount:Ljava/lang/Integer;

.field public blobType:Lcom/microsoft/azure/storage/blob/BlobType;

.field public cacheControl:Ljava/lang/String;

.field public contentDisposition:Ljava/lang/String;

.field public contentEncoding:Ljava/lang/String;

.field public contentLanguage:Ljava/lang/String;

.field public contentMD5:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public copyState:Lcom/microsoft/azure/storage/blob/CopyState;

.field public createdTime:Ljava/util/Date;

.field public deletedTime:Ljava/util/Date;

.field public etag:Ljava/lang/String;

.field public isBlobTierInferredTier:Ljava/lang/Boolean;

.field public isIncrementalCopy:Z

.field public lastModified:Ljava/util/Date;

.field public leaseDuration:Lcom/microsoft/azure/storage/blob/LeaseDuration;

.field public leaseState:Lcom/microsoft/azure/storage/blob/LeaseState;

.field public leaseStatus:Lcom/microsoft/azure/storage/blob/LeaseStatus;

.field public length:J

.field public pageBlobSequenceNumber:Ljava/lang/Long;

.field public premiumPageBlobTier:Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;

.field public rehydrationStatus:Lcom/microsoft/azure/storage/blob/RehydrationStatus;

.field public remainingRetentionDays:Ljava/lang/Integer;

.field public serverEncrypted:Z

.field public standardBlobTier:Lcom/microsoft/azure/storage/blob/StandardBlobTier;

.field public tierChangeTime:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/BlobType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->blobType:Lcom/microsoft/azure/storage/blob/BlobType;

    .line 3
    sget-object v0, Lcom/microsoft/azure/storage/blob/LeaseStatus;->UNLOCKED:Lcom/microsoft/azure/storage/blob/LeaseStatus;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->leaseStatus:Lcom/microsoft/azure/storage/blob/LeaseStatus;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/blob/BlobProperties;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/BlobType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->blobType:Lcom/microsoft/azure/storage/blob/BlobType;

    .line 6
    sget-object v0, Lcom/microsoft/azure/storage/blob/LeaseStatus;->UNLOCKED:Lcom/microsoft/azure/storage/blob/LeaseStatus;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->leaseStatus:Lcom/microsoft/azure/storage/blob/LeaseStatus;

    .line 7
    iget-object v0, p1, Lcom/microsoft/azure/storage/blob/BlobProperties;->appendBlobCommittedBlockCount:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->appendBlobCommittedBlockCount:Ljava/lang/Integer;

    .line 8
    iget-object v0, p1, Lcom/microsoft/azure/storage/blob/BlobProperties;->blobType:Lcom/microsoft/azure/storage/blob/BlobType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->blobType:Lcom/microsoft/azure/storage/blob/BlobType;

    .line 9
    iget-object v0, p1, Lcom/microsoft/azure/storage/blob/BlobProperties;->cacheControl:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->cacheControl:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Lcom/microsoft/azure/storage/blob/BlobProperties;->contentDisposition:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->contentDisposition:Ljava/lang/String;

    .line 11
    iget-object v0, p1, Lcom/microsoft/azure/storage/blob/BlobProperties;->contentEncoding:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->contentEncoding:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Lcom/microsoft/azure/storage/blob/BlobProperties;->contentLanguage:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->contentLanguage:Ljava/lang/String;

    .line 13
    iget-object v0, p1, Lcom/microsoft/azure/storage/blob/BlobProperties;->contentMD5:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->contentMD5:Ljava/lang/String;

    .line 14
    iget-object v0, p1, Lcom/microsoft/azure/storage/blob/BlobProperties;->contentType:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->contentType:Ljava/lang/String;

    .line 15
    iget-object v0, p1, Lcom/microsoft/azure/storage/blob/BlobProperties;->copyState:Lcom/microsoft/azure/storage/blob/CopyState;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->copyState:Lcom/microsoft/azure/storage/blob/CopyState;

    .line 16
    iget-object v0, p1, Lcom/microsoft/azure/storage/blob/BlobProperties;->createdTime:Ljava/util/Date;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->createdTime:Ljava/util/Date;

    .line 17
    iget-object v0, p1, Lcom/microsoft/azure/storage/blob/BlobProperties;->etag:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->etag:Ljava/lang/String;

    .line 18
    iget-object v0, p1, Lcom/microsoft/azure/storage/blob/BlobProperties;->isBlobTierInferredTier:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->isBlobTierInferredTier:Ljava/lang/Boolean;

    .line 19
    iget-boolean v0, p1, Lcom/microsoft/azure/storage/blob/BlobProperties;->isIncrementalCopy:Z

    iput-boolean v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->isIncrementalCopy:Z

    .line 20
    iget-object v0, p1, Lcom/microsoft/azure/storage/blob/BlobProperties;->leaseStatus:Lcom/microsoft/azure/storage/blob/LeaseStatus;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->leaseStatus:Lcom/microsoft/azure/storage/blob/LeaseStatus;

    .line 21
    iget-object v0, p1, Lcom/microsoft/azure/storage/blob/BlobProperties;->leaseState:Lcom/microsoft/azure/storage/blob/LeaseState;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->leaseState:Lcom/microsoft/azure/storage/blob/LeaseState;

    .line 22
    iget-object v0, p1, Lcom/microsoft/azure/storage/blob/BlobProperties;->leaseDuration:Lcom/microsoft/azure/storage/blob/LeaseDuration;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->leaseDuration:Lcom/microsoft/azure/storage/blob/LeaseDuration;

    .line 23
    iget-wide v0, p1, Lcom/microsoft/azure/storage/blob/BlobProperties;->length:J

    iput-wide v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->length:J

    .line 24
    iget-object v0, p1, Lcom/microsoft/azure/storage/blob/BlobProperties;->lastModified:Ljava/util/Date;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->lastModified:Ljava/util/Date;

    .line 25
    iget-object v0, p1, Lcom/microsoft/azure/storage/blob/BlobProperties;->pageBlobSequenceNumber:Ljava/lang/Long;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->pageBlobSequenceNumber:Ljava/lang/Long;

    .line 26
    iget-object v0, p1, Lcom/microsoft/azure/storage/blob/BlobProperties;->premiumPageBlobTier:Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->premiumPageBlobTier:Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;

    .line 27
    iget-boolean v0, p1, Lcom/microsoft/azure/storage/blob/BlobProperties;->serverEncrypted:Z

    iput-boolean v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->serverEncrypted:Z

    .line 28
    iget-object v0, p1, Lcom/microsoft/azure/storage/blob/BlobProperties;->standardBlobTier:Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->standardBlobTier:Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    .line 29
    iget-object v0, p1, Lcom/microsoft/azure/storage/blob/BlobProperties;->rehydrationStatus:Lcom/microsoft/azure/storage/blob/RehydrationStatus;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->rehydrationStatus:Lcom/microsoft/azure/storage/blob/RehydrationStatus;

    .line 30
    iget-object v0, p1, Lcom/microsoft/azure/storage/blob/BlobProperties;->tierChangeTime:Ljava/util/Date;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->tierChangeTime:Ljava/util/Date;

    .line 31
    iget-object v0, p1, Lcom/microsoft/azure/storage/blob/BlobProperties;->deletedTime:Ljava/util/Date;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->deletedTime:Ljava/util/Date;

    .line 32
    iget-object p1, p1, Lcom/microsoft/azure/storage/blob/BlobProperties;->remainingRetentionDays:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->remainingRetentionDays:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/blob/BlobType;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/BlobType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->blobType:Lcom/microsoft/azure/storage/blob/BlobType;

    .line 35
    sget-object v0, Lcom/microsoft/azure/storage/blob/LeaseStatus;->UNLOCKED:Lcom/microsoft/azure/storage/blob/LeaseStatus;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->leaseStatus:Lcom/microsoft/azure/storage/blob/LeaseStatus;

    .line 36
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->blobType:Lcom/microsoft/azure/storage/blob/BlobType;

    return-void
.end method


# virtual methods
.method public getAppendBlobCommittedBlockCount()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->appendBlobCommittedBlockCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->blobType:Lcom/microsoft/azure/storage/blob/BlobType;

    return-object v0
.end method

.method public getCacheControl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->cacheControl:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->contentDisposition:Ljava/lang/String;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->contentLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getContentMD5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->contentMD5:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyState()Lcom/microsoft/azure/storage/blob/CopyState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->copyState:Lcom/microsoft/azure/storage/blob/CopyState;

    return-object v0
.end method

.method public getCreatedTime()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->createdTime:Ljava/util/Date;

    return-object v0
.end method

.method public getDeletedTime()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->deletedTime:Ljava/util/Date;

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->lastModified:Ljava/util/Date;

    return-object v0
.end method

.method public getLeaseDuration()Lcom/microsoft/azure/storage/blob/LeaseDuration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->leaseDuration:Lcom/microsoft/azure/storage/blob/LeaseDuration;

    return-object v0
.end method

.method public getLeaseState()Lcom/microsoft/azure/storage/blob/LeaseState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->leaseState:Lcom/microsoft/azure/storage/blob/LeaseState;

    return-object v0
.end method

.method public getLeaseStatus()Lcom/microsoft/azure/storage/blob/LeaseStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->leaseStatus:Lcom/microsoft/azure/storage/blob/LeaseStatus;

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->length:J

    return-wide v0
.end method

.method public getPageBlobSequenceNumber()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->pageBlobSequenceNumber:Ljava/lang/Long;

    return-object v0
.end method

.method public getPremiumPageBlobTier()Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->premiumPageBlobTier:Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;

    return-object v0
.end method

.method public getRehydrationStatus()Lcom/microsoft/azure/storage/blob/RehydrationStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->rehydrationStatus:Lcom/microsoft/azure/storage/blob/RehydrationStatus;

    return-object v0
.end method

.method public getRemainingRetentionDays()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->remainingRetentionDays:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStandardBlobTier()Lcom/microsoft/azure/storage/blob/StandardBlobTier;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->standardBlobTier:Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    return-object v0
.end method

.method public getTierChangeTime()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->tierChangeTime:Ljava/util/Date;

    return-object v0
.end method

.method public isBlobTierInferred()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->isBlobTierInferredTier:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isIncrementalCopy()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->isIncrementalCopy:Z

    return v0
.end method

.method public isServerEncrypted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->serverEncrypted:Z

    return v0
.end method

.method public setAppendBlobCommittedBlockCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->appendBlobCommittedBlockCount:Ljava/lang/Integer;

    return-void
.end method

.method public setBlobTierInferred(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->isBlobTierInferredTier:Ljava/lang/Boolean;

    return-void
.end method

.method public setBlobType(Lcom/microsoft/azure/storage/blob/BlobType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->blobType:Lcom/microsoft/azure/storage/blob/BlobType;

    return-void
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->cacheControl:Ljava/lang/String;

    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->contentDisposition:Ljava/lang/String;

    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->contentEncoding:Ljava/lang/String;

    return-void
.end method

.method public setContentLanguage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->contentLanguage:Ljava/lang/String;

    return-void
.end method

.method public setContentMD5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->contentMD5:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setCopyState(Lcom/microsoft/azure/storage/blob/CopyState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->copyState:Lcom/microsoft/azure/storage/blob/CopyState;

    return-void
.end method

.method public setCreatedTime(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->createdTime:Ljava/util/Date;

    return-void
.end method

.method public setDeletedTime(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->deletedTime:Ljava/util/Date;

    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->etag:Ljava/lang/String;

    return-void
.end method

.method public setIncrementalCopy(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->isIncrementalCopy:Z

    return-void
.end method

.method public setLastModified(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->lastModified:Ljava/util/Date;

    return-void
.end method

.method public setLeaseDuration(Lcom/microsoft/azure/storage/blob/LeaseDuration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->leaseDuration:Lcom/microsoft/azure/storage/blob/LeaseDuration;

    return-void
.end method

.method public setLeaseState(Lcom/microsoft/azure/storage/blob/LeaseState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->leaseState:Lcom/microsoft/azure/storage/blob/LeaseState;

    return-void
.end method

.method public setLeaseStatus(Lcom/microsoft/azure/storage/blob/LeaseStatus;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->leaseStatus:Lcom/microsoft/azure/storage/blob/LeaseStatus;

    return-void
.end method

.method public setLength(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->length:J

    return-void
.end method

.method public setPageBlobSequenceNumber(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->pageBlobSequenceNumber:Ljava/lang/Long;

    return-void
.end method

.method public setPremiumPageBlobTier(Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->premiumPageBlobTier:Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;

    return-void
.end method

.method public setRehydrationStatus(Lcom/microsoft/azure/storage/blob/RehydrationStatus;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->rehydrationStatus:Lcom/microsoft/azure/storage/blob/RehydrationStatus;

    return-void
.end method

.method public setRemainingRetentionDays(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->remainingRetentionDays:Ljava/lang/Integer;

    return-void
.end method

.method public setServerEncrypted(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->serverEncrypted:Z

    return-void
.end method

.method public setStandardBlobTier(Lcom/microsoft/azure/storage/blob/StandardBlobTier;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->standardBlobTier:Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    return-void
.end method

.method public setTierChangeTime(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobProperties;->tierChangeTime:Ljava/util/Date;

    return-void
.end method
