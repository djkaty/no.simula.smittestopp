package com.microsoft.identity.common.internal.authorities;

public class AnyPersonalAccount extends AzureActiveDirectoryAudience {
    public static final String ANY_PERSONAL_ACCOUNT_TENANT_ID = "consumers";

    public AnyPersonalAccount() {
        setTenantId("consumers");
    }

    public AnyPersonalAccount(String str) {
        setTenantId("consumers");
        setCloudUrl(str);
    }
}
