package com.microsoft.identity.common.internal.providers.oauth2;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.microsoft.identity.common.R;
import com.microsoft.identity.common.adal.internal.AuthenticationConstants;
import com.microsoft.identity.common.internal.logging.DiagnosticContext;
import com.microsoft.identity.common.internal.telemetry.Telemetry;
import com.microsoft.identity.common.internal.telemetry.events.UiStartEvent;
import com.microsoft.identity.common.internal.ui.AuthorizationAgent;
import d.m.a.a;
import d.m.a.c;
import d.m.a.p;
import java.util.HashMap;

public final class AuthorizationActivity extends c {
    public AuthorizationFragment mFragment;

    public static Intent createStartIntent(Context context, Intent intent, String str, String str2, HashMap<String, String> hashMap, AuthorizationAgent authorizationAgent, boolean z, boolean z2) {
        Intent intent2 = new Intent(context, AuthorizationActivity.class);
        intent2.putExtra(AuthenticationConstants.AuthorizationIntentKey.AUTH_INTENT, intent);
        intent2.putExtra(AuthenticationConstants.AuthorizationIntentKey.REQUEST_URL, str);
        intent2.putExtra(AuthenticationConstants.AuthorizationIntentKey.REDIRECT_URI, str2);
        intent2.putExtra(AuthenticationConstants.AuthorizationIntentKey.REQUEST_HEADERS, hashMap);
        intent2.putExtra(AuthenticationConstants.AuthorizationIntentKey.AUTHORIZATION_AGENT, authorizationAgent);
        intent2.putExtra(AuthenticationConstants.AuthorizationIntentKey.WEB_VIEW_ZOOM_CONTROLS_ENABLED, z2);
        intent2.putExtra(AuthenticationConstants.AuthorizationIntentKey.WEB_VIEW_ZOOM_ENABLED, z);
        intent2.putExtra("correlation_id", (String) DiagnosticContext.getRequestContext().get("correlation_id"));
        return intent2;
    }

    public static AuthorizationFragment getAuthorizationFragmentFromStartIntent(Intent intent) {
        AuthorizationFragment authorizationFragment;
        AuthorizationAgent authorizationAgent = (AuthorizationAgent) intent.getSerializableExtra(AuthenticationConstants.AuthorizationIntentKey.AUTHORIZATION_AGENT);
        Telemetry.emit(new UiStartEvent().putUserAgent(authorizationAgent));
        if (authorizationAgent == AuthorizationAgent.WEBVIEW) {
            authorizationFragment = new WebViewAuthorizationFragment();
        } else {
            authorizationFragment = new BrowserAuthorizationFragment();
        }
        authorizationFragment.setInstanceState(intent.getExtras());
        return authorizationFragment;
    }

    public void onBackPressed() {
        if (!this.mFragment.onBackPressed()) {
            super.onBackPressed();
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.authorization_activity);
        this.mFragment = getAuthorizationFragmentFromStartIntent(getIntent());
        p supportFragmentManager = getSupportFragmentManager();
        if (supportFragmentManager != null) {
            a aVar = new a(supportFragmentManager);
            int i2 = R.id.authorization_activity_content;
            AuthorizationFragment authorizationFragment = this.mFragment;
            if (i2 != 0) {
                aVar.a(i2, authorizationFragment, (String) null, 2);
                aVar.a();
                return;
            }
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        throw null;
    }
}
