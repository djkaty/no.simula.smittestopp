package com.microsoft.identity.common.internal.telemetry.events;

import com.microsoft.identity.common.internal.logging.DiagnosticContext;
import com.microsoft.identity.common.internal.telemetry.Properties;
import com.microsoft.identity.common.internal.telemetry.TelemetryEventStrings;

public class BaseEvent extends Properties {
    public BaseEvent() {
        occurs(Long.valueOf(System.currentTimeMillis()));
        correlationId((String) DiagnosticContext.getRequestContext().get("correlation_id"));
    }

    public BaseEvent correlationId(String str) {
        put("Microsoft.MSAL.correlation_id", str);
        return this;
    }

    public BaseEvent names(String str) {
        put(TelemetryEventStrings.Key.EVENT_NAME, str);
        return this;
    }

    public BaseEvent occurs(Long l2) {
        if (l2 == null) {
            put(TelemetryEventStrings.Key.OCCUR_TIME, String.valueOf(System.currentTimeMillis()));
        } else {
            put(TelemetryEventStrings.Key.OCCUR_TIME, l2.toString());
        }
        return this;
    }

    public BaseEvent types(String str) {
        put(TelemetryEventStrings.Key.EVENT_TYPE, str);
        return this;
    }
}
