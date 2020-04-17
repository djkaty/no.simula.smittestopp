package com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory;

import android.content.Intent;
import android.os.Bundle;
import com.microsoft.identity.common.adal.internal.AuthenticationConstants;
import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftAuthorizationErrorResponse;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftAuthorizationResult;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationResultFactory;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationStatus;
import com.microsoft.identity.common.internal.util.StringUtil;
import e.a.a.a.a;
import java.io.Serializable;
import java.util.HashMap;

public class AzureActiveDirectoryAuthorizationResultFactory extends AuthorizationResultFactory<AzureActiveDirectoryAuthorizationResult, AzureActiveDirectoryAuthorizationRequest> {
    public static final String ERROR_CODES = "error_codes";
    public static final String TAG = "AzureActiveDirectoryAuthorizationResultFactory";

    private AzureActiveDirectoryAuthorizationResult createAuthorizationResultWithErrorResponse(AuthorizationStatus authorizationStatus, String str, String str2) {
        return new AzureActiveDirectoryAuthorizationResult(authorizationStatus, new AzureActiveDirectoryAuthorizationErrorResponse(str, str2));
    }

    private AzureActiveDirectoryAuthorizationResult parseUrlAndCreateAuthorizationResult(String str, String str2) {
        HashMap<String, String> urlParameters = StringExtensions.getUrlParameters(str);
        if (urlParameters == null || urlParameters.isEmpty()) {
            Logger.warn(TAG, "Invalid server response, empty query string from the webview redirect.");
            return createAuthorizationResultWithErrorResponse(AuthorizationStatus.FAIL, "authorization_failed", "The authorization server returned an invalid response.");
        }
        String str3 = urlParameters.get("correlation_id");
        if (urlParameters.containsKey("code")) {
            return validateAndCreateAuthorizationResult(urlParameters.get("code"), urlParameters.get("state"), str2, str3);
        }
        if (!urlParameters.containsKey("error")) {
            return createAuthorizationResultWithErrorResponse(AuthorizationStatus.FAIL, "authorization_failed", "The authorization server returned an invalid response.");
        }
        return createAuthorizationResultWithErrorResponse(AuthorizationStatus.FAIL, urlParameters.get("error"), urlParameters.get("error_description"), urlParameters.get("error_codes"), str3);
    }

    private AzureActiveDirectoryAuthorizationResult validateAndCreateAuthorizationResult(String str, String str2, String str3, String str4) {
        if (StringUtil.isEmpty(str2)) {
            Logger.warn(TAG, str4, "State parameter is not returned from the webview redirect.");
            return createAuthorizationResultWithErrorResponse(AuthorizationStatus.FAIL, "state_mismatch", "State is not returned");
        } else if (StringUtil.isEmpty(str3) || !str3.equals(str2)) {
            Logger.warn(TAG, str4, "State parameter returned from the redirect is not same as the one sent in request.");
            return createAuthorizationResultWithErrorResponse(AuthorizationStatus.FAIL, "state_mismatch", "Returned state from authorize endpoint is not the same as the one sent");
        } else {
            Logger.info(TAG, str4, "Auth code is successfully returned from webview redirect.");
            AzureActiveDirectoryAuthorizationResponse azureActiveDirectoryAuthorizationResponse = new AzureActiveDirectoryAuthorizationResponse(str, str2);
            azureActiveDirectoryAuthorizationResponse.setCorrelationId(str4);
            return new AzureActiveDirectoryAuthorizationResult(AuthorizationStatus.SUCCESS, azureActiveDirectoryAuthorizationResponse);
        }
    }

