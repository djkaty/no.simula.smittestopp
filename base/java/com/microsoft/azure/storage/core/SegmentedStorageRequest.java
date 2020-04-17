package com.microsoft.azure.storage.core;

import com.microsoft.azure.storage.ResultContinuation;

public class SegmentedStorageRequest {
    public ResultContinuation token = null;

    public final ResultContinuation getToken() {
        return this.token;
    }

    public final void setToken(ResultContinuation resultContinuation) {
        this.token = resultContinuation;
    }
}
