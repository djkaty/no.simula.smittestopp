package com.microsoft.identity.client.internal.controllers;

import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import com.microsoft.identity.common.adal.internal.AuthenticationConstants;
import com.microsoft.identity.common.internal.broker.BrokerRequest;
import com.microsoft.identity.common.internal.cache.ICacheRecord;
import com.microsoft.identity.common.internal.request.AcquireTokenOperationParameters;
import com.microsoft.identity.common.internal.request.AcquireTokenSilentOperationParameters;
import com.microsoft.identity.common.internal.request.MsalBrokerRequestAdapter;
import com.microsoft.identity.common.internal.request.OperationParameters;
import com.microsoft.identity.common.internal.result.AcquireTokenResult;
import com.microsoft.identity.common.internal.result.MsalBrokerResultAdapter;
import java.lang.reflect.Type;
import java.util.List;

public abstract class BrokerBaseStrategy {
    public final MsalBrokerRequestAdapter mRequestAdapter = new MsalBrokerRequestAdapter();
    public final MsalBrokerResultAdapter mResultAdapter = new MsalBrokerResultAdapter();

    public abstract AcquireTokenResult acquireTokenSilent(AcquireTokenSilentOperationParameters acquireTokenSilentOperationParameters);

    public Intent completeInteractiveRequestIntent(Intent intent, AcquireTokenOperationParameters acquireTokenOperationParameters) {
        intent.putExtra(AuthenticationConstants.Broker.BROKER_REQUEST_V2, MsalBrokerRequestAdapter.sRequestAdapterGsonInstance.a((Object) this.mRequestAdapter.brokerRequestFromAcquireTokenParameters(acquireTokenOperationParameters), (Type) BrokerRequest.class));
        return intent;
    }

    public abstract List<ICacheRecord> getBrokerAccounts(OperationParameters operationParameters);

    public abstract Intent getBrokerAuthorizationIntent(AcquireTokenOperationParameters acquireTokenOperationParameters);

    public abstract List<ICacheRecord> getCurrentAccountInSharedDevice(OperationParameters operationParameters);

    public abstract boolean getDeviceMode(OperationParameters operationParameters);

    public Handler getPreferredHandler() {
        if (Looper.myLooper() == null || Looper.getMainLooper() == Looper.myLooper()) {
            return new Handler(Looper.getMainLooper());
        }
        return new Handler(Looper.myLooper());
    }

    public abstract void hello(OperationParameters operationParameters);

    public abstract void removeBrokerAccount(OperationParameters operationParameters);

    public abstract void signOutFromSharedDevice(OperationParameters operationParameters);
}
