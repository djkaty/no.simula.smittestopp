package com.microsoft.identity.common.internal.cache;

import com.google.gson.Gson;
import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.internal.dto.AccountCredentialBase;
import com.microsoft.identity.common.internal.dto.AccountRecord;
import com.microsoft.identity.common.internal.dto.Credential;
import com.microsoft.identity.common.internal.logging.Logger;
import e.a.a.a.a;
import e.c.c.j;
import e.c.c.m;
import e.c.c.o;
import e.c.c.s;
import e.c.c.v.c;
import e.c.c.w.t;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

public class CacheKeyValueDelegate implements ICacheKeyValueDelegate {
    public static final String CACHE_VALUE_SEPARATOR = "-";
    public static final String FOCI_PREFIX = "foci-";
    public static final String TAG = "CacheKeyValueDelegate";
    public final Gson mGson = new Gson();

    public static class CacheKeyReplacements {
        public static final String AUTH_SCHEME = "<auth_scheme>";
        public static final String CLIENT_ID = "<client_id>";
        public static final String CREDENTIAL_TYPE = "<credential_type>";
        public static final String ENVIRONMENT = "<environment>";
        public static final String HOME_ACCOUNT_ID = "<home_account_id>";
        public static final String REALM = "<realm>";
        public static final String TARGET = "<target>";
    }

    public CacheKeyValueDelegate() {
        String str = TAG;
        StringBuilder a = a.a("Init: ");
        a.append(TAG);
        Logger.verbose(str, a.toString());
    }

    private String generateCacheValueInternal(Object obj) {
        m c2 = this.mGson.b(obj).c();
        if (obj instanceof AccountCredentialBase) {
            AccountCredentialBase accountCredentialBase = (AccountCredentialBase) obj;
            for (String next : accountCredentialBase.getAdditionalFields().keySet()) {
                c2.a(next, accountCredentialBase.getAdditionalFields().get(next));
            }
        }
        return this.mGson.a((j) c2);
    }

    public static Set<String> getExpectedJsonFields(Class<? extends AccountCredentialBase> cls) {
        HashSet hashSet = new HashSet();
        for (Field annotation : getSerializedNameAnnotatedFields(getFieldsUpTo(cls, AccountCredentialBase.class))) {
            hashSet.add(((c) annotation.getAnnotation(c.class)).value());
        }
        return hashSet;
    }

    public static List<Field> getFieldsUpTo(Class<?> cls, Class<?> cls2) {
        ArrayList arrayList = new ArrayList(Arrays.asList(cls.getDeclaredFields()));
        Class<? super Object> superclass = cls.getSuperclass();
        if (superclass != null && (cls2 == null || !superclass.equals(cls2))) {
            arrayList.addAll(getFieldsUpTo(superclass, cls2));
        }
        return arrayList;
    }

