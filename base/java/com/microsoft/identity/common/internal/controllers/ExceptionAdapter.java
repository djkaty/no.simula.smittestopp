package com.microsoft.identity.common.internal.controllers;

import com.microsoft.identity.common.adal.internal.AuthenticationConstants;
import com.microsoft.identity.common.exception.BaseException;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.exception.DeviceRegistrationRequiredException;
import com.microsoft.identity.common.exception.ServiceException;
import com.microsoft.identity.common.exception.UiRequiredException;
import com.microsoft.identity.common.exception.UserCancelException;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.net.HttpResponse;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftAuthorizationErrorResponse;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationErrorResponse;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationResult;
import com.microsoft.identity.common.internal.providers.oauth2.TokenErrorResponse;
import com.microsoft.identity.common.internal.providers.oauth2.TokenResult;
import com.microsoft.identity.common.internal.result.AcquireTokenResult;
import com.microsoft.identity.common.internal.telemetry.CliTelemInfo;
import com.microsoft.identity.common.internal.util.HeaderSerializationUtil;
import com.microsoft.identity.common.internal.util.StringUtil;
import e.a.a.a.a;
import e.c.c.s;
import java.io.IOException;
import org.json.JSONException;

public class ExceptionAdapter {
    public static final String TAG = "ExceptionAdapter";

