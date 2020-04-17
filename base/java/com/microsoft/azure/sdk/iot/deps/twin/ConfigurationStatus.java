package com.microsoft.azure.sdk.iot.deps.twin;

public enum ConfigurationStatus {
    TARGETED(1),
    APPLIED(2);
    
    public int numVal;

    /* access modifiers changed from: public */
    ConfigurationStatus(int i2) {
        this.numVal = i2;
    }

    public int getNumVal() {
        return this.numVal;
    }
}
