package com.microsoft.identity.common.internal.controllers;

public interface TaskCompletedCallbackWithError<T, U> extends TaskCompletedCallback<T> {
    void onError(U u);
}
