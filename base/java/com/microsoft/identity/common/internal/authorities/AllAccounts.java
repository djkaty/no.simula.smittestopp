package com.microsoft.identity.common.internal.authorities;

public class AllAccounts extends AzureActiveDirectoryAudience {
    public static final String ALL_ACCOUNTS_TENANT_ID = "common";

    public AllAccounts() {
        setTenantId("common");
    }

    public AllAccounts(String str) {
        setCloudUrl(str);
        setTenantId("common");
    }
}
