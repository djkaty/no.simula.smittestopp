package com.microsoft.identity.common.internal.result;

import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationResult;
import com.microsoft.identity.common.internal.providers.oauth2.TokenResult;

public class AcquireTokenResult {
    public AuthorizationResult mAuthorizationResult;
    public ILocalAuthenticationResult mLocalAuthenticationResult;
    public Boolean mSucceeded = false;
    public TokenResult mTokenResult;

    public AuthorizationResult getAuthorizationResult() {
        return this.mAuthorizationResult;
    }

    public ILocalAuthenticationResult getLocalAuthenticationResult() {
        return this.mLocalAuthenticationResult;
    }

    public Boolean getSucceeded() {
        return this.mSucceeded;
    }

    public TokenResult getTokenResult() {
        return this.mTokenResult;
    }

    public void setAuthorizationResult(AuthorizationResult authorizationResult) {
        this.mAuthorizationResult = authorizationResult;
    }

    public void setLocalAuthenticationResult(ILocalAuthenticationResult iLocalAuthenticationResult) {
        this.mLocalAuthenticationResult = iLocalAuthenticationResult;
        this.mSucceeded = true;
    }

    public void setTokenResult(TokenResult tokenResult) {
        this.mTokenResult = tokenResult;
    }
}
