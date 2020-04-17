package com.microsoft.identity.common.internal.providers.oauth2;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.microsoft.identity.common.adal.internal.AuthenticationConstants;
import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.exception.ErrorStrings;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.telemetry.Telemetry;
import com.microsoft.identity.common.internal.telemetry.events.UiEndEvent;
import com.microsoft.identity.common.internal.util.StringUtil;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;

public class BrowserAuthorizationFragment extends AuthorizationFragment {
    public static final String BROWSER_FLOW_STARTED = "browserFlowStarted";
    public static final String TAG = BrowserAuthorizationFragment.class.getSimpleName();
    public static Class<?> sCallingActivityClass;
    public static String sCustomTabResponseUri;
    public Intent mAuthIntent;
    public boolean mBrowserFlowStarted = false;

    private void completeAuthorizationInBrowserFlow(String str) {
        Logger.info(TAG, (String) null, "Received redirect from customTab/browser.");
        Intent createResultIntent = createResultIntent(str);
        HashMap<String, String> urlParameters = StringExtensions.getUrlParameters(str);
        String str2 = urlParameters.get("username");
        if (!isDeviceRegisterRedirect(str) || TextUtils.isEmpty(str2)) {
            if (urlParameters.containsKey(AuthenticationConstants.Broker.INSTALL_URL_KEY)) {
                startActivity(new Intent("android.intent.action.VIEW", Uri.parse(urlParameters.get(AuthenticationConstants.Broker.INSTALL_URL_KEY))));
                Logger.info(TAG, "Return to caller with BROKER_REQUEST_RESUME, and waiting for result.");
                sendResult(AuthenticationConstants.UIResponse.BROKER_REQUEST_RESUME, createResultIntent);
            } else if (!StringUtil.isEmpty(createResultIntent.getStringExtra(AuthenticationConstants.AuthorizationIntentKey.AUTHORIZATION_FINAL_URL))) {
                sendResult(2003, createResultIntent);
                Telemetry.emit(new UiEndEvent().isUiComplete());
            } else if (StringUtil.isEmpty(createResultIntent.getStringExtra(AuthenticationConstants.Browser.RESPONSE_ERROR_SUBCODE)) || !createResultIntent.getStringExtra(AuthenticationConstants.Browser.RESPONSE_ERROR_SUBCODE).equalsIgnoreCase(AuthenticationConstants.Browser.SUB_ERROR_UI_CANCEL)) {
                Telemetry.emit(new UiEndEvent().isUiCancelled());
                sendResult(2002, createResultIntent);
            } else {
                Telemetry.emit(new UiEndEvent().isUserCancelled());
                sendResult(AuthenticationConstants.UIResponse.BROWSER_CODE_SDK_CANCEL, createResultIntent);
            }
            finish();
            return;
        }
        Logger.info(TAG, " Device needs to be registered, sending BROWSER_CODE_DEVICE_REGISTER");
        String str3 = TAG;
        Logger.infoPII(str3, "Device Registration triggered for user: " + str2);
        createResultIntent.putExtra("username", str2);
        sendResult(AuthenticationConstants.UIResponse.BROWSER_CODE_DEVICE_REGISTER, createResultIntent);
    }

    public static Intent createCustomTabResponseIntent(Context context, String str) {
        sCustomTabResponseUri = str;
        Intent intent = new Intent(context, sCallingActivityClass);
        intent.addFlags(603979776);
        return intent;
    }

    private Intent createResultIntent(String str) {
        Intent intent = new Intent();
        HashMap<String, String> urlParameters = StringExtensions.getUrlParameters(str);
        if (!StringExtensions.isNullOrBlank(urlParameters.get("error"))) {
            Logger.info(TAG, "Sending intent to cancel authentication activity");
            intent.putExtra(AuthenticationConstants.Browser.RESPONSE_ERROR_CODE, urlParameters.get("error"));
            intent.putExtra(AuthenticationConstants.Browser.RESPONSE_ERROR_SUBCODE, urlParameters.get("error_subcode"));
            if (!StringUtil.isEmpty(urlParameters.get("error_description"))) {
                intent.putExtra(AuthenticationConstants.Browser.RESPONSE_ERROR_MESSAGE, urlParameters.get("error_description"));
            } else {
                intent.putExtra(AuthenticationConstants.Browser.RESPONSE_ERROR_MESSAGE, urlParameters.get("error_subcode"));
            }
        } else {
            Logger.info(TAG, "It is pointing to redirect. Final url can be processed to get the code or error.");
            intent.putExtra(AuthenticationConstants.AuthorizationIntentKey.AUTHORIZATION_FINAL_URL, str);
        }
        return intent;
    }

    private boolean isDeviceRegisterRedirect(String str) {
        try {
            URI uri = new URI(str);
            if (!uri.getScheme().equalsIgnoreCase(AuthenticationConstants.Broker.REDIRECT_PREFIX) || !uri.getHost().equalsIgnoreCase(AuthenticationConstants.Broker.DEVICE_REGISTRATION_REDIRECT_URI_HOSTNAME)) {
                return false;
            }
            return true;
        } catch (URISyntaxException e2) {
            Logger.error(TAG, "Uri construction failed", e2);
            return false;
        }
    }

    public void extractState(Bundle bundle) {
        super.extractState(bundle);
        this.mAuthIntent = (Intent) bundle.getParcelable(AuthenticationConstants.AuthorizationIntentKey.AUTH_INTENT);
        this.mBrowserFlowStarted = bundle.getBoolean(BROWSER_FLOW_STARTED, false);
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        sCallingActivityClass = getActivity().getClass();
    }

    public void onResume() {
        super.onResume();
        if (!this.mBrowserFlowStarted) {
            this.mBrowserFlowStarted = true;
            Intent intent = this.mAuthIntent;
            if (intent != null) {
                startActivity(intent);
                return;
            }
            Intent intent2 = new Intent();
            intent2.putExtra(AuthenticationConstants.Browser.RESPONSE_AUTHENTICATION_EXCEPTION, new ClientException(ErrorStrings.AUTHORIZATION_INTENT_IS_NULL));
            sendResult(AuthenticationConstants.UIResponse.BROWSER_CODE_AUTHENTICATION_EXCEPTION, intent2);
            finish();
        } else if (!StringUtil.isEmpty(sCustomTabResponseUri)) {
            completeAuthorizationInBrowserFlow(sCustomTabResponseUri);
        } else {
            cancelAuthorization(true);
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable(AuthenticationConstants.AuthorizationIntentKey.AUTH_INTENT, this.mAuthIntent);
        bundle.putBoolean(BROWSER_FLOW_STARTED, this.mBrowserFlowStarted);
    }
}
