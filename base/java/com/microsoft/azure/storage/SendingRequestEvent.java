package com.microsoft.azure.storage;

public final class SendingRequestEvent extends BaseEvent {
    public SendingRequestEvent(OperationContext operationContext, Object obj, RequestResult requestResult) {
        super(operationContext, obj, requestResult);
    }
}
