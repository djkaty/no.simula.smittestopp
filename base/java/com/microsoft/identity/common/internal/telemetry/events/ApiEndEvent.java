package com.microsoft.identity.common.internal.telemetry.events;

import com.microsoft.identity.common.exception.BaseException;
import com.microsoft.identity.common.exception.UserCancelException;
import com.microsoft.identity.common.internal.controllers.ExceptionAdapter;
import com.microsoft.identity.common.internal.result.AcquireTokenResult;
import com.microsoft.identity.common.internal.telemetry.TelemetryEventStrings;

public class ApiEndEvent extends BaseEvent {
    public ApiEndEvent() {
        names(TelemetryEventStrings.Event.API_END_EVENT);
        types(TelemetryEventStrings.EventType.API_EVENT);
    }

    public ApiEndEvent isApiCallSuccessful(Boolean bool) {
        if (bool != null) {
            put(TelemetryEventStrings.Key.IS_SUCCESSFUL, bool.toString());
        }
        return this;
    }

    public ApiEndEvent putApiErrorCode(String str) {
        put("Microsoft.MSAL.api_error_code", str);
        return this;
    }

    public ApiEndEvent putApiId(String str) {
        put("Microsoft.MSAL.api_id", str);
        return this;
    }

    public ApiEndEvent putException(Exception exc) {
        if (exc == null) {
            return this;
        }
        BaseException baseExceptionFromException = ExceptionAdapter.baseExceptionFromException(exc);
        if (baseExceptionFromException instanceof UserCancelException) {
            put(TelemetryEventStrings.Key.USER_CANCEL, "true");
        }
        put(TelemetryEventStrings.Key.SERVER_ERROR_CODE, baseExceptionFromException.getCliTelemErrorCode());
        put(TelemetryEventStrings.Key.SERVER_SUBERROR_CODE, baseExceptionFromException.getCliTelemSubErrorCode());
        put("Microsoft.MSAL.api_error_code", baseExceptionFromException.getErrorCode());
        put(TelemetryEventStrings.Key.SPE_RING, baseExceptionFromException.getSpeRing());
        put(TelemetryEventStrings.Key.ERROR_DESCRIPTION, baseExceptionFromException.getMessage());
        put(TelemetryEventStrings.Key.RT_AGE, baseExceptionFromException.getRefreshTokenAge());
        put(TelemetryEventStrings.Key.IS_SUCCESSFUL, "false");
        return this;
    }

    public ApiEndEvent putResult(AcquireTokenResult acquireTokenResult) {
        if (acquireTokenResult == null) {
            return this;
        }
        if (acquireTokenResult.getSucceeded() != null) {
            put(TelemetryEventStrings.Key.IS_SUCCESSFUL, acquireTokenResult.getSucceeded().toString());
        }
        if (acquireTokenResult.getLocalAuthenticationResult() != null) {
            put(TelemetryEventStrings.Key.USER_ID, acquireTokenResult.getLocalAuthenticationResult().getUniqueId());
            put(TelemetryEventStrings.Key.TENANT_ID, acquireTokenResult.getLocalAuthenticationResult().getTenantId());
            put(TelemetryEventStrings.Key.SPE_RING, acquireTokenResult.getLocalAuthenticationResult().getSpeRing());
            put(TelemetryEventStrings.Key.RT_AGE, acquireTokenResult.getLocalAuthenticationResult().getRefreshTokenAge());
        }
        return this;
    }

    public ApiEndEvent put(String str, String str2) {
        super.put(str, str2);
        return this;
    }
}
