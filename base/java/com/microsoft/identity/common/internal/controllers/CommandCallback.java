package com.microsoft.identity.common.internal.controllers;

public interface CommandCallback<T, U> extends TaskCompletedCallbackWithError<T, U> {
    void onCancel();
}
