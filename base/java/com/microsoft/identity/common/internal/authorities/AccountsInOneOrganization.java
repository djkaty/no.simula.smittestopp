package com.microsoft.identity.common.internal.authorities;

public class AccountsInOneOrganization extends AzureActiveDirectoryAudience {
    public AccountsInOneOrganization() {
    }

    public AccountsInOneOrganization(String str) {
        setTenantId(str);
    }

    public AccountsInOneOrganization(String str, String str2) {
        setCloudUrl(str);
        setTenantId(str2);
    }
}
