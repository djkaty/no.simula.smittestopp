package com.microsoft.azure.storage;

public final class RetryLinearRetry extends RetryPolicy implements RetryPolicyFactory {
    public RetryLinearRetry() {
        this(30000, 3);
    }

    public RetryPolicy createInstance(OperationContext operationContext) {
        return new RetryLinearRetry(this.deltaBackoffIntervalInMs, this.maximumAttempts);
    }

    public RetryInfo evaluate(RetryContext retryContext, OperationContext operationContext) {
        boolean evaluateLastAttemptAndSecondaryNotFound = evaluateLastAttemptAndSecondaryNotFound(retryContext);
        if (retryContext.getCurrentRetryCount() < this.maximumAttempts) {
            int statusCode = retryContext.getLastRequestResult().getStatusCode();
            if (!((!evaluateLastAttemptAndSecondaryNotFound && statusCode >= 300 && statusCode < 500 && statusCode != 408) || statusCode == 501 || statusCode == 505)) {
                return evaluateRetryInfo(retryContext, evaluateLastAttemptAndSecondaryNotFound, (long) Math.max(Math.min(this.deltaBackoffIntervalInMs, RetryPolicy.DEFAULT_MAX_BACKOFF), 3000));
            }
        }
        return null;
    }

    public RetryLinearRetry(int i2, int i3) {
        super(i2, i3);
    }
}