    /* renamed from: com.microsoft.identity.common.internal.controllers.ExceptionAdapter$1  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$identity$common$internal$providers$oauth2$AuthorizationStatus;

        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|1|2|3|4|5|6|8) */
        /* JADX WARNING: Code restructure failed: missing block: B:9:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x000f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x0016 */
        static {
            /*
                com.microsoft.identity.common.internal.providers.oauth2.AuthorizationStatus[] r0 = com.microsoft.identity.common.internal.providers.oauth2.AuthorizationStatus.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$identity$common$internal$providers$oauth2$AuthorizationStatus = r0
                r1 = 1
                r2 = 3
                com.microsoft.identity.common.internal.providers.oauth2.AuthorizationStatus r3 = com.microsoft.identity.common.internal.providers.oauth2.AuthorizationStatus.FAIL     // Catch:{ NoSuchFieldError -> 0x000f }
                r0[r2] = r1     // Catch:{ NoSuchFieldError -> 0x000f }
            L_0x000f:
                int[] r0 = $SwitchMap$com$microsoft$identity$common$internal$providers$oauth2$AuthorizationStatus     // Catch:{ NoSuchFieldError -> 0x0016 }
                com.microsoft.identity.common.internal.providers.oauth2.AuthorizationStatus r3 = com.microsoft.identity.common.internal.providers.oauth2.AuthorizationStatus.SDK_CANCEL     // Catch:{ NoSuchFieldError -> 0x0016 }
                r3 = 2
                r0[r3] = r3     // Catch:{ NoSuchFieldError -> 0x0016 }
            L_0x0016:
                int[] r0 = $SwitchMap$com$microsoft$identity$common$internal$providers$oauth2$AuthorizationStatus     // Catch:{ NoSuchFieldError -> 0x001c }
                com.microsoft.identity.common.internal.providers.oauth2.AuthorizationStatus r3 = com.microsoft.identity.common.internal.providers.oauth2.AuthorizationStatus.USER_CANCEL     // Catch:{ NoSuchFieldError -> 0x001c }
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001c }
            L_0x001c:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.identity.common.internal.controllers.ExceptionAdapter.AnonymousClass1.<clinit>():void");
        }
    }

    public static void applyCliTelemInfo(CliTelemInfo cliTelemInfo, BaseException baseException) {
        if (cliTelemInfo != null) {
            baseException.setSpeRing(cliTelemInfo.getSpeRing());
            baseException.setRefreshTokenAge(cliTelemInfo.getRefreshTokenAge());
            baseException.setCliTelemErrorCode(cliTelemInfo.getServerErrorCode());
            baseException.setCliTelemSubErrorCode(cliTelemInfo.getServerSubErrorCode());
        }
    }

    public static BaseException baseExceptionFromException(Exception exc) {
        if (exc instanceof IOException) {
            StringBuilder a = a.a("An IO error occurred with message: ");
            a.append(exc.getMessage());
            return new ClientException("io_error", a.toString(), exc);
        } else if (exc instanceof BaseException) {
            return (BaseException) exc;
        } else {
            return new ClientException("unknown_error", exc.getMessage(), exc);
        }
    }

    public static BaseException exceptionFromAcquireTokenResult(AcquireTokenResult acquireTokenResult) {
        AuthorizationResult authorizationResult = acquireTokenResult.getAuthorizationResult();
        if (authorizationResult != null) {
            AuthorizationErrorResponse authorizationErrorResponse = authorizationResult.getAuthorizationErrorResponse();
            if (!authorizationResult.getSuccess()) {
                int ordinal = acquireTokenResult.getAuthorizationResult().getAuthorizationStatus().ordinal();
                if (ordinal == 1) {
                    return new UserCancelException();
                }
                if (ordinal == 2) {
                    return new ClientException(authorizationErrorResponse.getError(), authorizationErrorResponse.getErrorDescription());
                }
                if (ordinal == 3) {
                    if (authorizationErrorResponse instanceof MicrosoftAuthorizationErrorResponse) {
                        MicrosoftAuthorizationErrorResponse microsoftAuthorizationErrorResponse = (MicrosoftAuthorizationErrorResponse) authorizationErrorResponse;
                        if (microsoftAuthorizationErrorResponse.getError().equals(MicrosoftAuthorizationErrorResponse.DEVICE_REGISTRATION_NEEDED)) {
                            return new DeviceRegistrationRequiredException(microsoftAuthorizationErrorResponse.getError(), microsoftAuthorizationErrorResponse.getErrorDescription(), microsoftAuthorizationErrorResponse.getUserName());
                        }
                    }
                    String error = authorizationErrorResponse.getError();
                    return new ServiceException(error, authorizationErrorResponse.getError() + ";" + authorizationErrorResponse.getErrorDescription(), 0, (Throwable) null);
                }
            }
        } else {
            a.c(new StringBuilder(), TAG, ":exceptionFromAcquireTokenResult", "AuthorizationResult was null -- expected for ATS cases.");
        }
        return exceptionFromTokenResult(acquireTokenResult.getTokenResult());
    }

    public static ServiceException exceptionFromTokenResult(TokenResult tokenResult) {
        if (tokenResult == null || tokenResult.getSuccess() || tokenResult.getErrorResponse() == null || StringUtil.isEmpty(tokenResult.getErrorResponse().getError())) {
            String a = a.a(new StringBuilder(), TAG, ":exceptionFromTokenResult");
            StringBuilder a2 = a.a("Unknown error, Token result is null [");
            a2.append(tokenResult == null);
            a2.append("]");
            Logger.warn(a, a2.toString());
            return new ServiceException("unknown_error", "Request failed, but no error returned back from service.", (Throwable) null);
        }
        ServiceException exceptionFromTokenErrorResponse = getExceptionFromTokenErrorResponse(tokenResult.getErrorResponse());
        applyCliTelemInfo(tokenResult.getCliTelemInfo(), exceptionFromTokenErrorResponse);
        return exceptionFromTokenErrorResponse;
    }

    public static ServiceException getExceptionFromTokenErrorResponse(TokenErrorResponse tokenErrorResponse) {
        ServiceException serviceException;
        if (shouldBeConvertedToUiRequiredException(tokenErrorResponse.getError())) {
            serviceException = new UiRequiredException(tokenErrorResponse.getError(), tokenErrorResponse.getErrorDescription());
        } else {
            serviceException = new ServiceException(tokenErrorResponse.getError(), tokenErrorResponse.getErrorDescription(), (Throwable) null);
        }
        serviceException.setOauthSubErrorCode(tokenErrorResponse.getSubError());
        try {
            serviceException.setHttpResponse(synthesizeHttpResponse(tokenErrorResponse.getStatusCode(), tokenErrorResponse.getResponseHeadersJson(), tokenErrorResponse.getResponseBody()));
        } catch (JSONException unused) {
            a.c(new StringBuilder(), TAG, ":getExceptionFromTokenErrorResponse", "Failed to deserialize error data: status, headers, response body.");
        }
        return serviceException;
    }

    public static boolean shouldBeConvertedToUiRequiredException(String str) {
        return str.equalsIgnoreCase("invalid_grant") || str.equalsIgnoreCase(AuthenticationConstants.OAuth2ErrorCode.INTERACTION_REQUIRED);
    }

    public static HttpResponse synthesizeHttpResponse(int i2, String str, String str2) {
        if (str == null || str2 == null) {
            return null;
        }
        try {
            return new HttpResponse(i2, str2, HeaderSerializationUtil.fromJson(str));
        } catch (s unused) {
            a.c(new StringBuilder(), TAG, ":applyHttpErrorResponseData", "Failed to deserialize error data: status, headers, response body.");
            return null;
        }
    }
}