    public static List<Field> getSerializedNameAnnotatedFields(List<Field> list) {
        ArrayList arrayList = new ArrayList();
        for (Field next : list) {
            if (((c) next.getAnnotation(c.class)) != null) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    public static String sanitizeNull(String str) {
        return str == null ? "" : str.toLowerCase(Locale.US).trim();
    }

    public <T extends AccountCredentialBase> T fromCacheValue(String str, Class<? extends AccountCredentialBase> cls) {
        try {
            T t = (AccountCredentialBase) t.a(cls).cast(this.mGson.a(str, (Type) cls));
            if (!StringExtensions.isNullOrBlank(str)) {
                m c2 = new o().a(str).c();
                for (String remove : getExpectedJsonFields(cls)) {
                    j remove2 = c2.a.remove(remove);
                }
                HashMap hashMap = new HashMap();
                for (String next : c2.a.keySet()) {
                    hashMap.put(next, c2.a(next));
                }
                t.setAdditionalFields(hashMap);
            }
            return t;
        } catch (s unused) {
            Logger.error(a.a(new StringBuilder(), TAG, ":", "fromCacheValue"), "Failed to parse cache value.", (Throwable) null);
            return null;
        }
    }

    public String generateCacheKey(AccountRecord accountRecord) {
        return "<home_account_id>-<environment>-<realm>".replace(CacheKeyReplacements.HOME_ACCOUNT_ID, sanitizeNull(accountRecord.getHomeAccountId())).replace(CacheKeyReplacements.ENVIRONMENT, sanitizeNull(accountRecord.getEnvironment())).replace(CacheKeyReplacements.REALM, sanitizeNull(accountRecord.getRealm()));
    }

    public String generateCacheValue(AccountRecord accountRecord) {
        return generateCacheValueInternal(accountRecord);
    }

    public String generateCacheValue(Credential credential) {
        return generateCacheValueInternal(credential);
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x006a  */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x00a5  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String generateCacheKey(com.microsoft.identity.common.internal.dto.Credential r8) {
        /*
            r7 = this;
            java.lang.String r0 = r8.getHomeAccountId()
            java.lang.String r0 = sanitizeNull(r0)
            java.lang.String r1 = "<home_account_id>-<environment>-<credential_type>-<client_id>-<realm>-<target>"
            java.lang.String r2 = "<home_account_id>"
            java.lang.String r0 = r1.replace(r2, r0)
            java.lang.String r1 = r8.getEnvironment()
            java.lang.String r1 = sanitizeNull(r1)
            java.lang.String r2 = "<environment>"
            java.lang.String r0 = r0.replace(r2, r1)
            java.lang.String r1 = r8.getCredentialType()
            java.lang.String r1 = sanitizeNull(r1)
            java.lang.String r2 = "<credential_type>"
            java.lang.String r0 = r0.replace(r2, r1)
            boolean r1 = r8 instanceof com.microsoft.identity.common.internal.dto.RefreshTokenRecord
            java.lang.String r2 = "<client_id>"
            java.lang.String r3 = ""
            if (r1 == 0) goto L_0x0056
            r4 = r8
            com.microsoft.identity.common.internal.dto.RefreshTokenRecord r4 = (com.microsoft.identity.common.internal.dto.RefreshTokenRecord) r4
            java.lang.String r5 = r4.getFamilyId()
            boolean r5 = com.microsoft.identity.common.adal.internal.util.StringExtensions.isNullOrBlank(r5)
            if (r5 != 0) goto L_0x0056
            java.lang.String r4 = r4.getFamilyId()
            java.lang.String r5 = "foci-"
            boolean r6 = r4.startsWith(r5)
            if (r6 == 0) goto L_0x0051
            java.lang.String r4 = r4.replace(r5, r3)
        L_0x0051:
            java.lang.String r0 = r0.replace(r2, r4)
            goto L_0x0062
        L_0x0056:
            java.lang.String r4 = r8.getClientId()
            java.lang.String r4 = sanitizeNull(r4)
            java.lang.String r0 = r0.replace(r2, r4)
        L_0x0062:
            boolean r2 = r8 instanceof com.microsoft.identity.common.internal.dto.AccessTokenRecord
            java.lang.String r4 = "<target>"
            java.lang.String r5 = "<realm>"
            if (r2 == 0) goto L_0x00a5
            com.microsoft.identity.common.internal.dto.AccessTokenRecord r8 = (com.microsoft.identity.common.internal.dto.AccessTokenRecord) r8
            java.lang.String r1 = r8.getRealm()
            java.lang.String r1 = sanitizeNull(r1)
            java.lang.String r0 = r0.replace(r5, r1)
            java.lang.String r1 = r8.getTarget()
            java.lang.String r1 = sanitizeNull(r1)
            java.lang.String r0 = r0.replace(r4, r1)
            java.lang.String r1 = r8.getAccessTokenType()
            java.lang.String r2 = "pop"
            boolean r1 = r2.equalsIgnoreCase(r1)
            if (r1 == 0) goto L_0x00d0
            java.lang.String r1 = "-<auth_scheme>"
            java.lang.String r0 = e.a.a.a.a.b(r0, r1)
            java.lang.String r8 = r8.getAccessTokenType()
            java.lang.String r8 = sanitizeNull(r8)
            java.lang.String r1 = "<auth_scheme>"
            java.lang.String r0 = r0.replace(r1, r8)
            goto L_0x00d0
        L_0x00a5:
            if (r1 == 0) goto L_0x00ba
            com.microsoft.identity.common.internal.dto.RefreshTokenRecord r8 = (com.microsoft.identity.common.internal.dto.RefreshTokenRecord) r8
            java.lang.String r0 = r0.replace(r5, r3)
            java.lang.String r8 = r8.getTarget()
            java.lang.String r8 = sanitizeNull(r8)
            java.lang.String r0 = r0.replace(r4, r8)
            goto L_0x00d0
        L_0x00ba:
            boolean r1 = r8 instanceof com.microsoft.identity.common.internal.dto.IdTokenRecord
            if (r1 == 0) goto L_0x00d0
            com.microsoft.identity.common.internal.dto.IdTokenRecord r8 = (com.microsoft.identity.common.internal.dto.IdTokenRecord) r8
            java.lang.String r8 = r8.getRealm()
            java.lang.String r8 = sanitizeNull(r8)
            java.lang.String r8 = r0.replace(r5, r8)
            java.lang.String r0 = r8.replace(r4, r3)
        L_0x00d0:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.identity.common.internal.cache.CacheKeyValueDelegate.generateCacheKey(com.microsoft.identity.common.internal.dto.Credential):java.lang.String");
    }
}
