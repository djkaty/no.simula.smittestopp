package com.microsoft.identity.common.internal.providers.oauth2;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.microsoft.identity.common.R;
import com.microsoft.identity.common.adal.internal.AuthenticationConstants;
import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.ui.webview.AzureActiveDirectoryWebViewClient;
import com.microsoft.identity.common.internal.ui.webview.OnPageLoadedCallback;
import com.microsoft.identity.common.internal.ui.webview.WebViewUtil;
import com.microsoft.identity.common.internal.ui.webview.challengehandlers.IAuthorizationCompletionCallback;
import e.a.a.a.a;
import java.util.HashMap;

public class WebViewAuthorizationFragment extends AuthorizationFragment {
    public static final String PKEYAUTH_STATUS = "pkeyAuthStatus";
    public static final String TAG = WebViewAuthorizationFragment.class.getSimpleName();
    public Intent mAuthIntent;
    public String mAuthorizationRequestUrl;
    public boolean mPkeyAuthStatus = false;
    public String mPostPageLoadedUrl;
    public ProgressBar mProgressBar;
    public String mRedirectUri;
    public HashMap<String, String> mRequestHeaders;
    public WebView mWebView;
    public boolean webViewZoomControlsEnabled;
    public boolean webViewZoomEnabled;

    public class AuthorizationCompletionCallback implements IAuthorizationCompletionCallback {
        public AuthorizationCompletionCallback() {
        }

        public void onChallengeResponseReceived(int i2, Intent intent) {
            String access$300 = WebViewAuthorizationFragment.TAG;
            Logger.info(access$300, (String) null, "onChallengeResponseReceived:" + i2);
            WebViewAuthorizationFragment.this.sendResult(i2, intent);
            WebViewAuthorizationFragment.this.finish();
        }

        public void setPKeyAuthStatus(boolean z) {
            boolean unused = WebViewAuthorizationFragment.this.mPkeyAuthStatus = z;
            String access$300 = WebViewAuthorizationFragment.TAG;
            Logger.info(access$300, (String) null, "setPKeyAuthStatus:" + z);
        }
    }

    private HashMap<String, String> getRequestHeaders(Bundle bundle) {
        try {
            return (HashMap) bundle.getSerializable(AuthenticationConstants.AuthorizationIntentKey.REQUEST_HEADERS);
        } catch (Exception unused) {
            return null;
        }
    }

