package com.microsoft.identity.common.internal.request;

import android.os.Bundle;
import com.microsoft.identity.common.adal.internal.AuthenticationConstants;
import com.microsoft.identity.common.internal.logging.Logger;

public class BrokerRequestAdapterFactory {
    public static final String TAG = "com.microsoft.identity.common.internal.request.BrokerRequestAdapterFactory";

    public static IBrokerRequestAdapter getBrokerRequestAdapter(Bundle bundle) {
        if (bundle == null || !bundle.containsKey(AuthenticationConstants.Broker.BROKER_REQUEST_V2)) {
            Logger.info(TAG + ":getBrokerRequestAdapter", "Request from ADAL, returning AdalBrokerRequestAdapter");
            return new AdalBrokerRequestAdapter();
        }
        Logger.info(TAG + ":getBrokerRequestAdapter", "Request from MSAL, returning MsalBrokerRequestAdapter");
        return new MsalBrokerRequestAdapter();
    }
}
