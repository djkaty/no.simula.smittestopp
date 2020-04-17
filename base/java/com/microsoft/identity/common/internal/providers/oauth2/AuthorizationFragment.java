package com.microsoft.identity.common.internal.providers.oauth2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.microsoft.identity.common.adal.internal.AuthenticationConstants;
import com.microsoft.identity.common.internal.logging.DiagnosticContext;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.logging.RequestContext;
import com.microsoft.identity.common.internal.telemetry.Telemetry;
import com.microsoft.identity.common.internal.telemetry.events.UiEndEvent;
import d.m.a.c;
import d.m.a.p;
import e.a.a.a.a;

public abstract class AuthorizationFragment extends Fragment {
    public static final String TAG = AuthorizationFragment.class.getSimpleName();
    public boolean mAuthResultSent = false;
    public BroadcastReceiver mCancelRequestReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            AuthorizationFragment.this.cancelAuthorization(intent.getBooleanExtra(AuthenticationConstants.AuthorizationIntentKey.REQUEST_CANCELLED_BY_USER, false));
        }
    };
    public Bundle mInstanceState;

    public static String setDiagnosticContextForNewThread(String str) {
        RequestContext requestContext = new RequestContext();
        requestContext.put("correlation_id", str);
        DiagnosticContext.setRequestContext(requestContext);
        a.b(new StringBuilder(), TAG, ":setDiagnosticContextForAuthorizationActivity", "Initializing diagnostic context for AuthorizationActivity");
        return str;
    }

    public void cancelAuthorization(boolean z) {
        Intent intent = new Intent();
        intent.setFlags(67108864);
        if (z) {
            Logger.info(TAG, "Received Authorization flow cancelled by the user");
            sendResult(2001, intent);
        } else {
            Logger.info(TAG, "Received Authorization flow cancel request from SDK");
            sendResult(AuthenticationConstants.UIResponse.BROWSER_CODE_SDK_CANCEL, intent);
        }
        Telemetry.emit(new UiEndEvent().isUserCancelled());
        finish();
    }

    public void extractState(Bundle bundle) {
        if (bundle == null) {
            Logger.warn(TAG, "No stored state. Unable to handle response");
            finish();
            return;
        }
        setDiagnosticContextForNewThread(bundle.getString("correlation_id"));
    }

    public void finish() {
        c activity = getActivity();
        if (activity instanceof AuthorizationActivity) {
            activity.finish();
            return;
        }
        p fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            d.m.a.a aVar = new d.m.a.a(fragmentManager);
            aVar.a((Fragment) this);
            aVar.a();
            return;
        }
        throw null;
    }

    public boolean onBackPressed() {
        return false;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        d.q.a.a.a(getContext()).a(this.mCancelRequestReceiver, new IntentFilter(AuthenticationConstants.AuthorizationIntentAction.CANCEL_INTERACTIVE_REQUEST));
        if (bundle == null) {
            a.b(new StringBuilder(), TAG, "#onCreate", "Extract state from the intent bundle.");
            extractState(this.mInstanceState);
            return;
        }
        Logger.verbose(TAG + "#onCreate", "Extract state from the saved bundle.");
        extractState(bundle);
    }

    public void onDestroy() {
        Logger.info(TAG + "#onDestroy", "");
        if (!this.mAuthResultSent) {
            Logger.info(TAG + "#onDestroy", "Hosting Activity is destroyed before Auth request is completed, sending request cancel");
            Telemetry.emit(new UiEndEvent().isUserCancelled());
            sendResult(AuthenticationConstants.UIResponse.BROWSER_CODE_SDK_CANCEL, new Intent());
        }
        d.q.a.a.a(getContext()).a(this.mCancelRequestReceiver);
        super.onDestroy();
    }

    public void onStop() {
        if (!this.mAuthResultSent && getActivity().isFinishing()) {
            Logger.info(TAG + ":onStop", "Hosting Activity is destroyed before Auth request is completed, sending request cancel");
            Telemetry.emit(new UiEndEvent().isUserCancelled());
            sendResult(AuthenticationConstants.UIResponse.BROWSER_CODE_SDK_CANCEL, new Intent());
        }
        super.onStop();
    }

    public void sendResult(int i2, Intent intent) {
        String str = TAG;
        Logger.info(str, "Sending result from Authorization Activity, resultCode: " + i2);
        intent.setAction(AuthenticationConstants.AuthorizationIntentAction.RETURN_INTERACTIVE_REQUEST_RESULT);
        intent.putExtra(AuthenticationConstants.AuthorizationIntentKey.REQUEST_CODE, 1001);
        intent.putExtra(AuthenticationConstants.AuthorizationIntentKey.RESULT_CODE, i2);
        d.q.a.a.a(getContext()).a(intent);
        this.mAuthResultSent = true;
    }

    public void setInstanceState(Bundle bundle) {
        this.mInstanceState = bundle;
    }
}
