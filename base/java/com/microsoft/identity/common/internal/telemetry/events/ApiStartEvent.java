package com.microsoft.identity.common.internal.telemetry.events;

import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.internal.authorities.Authority;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.request.AcquireTokenOperationParameters;
import com.microsoft.identity.common.internal.request.AcquireTokenSilentOperationParameters;
import com.microsoft.identity.common.internal.request.BrokerAcquireTokenOperationParameters;
import com.microsoft.identity.common.internal.request.BrokerAcquireTokenSilentOperationParameters;
import com.microsoft.identity.common.internal.request.OperationParameters;
import com.microsoft.identity.common.internal.telemetry.TelemetryEventStrings;
import com.microsoft.identity.common.internal.util.StringUtil;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.NoSuchAlgorithmException;

public class ApiStartEvent extends BaseEvent {
    public static final String TAG = "ApiStartEvent";

    public ApiStartEvent() {
        names(TelemetryEventStrings.Event.API_START_EVENT);
        types(TelemetryEventStrings.EventType.API_EVENT);
    }

    public static String sanitizeUrlForTelemetry(String str) {
        URL url;
        try {
            url = new URL(str);
        } catch (MalformedURLException e2) {
            Logger.errorPII(TAG, "Url is invalid", e2);
            url = null;
        }
        if (url == null) {
            return null;
        }
        return sanitizeUrlForTelemetry(url);
    }

    public ApiStartEvent authority(String str) {
        put(TelemetryEventStrings.Key.AUTHORITY, sanitizeUrlForTelemetry(str));
        return this;
    }

    public ApiStartEvent putApiId(String str) {
        put("Microsoft.MSAL.api_id", str);
        return this;
    }

    public ApiStartEvent putAuthorityType(String str) {
        put(TelemetryEventStrings.Key.AUTHORITY_TYPE, str);
        return this;
    }

    public ApiStartEvent putExtendedExpiresOnSetting(String str) {
        put(TelemetryEventStrings.Key.EXTENDED_EXPIRES_ON_SETTING, str);
        return this;
    }

    public ApiStartEvent putLoginHint(String str) {
        try {
            put(TelemetryEventStrings.Key.LOGIN_HINT, StringExtensions.createHash(str));
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException e2) {
            Logger.warn(TAG, e2.getMessage());
        }
        return this;
    }

    public ApiStartEvent putProperties(OperationParameters operationParameters) {
        if (operationParameters == null) {
            return this;
        }
        Authority authority = operationParameters.getAuthority();
        if (authority != null) {
            if (authority.getAuthorityURL() != null) {
                put(TelemetryEventStrings.Key.AUTHORITY, authority.getAuthorityURL().getAuthority());
            }
            put(TelemetryEventStrings.Key.AUTHORITY_TYPE, authority.getAuthorityTypeString());
        }
        if (operationParameters.getSdkType() != null) {
            put(TelemetryEventStrings.Key.SDK_NAME, operationParameters.getSdkType().name());
        }
        put(TelemetryEventStrings.Key.SDK_VERSION, operationParameters.getSdkVersion());
        put(TelemetryEventStrings.Key.CLAIM_REQUEST, StringUtil.isEmpty(operationParameters.getClaimsRequestJson()) ? "false" : "true");
        put(TelemetryEventStrings.Key.REDIRECT_URI, operationParameters.getRedirectUri());
        put(TelemetryEventStrings.Key.CLIENT_ID, operationParameters.getClientId());
        if (operationParameters instanceof AcquireTokenOperationParameters) {
            AcquireTokenOperationParameters acquireTokenOperationParameters = (AcquireTokenOperationParameters) operationParameters;
            if (acquireTokenOperationParameters.getAuthorizationAgent() != null) {
                put(TelemetryEventStrings.Key.USER_AGENT, acquireTokenOperationParameters.getAuthorizationAgent().name());
            }
            put(TelemetryEventStrings.Key.LOGIN_HINT, acquireTokenOperationParameters.getLoginHint());
            if (acquireTokenOperationParameters.getExtraQueryStringParameters() != null) {
                put(TelemetryEventStrings.Key.REQUEST_QUERY_PARAMS, String.valueOf(acquireTokenOperationParameters.getExtraQueryStringParameters().size()));
            }
            if (acquireTokenOperationParameters.getOpenIdConnectPromptParameter() != null) {
                put(TelemetryEventStrings.Key.PROMPT_BEHAVIOR, acquireTokenOperationParameters.getOpenIdConnectPromptParameter().toString());
            }
        }
        if (operationParameters instanceof AcquireTokenSilentOperationParameters) {
            if (operationParameters.getAccount() != null) {
                put(TelemetryEventStrings.Key.USER_ID, operationParameters.getAccount().getHomeAccountId());
            }
            put("Microsoft.MSAL.force_refresh", String.valueOf(operationParameters.getForceRefresh()));
            put(TelemetryEventStrings.Key.BROKER_PROTOCOL_VERSION, String.valueOf(operationParameters.getRequiredBrokerProtocolVersion()));
            if (operationParameters.getScopes() != null) {
                put(TelemetryEventStrings.Key.SCOPE_SIZE, String.valueOf(operationParameters.getScopes().size()));
                put(TelemetryEventStrings.Key.SCOPE, operationParameters.getScopes().toString());
            }
        }
        boolean z = operationParameters instanceof BrokerAcquireTokenOperationParameters;
        boolean z2 = operationParameters instanceof BrokerAcquireTokenSilentOperationParameters;
        return this;
    }

    public ApiStartEvent putValidationStatus(String str) {
        put(TelemetryEventStrings.Key.AUTHORITY_VALIDATION_STATUS, str);
        return this;
    }

    public ApiStartEvent put(String str, String str2) {
        super.put(str, str2);
        return this;
    }

    public static String sanitizeUrlForTelemetry(URL url) {
        if (url == null) {
            return null;
        }
        String authority = url.getAuthority();
        String[] split = url.getPath().split("/");
        StringBuilder sb = new StringBuilder();
        sb.append(url.getProtocol());
        sb.append("://");
        sb.append(authority);
        sb.append('/');
        for (int i2 = 2; i2 < split.length; i2++) {
            sb.append(split[i2]);
            sb.append('/');
        }
        return sb.toString();
    }
}
