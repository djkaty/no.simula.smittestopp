package com.microsoft.identity.common.internal.telemetry.events;

import com.microsoft.identity.common.internal.telemetry.TelemetryEventStrings;

public class HttpEndEvent extends BaseEvent {
    public HttpEndEvent() {
        names(TelemetryEventStrings.Event.HTTP_END_EVENT);
        types(TelemetryEventStrings.EventType.HTTP_EVENT);
    }

    public HttpEndEvent putStatusCode(int i2) {
        put(TelemetryEventStrings.Key.HTTP_RESPONSE_CODE, String.valueOf(i2));
        return this;
    }
}
