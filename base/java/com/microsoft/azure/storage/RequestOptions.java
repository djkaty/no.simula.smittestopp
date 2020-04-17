package com.microsoft.azure.storage;

import com.microsoft.azure.storage.core.Utility;
import java.util.Date;

public abstract class RequestOptions {
    public LocationMode locationMode;
    public Integer maximumExecutionTimeInMs;
    public Long operationExpiryTime;
    public Boolean requireEncryption;
    public RetryPolicyFactory retryPolicyFactory;
    public Integer timeoutIntervalInMs;

    public RequestOptions() {
    }

    public static void applyBaseDefaultsInternal(RequestOptions requestOptions) {
        Utility.assertNotNull("modifiedOptions", requestOptions);
        if (requestOptions.getRetryPolicyFactory() == null) {
            requestOptions.setRetryPolicyFactory(new RetryExponentialRetry());
        }
        if (requestOptions.getLocationMode() == null) {
            requestOptions.setLocationMode(LocationMode.PRIMARY_ONLY);
        }
        if (requestOptions.requireEncryption() == null) {
            requestOptions.setRequireEncryption(false);
        }
    }

    public static void populateRequestOptions(RequestOptions requestOptions, RequestOptions requestOptions2, boolean z) {
        if (requestOptions.getRetryPolicyFactory() == null) {
            requestOptions.setRetryPolicyFactory(requestOptions2.getRetryPolicyFactory());
        }
        if (requestOptions.getLocationMode() == null) {
            requestOptions.setLocationMode(requestOptions2.getLocationMode());
        }
        if (requestOptions.getTimeoutIntervalInMs() == null) {
            requestOptions.setTimeoutIntervalInMs(requestOptions2.getTimeoutIntervalInMs());
        }
        if (requestOptions.requireEncryption() == null) {
            requestOptions.setRequireEncryption(requestOptions2.requireEncryption());
        }
        if (requestOptions.getMaximumExecutionTimeInMs() == null) {
            requestOptions.setMaximumExecutionTimeInMs(requestOptions2.getMaximumExecutionTimeInMs());
        }
        if (requestOptions.getMaximumExecutionTimeInMs() != null && requestOptions.getOperationExpiryTimeInMs() == null && z) {
            requestOptions.setOperationExpiryTimeInMs(Long.valueOf(new Date().getTime() + ((long) requestOptions.getMaximumExecutionTimeInMs().intValue())));
        }
    }

    private void setOperationExpiryTimeInMs(Long l2) {
        this.operationExpiryTime = l2;
    }

    public final LocationMode getLocationMode() {
        return this.locationMode;
    }

    public Integer getMaximumExecutionTimeInMs() {
        return this.maximumExecutionTimeInMs;
    }

    public Long getOperationExpiryTimeInMs() {
        return this.operationExpiryTime;
    }

    public final RetryPolicyFactory getRetryPolicyFactory() {
        return this.retryPolicyFactory;
    }

    public final Integer getTimeoutIntervalInMs() {
        return this.timeoutIntervalInMs;
    }

    public Boolean requireEncryption() {
        return this.requireEncryption;
    }

    public void setLocationMode(LocationMode locationMode2) {
        this.locationMode = locationMode2;
    }

    public void setMaximumExecutionTimeInMs(Integer num) {
        this.maximumExecutionTimeInMs = num;
    }

    public void setRequireEncryption(Boolean bool) {
        this.requireEncryption = bool;
    }

    public final void setRetryPolicyFactory(RetryPolicyFactory retryPolicyFactory2) {
        this.retryPolicyFactory = retryPolicyFactory2;
    }

    public final void setTimeoutIntervalInMs(Integer num) {
        this.timeoutIntervalInMs = num;
    }

    public RequestOptions(RequestOptions requestOptions) {
        if (requestOptions != null) {
            setRetryPolicyFactory(requestOptions.getRetryPolicyFactory());
            setTimeoutIntervalInMs(requestOptions.getTimeoutIntervalInMs());
            setLocationMode(requestOptions.getLocationMode());
            setMaximumExecutionTimeInMs(requestOptions.getMaximumExecutionTimeInMs());
            setOperationExpiryTimeInMs(requestOptions.getOperationExpiryTimeInMs());
            setRequireEncryption(requestOptions.requireEncryption());
        }
    }
}
