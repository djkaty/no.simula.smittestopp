package com.microsoft.identity.common.internal.broker;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.microsoft.identity.client.IMicrosoftAuthService;
import com.microsoft.identity.common.internal.logging.Logger;

public class MicrosoftAuthServiceConnection implements ServiceConnection {
    public static final String TAG = MicrosoftAuthServiceConnection.class.getSimpleName();
    public IMicrosoftAuthService mMicrosoftAuthService;
    public MicrosoftAuthServiceFuture mMicrosoftAuthServiceFuture;

    public MicrosoftAuthServiceConnection(MicrosoftAuthServiceFuture microsoftAuthServiceFuture) {
        this.mMicrosoftAuthServiceFuture = microsoftAuthServiceFuture;
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Logger.info(TAG, "MicrosoftAuthService is connected.");
        IMicrosoftAuthService asInterface = IMicrosoftAuthService.Stub.asInterface(iBinder);
        this.mMicrosoftAuthService = asInterface;
        this.mMicrosoftAuthServiceFuture.setMicrosoftAuthService(asInterface);
    }

    public void onServiceDisconnected(ComponentName componentName) {
        Logger.info(TAG, "MicrosoftAuthService is disconnected.");
    }
}
