package com.microsoft.identity.common.internal.telemetry.events;

import com.microsoft.identity.common.internal.telemetry.TelemetryEventStrings;

public class UiEndEvent extends BaseEvent {
    public UiEndEvent() {
        names(TelemetryEventStrings.Event.UI_END_EVENT);
        types(TelemetryEventStrings.EventType.UI_EVENT);
    }

    public UiEndEvent isUiCancelled() {
        put(TelemetryEventStrings.Key.UI_CANCELLED, Boolean.TRUE.toString());
        return this;
    }

    public UiEndEvent isUiComplete() {
        put(TelemetryEventStrings.Key.UI_COMPLETE, Boolean.TRUE.toString());
        return this;
    }

    public UiEndEvent isUserCancelled() {
        put(TelemetryEventStrings.Key.USER_CANCEL, Boolean.TRUE.toString());
        return this;
    }
}
