package com.microsoft.identity.common.internal.telemetry.events;

import com.microsoft.identity.common.exception.BaseException;
import com.microsoft.identity.common.exception.UserCancelException;
import com.microsoft.identity.common.internal.telemetry.TelemetryEventStrings;

public class BrokerEndEvent extends BaseEvent {
    public BrokerEndEvent() {
        names(TelemetryEventStrings.Event.BROKER_END_EVENT);
        types(TelemetryEventStrings.EventType.BROKER_EVENT);
    }

    public BrokerEndEvent isSuccessful(boolean z) {
        put(TelemetryEventStrings.Key.IS_SUCCESSFUL, String.valueOf(z));
        return this;
    }

    public BrokerEndEvent putAction(String str) {
        put(TelemetryEventStrings.Key.BROKER_ACTION, str);
        return this;
    }

    public BrokerEndEvent putErrorCode(String str) {
        put("Microsoft.MSAL.api_error_code", str);
        return this;
    }

    public BrokerEndEvent putErrorDescription(String str) {
        put(TelemetryEventStrings.Key.ERROR_DESCRIPTION, str);
        return this;
    }

    public BrokerEndEvent putException(BaseException baseException) {
        if (baseException == null) {
            return this;
        }
        if (baseException instanceof UserCancelException) {
            put(TelemetryEventStrings.Key.USER_CANCEL, "true");
        }
        put(TelemetryEventStrings.Key.SERVER_ERROR_CODE, baseException.getCliTelemErrorCode());
        put(TelemetryEventStrings.Key.SERVER_SUBERROR_CODE, baseException.getCliTelemSubErrorCode());
        put("Microsoft.MSAL.api_error_code", baseException.getErrorCode());
        put(TelemetryEventStrings.Key.SPE_RING, baseException.getSpeRing());
        put(TelemetryEventStrings.Key.ERROR_DESCRIPTION, baseException.getMessage());
        put(TelemetryEventStrings.Key.RT_AGE, baseException.getRefreshTokenAge());
        put(TelemetryEventStrings.Key.IS_SUCCESSFUL, "false");
        return this;
    }
}
