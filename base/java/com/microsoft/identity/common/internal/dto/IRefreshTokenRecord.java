package com.microsoft.identity.common.internal.dto;

public interface IRefreshTokenRecord {
    String getClientId();

    String getEnvironment();

    String getFamilyId();

    String getHomeAccountId();

    String getSecret();

    String getTarget();
}
