package com.microsoft.identity.common.internal.result;

import android.text.TextUtils;
import com.microsoft.identity.common.internal.cache.ICacheRecord;
import com.microsoft.identity.common.internal.dto.AccessTokenRecord;
import com.microsoft.identity.common.internal.dto.IAccountRecord;
import com.microsoft.identity.common.internal.dto.IdTokenRecord;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.request.SdkType;
import e.a.a.a.a;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class LocalAuthenticationResult implements ILocalAuthenticationResult {
    public static final String TAG = "com.microsoft.identity.common.internal.result.LocalAuthenticationResult";
    public AccessTokenRecord mAccessTokenRecord;
    public IAccountRecord mAccountRecord;
    public List<ICacheRecord> mCompleteResultFromCache;
    public String mFamilyId;
    public String mRawIdToken;
    public String mRefreshToken;
    public String mRefreshTokenAge;
    public String mSpeRing;

    public LocalAuthenticationResult(ICacheRecord iCacheRecord, List<ICacheRecord> list, SdkType sdkType) {
        this(iCacheRecord, sdkType);
        this.mCompleteResultFromCache = list;
    }

    public String getAccessToken() {
        return this.mAccessTokenRecord.getSecret();
    }

    public AccessTokenRecord getAccessTokenRecord() {
        return this.mAccessTokenRecord;
    }

    public IAccountRecord getAccountRecord() {
        return this.mAccountRecord;
    }

    public List<ICacheRecord> getCacheRecordWithTenantProfileData() {
        return this.mCompleteResultFromCache;
    }

    public Date getExpiresOn() {
        return new Date(TimeUnit.SECONDS.toMillis(Long.parseLong(this.mAccessTokenRecord.getExpiresOn())));
    }

    public String getFamilyId() {
        return this.mFamilyId;
    }

    public String getIdToken() {
        return this.mRawIdToken;
    }

    public String getRefreshToken() {
        return this.mRefreshToken;
    }

    public String getRefreshTokenAge() {
        return this.mRefreshTokenAge;
    }

    public String[] getScope() {
        return this.mAccessTokenRecord.getTarget().split("\\s");
    }

    public String getSpeRing() {
        return this.mSpeRing;
    }

    public String getTenantId() {
        return this.mAccessTokenRecord.getRealm();
    }

    public String getUniqueId() {
        return this.mAccessTokenRecord.getHomeAccountId();
    }

    public void setRefreshTokenAge(String str) {
        this.mRefreshTokenAge = str;
    }

    public void setSpeRing(String str) {
        this.mSpeRing = str;
    }

    public LocalAuthenticationResult(ICacheRecord iCacheRecord, SdkType sdkType) {
        IdTokenRecord idTokenRecord;
        this.mAccessTokenRecord = iCacheRecord.getAccessToken();
        this.mAccountRecord = iCacheRecord.getAccount();
        if (iCacheRecord.getRefreshToken() != null) {
            this.mRefreshToken = iCacheRecord.getRefreshToken().getSecret();
        }
        if (sdkType == SdkType.ADAL) {
            idTokenRecord = iCacheRecord.getV1IdToken();
        } else {
            idTokenRecord = iCacheRecord.getIdToken();
        }
        if (idTokenRecord != null) {
            this.mRawIdToken = idTokenRecord.getSecret();
            String str = TAG;
            StringBuilder a = a.a("Id Token type: ");
            a.append(idTokenRecord.getCredentialType());
            Logger.info(str, a.toString());
        } else if (iCacheRecord.getV1IdToken() != null) {
            Logger.info(TAG, "V1 Id Token returned here, ");
            this.mRawIdToken = iCacheRecord.getV1IdToken().getSecret();
        }
        String str2 = TAG;
        StringBuilder a2 = a.a("Constructing LocalAuthentication result, AccessTokenRecord null: ");
        boolean z = true;
        a2.append(this.mAccessTokenRecord == null);
        a2.append(", AccountRecord null: ");
        a2.append(this.mAccountRecord == null);
        a2.append(", RefreshTokenRecord null or empty: ");
        a2.append(TextUtils.isEmpty(this.mRefreshToken));
        a2.append(", IdTokenRecord null: ");
        a2.append(idTokenRecord != null ? false : z);
        Logger.info(str2, a2.toString());
    }
}
