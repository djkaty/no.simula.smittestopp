package com.microsoft.identity.client;

import android.app.Activity;
import android.os.Bundle;
import com.microsoft.identity.common.internal.providers.oauth2.BrowserAuthorizationFragment;
import com.microsoft.identity.common.internal.util.StringUtil;

public final class BrowserTabActivity extends Activity {
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null && getIntent() != null && !StringUtil.isEmpty(getIntent().getDataString())) {
            startActivity(BrowserAuthorizationFragment.createCustomTabResponseIntent(this, getIntent().getDataString()));
            finish();
        }
    }
}
