package com.microsoft.identity.common.internal.result;

import com.microsoft.identity.common.internal.cache.ICacheRecord;
import com.microsoft.identity.common.internal.dto.AccessTokenRecord;
import com.microsoft.identity.common.internal.dto.IAccountRecord;
import java.util.Date;
import java.util.List;

public interface ILocalAuthenticationResult {
    String getAccessToken();

    AccessTokenRecord getAccessTokenRecord();

    IAccountRecord getAccountRecord();

    List<ICacheRecord> getCacheRecordWithTenantProfileData();

    Date getExpiresOn();

    String getFamilyId();

    String getIdToken();

    String getRefreshToken();

    String getRefreshTokenAge();

    String[] getScope();

    String getSpeRing();

    String getTenantId();

    String getUniqueId();
}