    public AzureActiveDirectoryAuthorizationResult createAuthorizationResult(int i2, Intent intent, AzureActiveDirectoryAuthorizationRequest azureActiveDirectoryAuthorizationRequest) {
        if (intent == null || intent.getExtras() == null) {
            return createAuthorizationResultWithErrorResponse(AuthorizationStatus.FAIL, "authorization_failed", MicrosoftAuthorizationErrorResponse.NULL_INTENT);
        }
        Bundle extras = intent.getExtras();
        int i3 = extras.getInt("com.microsoft.aad.adal:RequestId");
        AzureActiveDirectoryAuthorizationResult azureActiveDirectoryAuthorizationResult = null;
        switch (i2) {
            case 2001:
                String str = TAG;
                Logger.verbose(str, "User cancel the request in webview: " + i3);
                azureActiveDirectoryAuthorizationResult = createAuthorizationResultWithErrorResponse(AuthorizationStatus.USER_CANCEL, "user_cancelled", "User pressed device back button to cancel the flow.");
                break;
            case 2002:
                azureActiveDirectoryAuthorizationResult = createAuthorizationResultWithErrorResponse(AuthorizationStatus.FAIL, extras.getString(AuthenticationConstants.Browser.RESPONSE_ERROR_CODE), extras.getString(AuthenticationConstants.Browser.RESPONSE_ERROR_MESSAGE));
                break;
            case 2003:
                azureActiveDirectoryAuthorizationResult = parseUrlAndCreateAuthorizationResult(extras.getString("com.microsoft.aad.adal:BrowserFinalUrl", ""), intent.getStringExtra(MicrosoftAuthorizationResult.REQUEST_STATE_PARAMETER));
                break;
            case AuthenticationConstants.UIResponse.BROWSER_CODE_AUTHENTICATION_EXCEPTION:
                Serializable serializable = extras.getSerializable(AuthenticationConstants.Browser.RESPONSE_AUTHENTICATION_EXCEPTION);
                if (serializable != null && (serializable instanceof ClientException)) {
                    ClientException clientException = (ClientException) serializable;
                    azureActiveDirectoryAuthorizationResult = createAuthorizationResultWithErrorResponse(AuthorizationStatus.FAIL, clientException.getErrorCode(), clientException.getMessage());
                    break;
                }
            case AuthenticationConstants.UIResponse.BROKER_REQUEST_RESUME:
                Logger.verbose(TAG, "Device needs to have broker installed, we expect the apps to call usback when the broker is installed");
                azureActiveDirectoryAuthorizationResult = createAuthorizationResultWithErrorResponse(AuthorizationStatus.FAIL, "authorization_failed", MicrosoftAuthorizationErrorResponse.BROKER_NEEDS_TO_BE_INSTALLED);
                break;
            case AuthenticationConstants.UIResponse.BROWSER_CODE_DEVICE_REGISTER:
                Logger.verbose(TAG, "Device needs to have broker installed, we expect the apps to call usback when the broker is installed");
                azureActiveDirectoryAuthorizationResult = createAuthorizationResultWithErrorResponse(AuthorizationStatus.FAIL, "authorization_failed", MicrosoftAuthorizationErrorResponse.BROKER_NEEDS_TO_BE_INSTALLED);
                break;
            default:
                azureActiveDirectoryAuthorizationResult = createAuthorizationResultWithErrorResponse(AuthorizationStatus.FAIL, MicrosoftAuthorizationErrorResponse.UNKNOWN_ERROR, a.b("Unknown result code returned [", i2, "]"));
                break;
        }
        return azureActiveDirectoryAuthorizationResult == null ? createAuthorizationResultWithErrorResponse(AuthorizationStatus.FAIL, MicrosoftAuthorizationErrorResponse.UNKNOWN_ERROR, a.b("Unknown result code returned [", i2, "]")) : azureActiveDirectoryAuthorizationResult;
    }

    private AzureActiveDirectoryAuthorizationResult createAuthorizationResultWithErrorResponse(AuthorizationStatus authorizationStatus, String str, String str2, String str3, String str4) {
        Logger.info(TAG, str4, "Error is returned from webview redirect");
        String str5 = TAG;
        Logger.infoPII(str5, str4, "error: " + str + " errorDescription: " + str2);
        AzureActiveDirectoryAuthorizationErrorResponse azureActiveDirectoryAuthorizationErrorResponse = new AzureActiveDirectoryAuthorizationErrorResponse(str, str2);
        azureActiveDirectoryAuthorizationErrorResponse.setErrorCodes(str3);
        return new AzureActiveDirectoryAuthorizationResult(authorizationStatus, azureActiveDirectoryAuthorizationErrorResponse);
    }
}
