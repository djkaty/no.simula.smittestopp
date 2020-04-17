package com.microsoft.identity.common.internal.ui.webview;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.webkit.ClientCertRequest;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import com.microsoft.identity.common.adal.internal.AuthenticationConstants;
import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.exception.ErrorStrings;
import com.microsoft.identity.common.internal.broker.PackageHelper;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.ui.webview.challengehandlers.ClientCertAuthChallengeHandler;
import com.microsoft.identity.common.internal.ui.webview.challengehandlers.IAuthorizationCompletionCallback;
import com.microsoft.identity.common.internal.ui.webview.challengehandlers.PKeyAuthChallengeFactory;
import com.microsoft.identity.common.internal.ui.webview.challengehandlers.PKeyAuthChallengeHandler;
import com.microsoft.identity.common.internal.util.StringUtil;
import e.a.a.a.a;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Locale;

public class AzureActiveDirectoryWebViewClient extends OAuth2WebViewClient {
    public static final String ERROR = "error";
    public static final String ERROR_DESCRIPTION = "error_description";
    public static final String ERROR_SUBCODE = "error_subcode";
    public static final String TAG = AzureActiveDirectoryWebViewClient.class.getSimpleName();
    public final String mRedirectUrl;

    public AzureActiveDirectoryWebViewClient(Activity activity, IAuthorizationCompletionCallback iAuthorizationCompletionCallback, OnPageLoadedCallback onPageLoadedCallback, String str) {
        super(activity, iAuthorizationCompletionCallback, onPageLoadedCallback);
        this.mRedirectUrl = str;
    }

    private boolean handleUrl(WebView webView, String str) {
        String lowerCase = str.toLowerCase(Locale.US);
        if (isPkeyAuthUrl(lowerCase)) {
            Logger.info(TAG, "WebView detected request for pkeyauth challenge.");
            try {
                new PKeyAuthChallengeHandler(webView, getCompletionCallback()).processChallenge(new PKeyAuthChallengeFactory().getPKeyAuthChallenge(str));
                return true;
            } catch (ClientException e2) {
                Logger.error(TAG, e2.getErrorCode(), (Throwable) null);
                Logger.errorPII(TAG, e2.getMessage(), e2);
                returnError(e2.getErrorCode(), e2.getMessage());
                webView.stopLoading();
                return true;
            }
        } else if (isRedirectUrl(lowerCase)) {
            Logger.info(TAG, "Navigation starts with the redirect uri.");
            return processRedirectUrl(webView, str);
        } else if (isWebsiteRequestUrl(lowerCase)) {
            Logger.info(TAG, "It is an external website request");
            return processWebsiteRequest(webView, str);
        } else if (isInstallRequestUrl(lowerCase)) {
            Logger.info(TAG, "It is an install request");
            return processInstallRequest(webView, str);
        } else {
            Logger.info(TAG, "It is an invalid redirect uri.");
            return processInvalidUrl(webView, str);
        }
    }

    private boolean isBrokerRequest(Intent intent) {
        return intent != null && !StringExtensions.isNullOrBlank(intent.getStringExtra(AuthenticationConstants.Broker.BROKER_REQUEST));
    }

    private boolean isInstallRequestUrl(String str) {
        return str.startsWith(AuthenticationConstants.Broker.BROWSER_EXT_INSTALL_PREFIX);
    }

    private boolean isPkeyAuthUrl(String str) {
        return str.startsWith(AuthenticationConstants.Broker.PKEYAUTH_REDIRECT.toLowerCase());
    }

    private boolean isRedirectUrl(String str) {
        return str.startsWith(this.mRedirectUrl.toLowerCase(Locale.US));
    }

    private boolean isWebsiteRequestUrl(String str) {
        return str.startsWith(AuthenticationConstants.Broker.BROWSER_EXT_PREFIX);
    }

