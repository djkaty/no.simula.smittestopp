package com.microsoft.azure.storage;

import java.util.ArrayList;

public class ResultSegment<T> {
    public final ResultContinuation continuationToken;
    public final int length;
    public final Integer pageSize;
    public final ArrayList<T> results;

    public ResultSegment(ArrayList<T> arrayList, Integer num, ResultContinuation resultContinuation) {
        this.results = arrayList;
        this.length = arrayList.size();
        this.pageSize = num;
        this.continuationToken = resultContinuation;
    }

    public ResultContinuation getContinuationToken() {
        return this.continuationToken;
    }

    public boolean getHasMoreResults() {
        return this.continuationToken != null;
    }

    public boolean getIsPageComplete() {
        return Integer.valueOf(this.length).equals(this.pageSize);
    }

    public int getLength() {
        return this.length;
    }

    public Integer getPageSize() {
        return this.pageSize;
    }

    public int getRemainingPageResults() {
        return this.pageSize.intValue() - this.length;
    }

    public ArrayList<T> getResults() {
        return this.results;
    }
}
