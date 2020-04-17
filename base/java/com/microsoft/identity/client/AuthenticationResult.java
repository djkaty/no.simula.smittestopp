package com.microsoft.identity.client;

import com.microsoft.identity.common.internal.cache.ICacheRecord;
import com.microsoft.identity.common.internal.dto.AccessTokenRecord;
import e.a.a.a.a;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;

public final class AuthenticationResult implements IAuthenticationResult {
    public final AccessTokenRecord mAccessToken;
    public final IAccount mAccount;
    public final String mTenantId;

    public AuthenticationResult(List<ICacheRecord> list) {
        ICacheRecord iCacheRecord = list.get(0);
        this.mAccessToken = iCacheRecord.getAccessToken();
        this.mTenantId = iCacheRecord.getAccount().getRealm();
        this.mAccount = AccountAdapter.adapt(list).get(0);
    }

    public String getAccessToken() {
        return this.mAccessToken.getSecret();
    }

    public IAccount getAccount() {
        return this.mAccount;
    }

    public String getAuthenticationScheme() {
        return this.mAccessToken.getAccessTokenType();
    }

    public String getAuthorizationHeader() {
        StringBuilder a = a.a(this.mAccessToken.getAccessTokenType(), " ");
        a.append(this.mAccessToken.getSecret());
        return a.toString();
    }

    public Date getExpiresOn() {
        return new Date(TimeUnit.SECONDS.toMillis(Long.parseLong(this.mAccessToken.getExpiresOn())));
    }

    public String[] getScope() {
        return this.mAccessToken.getTarget().split("\\s");
    }

    public String getTenantId() {
        return this.mTenantId;
    }
}
