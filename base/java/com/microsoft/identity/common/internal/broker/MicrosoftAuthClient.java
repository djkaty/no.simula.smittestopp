package com.microsoft.identity.common.internal.broker;

import android.accounts.AccountManager;
import android.accounts.AuthenticatorDescription;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import com.microsoft.identity.common.adal.internal.AuthenticationConstants;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.internal.logging.Logger;
import e.a.a.a.a;
import java.util.List;

public class MicrosoftAuthClient {
    public static final String MICROSOFT_AUTH_SERVICE_CLASS_NAME = "com.microsoft.identity.client.MicrosoftAuthService";
    public static final String MICROSOFT_AUTH_SERVICE_INTENT_FILTER = "com.microsoft.identity.client.MicrosoftAuth";
    public static final String TAG = "MicrosoftAuthClient";
    public Boolean mBound = false;
    public Context mContext;
    public MicrosoftAuthServiceConnection mMicrosoftAuthServiceConnection;
    public Intent mMicrosoftAuthServiceIntent;

    public MicrosoftAuthClient(Context context) {
        this.mContext = context;
        this.mMicrosoftAuthServiceIntent = getIntentForAuthService(context);
    }

    private String getCurrentActiveBrokerPackageName(Context context) {
        for (AuthenticatorDescription authenticatorDescription : AccountManager.get(context).getAuthenticatorTypes()) {
            if (authenticatorDescription.type.equals(AuthenticationConstants.Broker.BROKER_ACCOUNT_TYPE) && isMicrosoftAuthServiceSupported(context.getPackageManager(), authenticatorDescription.packageName)) {
                return authenticatorDescription.packageName;
            }
        }
        return null;
    }

    private boolean isMicrosoftAuthServiceSupported(PackageManager packageManager, String str) {
        Intent intent = new Intent(MICROSOFT_AUTH_SERVICE_INTENT_FILTER);
        intent.setPackage(str);
        intent.setClassName(str, MICROSOFT_AUTH_SERVICE_CLASS_NAME);
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (queryIntentServices == null || queryIntentServices.size() <= 0) {
            return false;
        }
        return true;
    }

    public MicrosoftAuthServiceFuture connect() {
        MicrosoftAuthServiceFuture microsoftAuthServiceFuture = new MicrosoftAuthServiceFuture();
        MicrosoftAuthServiceConnection microsoftAuthServiceConnection = new MicrosoftAuthServiceConnection(microsoftAuthServiceFuture);
        this.mMicrosoftAuthServiceConnection = microsoftAuthServiceConnection;
        this.mBound = Boolean.valueOf(this.mContext.bindService(this.mMicrosoftAuthServiceIntent, microsoftAuthServiceConnection, 1));
        String a = a.a(new StringBuilder(), TAG, "connect");
        StringBuilder a2 = a.a("The status for MicrosoftAuthService bindService call is: ");
        a2.append(Boolean.valueOf(this.mBound.booleanValue()));
        Logger.info(a, a2.toString());
        if (this.mBound.booleanValue()) {
            return microsoftAuthServiceFuture;
        }
        throw new ClientException("Service is unavailable or does not support binding.  Microsoft Auth Service.");
    }

    public void disconnect() {
        if (this.mBound.booleanValue()) {
            this.mContext.unbindService(this.mMicrosoftAuthServiceConnection);
            this.mBound = false;
        }
    }

    public Intent getIntentForAuthService(Context context) {
        String currentActiveBrokerPackageName = getCurrentActiveBrokerPackageName(context);
        if (currentActiveBrokerPackageName == null || currentActiveBrokerPackageName.length() == 0) {
            return null;
        }
        Intent intent = new Intent(MICROSOFT_AUTH_SERVICE_INTENT_FILTER);
        intent.setPackage(currentActiveBrokerPackageName);
        intent.setClassName(currentActiveBrokerPackageName, MICROSOFT_AUTH_SERVICE_CLASS_NAME);
        return intent;
    }
}
