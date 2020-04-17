package com.microsoft.identity.common.internal.telemetry.events;

import com.microsoft.identity.common.internal.telemetry.TelemetryEventStrings;

public class CacheStartEvent extends BaseEvent {
    public CacheStartEvent() {
        names(TelemetryEventStrings.Event.CACHE_START_EVENT);
        types(TelemetryEventStrings.EventType.CACHE_EVENT);
    }

    public CacheStartEvent isAt(boolean z) {
        put(TelemetryEventStrings.Key.IS_AT, String.valueOf(z));
        return this;
    }

    public CacheStartEvent isFrt(boolean z) {
        put(TelemetryEventStrings.Key.IS_FRT, String.valueOf(z));
        return this;
    }

    public CacheStartEvent isMrrt(boolean z) {
        put(TelemetryEventStrings.Key.IS_MRRT, String.valueOf(z));
        return this;
    }

    public CacheStartEvent isRt(boolean z) {
        put(TelemetryEventStrings.Key.IS_RT, String.valueOf(z));
        return this;
    }

    public CacheStartEvent putTokenType(String str) {
        put(TelemetryEventStrings.Key.TOKEN_TYPE, str);
        return this;
    }

    public CacheStartEvent putWipeApp(boolean z) {
        put(TelemetryEventStrings.Key.WIPE_APP, String.valueOf(z));
        return this;
    }
}
