package com.microsoft.azure.storage;

public final class RequestCompletedEvent extends BaseEvent {
    public RequestCompletedEvent(OperationContext operationContext, Object obj, RequestResult requestResult) {
        super(operationContext, obj, requestResult);
    }
}
