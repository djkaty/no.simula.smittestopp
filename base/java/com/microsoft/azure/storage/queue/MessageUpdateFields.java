package com.microsoft.azure.storage.queue;

public enum MessageUpdateFields {
    VISIBILITY(1),
    CONTENT(2);
    
    public int value;

    /* access modifiers changed from: public */
    MessageUpdateFields(int i2) {
        this.value = i2;
    }
}
