package com.microsoft.identity.common.internal.cache;

import com.microsoft.identity.common.internal.dto.AccountCredentialBase;
import com.microsoft.identity.common.internal.dto.AccountRecord;
import com.microsoft.identity.common.internal.dto.Credential;

public interface ICacheKeyValueDelegate {
    <T extends AccountCredentialBase> T fromCacheValue(String str, Class<? extends AccountCredentialBase> cls);

    String generateCacheKey(AccountRecord accountRecord);

    String generateCacheKey(Credential credential);

    String generateCacheValue(AccountRecord accountRecord);

    String generateCacheValue(Credential credential);
}
