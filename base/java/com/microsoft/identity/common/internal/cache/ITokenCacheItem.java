package com.microsoft.identity.common.internal.cache;

public interface ITokenCacheItem {
    String getAuthority();

    String getClientId();

    String getRefreshToken();

    String getResource();
}
