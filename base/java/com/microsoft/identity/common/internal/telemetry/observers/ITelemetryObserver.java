package com.microsoft.identity.common.internal.telemetry.observers;

public interface ITelemetryObserver<T> {
    void onReceived(T t);
}
