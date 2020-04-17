package com.microsoft.identity.common.internal.cache;

import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.internal.controllers.BaseController;
import com.microsoft.identity.common.internal.dto.AccessTokenRecord;
import com.microsoft.identity.common.internal.dto.AccountRecord;
import com.microsoft.identity.common.internal.dto.Credential;
import com.microsoft.identity.common.internal.dto.CredentialType;
import com.microsoft.identity.common.internal.dto.IdTokenRecord;
import com.microsoft.identity.common.internal.dto.RefreshTokenRecord;
import com.microsoft.identity.common.internal.logging.Logger;
import e.a.a.a.a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

public abstract class AbstractAccountCredentialCache implements IAccountCredentialCache {
    public static final String NEW_LINE = "\n";
    public static final String TAG = "AbstractAccountCredentialCache";

    /* renamed from: com.microsoft.identity.common.internal.cache.AbstractAccountCredentialCache$1  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$identity$common$internal$dto$CredentialType;

        /* JADX WARNING: Can't wrap try/catch for region: R(13:0|(2:1|2)|3|5|6|7|9|10|11|12|13|14|16) */
        /* JADX WARNING: Code restructure failed: missing block: B:17:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x001e */
        /* JADX WARNING: Missing exception handler attribute for start block: B:13:0x0025 */
        static {
            /*
                com.microsoft.identity.common.internal.dto.CredentialType[] r0 = com.microsoft.identity.common.internal.dto.CredentialType.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$identity$common$internal$dto$CredentialType = r0
                com.microsoft.identity.common.internal.dto.CredentialType r1 = com.microsoft.identity.common.internal.dto.CredentialType.AccessToken     // Catch:{ NoSuchFieldError -> 0x000e }
                r1 = 1
                r0[r1] = r1     // Catch:{ NoSuchFieldError -> 0x000e }
            L_0x000e:
                r0 = 2
                int[] r1 = $SwitchMap$com$microsoft$identity$common$internal$dto$CredentialType     // Catch:{ NoSuchFieldError -> 0x0016 }
                com.microsoft.identity.common.internal.dto.CredentialType r2 = com.microsoft.identity.common.internal.dto.CredentialType.AccessToken_With_AuthScheme     // Catch:{ NoSuchFieldError -> 0x0016 }
                r2 = 7
                r1[r2] = r0     // Catch:{ NoSuchFieldError -> 0x0016 }
            L_0x0016:
                r1 = 3
                int[] r2 = $SwitchMap$com$microsoft$identity$common$internal$dto$CredentialType     // Catch:{ NoSuchFieldError -> 0x001e }
                com.microsoft.identity.common.internal.dto.CredentialType r3 = com.microsoft.identity.common.internal.dto.CredentialType.RefreshToken     // Catch:{ NoSuchFieldError -> 0x001e }
                r3 = 0
                r2[r3] = r1     // Catch:{ NoSuchFieldError -> 0x001e }
            L_0x001e:
                int[] r2 = $SwitchMap$com$microsoft$identity$common$internal$dto$CredentialType     // Catch:{ NoSuchFieldError -> 0x0025 }
                com.microsoft.identity.common.internal.dto.CredentialType r3 = com.microsoft.identity.common.internal.dto.CredentialType.IdToken     // Catch:{ NoSuchFieldError -> 0x0025 }
                r3 = 4
                r2[r0] = r3     // Catch:{ NoSuchFieldError -> 0x0025 }
            L_0x0025:
                int[] r0 = $SwitchMap$com$microsoft$identity$common$internal$dto$CredentialType     // Catch:{ NoSuchFieldError -> 0x002c }
                com.microsoft.identity.common.internal.dto.CredentialType r2 = com.microsoft.identity.common.internal.dto.CredentialType.V1IdToken     // Catch:{ NoSuchFieldError -> 0x002c }
                r2 = 5
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002c }
            L_0x002c:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.identity.common.internal.cache.AbstractAccountCredentialCache.AnonymousClass1.<clinit>():void");
        }
    }

    public static boolean targetsIntersect(String str, String str2, boolean z) {
        String[] split = str.split("\\s+");
        String[] split2 = str2.split("\\s+");
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (String lowerCase : split) {
            hashSet.add(lowerCase.toLowerCase());
        }
        for (String lowerCase2 : split2) {
            hashSet2.add(lowerCase2.toLowerCase());
        }
        if (z) {
            hashSet.removeAll(BaseController.DEFAULT_SCOPES);
            hashSet2.removeAll(BaseController.DEFAULT_SCOPES);
        }
        return hashSet2.containsAll(hashSet);
    }

    public List<AccountRecord> getAccountsFilteredByInternal(String str, String str2, String str3, List<AccountRecord> list) {
        boolean z = !StringExtensions.isNullOrBlank(str);
        boolean z2 = !StringExtensions.isNullOrBlank(str2);
        boolean z3 = !StringExtensions.isNullOrBlank(str3);
        Logger.verbose(TAG, "Account lookup filtered by home_account_id? [" + z + "]" + "\n" + "Account lookup filtered by realm? [" + z3 + "]");
        ArrayList arrayList = new ArrayList();
        for (AccountRecord next : list) {
            boolean equalsIgnoreCase = z ? str.equalsIgnoreCase(next.getHomeAccountId()) : true;
            boolean z4 = false;
            if (z2) {
                equalsIgnoreCase = equalsIgnoreCase && str2.equalsIgnoreCase(next.getEnvironment());
            }
            if (z3) {
                if (equalsIgnoreCase && str3.equalsIgnoreCase(next.getRealm())) {
                    z4 = true;
                }
                equalsIgnoreCase = z4;
            }
            if (equalsIgnoreCase) {
                arrayList.add(next);
            }
        }
        String str4 = TAG;
        StringBuilder a = a.a("Found [");
        a.append(arrayList.size());
        a.append("] matching accounts");
        Logger.verbose(str4, a.toString());
        return arrayList;
    }

    public List<Credential> getCredentialsFilteredByInternal(String str, String str2, CredentialType credentialType, String str3, String str4, String str5, String str6, List<Credential> list) {
        boolean z;
        boolean z2;
        boolean z3;
        CredentialType credentialType2 = credentialType;
        String str7 = str4;
        String str8 = str5;
        boolean z4 = !StringExtensions.isNullOrBlank(str2);
        boolean z5 = !StringExtensions.isNullOrBlank(str);
        boolean z6 = !StringExtensions.isNullOrBlank(str4);
        boolean z7 = !StringExtensions.isNullOrBlank(str5);
        boolean z8 = !StringExtensions.isNullOrBlank(str3);
        boolean z9 = credentialType2 != null;
        boolean z10 = z9 && !StringExtensions.isNullOrBlank(str6) && credentialType2 == CredentialType.AccessToken_With_AuthScheme;
        Logger.verbose(TAG, "Credential lookup filtered by home_account_id? [" + z5 + "]" + "\n" + "Credential lookup filtered by realm? [" + z6 + "]" + "\n" + "Credential lookup filtered by target? [" + z7 + "]" + "\n" + "Credential lookup filtered by clientId? [" + z8 + "]" + "\n" + "Credential lookup filtered by credential type? [" + z9 + "]" + "\n" + "Credential lookup filtered by auth scheme? [" + z10 + "]");
        ArrayList arrayList = new ArrayList();
        for (Credential next : list) {
            if (z5) {
                z = str.equalsIgnoreCase(next.getHomeAccountId());
            } else {
                String str9 = str;
                z = true;
            }
            if (z4) {
                if (z) {
                    if (str2.equalsIgnoreCase(next.getEnvironment())) {
                        z = true;
                    }
                } else {
                    String str10 = str2;
                }
                z = false;
            } else {
                String str11 = str2;
            }
            if (z9) {
                z = z && credentialType.name().equalsIgnoreCase(next.getCredentialType());
            }
            if (z8) {
                if (z) {
                    if (str3.equalsIgnoreCase(next.getClientId())) {
                        z3 = true;
                        z = z3;
                    }
                } else {
                    String str12 = str3;
                }
                z3 = false;
                z = z3;
            }
            if (z6 && (next instanceof AccessTokenRecord)) {
                z = z && str7.equalsIgnoreCase(((AccessTokenRecord) next).getRealm());
            }
            if (z6 && (next instanceof IdTokenRecord)) {
                z = z && str7.equalsIgnoreCase(((IdTokenRecord) next).getRealm());
            }
            if (z7) {
                if (next instanceof AccessTokenRecord) {
                    z = z && targetsIntersect(str8, ((AccessTokenRecord) next).getTarget(), true);
                } else if (next instanceof RefreshTokenRecord) {
                    RefreshTokenRecord refreshTokenRecord = (RefreshTokenRecord) next;
                    if (z) {
                        if (targetsIntersect(str8, refreshTokenRecord.getTarget(), true)) {
                            z2 = true;
                            z = z2;
                        }
                    }
                    z2 = false;
                    z = z2;
                } else {
                    Logger.warn(TAG, "Query specified target-match, but no target to match.");
                }
            }
            if (!z10 || !(next instanceof AccessTokenRecord)) {
                String str13 = str6;
            } else {
                AccessTokenRecord accessTokenRecord = (AccessTokenRecord) next;
                if (z) {
                    if (str6.equalsIgnoreCase(accessTokenRecord.getAccessTokenType())) {
                        z = true;
                    }
                } else {
                    String str14 = str6;
                }
                z = false;
            }
            if (z) {
                arrayList.add(next);
            }
            CredentialType credentialType3 = credentialType;
            str7 = str4;
        }
        return arrayList;
    }

    public Class<? extends Credential> getTargetClassForCredentialType(String str, CredentialType credentialType) {
        int ordinal = credentialType.ordinal();
        if (ordinal == 0) {
            return RefreshTokenRecord.class;
        }
        if (ordinal != 1) {
            if (ordinal == 2 || ordinal == 3) {
                return IdTokenRecord.class;
            }
            if (ordinal != 7) {
                Logger.warn(TAG, "Could not match CredentialType to class. Did you forget to update this method with a new type?");
                if (str != null) {
                    String str2 = TAG;
                    Logger.warnPII(str2, "Sought key was: [" + str + "]");
                }
                return null;
            }
        }
        return AccessTokenRecord.class;
    }
}
