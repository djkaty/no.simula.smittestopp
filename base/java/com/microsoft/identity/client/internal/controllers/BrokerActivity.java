package com.microsoft.identity.client.internal.controllers;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.microsoft.identity.common.adal.internal.AuthenticationConstants;
import com.microsoft.identity.common.internal.logging.Logger;
import e.a.a.a.a;

public final class BrokerActivity extends Activity {
    public static final String BROKER_INTENT = "broker_intent";
    public static final int BROKER_INTENT_REQUEST_CODE = 1001;
    public static final String BROKER_INTENT_STARTED = "broker_intent_started";
    public static final String TAG = BrokerActivity.class.getSimpleName();
    public Boolean mBrokerIntentStarted = false;
    public Intent mBrokerInteractiveRequestIntent;

    public void onActivityResult(int i2, int i3, Intent intent) {
        String a = a.a(new StringBuilder(), TAG, ":onActivityResult");
        Logger.info(a, "Result received from Broker Request code: " + i2 + " Result code: " + i2);
        if (i3 == 2004 || i3 == 2001 || i3 == 2002) {
            Logger.verbose(TAG + ":onActivityResult", "Completing interactive request ");
            intent.setAction(AuthenticationConstants.AuthorizationIntentAction.RETURN_INTERACTIVE_REQUEST_RESULT);
            intent.putExtra(AuthenticationConstants.AuthorizationIntentKey.REQUEST_CODE, 1001);
            intent.putExtra(AuthenticationConstants.AuthorizationIntentKey.RESULT_CODE, i3);
            d.q.a.a.a(getApplicationContext()).a(intent);
        }
        finish();
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            this.mBrokerInteractiveRequestIntent = (Intent) getIntent().getExtras().getParcelable(BROKER_INTENT);
            return;
        }
        this.mBrokerInteractiveRequestIntent = (Intent) bundle.getParcelable(BROKER_INTENT);
        this.mBrokerIntentStarted = Boolean.valueOf(bundle.getBoolean(BROKER_INTENT_STARTED));
    }

    public void onResume() {
        super.onResume();
        if (!this.mBrokerIntentStarted.booleanValue()) {
            this.mBrokerIntentStarted = true;
            startActivityForResult(this.mBrokerInteractiveRequestIntent, 1001);
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable(BROKER_INTENT, this.mBrokerInteractiveRequestIntent);
        bundle.putBoolean(BROKER_INTENT_STARTED, this.mBrokerIntentStarted.booleanValue());
    }

    public void onStop() {
        super.onStop();
    }
}
