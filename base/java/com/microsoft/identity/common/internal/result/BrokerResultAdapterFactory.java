package com.microsoft.identity.common.internal.result;

import com.microsoft.identity.common.internal.request.SdkType;

public class BrokerResultAdapterFactory {
    public static IBrokerResultAdapter getBrokerResultAdapter(SdkType sdkType) {
        if (sdkType == SdkType.ADAL) {
            return new AdalBrokerResultAdapter();
        }
        return new MsalBrokerResultAdapter();
    }
}
