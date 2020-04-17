package com.microsoft.azure.storage.file;

public enum ShareListingDetails {
    NONE(0),
    METADATA(1),
    SNAPSHOTS(2);
    
    public int value;

    /* access modifiers changed from: public */
    ShareListingDetails(int i2) {
        this.value = i2;
    }
}
