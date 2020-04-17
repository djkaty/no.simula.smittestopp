package com.microsoft.identity.client;

import java.util.Map;

public interface IClaimable {
    Map<String, ?> getClaims();

    String getIdToken();

    String getTenantId();

    String getUsername();
}
