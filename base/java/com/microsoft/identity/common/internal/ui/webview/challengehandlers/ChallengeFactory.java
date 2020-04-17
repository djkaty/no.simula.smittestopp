package com.microsoft.identity.common.internal.ui.webview.challengehandlers;

import android.webkit.HttpAuthHandler;
import android.webkit.WebView;

public final class ChallengeFactory {
    public static NtlmChallenge getNtlmChallenge(WebView webView, HttpAuthHandler httpAuthHandler, String str, String str2) {
        return new NtlmChallenge(webView, httpAuthHandler, str, str2);
    }
}
