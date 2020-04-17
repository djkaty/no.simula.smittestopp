package com.microsoft.identity.common.internal.ui.browser;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.fragment.app.Fragment;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationActivity;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationRequest;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationResult;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationStrategy;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2Strategy;
import com.microsoft.identity.common.internal.result.ResultFuture;
import com.microsoft.identity.common.internal.ui.AuthorizationAgent;
import java.util.List;
import java.util.concurrent.Future;

public class BrowserAuthorizationStrategy<GenericOAuth2Strategy extends OAuth2Strategy, GenericAuthorizationRequest extends AuthorizationRequest> extends AuthorizationStrategy<GenericOAuth2Strategy, GenericAuthorizationRequest> {
    public static final String TAG = "BrowserAuthorizationStrategy";
    public GenericAuthorizationRequest mAuthorizationRequest;
    public ResultFuture<AuthorizationResult> mAuthorizationResultFuture;
    public List<BrowserDescriptor> mBrowserSafeList;
    public CustomTabsManager mCustomTabManager;
    public boolean mDisposed;
    public boolean mIsRequestFromBroker;
    public GenericOAuth2Strategy mOAuth2Strategy;

    public BrowserAuthorizationStrategy(Context context, Activity activity, Fragment fragment, boolean z) {
        super(context, activity, fragment);
        this.mIsRequestFromBroker = z;
    }

    private void checkNotDisposed() {
        if (this.mDisposed) {
            throw new IllegalStateException("Service has been disposed and rendered inoperable");
        }
    }

    public void completeAuthorization(int i2, int i3, Intent intent) {
        if (i2 == 1001) {
            dispose();
            this.mAuthorizationResultFuture.setResult(this.mOAuth2Strategy.getAuthorizationResultFactory().createAuthorizationResult(i3, intent, this.mAuthorizationRequest));
            return;
        }
        String str = TAG;
        Logger.warnPII(str, "Unknown request code " + i2);
    }

    public void dispose() {
        if (!this.mDisposed) {
            CustomTabsManager customTabsManager = this.mCustomTabManager;
            if (customTabsManager != null) {
                customTabsManager.unbind();
            }
            this.mDisposed = true;
        }
    }

    public Future<AuthorizationResult> requestAuthorization(GenericAuthorizationRequest genericauthorizationrequest, GenericOAuth2Strategy genericoauth2strategy) {
        Intent intent;
        checkNotDisposed();
        this.mOAuth2Strategy = genericoauth2strategy;
        this.mAuthorizationRequest = genericauthorizationrequest;
        this.mAuthorizationResultFuture = new ResultFuture<>();
        Browser select = BrowserSelector.select(getApplicationContext(), this.mBrowserSafeList);
        if (select.isCustomTabsServiceSupported()) {
            Logger.info(TAG + ":requestAuthorization", "CustomTabsService is supported.");
            CustomTabsManager customTabsManager = new CustomTabsManager(getApplicationContext());
            this.mCustomTabManager = customTabsManager;
            customTabsManager.bind(select.getPackageName());
            intent = this.mCustomTabManager.getCustomTabsIntent().a;
        } else {
            Logger.warn(TAG + ":requestAuthorization", "CustomTabsService is NOT supported");
            intent = new Intent("android.intent.action.VIEW");
        }
        Intent intent2 = intent;
        intent2.setPackage(select.getPackageName());
        Uri authorizationRequestAsHttpRequest = genericauthorizationrequest.getAuthorizationRequestAsHttpRequest();
        intent2.setData(authorizationRequestAsHttpRequest);
        Intent createStartIntent = AuthorizationActivity.createStartIntent(getApplicationContext(), intent2, authorizationRequestAsHttpRequest.toString(), this.mAuthorizationRequest.getRedirectUri(), this.mAuthorizationRequest.getRequestHeaders(), AuthorizationAgent.BROWSER, true, true);
        if (this.mIsRequestFromBroker) {
            createStartIntent.setFlags(268468224);
        } else {
            createStartIntent.setFlags(268435456);
        }
        launchIntent(createStartIntent);
        return this.mAuthorizationResultFuture;
    }

    public void setBrowserSafeList(List<BrowserDescriptor> list) {
        this.mBrowserSafeList = list;
    }
}
