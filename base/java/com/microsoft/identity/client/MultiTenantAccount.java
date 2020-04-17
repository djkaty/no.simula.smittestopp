package com.microsoft.identity.client;

import com.microsoft.identity.common.internal.providers.oauth2.IDToken;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class MultiTenantAccount extends Account implements IMultiTenantAccount {
    public Map<String, ITenantProfile> mTenantProfiles = new HashMap();

    public MultiTenantAccount(String str, IDToken iDToken) {
        super(str, iDToken);
    }

    public Map<String, ITenantProfile> getTenantProfiles() {
        return Collections.unmodifiableMap(this.mTenantProfiles);
    }

    public void setTenantProfiles(Map<String, ITenantProfile> map) {
        this.mTenantProfiles = map;
    }
}
