package com.microsoft.identity.common.internal.telemetry.adapter;

import com.microsoft.identity.common.internal.telemetry.observers.ITelemetryDefaultObserver;
import java.util.List;
import java.util.Map;

public final class TelemetryDefaultAdapter implements ITelemetryAdapter<List<Map<String, String>>> {
    public ITelemetryDefaultObserver mObserver;

    public TelemetryDefaultAdapter(ITelemetryDefaultObserver iTelemetryDefaultObserver) {
        this.mObserver = iTelemetryDefaultObserver;
    }

    public ITelemetryDefaultObserver getObserver() {
        return this.mObserver;
    }

    public void process(List<Map<String, String>> list) {
        ITelemetryDefaultObserver iTelemetryDefaultObserver = this.mObserver;
        if (iTelemetryDefaultObserver != null) {
            iTelemetryDefaultObserver.onReceived(list);
        }
    }
}
