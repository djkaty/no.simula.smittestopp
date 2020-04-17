package com.microsoft.identity.common.internal.request;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.microsoft.identity.common.internal.broker.BrokerRequest;

public interface IBrokerRequestAdapter {
    BrokerAcquireTokenOperationParameters brokerInteractiveParametersFromActivity(Activity activity);

    BrokerRequest brokerRequestFromAcquireTokenParameters(AcquireTokenOperationParameters acquireTokenOperationParameters);

    BrokerRequest brokerRequestFromSilentOperationParameters(AcquireTokenSilentOperationParameters acquireTokenSilentOperationParameters);

    BrokerAcquireTokenSilentOperationParameters brokerSilentParametersFromBundle(Bundle bundle, Context context, Account account);
}
