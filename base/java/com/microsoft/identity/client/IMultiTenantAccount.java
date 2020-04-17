package com.microsoft.identity.client;

import java.util.Map;

public interface IMultiTenantAccount extends IAccount {
    Map<String, ITenantProfile> getTenantProfiles();
}
