package com.microsoft.identity.client;

import android.app.Activity;
import com.microsoft.identity.client.exception.MsalException;

public interface ISingleAccountPublicClientApplication extends IPublicClientApplication {

    public interface CurrentAccountCallback {
        void onAccountChanged(IAccount iAccount, IAccount iAccount2);

        void onAccountLoaded(IAccount iAccount);

        void onError(MsalException msalException);
    }

    public interface SignOutCallback {
        void onError(MsalException msalException);

        void onSignOut();
    }

    IAuthenticationResult acquireTokenSilent(String[] strArr, String str);

    void acquireTokenSilentAsync(String[] strArr, String str, SilentAuthenticationCallback silentAuthenticationCallback);

    ICurrentAccountResult getCurrentAccount();

    void getCurrentAccountAsync(CurrentAccountCallback currentAccountCallback);

    void signIn(Activity activity, String str, String[] strArr, AuthenticationCallback authenticationCallback);

    void signOut(SignOutCallback signOutCallback);

    boolean signOut();
}
