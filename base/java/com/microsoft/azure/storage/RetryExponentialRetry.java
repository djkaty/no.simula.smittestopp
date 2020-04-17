package com.microsoft.azure.storage;

import java.util.Random;

public final class RetryExponentialRetry extends RetryPolicy implements RetryPolicyFactory {
    public final Random randRef;
    public int resolvedMaxBackoff;
    public int resolvedMinBackoff;

    public RetryExponentialRetry() {
        this(30000, 3);
    }

    public RetryPolicy createInstance(OperationContext operationContext) {
        return new RetryExponentialRetry(this.resolvedMinBackoff, this.deltaBackoffIntervalInMs, this.resolvedMaxBackoff, this.maximumAttempts);
    }

    public RetryInfo evaluate(RetryContext retryContext, OperationContext operationContext) {
        boolean evaluateLastAttemptAndSecondaryNotFound = evaluateLastAttemptAndSecondaryNotFound(retryContext);
        if (retryContext.getCurrentRetryCount() < this.maximumAttempts) {
            int statusCode = retryContext.getLastRequestResult().getStatusCode();
            if (!((!evaluateLastAttemptAndSecondaryNotFound && statusCode >= 300 && statusCode < 500 && statusCode != 408) || statusCode == 501 || statusCode == 505)) {
                int i2 = this.deltaBackoffIntervalInMs;
                return evaluateRetryInfo(retryContext, evaluateLastAttemptAndSecondaryNotFound, (long) ((int) Math.round(Math.min(((double) this.resolvedMinBackoff) + ((Math.pow(2.0d, (double) retryContext.getCurrentRetryCount()) - 1.0d) * ((double) (this.randRef.nextInt(((int) (((double) i2) * 1.2d)) - ((int) (((double) i2) * 0.8d))) + ((int) (((double) i2) * 0.8d))))), (double) this.resolvedMaxBackoff))));
            }
        }
        return null;
    }

    public RetryExponentialRetry(int i2, int i3) {
        super(i2, i3);
        this.randRef = new Random();
        this.resolvedMaxBackoff = RetryPolicy.DEFAULT_MAX_BACKOFF;
        this.resolvedMinBackoff = 3000;
    }

    public RetryExponentialRetry(int i2, int i3, int i4, int i5) {
        super(i3, i5);
        this.randRef = new Random();
        this.resolvedMaxBackoff = RetryPolicy.DEFAULT_MAX_BACKOFF;
        this.resolvedMinBackoff = 3000;
        this.resolvedMinBackoff = i2;
        this.resolvedMaxBackoff = i4;
    }
}
