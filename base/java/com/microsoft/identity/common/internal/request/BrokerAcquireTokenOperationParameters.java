package com.microsoft.identity.common.internal.request;

import android.text.TextUtils;
import com.microsoft.identity.common.exception.ArgumentException;
import com.microsoft.identity.common.internal.broker.BrokerValidator;
import com.microsoft.identity.common.internal.cache.BrokerOAuth2TokenCache;

public class BrokerAcquireTokenOperationParameters extends AcquireTokenOperationParameters {
    public String mCallerAppVersion;
    public String mCallerPackageName;
    public int mCallerUId;
    public RequestType mRequestType = RequestType.REGULAR;
    public boolean mShouldResolveInterrupt;

    public enum RequestType {
        REGULAR,
        BROKER_RT_REQUEST,
        RESOLVE_INTERRUPT
    }

    public String getCallerAppVersion() {
        return this.mCallerAppVersion;
    }

    public String getCallerPackageName() {
        return this.mCallerPackageName;
    }

    public int getCallerUId() {
        return this.mCallerUId;
    }

    public RequestType getRequestType() {
        return this.mRequestType;
    }

    public boolean getShouldResolveInterrupt() {
        return this.mShouldResolveInterrupt;
    }

    public boolean isRequestFromBroker() {
        RequestType requestType = this.mRequestType;
        return requestType == RequestType.BROKER_RT_REQUEST || requestType == RequestType.RESOLVE_INTERRUPT;
    }

    public void setCallerAppVersion(String str) {
        this.mCallerAppVersion = str;
    }

    public void setCallerPackageName(String str) {
        this.mCallerPackageName = str;
    }

    public void setCallerUId(int i2) {
        this.mCallerUId = i2;
    }

    public void setRequestType(RequestType requestType) {
        this.mRequestType = requestType;
    }

    public void setShouldResolveInterrupt(boolean z) {
        this.mShouldResolveInterrupt = z;
    }

    public void validate() {
        super.validate();
        if (getAuthority() == null) {
            throw new ArgumentException("acquireToken", "mAuthority", "Authority Url is not set");
        } else if (getScopes() == null || getScopes().isEmpty()) {
            throw new ArgumentException("acquireToken", "mScopes", "Scope or resource is not set");
        } else if (TextUtils.isEmpty(getClientId())) {
            throw new ArgumentException("acquireToken", "mClientId", "Client Id is not set");
        } else if (isRequestFromBroker()) {
        } else {
            if (this.mCallerUId == 0) {
                throw new ArgumentException("acquireToken", "mCallerUId", "Caller Uid is not set");
            } else if (TextUtils.isEmpty(this.mCallerPackageName)) {
                throw new ArgumentException("acquireToken", "mCallerPackageName", "Caller package name is not set");
            } else if (!(getTokenCache() instanceof BrokerOAuth2TokenCache)) {
                throw new ArgumentException("acquireToken", AcquireTokenSilentOperationParameters.TAG, "OAuth2Cache not an instance of BrokerOAuth2TokenCache");
            } else if (SdkType.MSAL == getSdkType() && !BrokerValidator.isValidBrokerRedirect(getRedirectUri(), getAppContext(), getCallerPackageName())) {
                throw new ArgumentException("acquireToken", "mRedirectUri", "The redirect URI doesn't match the uri generated with caller package name and signature");
            }
        }
    }
}
