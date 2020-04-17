package com.microsoft.azure.storage.core;

import com.microsoft.azure.storage.DoesServiceRequest;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.ResultSegment;
import com.microsoft.azure.storage.RetryPolicyFactory;
import com.microsoft.azure.storage.StorageException;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class LazySegmentedIterator<CLIENT_TYPE, PARENT_TYPE, ENTITY_TYPE> implements Iterator<ENTITY_TYPE> {
    public final CLIENT_TYPE client;
    public ResultSegment<ENTITY_TYPE> currentSegment;
    public Iterator<ENTITY_TYPE> currentSegmentIterator;
    public final OperationContext opContext;
    public final PARENT_TYPE parentObject;
    public final RetryPolicyFactory policyFactory;
    public final StorageRequest<CLIENT_TYPE, PARENT_TYPE, ResultSegment<ENTITY_TYPE>> segmentGenerator;

    public LazySegmentedIterator(StorageRequest<CLIENT_TYPE, PARENT_TYPE, ResultSegment<ENTITY_TYPE>> storageRequest, CLIENT_TYPE client_type, PARENT_TYPE parent_type, RetryPolicyFactory retryPolicyFactory, OperationContext operationContext) {
        this.segmentGenerator = storageRequest;
        this.parentObject = parent_type;
        this.opContext = operationContext;
        this.policyFactory = retryPolicyFactory;
        this.client = client_type;
    }

    @DoesServiceRequest
    public boolean hasNext() {
        ResultSegment<ENTITY_TYPE> resultSegment;
        while (true) {
            if (this.currentSegment == null || (!this.currentSegmentIterator.hasNext() && (resultSegment = this.currentSegment) != null && resultSegment.getHasMoreResults())) {
                try {
                    ResultSegment<ENTITY_TYPE> resultSegment2 = (ResultSegment) ExecutionEngine.executeWithRetry(this.client, this.parentObject, this.segmentGenerator, this.policyFactory, this.opContext);
                    this.currentSegment = resultSegment2;
                    Iterator<ENTITY_TYPE> it = resultSegment2.getResults().iterator();
                    this.currentSegmentIterator = it;
                    if (!it.hasNext() && !this.currentSegment.getHasMoreResults()) {
                        return false;
                    }
                } catch (StorageException e2) {
                    NoSuchElementException noSuchElementException = new NoSuchElementException(SR.ENUMERATION_ERROR);
                    noSuchElementException.initCause(e2);
                    throw noSuchElementException;
                }
            }
        }
        return this.currentSegmentIterator.hasNext();
    }

    public ENTITY_TYPE next() {
        if (hasNext()) {
            return this.currentSegmentIterator.next();
        }
        throw new NoSuchElementException();
    }

    public void remove() {
        throw new UnsupportedOperationException();
    }
}
