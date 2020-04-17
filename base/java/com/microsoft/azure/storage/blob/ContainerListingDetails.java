package com.microsoft.azure.storage.blob;

public enum ContainerListingDetails {
    ALL(1),
    METADATA(1),
    NONE(0);
    
    public int value;

    /* access modifiers changed from: public */
    ContainerListingDetails(int i2) {
        this.value = i2;
    }
}
