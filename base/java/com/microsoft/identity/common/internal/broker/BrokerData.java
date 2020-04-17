package com.microsoft.identity.common.internal.broker;

import android.content.Context;

public class BrokerData {
    public final String packageName;
    public final String signatureHash;

    public BrokerData(String str, String str2) {
        this.packageName = str;
        this.signatureHash = str2;
    }

    public static BrokerData getBrokerDataForBrokerApp(Context context, String str) {
        return new BrokerData(str, new BrokerValidator(context).verifySignatureAndThrow(str));
    }
}
