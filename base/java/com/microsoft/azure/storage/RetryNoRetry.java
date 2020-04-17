package com.microsoft.azure.storage;

public final class RetryNoRetry extends RetryPolicy implements RetryPolicyFactory {
    public static RetryNoRetry instance = new RetryNoRetry();

    public static RetryNoRetry getInstance() {
        return instance;
    }

    public RetryPolicy createInstance(OperationContext operationContext) {
        return getInstance();
    }

    public RetryInfo evaluate(RetryContext retryContext, OperationContext operationContext) {
        return null;
    }
}
