package com.microsoft.azure.storage;

public final class ResponseReceivedEvent extends BaseEvent {
    public ResponseReceivedEvent(OperationContext operationContext, Object obj, RequestResult requestResult) {
        super(operationContext, obj, requestResult);
    }
}
