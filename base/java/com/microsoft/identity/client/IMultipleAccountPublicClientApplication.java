package com.microsoft.identity.client;

import android.app.Activity;
import com.microsoft.identity.client.IPublicClientApplication;
import com.microsoft.identity.client.exception.MsalException;
import com.microsoft.identity.common.internal.controllers.TaskCompletedCallbackWithError;
import java.util.List;

public interface IMultipleAccountPublicClientApplication extends IPublicClientApplication {

    public interface GetAccountCallback extends TaskCompletedCallbackWithError<IAccount, MsalException> {
        void onError(MsalException msalException);

        void onTaskCompleted(IAccount iAccount);
    }

    public interface RemoveAccountCallback {
        void onError(MsalException msalException);

        void onRemoved();
    }

    void acquireToken(Activity activity, String[] strArr, String str, AuthenticationCallback authenticationCallback);

    IAuthenticationResult acquireTokenSilent(String[] strArr, IAccount iAccount, String str);

    void acquireTokenSilentAsync(String[] strArr, IAccount iAccount, String str, SilentAuthenticationCallback silentAuthenticationCallback);

    IAccount getAccount(String str);

    void getAccount(String str, GetAccountCallback getAccountCallback);

    List<IAccount> getAccounts();

    void getAccounts(IPublicClientApplication.LoadAccountsCallback loadAccountsCallback);

    void removeAccount(IAccount iAccount, RemoveAccountCallback removeAccountCallback);

    boolean removeAccount(IAccount iAccount);
}
