package com.microsoft.azure.storage;

import com.microsoft.azure.storage.core.Utility;
import java.util.Date;

public abstract class RetryPolicy implements RetryPolicyFactory {
    public static final int DEFAULT_CLIENT_BACKOFF = 30000;
    public static final int DEFAULT_CLIENT_RETRY_COUNT = 3;
    public static final int DEFAULT_MAX_BACKOFF = 90000;
    public static final int DEFAULT_MIN_BACKOFF = 3000;
    public int deltaBackoffIntervalInMs;
    public Date lastPrimaryAttempt = null;
    public Date lastSecondaryAttempt = null;
    public int maximumAttempts;

    public RetryPolicy() {
    }

    public abstract RetryInfo evaluate(RetryContext retryContext, OperationContext operationContext);

    public boolean evaluateLastAttemptAndSecondaryNotFound(RetryContext retryContext) {
        Utility.assertNotNull("retryContext", retryContext);
        if (retryContext.getLastRequestResult().getTargetLocation() == StorageLocation.PRIMARY) {
            this.lastPrimaryAttempt = retryContext.getLastRequestResult().getStopDate();
        } else {
            this.lastSecondaryAttempt = retryContext.getLastRequestResult().getStopDate();
        }
        return retryContext.getLastRequestResult().getTargetLocation() == StorageLocation.SECONDARY && retryContext.getLastRequestResult().getStatusCode() == 404;
    }

    public RetryInfo evaluateRetryInfo(RetryContext retryContext, boolean z, long j2) {
        RetryInfo retryInfo = new RetryInfo(retryContext);
        if (z && retryContext.getLocationMode() != LocationMode.SECONDARY_ONLY) {
            retryInfo.setUpdatedLocationMode(LocationMode.PRIMARY_ONLY);
            retryInfo.setTargetLocation(StorageLocation.PRIMARY);
        }
        Date date = retryInfo.getTargetLocation() == StorageLocation.PRIMARY ? this.lastPrimaryAttempt : this.lastSecondaryAttempt;
        if (date != null) {
            long j3 = 0;
            if (new Date().getTime() - date.getTime() > 0) {
                j3 = new Date().getTime() - date.getTime();
            }
            retryInfo.setRetryInterval((int) (j2 - j3));
        } else {
            retryInfo.setRetryInterval(0);
        }
        return retryInfo;
    }

    public RetryPolicy(int i2, int i3) {
        this.deltaBackoffIntervalInMs = i2;
        this.maximumAttempts = i3;
    }
}
