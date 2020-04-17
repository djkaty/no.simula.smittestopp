package com.microsoft.identity.common.internal.broker;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.microsoft.aad.adal.IBrokerAccountService;
import com.microsoft.identity.common.internal.logging.Logger;

public class BrokerAccountServiceConnection implements ServiceConnection {
    public static final String TAG = MicrosoftAuthServiceConnection.class.getSimpleName();
    public IBrokerAccountService mBrokerAccountService;
    public BrokerAccountServiceFuture mBrokerAccountServiceFuture;

    public BrokerAccountServiceConnection(BrokerAccountServiceFuture brokerAccountServiceFuture) {
        this.mBrokerAccountServiceFuture = brokerAccountServiceFuture;
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Logger.verbose(TAG, "BrokerAccountService is connected.");
        IBrokerAccountService asInterface = IBrokerAccountService.Stub.asInterface(iBinder);
        this.mBrokerAccountService = asInterface;
        this.mBrokerAccountServiceFuture.setBrokerAccountService(asInterface);
    }

    public void onServiceDisconnected(ComponentName componentName) {
        Logger.verbose(TAG, "BrokerAccountService is disconnected.");
    }
}
