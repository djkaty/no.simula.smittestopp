package com.microsoft.identity.client;

import java.util.Date;

public interface IAuthenticationResult {
    String getAccessToken();

    IAccount getAccount();

    String getAuthenticationScheme();

    String getAuthorizationHeader();

    Date getExpiresOn();

    String[] getScope();

    String getTenantId();
}
