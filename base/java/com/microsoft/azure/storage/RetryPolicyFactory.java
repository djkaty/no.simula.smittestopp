package com.microsoft.azure.storage;

public interface RetryPolicyFactory {
    RetryPolicy createInstance(OperationContext operationContext);
}
