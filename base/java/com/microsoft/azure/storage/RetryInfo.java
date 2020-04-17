package com.microsoft.azure.storage;

import com.microsoft.azure.storage.core.Utility;

public class RetryInfo {
    public int retryInterval;
    public StorageLocation targetLocation;
    public LocationMode updatedLocationMode;

    public RetryInfo() {
        this.retryInterval = 3000;
        this.targetLocation = StorageLocation.PRIMARY;
        this.updatedLocationMode = LocationMode.PRIMARY_ONLY;
    }

    public int getRetryInterval() {
        return this.retryInterval;
    }

    public final StorageLocation getTargetLocation() {
        return this.targetLocation;
    }

    public LocationMode getUpdatedLocationMode() {
        return this.updatedLocationMode;
    }

    public void setRetryInterval(int i2) {
        if (i2 <= 0) {
            i2 = 0;
        }
        this.retryInterval = i2;
    }

    public void setTargetLocation(StorageLocation storageLocation) {
        this.targetLocation = storageLocation;
    }

    public void setUpdatedLocationMode(LocationMode locationMode) {
        this.updatedLocationMode = locationMode;
    }

    public String toString() {
        return String.format(Utility.LOCALE_US, "(%s,%s)", new Object[]{this.targetLocation, Integer.valueOf(this.retryInterval)});
    }

    public RetryInfo(RetryContext retryContext) {
        this.retryInterval = 3000;
        Utility.assertNotNull("retryContext", retryContext);
        this.targetLocation = retryContext.getNextLocation();
        this.updatedLocationMode = retryContext.getLocationMode();
    }
}
