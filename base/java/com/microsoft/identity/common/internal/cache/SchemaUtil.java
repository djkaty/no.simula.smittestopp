package com.microsoft.identity.common.internal.cache;

import android.text.TextUtils;
import com.microsoft.appcenter.utils.crypto.CryptoConstants;
import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.exception.ServiceException;
import com.microsoft.identity.common.internal.dto.CredentialType;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.ClientInfo;
import com.microsoft.identity.common.internal.providers.oauth2.IDToken;
import e.a.a.a.a;
import java.util.Map;

public final class SchemaUtil {
    public static final String EXCEPTION_CONSTRUCTING_IDTOKEN = "Exception constructing IDToken. ";
    public static final String MISSING_FROM_THE_TOKEN_RESPONSE = "Missing from the token response";
    public static final String TAG = "SchemaUtil";

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v6, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v3, resolved type: java.lang.String} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String getAlternativeAccountId(com.microsoft.identity.common.internal.providers.oauth2.IDToken r5) {
        /*
            java.lang.String r0 = "getAlternativeAccountId"
            java.lang.String r1 = ":"
            r2 = 0
            if (r5 == 0) goto L_0x006b
            java.util.Map r5 = r5.getTokenClaims()
            if (r5 == 0) goto L_0x0051
            java.lang.String r2 = "altsecid"
            java.lang.Object r5 = r5.get(r2)
            r2 = r5
            java.lang.String r2 = (java.lang.String) r2
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r3 = TAG
            java.lang.String r5 = e.a.a.a.a.a((java.lang.StringBuilder) r5, (java.lang.String) r3, (java.lang.String) r1, (java.lang.String) r0)
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "alternative_account_id: "
            r3.append(r4)
            r3.append(r2)
            java.lang.String r3 = r3.toString()
            com.microsoft.identity.common.internal.logging.Logger.verbosePII(r5, r3)
            if (r2 != 0) goto L_0x0084
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r3 = TAG
            r5.append(r3)
            r5.append(r1)
            r5.append(r0)
            java.lang.String r5 = r5.toString()
            java.lang.String r0 = "alternative_account_id was null."
            com.microsoft.identity.common.internal.logging.Logger.warn(r5, r0)
            goto L_0x0084
        L_0x0051:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r3 = TAG
            r5.append(r3)
            r5.append(r1)
            r5.append(r0)
            java.lang.String r5 = r5.toString()
            java.lang.String r0 = "IDToken claims were null."
            com.microsoft.identity.common.internal.logging.Logger.warn(r5, r0)
            goto L_0x0084
        L_0x006b:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r3 = TAG
            r5.append(r3)
            r5.append(r1)
            r5.append(r0)
            java.lang.String r5 = r5.toString()
            java.lang.String r0 = "IDToken was null."
            com.microsoft.identity.common.internal.logging.Logger.warn(r5, r0)
        L_0x0084:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.identity.common.internal.cache.SchemaUtil.getAlternativeAccountId(com.microsoft.identity.common.internal.providers.oauth2.IDToken):java.lang.String");
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v6, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v3, resolved type: java.lang.String} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String getAuthority(com.microsoft.identity.common.internal.providers.oauth2.IDToken r5) {
        /*
            java.lang.String r0 = "getAuthority"
            java.lang.String r1 = ":"
            r2 = 0
            if (r5 == 0) goto L_0x006b
            java.util.Map r5 = r5.getTokenClaims()
            if (r5 == 0) goto L_0x0051
            java.lang.String r2 = "iss"
            java.lang.Object r5 = r5.get(r2)
            r2 = r5
            java.lang.String r2 = (java.lang.String) r2
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r3 = TAG
            java.lang.String r5 = e.a.a.a.a.a((java.lang.StringBuilder) r5, (java.lang.String) r3, (java.lang.String) r1, (java.lang.String) r0)
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Issuer: "
            r3.append(r4)
            r3.append(r2)
            java.lang.String r3 = r3.toString()
            com.microsoft.identity.common.internal.logging.Logger.verbosePII(r5, r3)
            if (r2 != 0) goto L_0x0084
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r3 = TAG
            r5.append(r3)
            r5.append(r1)
            r5.append(r0)
            java.lang.String r5 = r5.toString()
            java.lang.String r0 = "Environment was null or could not be parsed."
            com.microsoft.identity.common.internal.logging.Logger.warn(r5, r0)
            goto L_0x0084
        L_0x0051:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r3 = TAG
            r5.append(r3)
            r5.append(r1)
            r5.append(r0)
            java.lang.String r5 = r5.toString()
            java.lang.String r0 = "IDToken claims were null"
            com.microsoft.identity.common.internal.logging.Logger.warn(r5, r0)
            goto L_0x0084
        L_0x006b:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r3 = TAG
            r5.append(r3)
            r5.append(r1)
            r5.append(r0)
            java.lang.String r5 = r5.toString()
            java.lang.String r0 = "IDToken was null"
            com.microsoft.identity.common.internal.logging.Logger.warn(r5, r0)
        L_0x0084:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.identity.common.internal.cache.SchemaUtil.getAuthority(com.microsoft.identity.common.internal.providers.oauth2.IDToken):java.lang.String");
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v6, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v3, resolved type: java.lang.String} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String getAvatarUrl(com.microsoft.identity.common.internal.providers.oauth2.IDToken r5) {
        /*
            java.lang.String r0 = "getAvatarUrl"
            java.lang.String r1 = ":"
            r2 = 0
            if (r5 == 0) goto L_0x006b
            java.util.Map r5 = r5.getTokenClaims()
            if (r5 == 0) goto L_0x0051
            java.lang.String r2 = "picture"
            java.lang.Object r5 = r5.get(r2)
            r2 = r5
            java.lang.String r2 = (java.lang.String) r2
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r3 = TAG
            java.lang.String r5 = e.a.a.a.a.a((java.lang.StringBuilder) r5, (java.lang.String) r3, (java.lang.String) r1, (java.lang.String) r0)
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Avatar URL: "
            r3.append(r4)
            r3.append(r2)
            java.lang.String r3 = r3.toString()
            com.microsoft.identity.common.internal.logging.Logger.verbosePII(r5, r3)
            if (r2 != 0) goto L_0x0084
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r3 = TAG
            r5.append(r3)
            r5.append(r1)
            r5.append(r0)
            java.lang.String r5 = r5.toString()
            java.lang.String r0 = "Avatar URL was null."
            com.microsoft.identity.common.internal.logging.Logger.warn(r5, r0)
            goto L_0x0084
        L_0x0051:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r3 = TAG
            r5.append(r3)
            r5.append(r1)
            r5.append(r0)
            java.lang.String r5 = r5.toString()
            java.lang.String r0 = "IDToken claims were null."
            com.microsoft.identity.common.internal.logging.Logger.warn(r5, r0)
            goto L_0x0084
        L_0x006b:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r3 = TAG
            r5.append(r3)
            r5.append(r1)
            r5.append(r0)
            java.lang.String r5 = r5.toString()
            java.lang.String r0 = "IDToken was null."
            com.microsoft.identity.common.internal.logging.Logger.warn(r5, r0)
        L_0x0084:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.identity.common.internal.cache.SchemaUtil.getAvatarUrl(com.microsoft.identity.common.internal.providers.oauth2.IDToken):java.lang.String");
    }

    public static String getCredentialTypeFromVersion(String str) {
        CredentialType credentialType = CredentialType.IdToken;
        if (TextUtils.isEmpty(str)) {
            return "IdToken";
        }
        try {
            String str2 = (String) new IDToken(str).getTokenClaims().get("ver");
            if (TextUtils.isEmpty(str2) || !str2.equalsIgnoreCase("1.0")) {
                return "IdToken";
            }
            CredentialType credentialType2 = CredentialType.V1IdToken;
            return "V1IdToken";
        } catch (ServiceException e2) {
            String a = a.a(new StringBuilder(), TAG, ":", "getCredentialTypeFromVersion");
            StringBuilder a2 = a.a(EXCEPTION_CONSTRUCTING_IDTOKEN);
            a2.append(e2.getMessage());
            Logger.warn(a, a2.toString());
            return "IdToken";
        }
    }

    public static String getDisplayableId(Map<String, ?> map) {
        if (!StringExtensions.isNullOrBlank((String) map.get("preferred_username"))) {
            return (String) map.get("preferred_username");
        }
        if (!StringExtensions.isNullOrBlank((String) map.get("email"))) {
            return (String) map.get("email");
        }
        if (!StringExtensions.isNullOrBlank((String) map.get("upn"))) {
            return (String) map.get("upn");
        }
        Logger.warn(TAG, "The preferred username is not returned from the IdToken.");
        return MISSING_FROM_THE_TOKEN_RESPONSE;
    }

    public static String getHomeAccountId(ClientInfo clientInfo) {
        String str = null;
        if (clientInfo != null) {
            String uid = clientInfo.getUid();
            String utid = clientInfo.getUtid();
            if (StringExtensions.isNullOrBlank(uid)) {
                Logger.warn(TAG + ":" + ":getHomeAccountId", "uid was null/blank");
            }
            if (StringExtensions.isNullOrBlank(utid)) {
                Logger.warn(TAG + ":" + ":getHomeAccountId", "utid was null/blank");
            }
            if (!StringExtensions.isNullOrBlank(uid) && !StringExtensions.isNullOrBlank(utid)) {
                str = a.a(uid, CryptoConstants.ALIAS_SEPARATOR, utid);
            }
            String a = a.a(new StringBuilder(), TAG, ":", ":getHomeAccountId");
            Logger.verbosePII(a, "home_account_id: " + str);
        } else {
            Logger.warn(TAG + ":" + ":getHomeAccountId", "ClientInfo was null.");
        }
        return str;
    }

    public static String getIdentityProvider(String str) {
        String str2;
        ServiceException e2;
        if (str != null) {
            try {
                Map<String, ?> tokenClaims = new IDToken(str).getTokenClaims();
                if (tokenClaims != null) {
                    str2 = (String) tokenClaims.get("idp");
                    try {
                        Logger.verbosePII(TAG + ":" + "getIdentityProvider", "idp: " + str2);
                        if (str2 == null) {
                            Logger.info(TAG + ":" + "getIdentityProvider", "idp claim was null.");
                        }
                    } catch (ServiceException e3) {
                        e2 = e3;
                        String a = a.a(new StringBuilder(), TAG, ":", "getIdentityProvider");
                        StringBuilder a2 = a.a(EXCEPTION_CONSTRUCTING_IDTOKEN);
                        a2.append(e2.getMessage());
                        Logger.warn(a, a2.toString());
                        return str2;
                    }
                    return str2;
                }
                Logger.warn(TAG + ":" + "getIdentityProvider", "IDToken claims were null.");
                return null;
            } catch (ServiceException e4) {
                e2 = e4;
                str2 = null;
            }
        } else {
            Logger.warn(TAG + ":" + "getIdentityProvider", "IDToken was null.");
            return null;
        }
    }

    public static String getTenantId(String str, String str2) {
        String utid;
        try {
            if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
                return null;
            }
            IDToken iDToken = new IDToken(str2);
            ClientInfo clientInfo = new ClientInfo(str);
            Map<String, ?> tokenClaims = iDToken.getTokenClaims();
            if (!TextUtils.isEmpty((CharSequence) tokenClaims.get("tid"))) {
                utid = (String) tokenClaims.get("tid");
            } else if (!TextUtils.isEmpty(clientInfo.getUtid())) {
                Logger.warn(TAG, "realm is not returned from server. Use utid as realm.");
                utid = clientInfo.getUtid();
            } else {
                Logger.warn(TAG, "realm and utid is not returned from server. Using empty string as default tid.");
                return null;
            }
            return utid;
        } catch (ServiceException e2) {
            Logger.errorPII(TAG, "Failed to construct IDToken or ClientInfo", e2);
            return null;
        }
    }
}
