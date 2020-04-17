package com.microsoft.azure.storage.blob;

import java.util.Date;

public final class BlobContainerProperties {
    public String etag;
    public Boolean hasImmutabilityPolicy;
    public Boolean hasLegalHold;
    public Date lastModified;
    public LeaseDuration leaseDuration;
    public LeaseState leaseState;
    public LeaseStatus leaseStatus;
    public BlobContainerPublicAccessType publicAccess;

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

    public BlobContainerPublicAccessType getPublicAccess() {
        return this.publicAccess;
    }

    public Boolean hasImmutabilityPolicy() {
        return this.hasImmutabilityPolicy;
    }

    public Boolean hasLegalHold() {
        return this.hasLegalHold;
    }

    public void setEtag(String str) {
        this.etag = str;
    }

    public void setHasImmutabilityPolicy(Boolean bool) {
        this.hasImmutabilityPolicy = bool;
    }

    public void setHasLegalHold(Boolean bool) {
        this.hasLegalHold = bool;
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

    public void setPublicAccess(BlobContainerPublicAccessType blobContainerPublicAccessType) {
        this.publicAccess = blobContainerPublicAccessType;
    }
}
