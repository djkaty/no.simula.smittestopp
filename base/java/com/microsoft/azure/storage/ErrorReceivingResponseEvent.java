package com.microsoft.azure.storage;

public final class ErrorReceivingResponseEvent extends BaseEvent {
    public ErrorReceivingResponseEvent(OperationContext operationContext, Object obj, RequestResult requestResult) {
        super(operationContext, obj, requestResult);
    }
}
