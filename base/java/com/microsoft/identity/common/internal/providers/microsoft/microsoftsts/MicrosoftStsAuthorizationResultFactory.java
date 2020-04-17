package com.microsoft.identity.common.internal.providers.microsoft.microsoftsts;

import android.content.Intent;
import com.microsoft.identity.common.adal.internal.AuthenticationConstants;
import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftAuthorizationErrorResponse;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationResultFactory;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationStatus;
import com.microsoft.identity.common.internal.util.StringUtil;
import java.util.HashMap;

public class MicrosoftStsAuthorizationResultFactory extends AuthorizationResultFactory<MicrosoftStsAuthorizationResult, MicrosoftStsAuthorizationRequest> {
    public static final String ERROR_SUBCODE = "error_subcode";
    public static final String TAG = "MicrosoftStsAuthorizationResultFactory";

    private MicrosoftStsAuthorizationResult createAuthorizationResultWithErrorResponse(AuthorizationStatus authorizationStatus, String str, String str2, String str3) {
        Logger.info(TAG, "Error is returned from webview redirect");
        String str4 = TAG;
        Logger.infoPII(str4, "error: " + str + "error subcode:" + str2 + " errorDescription: " + str3);
        return new MicrosoftStsAuthorizationResult(authorizationStatus, new MicrosoftStsAuthorizationErrorResponse(str, str2, str3));
    }

    private MicrosoftStsAuthorizationResult parseUrlAndCreateAuthorizationResponse(String str, String str2) {
        HashMap<String, String> urlParameters = StringUtil.isEmpty(str) ? null : StringExtensions.getUrlParameters(str);
        if (urlParameters == null || urlParameters.isEmpty()) {
            Logger.warn(TAG, "Invalid server response, empty query string from the webview redirect.");
            return createAuthorizationResultWithErrorResponse(AuthorizationStatus.FAIL, "authorization_failed", "The authorization server returned an invalid response.");
        } else if (urlParameters.containsKey("code")) {
            return validateAndCreateAuthorizationResult(urlParameters, str2);
        } else {
            if (urlParameters.containsKey("error")) {
                return createAuthorizationResultWithErrorResponse(AuthorizationStatus.FAIL, urlParameters.get("error"), urlParameters.get("error_subcode"), urlParameters.get("error_description"));
            }
            return createAuthorizationResultWithErrorResponse(AuthorizationStatus.FAIL, "authorization_failed", "The authorization server returned an invalid response.");
        }
    }

    private MicrosoftStsAuthorizationResult validateAndCreateAuthorizationResult(HashMap<String, String> hashMap, String str) {
        String str2 = hashMap.get("state");
        String str3 = hashMap.get("code");
        if (StringUtil.isEmpty(str2)) {
            Logger.warn(TAG, "State parameter is not returned from the webview redirect.");
            return createAuthorizationResultWithErrorResponse(AuthorizationStatus.FAIL, "state_mismatch", "State is not returned");
        } else if (StringUtil.isEmpty(str) || !str.equals(str2)) {
            Logger.warn(TAG, "State parameter returned from the redirect is not same as the one sent in request.");
            return createAuthorizationResultWithErrorResponse(AuthorizationStatus.FAIL, "state_mismatch", "Returned state from authorize endpoint is not the same as the one sent");
        } else {
            Logger.info(TAG, "Auth code is successfully returned from webview redirect.");
            return new MicrosoftStsAuthorizationResult(AuthorizationStatus.SUCCESS, new MicrosoftStsAuthorizationResponse(str3, str2, hashMap));
        }
    }

    public MicrosoftStsAuthorizationResult createAuthorizationResult(int i2, Intent intent, MicrosoftStsAuthorizationRequest microsoftStsAuthorizationRequest) {
        if (intent == null) {
            return createAuthorizationResultWithErrorResponse(AuthorizationStatus.FAIL, "authorization_failed", MicrosoftAuthorizationErrorResponse.NULL_INTENT);
        }
        switch (i2) {
            case 2001:
                Logger.info(TAG, (String) null, "User cancel the authorization request in UI.");
                return createAuthorizationResultWithErrorResponse(AuthorizationStatus.USER_CANCEL, "user_cancelled", "User pressed device back button to cancel the flow.");
            case 2002:
                return createAuthorizationResultWithErrorResponse(AuthorizationStatus.FAIL, intent.getStringExtra(AuthenticationConstants.Browser.RESPONSE_ERROR_CODE), intent.getStringExtra(AuthenticationConstants.Browser.RESPONSE_ERROR_SUBCODE), intent.getStringExtra(AuthenticationConstants.Browser.RESPONSE_ERROR_MESSAGE));
            case 2003:
                return parseUrlAndCreateAuthorizationResponse(intent.getStringExtra(AuthenticationConstants.AuthorizationIntentKey.AUTHORIZATION_FINAL_URL), microsoftStsAuthorizationRequest.getState());
            case AuthenticationConstants.UIResponse.BROKER_REQUEST_RESUME:
                Logger.info(TAG, "Device needs to have broker installed, we expect the apps to call usback when the broker is installed");
                return createAuthorizationResultWithErrorResponse(AuthorizationStatus.FAIL, "authorization_failed", MicrosoftAuthorizationErrorResponse.BROKER_NEEDS_TO_BE_INSTALLED);
            case AuthenticationConstants.UIResponse.BROWSER_CODE_DEVICE_REGISTER:
                Logger.info(TAG, "Device Registration needed, need to start WPJ");
                MicrosoftStsAuthorizationResult createAuthorizationResultWithErrorResponse = createAuthorizationResultWithErrorResponse(AuthorizationStatus.FAIL, MicrosoftAuthorizationErrorResponse.DEVICE_REGISTRATION_NEEDED, MicrosoftAuthorizationErrorResponse.DEVICE_REGISTRATION_NEEDED);
                ((MicrosoftStsAuthorizationErrorResponse) createAuthorizationResultWithErrorResponse.getAuthorizationErrorResponse()).setUserName(intent.getStringExtra("username"));
                return createAuthorizationResultWithErrorResponse;
            case AuthenticationConstants.UIResponse.BROWSER_CODE_SDK_CANCEL:
                Logger.info(TAG, (String) null, "SDK cancelled the authorization request.");
                return createAuthorizationResultWithErrorResponse(AuthorizationStatus.SDK_CANCEL, MicrosoftAuthorizationErrorResponse.SDK_AUTH_CANCEL, MicrosoftAuthorizationErrorResponse.SDK_CANCELLED_FLOW);
            default:
                return createAuthorizationResultWithErrorResponse(AuthorizationStatus.FAIL, MicrosoftAuthorizationErrorResponse.UNKNOWN_ERROR, MicrosoftAuthorizationErrorResponse.UNKNOWN_RESULT_CODE);
        }
    }

    private MicrosoftStsAuthorizationResult createAuthorizationResultWithErrorResponse(AuthorizationStatus authorizationStatus, String str, String str2) {
        Logger.info(TAG, "Error is returned from webview redirect");
        String str3 = TAG;
        Logger.infoPII(str3, "error: " + str + " errorDescription: " + str2);
        return new MicrosoftStsAuthorizationResult(authorizationStatus, new MicrosoftStsAuthorizationErrorResponse(str, str2));
    }
}
