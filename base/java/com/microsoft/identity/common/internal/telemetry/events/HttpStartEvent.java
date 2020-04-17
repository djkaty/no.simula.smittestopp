package com.microsoft.identity.common.internal.telemetry.events;

import com.microsoft.identity.common.internal.telemetry.TelemetryEventStrings;
import java.net.URL;

public class HttpStartEvent extends BaseEvent {
    public HttpStartEvent() {
        names(TelemetryEventStrings.Event.HTTP_START_EVENT);
        types(TelemetryEventStrings.EventType.HTTP_EVENT);
    }

    public HttpStartEvent putErrorDomain(String str) {
        put(TelemetryEventStrings.Key.HTTP_ERROR_DOMAIN, str);
        return this;
    }

    public HttpStartEvent putMethod(String str) {
        put(TelemetryEventStrings.Key.HTTP_METHOD, str);
        return this;
    }

    public HttpStartEvent putPath(URL url) {
        if (url == null) {
            return this;
        }
        put(TelemetryEventStrings.Key.HTTP_PATH, url.toExternalForm());
        return this;
    }

    public HttpStartEvent putRequestIdHeader(String str) {
        put(TelemetryEventStrings.Key.HTTP_REQUEST_ID_HEADER, str);
        return this;
    }

    public HttpStartEvent putRequestQueryParams(String str) {
        put(TelemetryEventStrings.Key.REQUEST_QUERY_PARAMS, str);
        return this;
    }
}
