package com.microsoft.azure.storage.blob;

import java.util.Date;

public final class BlobProperties {
    public Integer appendBlobCommittedBlockCount;
    public BlobType blobType = BlobType.UNSPECIFIED;
    public String cacheControl;
    public String contentDisposition;
    public String contentEncoding;
    public String contentLanguage;
    public String contentMD5;
    public String contentType;
    public CopyState copyState;
    public Date createdTime;
    public Date deletedTime;
    public String etag;
    public Boolean isBlobTierInferredTier;
    public boolean isIncrementalCopy;
    public Date lastModified;
    public LeaseDuration leaseDuration;
    public LeaseState leaseState;
    public LeaseStatus leaseStatus = LeaseStatus.UNLOCKED;
    public long length;
    public Long pageBlobSequenceNumber;
    public PremiumPageBlobTier premiumPageBlobTier;
    public RehydrationStatus rehydrationStatus;
    public Integer remainingRetentionDays;
    public boolean serverEncrypted;
    public StandardBlobTier standardBlobTier;
    public Date tierChangeTime;

    public BlobProperties() {
    }

    public Integer getAppendBlobCommittedBlockCount() {
        return this.appendBlobCommittedBlockCount;
    }

    public BlobType getBlobType() {
        return this.blobType;
    }

    public String getCacheControl() {
        return this.cacheControl;
    }

    public String getContentDisposition() {
        return this.contentDisposition;
    }

    public String getContentEncoding() {
        return this.contentEncoding;
    }

    public String getContentLanguage() {
        return this.contentLanguage;
    }

    public String getContentMD5() {
        return this.contentMD5;
    }

    public String getContentType() {
        return this.contentType;
    }

    public CopyState getCopyState() {
        return this.copyState;
    }

    public Date getCreatedTime() {
        return this.createdTime;
    }

    public Date getDeletedTime() {
        return this.deletedTime;
    }

    public String getEtag() {
        return this.etag;
    }

    public Date getLastModified() {
        return this.lastModified;
    }

    public LeaseDuration getLeaseDuration() {
        return this.leaseDuration;
    }

    public LeaseState getLeaseState() {
        return this.leaseState;
    }

    public LeaseStatus getLeaseStatus() {
        return this.leaseStatus;
    }

    public long getLength() {
        return this.length;
    }

    public Long getPageBlobSequenceNumber() {
        return this.pageBlobSequenceNumber;
    }

    public PremiumPageBlobTier getPremiumPageBlobTier() {
        return this.premiumPageBlobTier;
    }

    public RehydrationStatus getRehydrationStatus() {
        return this.rehydrationStatus;
    }

    public Integer getRemainingRetentionDays() {
        return this.remainingRetentionDays;
    }

    public StandardBlobTier getStandardBlobTier() {
        return this.standardBlobTier;
    }

    public Date getTierChangeTime() {
        return this.tierChangeTime;
    }

    public Boolean isBlobTierInferred() {
        return this.isBlobTierInferredTier;
    }

    public boolean isIncrementalCopy() {
        return this.isIncrementalCopy;
    }

    public boolean isServerEncrypted() {
        return this.serverEncrypted;
    }

    public void setAppendBlobCommittedBlockCount(Integer num) {
        this.appendBlobCommittedBlockCount = num;
    }

    public void setBlobTierInferred(Boolean bool) {
        this.isBlobTierInferredTier = bool;
    }

    public void setBlobType(BlobType blobType2) {
        this.blobType = blobType2;
    }

    public void setCacheControl(String str) {
        this.cacheControl = str;
    }

    public void setContentDisposition(String str) {
        this.contentDisposition = str;
    }

    public void setContentEncoding(String str) {
        this.contentEncoding = str;
    }

    public void setContentLanguage(String str) {
        this.contentLanguage = str;
    }

    public void setContentMD5(String str) {
        this.contentMD5 = str;
    }

    public void setContentType(String str) {
        this.contentType = str;
    }

    public void setCopyState(CopyState copyState2) {
        this.copyState = copyState2;
    }

    public void setCreatedTime(Date date) {
        this.createdTime = date;
    }

    public void setDeletedTime(Date date) {
        this.deletedTime = date;
    }

    public void setEtag(String str) {
        this.etag = str;
    }

    public void setIncrementalCopy(boolean z) {
        this.isIncrementalCopy = z;
    }

    public void setLastModified(Date date) {
        this.lastModified = date;
    }

    public void setLeaseDuration(LeaseDuration leaseDuration2) {
        this.leaseDuration = leaseDuration2;
    }

    public void setLeaseState(LeaseState leaseState2) {
        this.leaseState = leaseState2;
    }

    public void setLeaseStatus(LeaseStatus leaseStatus2) {
        this.leaseStatus = leaseStatus2;
    }

    public void setLength(long j2) {
        this.length = j2;
    }

    public void setPageBlobSequenceNumber(Long l2) {
        this.pageBlobSequenceNumber = l2;
    }

    public void setPremiumPageBlobTier(PremiumPageBlobTier premiumPageBlobTier2) {
        this.premiumPageBlobTier = premiumPageBlobTier2;
    }

    public void setRehydrationStatus(RehydrationStatus rehydrationStatus2) {
        this.rehydrationStatus = rehydrationStatus2;
    }

    public void setRemainingRetentionDays(Integer num) {
        this.remainingRetentionDays = num;
    }

    public void setServerEncrypted(boolean z) {
        this.serverEncrypted = z;
    }

    public void setStandardBlobTier(StandardBlobTier standardBlobTier2) {
        this.standardBlobTier = standardBlobTier2;
    }

    public void setTierChangeTime(Date date) {
        this.tierChangeTime = date;
    }

    public BlobProperties(BlobProperties blobProperties) {
        this.appendBlobCommittedBlockCount = blobProperties.appendBlobCommittedBlockCount;
        this.blobType = blobProperties.blobType;
        this.cacheControl = blobProperties.cacheControl;
        this.contentDisposition = blobProperties.contentDisposition;
        this.contentEncoding = blobProperties.contentEncoding;
        this.contentLanguage = blobProperties.contentLanguage;
        this.contentMD5 = blobProperties.contentMD5;
        this.contentType = blobProperties.contentType;
        this.copyState = blobProperties.copyState;
        this.createdTime = blobProperties.createdTime;
        this.etag = blobProperties.etag;
        this.isBlobTierInferredTier = blobProperties.isBlobTierInferredTier;
        this.isIncrementalCopy = blobProperties.isIncrementalCopy;
        this.leaseStatus = blobProperties.leaseStatus;
        this.leaseState = blobProperties.leaseState;
        this.leaseDuration = blobProperties.leaseDuration;
        this.length = blobProperties.length;
        this.lastModified = blobProperties.lastModified;
        this.pageBlobSequenceNumber = blobProperties.pageBlobSequenceNumber;
        this.premiumPageBlobTier = blobProperties.premiumPageBlobTier;
        this.serverEncrypted = blobProperties.serverEncrypted;
        this.standardBlobTier = blobProperties.standardBlobTier;
        this.rehydrationStatus = blobProperties.rehydrationStatus;
        this.tierChangeTime = blobProperties.tierChangeTime;
        this.deletedTime = blobProperties.deletedTime;
        this.remainingRetentionDays = blobProperties.remainingRetentionDays;
    }

    public BlobProperties(BlobType blobType2) {
        this.blobType = blobType2;
    }
}
