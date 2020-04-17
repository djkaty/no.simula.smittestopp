package com.microsoft.identity.common.internal.controllers;

public interface TaskCompletedCallback<T> {
    void onTaskCompleted(T t);
}
