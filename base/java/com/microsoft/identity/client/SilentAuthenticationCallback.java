package com.microsoft.identity.client;

import com.microsoft.identity.client.exception.MsalException;

public interface SilentAuthenticationCallback {
    void onError(MsalException msalException);

    void onSuccess(IAuthenticationResult iAuthenticationResult);
}
