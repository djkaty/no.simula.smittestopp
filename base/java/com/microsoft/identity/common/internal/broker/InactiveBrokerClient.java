package com.microsoft.identity.common.internal.broker;

import android.content.Context;
import android.content.Intent;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.internal.logging.Logger;
import e.a.a.a.a;

public class InactiveBrokerClient {
    public static final String BROKER_ACCOUNT_SERVICE_CLASS_NAME = "com.microsoft.aad.adal.BrokerAccountService";
    public static final String BROKER_ACCOUNT_SERVICE_INTENT_FILTER = "com.microsoft.workaccount.BrokerAccount";
    public static final String TAG = "InactiveBrokerClient";
    public Boolean mBound = false;
    public BrokerAccountServiceConnection mBrokerAccountServiceConnection;
    public Context mContext;
    public String mInactiveBrokerPackageName;

    public InactiveBrokerClient(Context context, BrokerData brokerData) {
        this.mContext = context;
        this.mInactiveBrokerPackageName = brokerData.packageName;
    }

    private Intent getIntentForBrokerAccountService() {
        Intent intent = new Intent(BROKER_ACCOUNT_SERVICE_INTENT_FILTER);
        intent.setPackage(this.mInactiveBrokerPackageName);
        intent.setClassName(this.mInactiveBrokerPackageName, BROKER_ACCOUNT_SERVICE_CLASS_NAME);
        return intent;
    }

    public BrokerAccountServiceFuture connect() {
        BrokerAccountServiceFuture brokerAccountServiceFuture = new BrokerAccountServiceFuture();
        this.mBrokerAccountServiceConnection = new BrokerAccountServiceConnection(brokerAccountServiceFuture);
        this.mBound = Boolean.valueOf(this.mContext.bindService(getIntentForBrokerAccountService(), this.mBrokerAccountServiceConnection, 1));
        String a = a.a(new StringBuilder(), TAG, "connect");
        StringBuilder a2 = a.a("The status for BrokerAccountService bindService call is: ");
        a2.append(Boolean.valueOf(this.mBound.booleanValue()));
        Logger.verbose(a, a2.toString());
        if (this.mBound.booleanValue()) {
            return brokerAccountServiceFuture;
        }
        throw new ClientException("Service is unavailable or does not support binding. BrokerAccountService.");
    }

    public void disconnect() {
        if (this.mBound.booleanValue()) {
            this.mContext.unbindService(this.mBrokerAccountServiceConnection);
            this.mBound = false;
        }
    }
}
