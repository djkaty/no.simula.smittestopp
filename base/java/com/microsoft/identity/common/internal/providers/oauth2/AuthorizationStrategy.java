package com.microsoft.identity.common.internal.providers.oauth2;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import androidx.fragment.app.Fragment;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationRequest;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2Strategy;
import d.m.a.a;
import d.m.a.p;
import java.lang.ref.WeakReference;
import java.util.concurrent.Future;

public abstract class AuthorizationStrategy<GenericOAuth2Strategy extends OAuth2Strategy, GenericAuthorizationRequest extends AuthorizationRequest> {
    public WeakReference<Activity> mReferencedActivity;
    public WeakReference<Context> mReferencedApplicationContext;
    public WeakReference<Fragment> mReferencedFragment;

    public AuthorizationStrategy(Context context, Activity activity, Fragment fragment) {
        this.mReferencedApplicationContext = new WeakReference<>(context);
        this.mReferencedActivity = new WeakReference<>(activity);
        this.mReferencedFragment = new WeakReference<>(fragment);
    }

    public abstract void completeAuthorization(int i2, int i3, Intent intent);

    public Context getApplicationContext() {
        return (Context) this.mReferencedApplicationContext.get();
    }

    public void launchIntent(Intent intent) {
        Fragment fragment = (Fragment) this.mReferencedFragment.get();
        if (fragment != null) {
            AuthorizationFragment authorizationFragmentFromStartIntent = AuthorizationActivity.getAuthorizationFragmentFromStartIntent(intent);
            p fragmentManager = fragment.getFragmentManager();
            if (fragmentManager != null) {
                a aVar = new a(fragmentManager);
                aVar.a(fragment.getId(), authorizationFragmentFromStartIntent, AuthorizationFragment.class.getName(), 1);
                aVar.a();
                return;
            }
            throw null;
        }
        ((Activity) this.mReferencedActivity.get()).startActivity(intent);
    }

    public abstract Future<AuthorizationResult> requestAuthorization(GenericAuthorizationRequest genericauthorizationrequest, GenericOAuth2Strategy genericoauth2strategy);
}
