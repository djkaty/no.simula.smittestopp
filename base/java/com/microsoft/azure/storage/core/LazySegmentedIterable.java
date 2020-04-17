package com.microsoft.azure.storage.core;

import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.ResultSegment;
import com.microsoft.azure.storage.RetryPolicyFactory;
import java.util.Iterator;

public final class LazySegmentedIterable<CLIENT_TYPE, PARENT_TYPE, ENTITY_TYPE> implements Iterable<ENTITY_TYPE> {
    public final CLIENT_TYPE client;
    public final OperationContext opContext;
    public final PARENT_TYPE parentObject;
    public final RetryPolicyFactory policyFactory;
    public final StorageRequest<CLIENT_TYPE, PARENT_TYPE, ResultSegment<ENTITY_TYPE>> segmentGenerator;

    public LazySegmentedIterable(StorageRequest<CLIENT_TYPE, PARENT_TYPE, ResultSegment<ENTITY_TYPE>> storageRequest, CLIENT_TYPE client_type, PARENT_TYPE parent_type, RetryPolicyFactory retryPolicyFactory, OperationContext operationContext) {
        this.segmentGenerator = storageRequest;
        this.parentObject = parent_type;
        this.opContext = operationContext;
        this.policyFactory = retryPolicyFactory;
        this.client = client_type;
    }

    public Iterator<ENTITY_TYPE> iterator() {
        return new LazySegmentedIterator(this.segmentGenerator, this.client, this.parentObject, this.policyFactory, this.opContext);
    }
}
