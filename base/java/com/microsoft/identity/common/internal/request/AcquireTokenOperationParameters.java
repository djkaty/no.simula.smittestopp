package com.microsoft.identity.common.internal.request;

import android.app.Activity;
import android.util.Pair;
import androidx.fragment.app.Fragment;
import com.microsoft.identity.common.internal.providers.oauth2.OpenIdConnectPromptParameter;
import com.microsoft.identity.common.internal.ui.AuthorizationAgent;
import com.microsoft.identity.common.internal.ui.browser.BrowserDescriptor;
import e.c.c.v.a;
import java.util.HashMap;
import java.util.List;

public class AcquireTokenOperationParameters extends OperationParameters {
    public transient Activity mActivity;
    @a
    public AuthorizationAgent mAuthorizationAgent;
    public boolean mBrokerBrowserSupportEnabled;
    @a
    public List<Pair<String, String>> mExtraQueryStringParameters;
    @a
    public List<String> mExtraScopesToConsent;
    public transient Fragment mFragment;
    public String mLoginHint;
    @a
    public OpenIdConnectPromptParameter mOpenIdConnectPromptParameter;
    public transient HashMap<String, String> mRequestHeaders;
    @a
    public boolean webViewZoomControlsEnabled;
    @a
    public boolean webViewZoomEnabled;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AcquireTokenOperationParameters) || !super.equals(obj)) {
            return false;
        }
        AcquireTokenOperationParameters acquireTokenOperationParameters = (AcquireTokenOperationParameters) obj;
        String str = this.mLoginHint;
        if (str == null ? acquireTokenOperationParameters.mLoginHint != null : !str.equals(acquireTokenOperationParameters.mLoginHint)) {
            return false;
        }
        List<Pair<String, String>> list = this.mExtraQueryStringParameters;
        if (list == null ? acquireTokenOperationParameters.mExtraQueryStringParameters != null : !list.equals(acquireTokenOperationParameters.mExtraQueryStringParameters)) {
            return false;
        }
        List<String> list2 = this.mExtraScopesToConsent;
        if (list2 == null ? acquireTokenOperationParameters.mExtraScopesToConsent != null : !list2.equals(acquireTokenOperationParameters.mExtraScopesToConsent)) {
            return false;
        }
        if (this.mOpenIdConnectPromptParameter == acquireTokenOperationParameters.mOpenIdConnectPromptParameter) {
            return true;
        }
        return false;
    }

    public Activity getActivity() {
        return this.mActivity;
    }

    public AuthorizationAgent getAuthorizationAgent() {
        return this.mAuthorizationAgent;
    }

    public List<BrowserDescriptor> getBrowserSafeList() {
        return this.mBrowserSafeList;
    }

    public List<Pair<String, String>> getExtraQueryStringParameters() {
        return this.mExtraQueryStringParameters;
    }

    public List<String> getExtraScopesToConsent() {
        return this.mExtraScopesToConsent;
    }

    public Fragment getFragment() {
        return this.mFragment;
    }

    public String getLoginHint() {
        return this.mLoginHint;
    }

    public OpenIdConnectPromptParameter getOpenIdConnectPromptParameter() {
        return this.mOpenIdConnectPromptParameter;
    }

    public HashMap<String, String> getRequestHeaders() {
        return this.mRequestHeaders;
    }

    public int hashCode() {
        int hashCode = super.hashCode() * 31;
        String str = this.mLoginHint;
        int i2 = 0;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        List<Pair<String, String>> list = this.mExtraQueryStringParameters;
        int hashCode3 = (hashCode2 + (list != null ? list.hashCode() : 0)) * 31;
        List<String> list2 = this.mExtraScopesToConsent;
        int hashCode4 = (hashCode3 + (list2 != null ? list2.hashCode() : 0)) * 31;
        OpenIdConnectPromptParameter openIdConnectPromptParameter = this.mOpenIdConnectPromptParameter;
        if (openIdConnectPromptParameter != null) {
            i2 = openIdConnectPromptParameter.hashCode();
        }
        return hashCode4 + i2;
    }

    public boolean isBrokerBrowserSupportEnabled() {
        return this.mBrokerBrowserSupportEnabled;
    }

    public boolean isWebViewZoomControlsEnabled() {
        return this.webViewZoomControlsEnabled;
    }

    public boolean isWebViewZoomEnabled() {
        return this.webViewZoomEnabled;
    }

    public void setActivity(Activity activity) {
        this.mActivity = activity;
    }

    public void setAuthorizationAgent(AuthorizationAgent authorizationAgent) {
        this.mAuthorizationAgent = authorizationAgent;
    }

    public void setBrokerBrowserSupportEnabled(boolean z) {
        this.mBrokerBrowserSupportEnabled = z;
    }

    public void setBrowserSafeList(List<BrowserDescriptor> list) {
        this.mBrowserSafeList = list;
    }

    public void setExtraQueryStringParameters(List<Pair<String, String>> list) {
        this.mExtraQueryStringParameters = list;
    }

    public void setExtraScopesToConsent(List<String> list) {
        this.mExtraScopesToConsent = list;
    }

    public void setFragment(Fragment fragment) {
        this.mFragment = fragment;
    }

    public void setLoginHint(String str) {
        if (str != null) {
            str = str.trim();
        }
        this.mLoginHint = str;
    }

    public void setOpenIdConnectPromptParameter(OpenIdConnectPromptParameter openIdConnectPromptParameter) {
        this.mOpenIdConnectPromptParameter = openIdConnectPromptParameter;
    }

    public void setRequestHeaders(HashMap<String, String> hashMap) {
        this.mRequestHeaders = hashMap;
    }

    public void setWebViewZoomControlsEnabled(boolean z) {
        this.webViewZoomControlsEnabled = z;
    }

    public void setWebViewZoomEnabled(boolean z) {
        this.webViewZoomEnabled = z;
    }
}
