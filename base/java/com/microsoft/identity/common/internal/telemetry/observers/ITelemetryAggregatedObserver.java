package com.microsoft.identity.common.internal.telemetry.observers;

import java.util.Map;

public interface ITelemetryAggregatedObserver extends ITelemetryObserver<Map<String, String>> {
    void onReceived(Map<String, String> map);
}
