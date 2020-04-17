package com.microsoft.azure.storage.queue;

public enum QueueListingDetails {
    ALL(1),
    METADATA(1),
    NONE(0);
    
    public int value;

    /* access modifiers changed from: public */
    QueueListingDetails(int i2) {
        this.value = i2;
    }
}
