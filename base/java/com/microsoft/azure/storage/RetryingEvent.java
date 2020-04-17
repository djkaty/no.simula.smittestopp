package com.microsoft.azure.storage;

public final class RetryingEvent extends BaseEvent {
    public final RetryContext retryContext;

    public RetryingEvent(OperationContext operationContext, Object obj, RequestResult requestResult, RetryContext retryContext2) {
        super(operationContext, obj, requestResult);
        this.retryContext = retryContext2;
    }

    public RetryContext getRetryContext() {
        return this.retryContext;
    }
}
