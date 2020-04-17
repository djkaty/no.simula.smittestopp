package com.microsoft.azure.storage;

public class DeleteRetentionPolicy {
    public boolean enabled = false;
    public Integer retentionIntervalInDays;

    public boolean getEnabled() {
        return this.enabled;
    }

    public Integer getRetentionIntervalInDays() {
        return this.retentionIntervalInDays;
    }

    public void setEnabled(boolean z) {
        this.enabled = z;
    }

    public void setRetentionIntervalInDays(Integer num) {
        this.retentionIntervalInDays = num;
    }
}