    private void openLinkInBrowser(String str) {
        Logger.info(TAG + "#openLinkInBrowser", "Try to open url link in browser");
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str.replace(AuthenticationConstants.Broker.BROWSER_EXT_PREFIX, "https://")));
        if (intent.resolveActivity(getActivity().getPackageManager()) != null) {
            getActivity().startActivity(intent);
        } else {
            a.c(new StringBuilder(), TAG, "#openLinkInBrowser", "Unable to find an app to resolve the activity.");
        }
    }

    private boolean processInstallRequest(final WebView webView, String str) {
        Intent intent = new Intent();
        HashMap<String, String> urlParameters = StringExtensions.getUrlParameters(str);
        final String str2 = urlParameters.get(AuthenticationConstants.Broker.INSTALL_URL_KEY);
        String str3 = urlParameters.get("username");
        if (TextUtils.isEmpty(str2)) {
            Logger.info(TAG, "Install link is null or empty, Return to caller with BROWSER_CODE_DEVICE_REGISTER");
            intent.putExtra("username", str3);
            getCompletionCallback().onChallengeResponseReceived(AuthenticationConstants.UIResponse.BROWSER_CODE_DEVICE_REGISTER, intent);
            webView.stopLoading();
            return true;
        }
        Logger.info(TAG, "Return to caller with BROKER_REQUEST_RESUME, and waiting for result.");
        getCompletionCallback().onChallengeResponseReceived(AuthenticationConstants.UIResponse.BROKER_REQUEST_RESUME, intent);
        new Handler().postDelayed(new Runnable() {
            public void run() {
                AzureActiveDirectoryWebViewClient.this.getActivity().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str2.replace(AuthenticationConstants.Broker.BROWSER_EXT_PREFIX, "https://"))));
                webView.stopLoading();
            }
        }, 1000);
        return true;
    }

    private boolean processInvalidUrl(WebView webView, String str) {
        String str2;
        if (isBrokerRequest(getActivity().getIntent()) && str.startsWith(AuthenticationConstants.Broker.REDIRECT_PREFIX)) {
            Logger.error(TAG, "The RedirectUri is not as expected.", (Throwable) null);
            Logger.errorPII(TAG, String.format("Received %s and expected %s", new Object[]{str, this.mRedirectUrl}), (Throwable) null);
            returnError(ErrorStrings.DEVELOPER_REDIRECTURI_INVALID, String.format("The RedirectUri is not as expected. Received %s and expected %s", new Object[]{str, this.mRedirectUrl}));
            webView.stopLoading();
            return true;
        } else if (str.toLowerCase(Locale.US).equals("about:blank")) {
            Logger.verbose(TAG, "It is an blank page request");
            return true;
        } else if (str.toLowerCase(Locale.US).startsWith("https://")) {
            return false;
        } else {
            try {
                str2 = StringExtensions.removeQueryParameterFromUrl(str);
            } catch (URISyntaxException unused) {
                str2 = "redacted";
            }
            String str3 = TAG;
            Logger.error(str3, "The webView was redirected to an unsafe URL: " + str2, (Throwable) null);
            returnError(ErrorStrings.WEBVIEW_REDIRECTURL_NOT_SSL_PROTECTED, "The webView was redirected to an unsafe URL.");
            webView.stopLoading();
            return true;
        }
    }

    private boolean processWebsiteRequest(WebView webView, String str) {
        PackageHelper packageHelper = new PackageHelper(getActivity().getPackageManager());
        Context applicationContext = getActivity().getApplicationContext();
        if (!str.startsWith(AuthenticationConstants.Broker.BROWSER_DEVICE_CA_URL) || !packageHelper.isPackageInstalledAndEnabled(applicationContext, "com.microsoft.windowsintune.companyportal") || !packageHelper.isPackageInstalledAndEnabled(applicationContext, AuthenticationConstants.Broker.IPPHONE_APP_PACKAGE_NAME) || !AuthenticationConstants.Broker.IPPHONE_APP_SIGNATURE.equals(packageHelper.getCurrentSignatureForPackage(AuthenticationConstants.Broker.IPPHONE_APP_PACKAGE_NAME))) {
            openLinkInBrowser(str);
        } else {
            Logger.info(TAG + "#processWebsiteRequest", "It is a device CA request on IPPhone. Company Portal is installed.");
            try {
                Logger.verbose(TAG + "#processWebsiteRequest", "Sending intent to launch the CompanyPortal.");
                Intent intent = new Intent();
                intent.setComponent(new ComponentName("com.microsoft.windowsintune.companyportal", AuthenticationConstants.Broker.COMPANY_PORTAL_APP_LAUNCH_ACTIVITY_NAME));
                intent.addFlags(268468224);
                getActivity().startActivity(intent);
            } catch (SecurityException unused) {
                a.c(new StringBuilder(), TAG, "#processWebsiteRequest", "Failed to launch Company Portal, falling back to browser.");
                openLinkInBrowser(str);
            }
        }
        webView.stopLoading();
        getCompletionCallback().onChallengeResponseReceived(2001, new Intent());
        return true;
    }

    private void returnError(String str, String str2) {
        Intent intent = new Intent();
        intent.putExtra(AuthenticationConstants.Browser.RESPONSE_ERROR_CODE, str);
        intent.putExtra(AuthenticationConstants.Browser.RESPONSE_ERROR_MESSAGE, str2);
        getCompletionCallback().onChallengeResponseReceived(2002, intent);
    }

    @TargetApi(21)
    public void onReceivedClientCertRequest(WebView webView, ClientCertRequest clientCertRequest) {
        new ClientCertAuthChallengeHandler(getActivity()).processChallenge(clientCertRequest);
    }

    public boolean processRedirectUrl(WebView webView, String str) {
        HashMap<String, String> urlParameters = StringExtensions.getUrlParameters(str);
        if (!StringExtensions.isNullOrBlank(urlParameters.get("error"))) {
            Logger.info(TAG, "Sending intent to cancel authentication activity");
            Intent intent = new Intent();
            intent.putExtra(AuthenticationConstants.Browser.RESPONSE_ERROR_CODE, urlParameters.get("error"));
            intent.putExtra(AuthenticationConstants.Browser.RESPONSE_ERROR_SUBCODE, urlParameters.get("error_subcode"));
            if (!StringUtil.isEmpty(urlParameters.get("error_description"))) {
                intent.putExtra(AuthenticationConstants.Browser.RESPONSE_ERROR_MESSAGE, urlParameters.get("error_description"));
            } else {
                intent.putExtra(AuthenticationConstants.Browser.RESPONSE_ERROR_MESSAGE, urlParameters.get("error_subcode"));
            }
            if (StringUtil.isEmpty(urlParameters.get("error_subcode")) || !urlParameters.get("error_subcode").equalsIgnoreCase(AuthenticationConstants.Browser.SUB_ERROR_UI_CANCEL)) {
                getCompletionCallback().onChallengeResponseReceived(2002, intent);
            } else {
                getCompletionCallback().onChallengeResponseReceived(2001, intent);
            }
            webView.stopLoading();
            return true;
        }
        Logger.info(TAG, "It is pointing to redirect. Final url can be processed to get the code or error.");
        Intent intent2 = new Intent();
        intent2.putExtra(AuthenticationConstants.AuthorizationIntentKey.AUTHORIZATION_FINAL_URL, str);
        getCompletionCallback().onChallengeResponseReceived(2003, intent2);
        webView.stopLoading();
        return true;
    }

    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (!StringUtil.isEmpty(str)) {
            return handleUrl(webView, str);
        }
        throw new IllegalArgumentException("Redirect to empty url in web view.");
    }

    @TargetApi(24)
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        return handleUrl(webView, webResourceRequest.getUrl().toString());
    }
}
