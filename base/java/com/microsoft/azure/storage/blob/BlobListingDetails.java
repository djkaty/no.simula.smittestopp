package com.microsoft.azure.storage.blob;

public enum BlobListingDetails {
    SNAPSHOTS(1),
    METADATA(2),
    UNCOMMITTED_BLOBS(4),
    COPY(8),
    DELETED(16);
    
    public int value;

    /* access modifiers changed from: public */
    BlobListingDetails(int i2) {
        this.value = i2;
    }
}
