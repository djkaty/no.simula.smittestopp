package com.microsoft.identity.common.internal.ui.webview;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import androidx.fragment.app.Fragment;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationActivity;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationRequest;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationResult;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationStrategy;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2Strategy;
import com.microsoft.identity.common.internal.result.ResultFuture;
import com.microsoft.identity.common.internal.ui.AuthorizationAgent;
import e.a.a.a.a;
import java.util.concurrent.Future;

public class EmbeddedWebViewAuthorizationStrategy<GenericOAuth2Strategy extends OAuth2Strategy, GenericAuthorizationRequest extends AuthorizationRequest> extends AuthorizationStrategy<GenericOAuth2Strategy, GenericAuthorizationRequest> {
    public static final String TAG = "EmbeddedWebViewAuthorizationStrategy";
    public GenericAuthorizationRequest mAuthorizationRequest;
    public ResultFuture<AuthorizationResult> mAuthorizationResultFuture;
    public GenericOAuth2Strategy mOAuth2Strategy;

    public EmbeddedWebViewAuthorizationStrategy(Context context, Activity activity, Fragment fragment) {
        super(context, activity, fragment);
    }

    public void completeAuthorization(int i2, int i3, Intent intent) {
        if (i2 == 1001) {
            GenericOAuth2Strategy genericoauth2strategy = this.mOAuth2Strategy;
            if (genericoauth2strategy == null || this.mAuthorizationResultFuture == null) {
                String str = TAG;
                StringBuilder a = a.a("SDK Cancel triggering before request is sent out. Potentially due to an stale activity state, oAuth2Strategy null ? [");
                boolean z = true;
                a.append(this.mOAuth2Strategy == null);
                a.append("]mAuthorizationResultFuture ? [");
                if (this.mAuthorizationResultFuture != null) {
                    z = false;
                }
                a.append(z);
                a.append("]");
                Logger.warn(str, a.toString());
                return;
            }
            this.mAuthorizationResultFuture.setResult(genericoauth2strategy.getAuthorizationResultFactory().createAuthorizationResult(i3, intent, this.mAuthorizationRequest));
            return;
        }
        String str2 = TAG;
        Logger.warnPII(str2, "Unknown request code " + i2);
    }

    public Future<AuthorizationResult> requestAuthorization(GenericAuthorizationRequest genericauthorizationrequest, GenericOAuth2Strategy genericoauth2strategy) {
        this.mAuthorizationResultFuture = new ResultFuture<>();
        this.mOAuth2Strategy = genericoauth2strategy;
        this.mAuthorizationRequest = genericauthorizationrequest;
        Logger.info(TAG, "Perform the authorization request with embedded webView.");
        launchIntent(AuthorizationActivity.createStartIntent(getApplicationContext(), (Intent) null, genericauthorizationrequest.getAuthorizationRequestAsHttpRequest().toString(), this.mAuthorizationRequest.getRedirectUri(), this.mAuthorizationRequest.getRequestHeaders(), AuthorizationAgent.WEBVIEW, this.mAuthorizationRequest.isWebViewZoomEnabled(), this.mAuthorizationRequest.isWebViewZoomControlsEnabled()));
        return this.mAuthorizationResultFuture;
    }
}
