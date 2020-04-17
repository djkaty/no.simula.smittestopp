package com.microsoft.identity.common.internal.eststelemetry;

import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationResult;
import com.microsoft.identity.common.internal.providers.oauth2.TokenResult;
import com.microsoft.identity.common.internal.result.AcquireTokenResult;

public class TelemetryUtils {
    public static String errorFromAcquireTokenResult(AcquireTokenResult acquireTokenResult) {
        if (acquireTokenResult == null) {
            return "unknown_error";
        }
        String errorFromAuthorizationResult = getErrorFromAuthorizationResult(acquireTokenResult.getAuthorizationResult());
        if (errorFromAuthorizationResult != null) {
            return errorFromAuthorizationResult;
        }
        return getErrorFromTokenResult(acquireTokenResult.getTokenResult());
    }

    public static String getErrorFromAuthorizationResult(AuthorizationResult authorizationResult) {
        if (authorizationResult == null || authorizationResult.getErrorResponse() == null) {
            return null;
        }
        return authorizationResult.getErrorResponse().getError();
    }

    public static String getErrorFromTokenResult(TokenResult tokenResult) {
        if (tokenResult == null || tokenResult.getErrorResponse() == null) {
            return null;
        }
        return tokenResult.getErrorResponse().getError();
    }
}
