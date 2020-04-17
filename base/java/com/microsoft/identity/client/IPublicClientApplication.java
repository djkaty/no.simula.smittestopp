package com.microsoft.identity.client;

import android.app.Activity;
import com.microsoft.identity.client.exception.MsalException;
import com.microsoft.identity.common.internal.controllers.TaskCompletedCallbackWithError;
import java.util.List;

public interface IPublicClientApplication {

    public interface ApplicationCreatedListener {
        void onCreated(IPublicClientApplication iPublicClientApplication);

        void onError(MsalException msalException);
    }

    public interface IMultipleAccountApplicationCreatedListener {
        void onCreated(IMultipleAccountPublicClientApplication iMultipleAccountPublicClientApplication);

        void onError(MsalException msalException);
    }

    public interface ISingleAccountApplicationCreatedListener {
        void onCreated(ISingleAccountPublicClientApplication iSingleAccountPublicClientApplication);

        void onError(MsalException msalException);
    }

    public interface LoadAccountsCallback extends TaskCompletedCallbackWithError<List<IAccount>, MsalException> {
        void onError(MsalException msalException);

        void onTaskCompleted(List<IAccount> list);
    }

    void acquireToken(Activity activity, String[] strArr, AuthenticationCallback authenticationCallback);

    void acquireToken(AcquireTokenParameters acquireTokenParameters);

    IAuthenticationResult acquireTokenSilent(AcquireTokenSilentParameters acquireTokenSilentParameters);

    void acquireTokenSilentAsync(AcquireTokenSilentParameters acquireTokenSilentParameters);

    PublicClientApplicationConfiguration getConfiguration();

    boolean isSharedDevice();
}
