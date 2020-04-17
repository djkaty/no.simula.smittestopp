package com.microsoft.identity.common.internal.dto;

public interface IAccountRecord {
    String getAlternativeAccountId();

    String getAuthorityType();

    String getAvatarUrl();

    String getClientInfo();

    String getEnvironment();

    String getFamilyName();

    String getFirstName();

    String getHomeAccountId();

    String getLocalAccountId();

    String getMiddleName();

    String getName();

    String getRealm();

    String getUsername();
}
