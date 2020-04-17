package com.microsoft.identity.common.internal.ui.webview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.webkit.CookieManager;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import e.a.a.a.a;

public class WebViewUtil {
    public static final String TAG = "WebViewUtil";

    public static CookieManager getCookieManager(Context context) {
        setDataDirectorySuffix(context);
        return CookieManager.getInstance();
    }

    public static void removeCookiesFromWebView(Context context) {
        CookieManager cookieManager = getCookieManager(context);
        cookieManager.removeAllCookies((ValueCallback) null);
        cookieManager.flush();
    }

    public static void removeSessionCookiesFromWebView(Context context) {
        CookieManager cookieManager = getCookieManager(context);
        cookieManager.removeAllCookies((ValueCallback) null);
        cookieManager.flush();
    }

    public static void setAcceptCookie(boolean z, Context context) {
        getCookieManager(context).setAcceptCookie(z);
    }

    @SuppressLint({"NewApi"})
    public static void setDataDirectorySuffix(Context context) {
        if (Build.VERSION.SDK_INT >= 28) {
            try {
                if (ProcessUtil.isRunningOnAuthService(context)) {
                    WebView.setDataDirectorySuffix(ProcessUtil.AuthServiceProcess);
                }
            } catch (IllegalStateException unused) {
                a.c(new StringBuilder(), TAG, ":setDataDirectorySuffix", "WebView is already initialized. IllegalStateException is expected when setDataDirectorySuffix() is invoked");
            }
        }
    }
}
