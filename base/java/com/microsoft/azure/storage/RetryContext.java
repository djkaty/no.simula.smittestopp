package com.microsoft.azure.storage;

import com.microsoft.azure.storage.core.Utility;

public final class RetryContext {
    public final int currentRetryCount;
    public final RequestResult lastRequestResult;
    public final LocationMode locationMode;
    public final StorageLocation nextLocation;

    public RetryContext(int i2, RequestResult requestResult, StorageLocation storageLocation, LocationMode locationMode2) {
        this.currentRetryCount = i2;
        this.lastRequestResult = requestResult;
        this.nextLocation = storageLocation;
        this.locationMode = locationMode2;
    }

    public int getCurrentRetryCount() {
        return this.currentRetryCount;
    }

    public RequestResult getLastRequestResult() {
        return this.lastRequestResult;
    }

    public LocationMode getLocationMode() {
        return this.locationMode;
    }

    public StorageLocation getNextLocation() {
        return this.nextLocation;
    }

    public String toString() {
        return String.format(Utility.LOCALE_US, "(%s,%s)", new Object[]{Integer.valueOf(this.currentRetryCount), this.locationMode});
    }
}
