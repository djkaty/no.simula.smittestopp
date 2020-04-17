package com.microsoft.azure.storage;

public abstract class BaseEvent {
    public final Object connectionObject;
    public final OperationContext opContext;
    public final RequestResult requestResult;

    public BaseEvent(OperationContext operationContext, Object obj, RequestResult requestResult2) {
        this.opContext = operationContext;
        this.connectionObject = obj;
        this.requestResult = requestResult2;
    }

    public Object getConnectionObject() {
        return this.connectionObject;
    }

    public OperationContext getOpContext() {
        return this.opContext;
    }

    public RequestResult getRequestResult() {
        return this.requestResult;
    }
}
