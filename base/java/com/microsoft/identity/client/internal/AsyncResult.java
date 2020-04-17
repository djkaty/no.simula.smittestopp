package com.microsoft.identity.client.internal;

import com.microsoft.identity.client.exception.MsalException;

public class AsyncResult<T> {
    public MsalException mMsalException;
    public T mResult;
    public boolean mSuccess = false;

    public AsyncResult(T t, MsalException msalException) {
        this.mResult = t;
        this.mMsalException = msalException;
        if (t != null) {
            this.mSuccess = true;
        }
    }

    public MsalException getException() {
        return this.mMsalException;
    }

    public T getResult() {
        return this.mResult;
    }

    public boolean getSuccess() {
        return this.mSuccess;
    }
}
