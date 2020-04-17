package com.microsoft.identity.client;

import com.microsoft.identity.common.internal.providers.oauth2.IDToken;

public class TenantProfile extends Account implements ITenantProfile {
    public TenantProfile(String str, IDToken iDToken) {
        super(str, iDToken);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:2:0x0006, code lost:
        r0 = (java.lang.String) getClaims().get("tid");
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String getTenantId() {
        /*
            r2 = this;
            java.util.Map r0 = r2.getClaims()
            if (r0 == 0) goto L_0x0015
            java.util.Map r0 = r2.getClaims()
            java.lang.String r1 = "tid"
            java.lang.Object r0 = r0.get(r1)
            java.lang.String r0 = (java.lang.String) r0
            if (r0 == 0) goto L_0x0015
            goto L_0x0017
        L_0x0015:
            java.lang.String r0 = ""
        L_0x0017:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.identity.client.TenantProfile.getTenantId():java.lang.String");
    }
}
