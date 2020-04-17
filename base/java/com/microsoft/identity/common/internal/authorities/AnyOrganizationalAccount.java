package com.microsoft.identity.common.internal.authorities;

public class AnyOrganizationalAccount extends AzureActiveDirectoryAudience {
    public AnyOrganizationalAccount() {
        setTenantId(AzureActiveDirectoryAudience.ORGANIZATIONS);
    }

    public AnyOrganizationalAccount(String str) {
        setCloudUrl(str);
        setTenantId(AzureActiveDirectoryAudience.ORGANIZATIONS);
    }
}