    @SuppressLint({"SetJavaScriptEnabled", "ClickableViewAccessibility"})
    private void setUpWebView(View view, AzureActiveDirectoryWebViewClient azureActiveDirectoryWebViewClient) {
        WebView webView = (WebView) view.findViewById(R.id.common_auth_webview);
        this.mWebView = webView;
        String userAgentString = webView.getSettings().getUserAgentString();
        WebSettings settings = this.mWebView.getSettings();
        settings.setUserAgentString(userAgentString + AuthenticationConstants.Broker.CLIENT_TLS_NOT_SUPPORTED);
        this.mWebView.getSettings().setJavaScriptEnabled(true);
        this.mWebView.requestFocus(130);
        this.mWebView.setOnTouchListener(new View.OnTouchListener() {
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                if ((action != 0 && action != 1) || view.hasFocus()) {
                    return false;
                }
                view.requestFocus();
                return false;
            }
        });
        this.mWebView.getSettings().setLoadWithOverviewMode(true);
        this.mWebView.getSettings().setDomStorageEnabled(true);
        this.mWebView.getSettings().setUseWideViewPort(true);
        this.mWebView.getSettings().setBuiltInZoomControls(this.webViewZoomControlsEnabled);
        this.mWebView.getSettings().setSupportZoom(this.webViewZoomEnabled);
        this.mWebView.setVisibility(4);
        this.mWebView.setWebViewClient(azureActiveDirectoryWebViewClient);
    }

    public void extractState(Bundle bundle) {
        super.extractState(bundle);
        this.mAuthIntent = (Intent) bundle.getParcelable(AuthenticationConstants.AuthorizationIntentKey.AUTH_INTENT);
        this.mPkeyAuthStatus = bundle.getBoolean(PKEYAUTH_STATUS, false);
        this.mAuthorizationRequestUrl = bundle.getString(AuthenticationConstants.AuthorizationIntentKey.REQUEST_URL);
        this.mRedirectUri = bundle.getString(AuthenticationConstants.AuthorizationIntentKey.REDIRECT_URI);
        this.mRequestHeaders = getRequestHeaders(bundle);
        this.mPostPageLoadedUrl = bundle.getString(AuthenticationConstants.AuthorizationIntentKey.POST_PAGE_LOADED_URL);
        this.webViewZoomEnabled = bundle.getBoolean(AuthenticationConstants.AuthorizationIntentKey.WEB_VIEW_ZOOM_ENABLED, true);
        this.webViewZoomControlsEnabled = bundle.getBoolean(AuthenticationConstants.AuthorizationIntentKey.WEB_VIEW_ZOOM_CONTROLS_ENABLED, true);
    }

    public boolean onBackPressed() {
        Logger.info(TAG, "Back button is pressed");
        WebView webView = this.mWebView;
        if (webView == null || !webView.canGoBack()) {
            return false;
        }
        if (!this.mWebView.canGoBackOrForward(-2)) {
            cancelAuthorization(true);
        } else {
            this.mWebView.goBack();
        }
        return true;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        WebViewUtil.setDataDirectorySuffix(getActivity().getApplicationContext());
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.common_activity_authentication, viewGroup, false);
        this.mProgressBar = (ProgressBar) inflate.findViewById(R.id.common_auth_webview_progressbar);
        setUpWebView(inflate, new AzureActiveDirectoryWebViewClient(getActivity(), new AuthorizationCompletionCallback(), new OnPageLoadedCallback() {
            public void onPageLoaded() {
                WebViewAuthorizationFragment.this.mProgressBar.setVisibility(4);
                if (!StringExtensions.isNullOrBlank(WebViewAuthorizationFragment.this.mPostPageLoadedUrl)) {
                    WebViewAuthorizationFragment.this.mWebView.loadUrl(WebViewAuthorizationFragment.this.mPostPageLoadedUrl);
                }
            }
        }, this.mRedirectUri));
        this.mWebView.post(new Runnable() {
            public void run() {
                WebViewAuthorizationFragment.this.mWebView.loadUrl("about:blank");
                Logger.info(WebViewAuthorizationFragment.TAG + "#onCreateView", "Launching embedded WebView for acquiring auth code.");
                StringBuilder a = a.a("The start url is ");
                a.append(WebViewAuthorizationFragment.this.mAuthorizationRequestUrl);
                Logger.infoPII(WebViewAuthorizationFragment.TAG + "#onCreateView", a.toString());
                WebViewAuthorizationFragment.this.mWebView.loadUrl(WebViewAuthorizationFragment.this.mAuthorizationRequestUrl, WebViewAuthorizationFragment.this.mRequestHeaders);
                WebViewAuthorizationFragment.this.mProgressBar.setVisibility(0);
            }
        });
        return inflate;
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable(AuthenticationConstants.AuthorizationIntentKey.AUTH_INTENT, this.mAuthIntent);
        bundle.putBoolean(PKEYAUTH_STATUS, this.mPkeyAuthStatus);
        bundle.putString(AuthenticationConstants.AuthorizationIntentKey.REDIRECT_URI, this.mRedirectUri);
        bundle.putString(AuthenticationConstants.AuthorizationIntentKey.REQUEST_URL, this.mAuthorizationRequestUrl);
        bundle.putSerializable(AuthenticationConstants.AuthorizationIntentKey.REQUEST_HEADERS, this.mRequestHeaders);
        bundle.putSerializable(AuthenticationConstants.AuthorizationIntentKey.POST_PAGE_LOADED_URL, this.mPostPageLoadedUrl);
        bundle.putSerializable(AuthenticationConstants.AuthorizationIntentKey.POST_PAGE_LOADED_URL, this.mPostPageLoadedUrl);
        bundle.putBoolean(AuthenticationConstants.AuthorizationIntentKey.WEB_VIEW_ZOOM_CONTROLS_ENABLED, this.webViewZoomControlsEnabled);
        bundle.putBoolean(AuthenticationConstants.AuthorizationIntentKey.WEB_VIEW_ZOOM_ENABLED, this.webViewZoomEnabled);
    }
}
