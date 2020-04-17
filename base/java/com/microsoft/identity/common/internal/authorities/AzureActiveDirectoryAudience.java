package com.microsoft.identity.common.internal.authorities;

import android.net.Uri;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectory;
import com.microsoft.identity.common.internal.providers.oauth2.OpenIdProviderConfiguration;
import com.microsoft.identity.common.internal.providers.oauth2.OpenIdProviderConfigurationClient;
import com.microsoft.identity.common.internal.util.StringUtil;
import e.c.c.v.c;
import java.util.List;

public abstract class AzureActiveDirectoryAudience {
    public static final String ALL = "common";
    public static final String CONSUMERS = "consumers";
    public static final String MSA_MEGA_TENANT_ID = "9188040d-6c67-4c5b-b112-36a304b66dad";
    public static final String ORGANIZATIONS = "organizations";
    public static final String TAG = "AzureActiveDirectoryAudience";
    public String mCloudUrl;
    @c("tenant_id")
    public String mTenantId;

    /* JADX WARNING: Removed duplicated region for block: B:18:0x003d  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0095  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.microsoft.identity.common.internal.authorities.AzureActiveDirectoryAudience getAzureActiveDirectoryAudience(java.lang.String r5, java.lang.String r6) {
        /*
            java.lang.String r0 = r6.toLowerCase()
            int r1 = r0.hashCode()
            r2 = -2108114528(0xffffffff8258b9a0, float:-1.5922445E-37)
            r3 = 2
            r4 = 1
            if (r1 == r2) goto L_0x002e
            r2 = -1354814997(0xffffffffaf3f29eb, float:-1.7386241E-10)
            if (r1 == r2) goto L_0x0024
            r2 = -421004483(0xffffffffe6e7fb3d, float:-5.477506E23)
            if (r1 == r2) goto L_0x001a
            goto L_0x0038
        L_0x001a:
            java.lang.String r1 = "consumers"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0038
            r0 = 1
            goto L_0x0039
        L_0x0024:
            java.lang.String r1 = "common"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0038
            r0 = 2
            goto L_0x0039
        L_0x002e:
            java.lang.String r1 = "organizations"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0038
            r0 = 0
            goto L_0x0039
        L_0x0038:
            r0 = -1
        L_0x0039:
            java.lang.String r1 = ":getAzureActiveDirectoryAudience"
            if (r0 == 0) goto L_0x0095
            if (r0 == r4) goto L_0x0079
            if (r0 == r3) goto L_0x005d
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = TAG
            r0.append(r2)
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "Audience: AccountsInOneOrganization"
            com.microsoft.identity.common.internal.logging.Logger.verbose(r0, r1)
            com.microsoft.identity.common.internal.authorities.AccountsInOneOrganization r0 = new com.microsoft.identity.common.internal.authorities.AccountsInOneOrganization
            r0.<init>(r5, r6)
            goto L_0x00b0
        L_0x005d:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r0 = TAG
            r6.append(r0)
            r6.append(r1)
            java.lang.String r6 = r6.toString()
            java.lang.String r0 = "Audience: AllAccounts"
            com.microsoft.identity.common.internal.logging.Logger.verbose(r6, r0)
            com.microsoft.identity.common.internal.authorities.AllAccounts r0 = new com.microsoft.identity.common.internal.authorities.AllAccounts
            r0.<init>(r5)
            goto L_0x00b0
        L_0x0079:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r0 = TAG
            r6.append(r0)
            r6.append(r1)
            java.lang.String r6 = r6.toString()
            java.lang.String r0 = "Audience: AnyPersonalAccount"
            com.microsoft.identity.common.internal.logging.Logger.verbose(r6, r0)
            com.microsoft.identity.common.internal.authorities.AnyPersonalAccount r0 = new com.microsoft.identity.common.internal.authorities.AnyPersonalAccount
            r0.<init>(r5)
            goto L_0x00b0
        L_0x0095:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r0 = TAG
            r6.append(r0)
            r6.append(r1)
            java.lang.String r6 = r6.toString()
            java.lang.String r0 = "Audience: AnyOrganizationalAccount"
            com.microsoft.identity.common.internal.logging.Logger.verbose(r6, r0)
            com.microsoft.identity.common.internal.authorities.AnyOrganizationalAccount r0 = new com.microsoft.identity.common.internal.authorities.AnyOrganizationalAccount
            r0.<init>(r5)
        L_0x00b0:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.identity.common.internal.authorities.AzureActiveDirectoryAudience.getAzureActiveDirectoryAudience(java.lang.String, java.lang.String):com.microsoft.identity.common.internal.authorities.AzureActiveDirectoryAudience");
    }

    public static boolean isHomeTenantAlias(String str) {
        return str.equalsIgnoreCase("common") || str.equalsIgnoreCase("consumers") || str.equalsIgnoreCase(ORGANIZATIONS);
    }

    public static OpenIdProviderConfiguration loadOpenIdProviderConfigurationMetadata(String str) {
        Logger.info(TAG + ":loadOpenIdProviderConfigurationMetadata", "Loading OpenId Provider Metadata...");
        return new OpenIdProviderConfigurationClient(str).loadOpenIdProviderConfiguration();
    }

    public String getCloudUrl() {
        String str = this.mCloudUrl;
        return str == null ? AzureActiveDirectory.getDefaultCloudUrl() : str;
    }

    public String getTenantId() {
        return this.mTenantId;
    }

    public String getTenantUuidForAlias(String str) {
        if (StringUtil.isUuid(this.mTenantId)) {
            return this.mTenantId;
        }
        List<String> pathSegments = Uri.parse(loadOpenIdProviderConfigurationMetadata(str).getIssuer()).getPathSegments();
        if (!pathSegments.isEmpty()) {
            String str2 = pathSegments.get(0);
            if (StringUtil.isUuid(str2)) {
                return str2;
            }
            Logger.error(TAG, "OpenId Metadata did not contain UUID in the path ", (Throwable) null);
            throw new ClientException("OpenId Metadata did not contain UUID in the path ");
        }
        Logger.error(TAG, "OpenId Metadata did not contain a path to the tenant", (Throwable) null);
        throw new ClientException("OpenId Metadata did not contain a path to the tenant");
    }

    public void setCloudUrl(String str) {
        this.mCloudUrl = str;
    }

    public void setTenantId(String str) {
        this.mTenantId = str;
    }
}
