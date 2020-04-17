package com.microsoft.identity.common.internal.cache;

import com.microsoft.identity.common.internal.dto.AccessTokenRecord;
import com.microsoft.identity.common.internal.dto.AccountRecord;
import com.microsoft.identity.common.internal.dto.IdTokenRecord;
import com.microsoft.identity.common.internal.dto.RefreshTokenRecord;

public interface ICacheRecord {
    AccessTokenRecord getAccessToken();

    AccountRecord getAccount();

    IdTokenRecord getIdToken();

    RefreshTokenRecord getRefreshToken();

    IdTokenRecord getV1IdToken();
}
