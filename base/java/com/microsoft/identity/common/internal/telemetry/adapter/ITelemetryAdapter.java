package com.microsoft.identity.common.internal.telemetry.adapter;

public interface ITelemetryAdapter<T> {
    void process(T t);
}
