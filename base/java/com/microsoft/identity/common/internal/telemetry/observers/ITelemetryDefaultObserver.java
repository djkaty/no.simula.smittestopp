package com.microsoft.identity.common.internal.telemetry.observers;

import java.util.List;
import java.util.Map;

public interface ITelemetryDefaultObserver extends ITelemetryObserver<List<Map<String, String>>> {
    void onReceived(List<Map<String, String>> list);
}
