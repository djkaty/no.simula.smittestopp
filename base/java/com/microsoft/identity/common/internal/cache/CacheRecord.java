package com.microsoft.identity.common.internal.cache;

import com.microsoft.identity.common.internal.dto.AccessTokenRecord;
import com.microsoft.identity.common.internal.dto.AccountRecord;
import com.microsoft.identity.common.internal.dto.IdTokenRecord;
import com.microsoft.identity.common.internal.dto.RefreshTokenRecord;

public class CacheRecord implements ICacheRecord {
    public AccessTokenRecord mAccessToken;
    public AccountRecord mAccount;
    public IdTokenRecord mIdToken;
    public RefreshTokenRecord mRefreshToken;
    public IdTokenRecord mV1IdToken;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || CacheRecord.class != obj.getClass()) {
            return false;
        }
        CacheRecord cacheRecord = (CacheRecord) obj;
        AccountRecord accountRecord = this.mAccount;
        if (accountRecord == null ? cacheRecord.mAccount != null : !accountRecord.equals(cacheRecord.mAccount)) {
            return false;
        }
        AccessTokenRecord accessTokenRecord = this.mAccessToken;
        if (accessTokenRecord == null ? cacheRecord.mAccessToken != null : !accessTokenRecord.equals(cacheRecord.mAccessToken)) {
            return false;
        }
        RefreshTokenRecord refreshTokenRecord = this.mRefreshToken;
        if (refreshTokenRecord == null ? cacheRecord.mRefreshToken != null : !refreshTokenRecord.equals(cacheRecord.mRefreshToken)) {
            return false;
        }
        IdTokenRecord idTokenRecord = this.mIdToken;
        IdTokenRecord idTokenRecord2 = cacheRecord.mIdToken;
        if (idTokenRecord != null) {
            return idTokenRecord.equals(idTokenRecord2);
        }
        if (idTokenRecord2 == null) {
            return true;
        }
        return false;
    }

    public AccessTokenRecord getAccessToken() {
        return this.mAccessToken;
    }

    public AccountRecord getAccount() {
        return this.mAccount;
    }

    public IdTokenRecord getIdToken() {
        return this.mIdToken;
    }

    public RefreshTokenRecord getRefreshToken() {
        return this.mRefreshToken;
    }

    public IdTokenRecord getV1IdToken() {
        return this.mV1IdToken;
    }

    public int hashCode() {
        AccountRecord accountRecord = this.mAccount;
        int i2 = 0;
        int hashCode = (accountRecord != null ? accountRecord.hashCode() : 0) * 31;
        AccessTokenRecord accessTokenRecord = this.mAccessToken;
        int hashCode2 = (hashCode + (accessTokenRecord != null ? accessTokenRecord.hashCode() : 0)) * 31;
        RefreshTokenRecord refreshTokenRecord = this.mRefreshToken;
        int hashCode3 = (hashCode2 + (refreshTokenRecord != null ? refreshTokenRecord.hashCode() : 0)) * 31;
        IdTokenRecord idTokenRecord = this.mIdToken;
        if (idTokenRecord != null) {
            i2 = idTokenRecord.hashCode();
        }
        return hashCode3 + i2;
    }

    public void setAccessToken(AccessTokenRecord accessTokenRecord) {
        this.mAccessToken = accessTokenRecord;
    }

    public void setAccount(AccountRecord accountRecord) {
        this.mAccount = accountRecord;
    }

    public void setIdToken(IdTokenRecord idTokenRecord) {
        this.mIdToken = idTokenRecord;
    }

    public void setRefreshToken(RefreshTokenRecord refreshTokenRecord) {
        this.mRefreshToken = refreshTokenRecord;
    }

    public void setV1IdToken(IdTokenRecord idTokenRecord) {
        this.mV1IdToken = idTokenRecord;
    }
}
