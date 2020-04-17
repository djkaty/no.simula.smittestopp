package com.microsoft.identity.common.internal.ui.webview;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.webkit.HttpAuthHandler;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.microsoft.identity.common.adal.internal.AuthenticationConstants;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.ui.webview.challengehandlers.ChallengeFactory;
import com.microsoft.identity.common.internal.ui.webview.challengehandlers.IAuthorizationCompletionCallback;
import com.microsoft.identity.common.internal.ui.webview.challengehandlers.NtlmChallengeHandler;
import com.microsoft.identity.common.internal.util.StringUtil;
import e.a.a.a.a;

public abstract class OAuth2WebViewClient extends WebViewClient {
    public static final String TAG = OAuth2WebViewClient.class.getSimpleName();
    public final Activity mActivity;
    public final IAuthorizationCompletionCallback mCompletionCallback;
    public final OnPageLoadedCallback mPageLoadedCallback;

    public OAuth2WebViewClient(Activity activity, IAuthorizationCompletionCallback iAuthorizationCompletionCallback, OnPageLoadedCallback onPageLoadedCallback) {
        this.mActivity = activity;
        this.mCompletionCallback = iAuthorizationCompletionCallback;
        this.mPageLoadedCallback = onPageLoadedCallback;
    }

    private void checkStartUrl(String str) {
        if (StringUtil.isEmpty(str)) {
            Logger.info(TAG, "onPageStarted: Null url for page to load.");
            return;
        }
        Uri parse = Uri.parse(str);
        if (parse.isOpaque()) {
            Logger.info(TAG, "onPageStarted: Non-hierarchical loading uri.");
            String str2 = TAG;
            Logger.infoPII(str2, "start url: " + str);
        } else if (StringUtil.isEmpty(parse.getQueryParameter("code"))) {
            String str3 = TAG;
            StringBuilder a = a.a("Host: ");
            a.append(parse.getHost());
            a.append(" Path: ");
            a.append(parse.getPath());
            Logger.infoPII(str3, a.toString());
        } else {
            Logger.info(TAG, "Auth code is returned for the loading url.");
            String str4 = TAG;
            StringBuilder a2 = a.a("Host: ");
            a2.append(parse.getHost());
            a2.append(" Path: ");
            a2.append(parse.getPath());
            Logger.infoPII(str4, a2.toString());
        }
    }

    public Activity getActivity() {
        return this.mActivity;
    }

    public IAuthorizationCompletionCallback getCompletionCallback() {
        return this.mCompletionCallback;
    }

    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        this.mPageLoadedCallback.onPageLoaded();
        webView.setVisibility(0);
    }

    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        checkStartUrl(str);
        Logger.info(TAG, "WebView starts loading.");
        super.onPageStarted(webView, str, bitmap);
    }

    public void onReceivedError(WebView webView, int i2, String str, String str2) {
        super.onReceivedError(webView, i2, str, str2);
        webView.stopLoading();
        Intent intent = new Intent();
        intent.putExtra(AuthenticationConstants.Browser.RESPONSE_ERROR_CODE, "Error Code:" + i2);
        intent.putExtra(AuthenticationConstants.Browser.RESPONSE_ERROR_MESSAGE, str);
        this.mCompletionCallback.onChallengeResponseReceived(2002, intent);
    }

    public void onReceivedHttpAuthRequest(WebView webView, HttpAuthHandler httpAuthHandler, String str, String str2) {
        Logger.info(TAG, "Receive the http auth request. Start the dialog to ask for creds. ");
        String str3 = TAG;
        Logger.infoPII(str3, "Host:" + str);
        new NtlmChallengeHandler(this.mActivity, this.mCompletionCallback).processChallenge(ChallengeFactory.getNtlmChallenge(webView, httpAuthHandler, str, str2));
    }

    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        sslErrorHandler.cancel();
        Intent intent = new Intent();
        intent.putExtra(AuthenticationConstants.Browser.RESPONSE_ERROR_CODE, "Code:-11");
        intent.putExtra(AuthenticationConstants.Browser.RESPONSE_ERROR_MESSAGE, sslError.toString());
        this.mCompletionCallback.onChallengeResponseReceived(2002, intent);
    }
}
