package com.microsoft.identity.common.internal.eststelemetry;

public interface IRequestTelemetryCache {
    void clearAll();

    RequestTelemetry getRequestTelemetryFromCache();

    void saveRequestTelemetryToCache(RequestTelemetry requestTelemetry);
}
