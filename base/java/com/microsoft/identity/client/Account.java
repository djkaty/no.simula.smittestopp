package com.microsoft.identity.client;

import com.microsoft.appcenter.utils.crypto.CryptoConstants;
import com.microsoft.identity.common.internal.cache.SchemaUtil;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftIdToken;
import com.microsoft.identity.common.internal.providers.oauth2.IDToken;
import com.microsoft.identity.common.internal.util.StringUtil;
import java.util.Map;

public class Account implements IAccount {
    public static final String TAG = Account.class.getSimpleName();
    public String mClientInfo;
    public String mEnvironment;
    public String mHomeOid;
    public String mHomeTenantId;
    public final Map<String, ?> mIdTokenClaims;
    public final String mRawIdToken;

    public Account(String str, IDToken iDToken) {
        this.mClientInfo = str;
        if (iDToken != null) {
            this.mIdTokenClaims = iDToken.getTokenClaims();
            this.mRawIdToken = iDToken.getRawIDToken();
            return;
        }
        this.mIdTokenClaims = null;
        this.mRawIdToken = null;
    }

    public String getAuthority() {
        if (getClaims() == null) {
            return SchemaUtil.MISSING_FROM_THE_TOKEN_RESPONSE;
        }
        String str = (String) getClaims().get(MicrosoftIdToken.ISSUER);
        return !StringUtil.isEmpty(str) ? str : SchemaUtil.MISSING_FROM_THE_TOKEN_RESPONSE;
    }

    public Map<String, ?> getClaims() {
        return this.mIdTokenClaims;
    }

    public String getEnvironment() {
        return this.mEnvironment;
    }

    public String getHomeAccountId() {
        return getId() + CryptoConstants.ALIAS_SEPARATOR + this.mHomeTenantId;
    }

    /* JADX WARNING: Removed duplicated region for block: B:8:0x0015  */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x001a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String getId() {
        /*
            r3 = this;
            java.lang.String r0 = r3.mClientInfo
            if (r0 == 0) goto L_0x0012
            com.microsoft.identity.client.ClientInfo r1 = new com.microsoft.identity.client.ClientInfo     // Catch:{ MsalClientException -> 0x000a }
            r1.<init>(r0)     // Catch:{ MsalClientException -> 0x000a }
            goto L_0x0013
        L_0x000a:
            r0 = move-exception
            java.lang.String r1 = TAG
            java.lang.String r2 = "Failed to parse ClientInfo"
            com.microsoft.identity.common.internal.logging.Logger.error(r1, r2, r0)
        L_0x0012:
            r1 = 0
        L_0x0013:
            if (r1 == 0) goto L_0x001a
            java.lang.String r0 = r1.getUniqueIdentifier()
            goto L_0x0029
        L_0x001a:
            java.util.Map<java.lang.String, ?> r0 = r3.mIdTokenClaims
            if (r0 == 0) goto L_0x0027
            java.lang.String r1 = "oid"
            java.lang.Object r0 = r0.get(r1)
            java.lang.String r0 = (java.lang.String) r0
            goto L_0x0029
        L_0x0027:
            java.lang.String r0 = r3.mHomeOid
        L_0x0029:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.identity.client.Account.getId():java.lang.String");
    }

    public String getIdToken() {
        return this.mRawIdToken;
    }

    public String getTenantId() {
        return this.mHomeTenantId;
    }

    public String getUsername() {
        if (getClaims() == null) {
            return SchemaUtil.MISSING_FROM_THE_TOKEN_RESPONSE;
        }
        String str = (String) getClaims().get("preferred_username");
        if (str != null) {
            return str;
        }
        String str2 = (String) getClaims().get("upn");
        return str2 != null ? str2 : SchemaUtil.MISSING_FROM_THE_TOKEN_RESPONSE;
    }

    public void setEnvironment(String str) {
        this.mEnvironment = str;
    }

    public void setId(String str) {
        this.mHomeOid = str;
    }

    public void setTenantId(String str) {
        this.mHomeTenantId = str;
    }
}
