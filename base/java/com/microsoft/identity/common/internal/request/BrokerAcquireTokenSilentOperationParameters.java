package com.microsoft.identity.common.internal.request;

import android.accounts.Account;
import android.text.TextUtils;
import android.util.Pair;
import com.microsoft.identity.common.exception.ArgumentException;
import com.microsoft.identity.common.internal.authscheme.BearerAuthenticationSchemeInternal;
import com.microsoft.identity.common.internal.broker.BrokerValidator;
import com.microsoft.identity.common.internal.cache.BrokerOAuth2TokenCache;
import java.util.List;

public class BrokerAcquireTokenSilentOperationParameters extends AcquireTokenSilentOperationParameters {
    public Account mAccountManagerAccount;
    public String mBrokerVersion;
    public String mCallerAppVersion;
    public String mCallerPackageName;
    public int mCallerUId;
    public List<Pair<String, String>> mExtraQueryStringParameters;
    public String mHomeAccountId;
    public String mLocalAccountId;
    public String mLoginHint;
    public int mSleepTimeBeforePrtAcquisition;

    public BrokerAcquireTokenSilentOperationParameters() {
    }

    public Account getAccountManagerAccount() {
        return this.mAccountManagerAccount;
    }

    public String getBrokerVersion() {
        return this.mBrokerVersion;
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

    public List<Pair<String, String>> getExtraQueryStringParameters() {
        return this.mExtraQueryStringParameters;
    }

    public String getHomeAccountId() {
        return this.mHomeAccountId;
    }

    public String getLocalAccountId() {
        return this.mLocalAccountId;
    }

    public String getLoginHint() {
        return this.mLoginHint;
    }

    public int getSleepTimeBeforePrtAcquisition() {
        return this.mSleepTimeBeforePrtAcquisition;
    }

    public void setAccountManagerAccount(Account account) {
        this.mAccountManagerAccount = account;
    }

    public void setBrokerVersion(String str) {
        this.mBrokerVersion = str;
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

    public void setExtraQueryStringParameters(List<Pair<String, String>> list) {
        this.mExtraQueryStringParameters = list;
    }

    public void setHomeAccountId(String str) {
        this.mHomeAccountId = str;
    }

    public void setLocalAccountId(String str) {
        this.mLocalAccountId = str;
    }

    public void setLoginHint(String str) {
        this.mLoginHint = str;
    }

    public void setSleepTimeBeforePrtAcquisition(int i2) {
        this.mSleepTimeBeforePrtAcquisition = i2;
    }

    public void validate() {
        if (this.mCallerUId == 0) {
            throw new ArgumentException("acquireTokenSilent", "mCallerUId", "Caller Uid is not set");
        } else if (TextUtils.isEmpty(this.mCallerPackageName)) {
            throw new ArgumentException("acquireTokenSilent", "mCallerPackageName", "Caller package name is not set");
        } else if (getAuthority() == null) {
            throw new ArgumentException("acquireTokenSilent", "mAuthority", "Authority Url is not set");
        } else if (getScopes() == null || getScopes().isEmpty()) {
            throw new ArgumentException("acquireTokenSilent", "mScopes", "Scope or resource is not set");
        } else if (TextUtils.isEmpty(getClientId())) {
            throw new ArgumentException("acquireTokenSilent", "mClientId", "Client Id is not set");
        } else if (TextUtils.isEmpty(this.mCallerPackageName)) {
            throw new ArgumentException("acquireTokenSilent", "mCallerPackageName", "Caller package name is not set");
        } else if (SdkType.MSAL == getSdkType() && !BrokerValidator.isValidBrokerRedirect(getRedirectUri(), getAppContext(), getCallerPackageName())) {
            throw new ArgumentException("acquireTokenSilent", "mRedirectUri", "The redirect URI doesn't match the uri generated with caller package name and signature");
        } else if (!(getTokenCache() instanceof BrokerOAuth2TokenCache)) {
            throw new ArgumentException("acquireTokenSilent", AcquireTokenSilentOperationParameters.TAG, "OAuth2Cache not an instance of BrokerOAuth2TokenCache");
        } else if (this.mAccountManagerAccount == null) {
            throw new ArgumentException("acquireTokenSilent", "mCallerPackageName", "Android Account manager Account is null");
        }
    }

    public BrokerAcquireTokenSilentOperationParameters(BrokerAcquireTokenOperationParameters brokerAcquireTokenOperationParameters) {
        setAppContext(brokerAcquireTokenOperationParameters.getAppContext());
        setTokenCache(brokerAcquireTokenOperationParameters.getTokenCache());
        setScopes(brokerAcquireTokenOperationParameters.getScopes());
        setClientId(brokerAcquireTokenOperationParameters.getClientId());
        setRedirectUri(brokerAcquireTokenOperationParameters.getRedirectUri());
        setAuthority(brokerAcquireTokenOperationParameters.getAuthority());
        setClaimsRequest(brokerAcquireTokenOperationParameters.getClaimsRequestJson());
        setCallerAppVersion(brokerAcquireTokenOperationParameters.getCallerAppVersion());
        setCallerPackageName(brokerAcquireTokenOperationParameters.getCallerPackageName());
        setCallerUId(brokerAcquireTokenOperationParameters.getCallerUId());
        setCorrelationId(brokerAcquireTokenOperationParameters.getCorrelationId());
        setLoginHint(brokerAcquireTokenOperationParameters.getLoginHint());
        setSdkType(brokerAcquireTokenOperationParameters.getSdkType());
        setExtraQueryStringParameters(brokerAcquireTokenOperationParameters.getExtraQueryStringParameters());
        setAuthenticationScheme(brokerAcquireTokenOperationParameters.getAuthenticationScheme() != null ? brokerAcquireTokenOperationParameters.getAuthenticationScheme() : new BearerAuthenticationSchemeInternal());
    }
}
