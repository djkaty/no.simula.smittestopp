package com.microsoft.identity.common.internal.cache;

import android.content.Context;
import com.microsoft.identity.common.BaseAccount;
import com.microsoft.identity.common.adal.internal.cache.IStorageHelper;
import com.microsoft.identity.common.adal.internal.cache.StorageHelper;
import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.exception.ErrorStrings;
import com.microsoft.identity.common.internal.authscheme.AbstractAuthenticationScheme;
import com.microsoft.identity.common.internal.controllers.BaseController;
import com.microsoft.identity.common.internal.dto.AccessTokenRecord;
import com.microsoft.identity.common.internal.dto.AccountRecord;
import com.microsoft.identity.common.internal.dto.Credential;
import com.microsoft.identity.common.internal.dto.CredentialType;
import com.microsoft.identity.common.internal.dto.IdTokenRecord;
import com.microsoft.identity.common.internal.dto.RefreshTokenRecord;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftAccount;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftRefreshToken;
import com.microsoft.identity.common.internal.providers.microsoft.microsoftsts.MicrosoftStsAuthorizationRequest;
import com.microsoft.identity.common.internal.providers.microsoft.microsoftsts.MicrosoftStsOAuth2Strategy;
import com.microsoft.identity.common.internal.providers.microsoft.microsoftsts.MicrosoftStsTokenResponse;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationRequest;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2Strategy;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2TokenCache;
import com.microsoft.identity.common.internal.providers.oauth2.RefreshToken;
import com.microsoft.identity.common.internal.providers.oauth2.TokenResponse;
import e.a.a.a.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class MsalOAuth2TokenCache<GenericOAuth2Strategy extends OAuth2Strategy, GenericAuthorizationRequest extends AuthorizationRequest, GenericTokenResponse extends TokenResponse, GenericAccount extends BaseAccount, GenericRefreshToken extends RefreshToken> extends OAuth2TokenCache<GenericOAuth2Strategy, GenericAuthorizationRequest, GenericTokenResponse> implements IShareSingleSignOnState<GenericAccount, GenericRefreshToken> {
    public static final String TAG = "MsalOAuth2TokenCache";
    public final IAccountCredentialAdapter<GenericOAuth2Strategy, GenericAuthorizationRequest, GenericTokenResponse, GenericAccount, GenericRefreshToken> mAccountCredentialAdapter;
    public IAccountCredentialCache mAccountCredentialCache;

    public MsalOAuth2TokenCache(Context context, IAccountCredentialCache iAccountCredentialCache, IAccountCredentialAdapter<GenericOAuth2Strategy, GenericAuthorizationRequest, GenericTokenResponse, GenericAccount, GenericRefreshToken> iAccountCredentialAdapter) {
        super(context);
        String str = TAG;
        StringBuilder a = a.a("Init: ");
        a.append(TAG);
        Logger.verbose(str, a.toString());
        this.mAccountCredentialCache = iAccountCredentialCache;
        this.mAccountCredentialAdapter = iAccountCredentialAdapter;
    }

    private boolean accountHasCredential(AccountRecord accountRecord, List<Credential> list) {
        String homeAccountId = accountRecord.getHomeAccountId();
        String environment = accountRecord.getEnvironment();
        String a = a.a(new StringBuilder(), TAG, ":accountHasCredential");
        Logger.verbosePII(a, "HomeAccountId: [" + homeAccountId + "]\nEnvironment: [" + environment + "]");
        for (Credential next : list) {
            if (homeAccountId.equals(next.getHomeAccountId()) && environment.equals(next.getEnvironment())) {
                Logger.info(TAG + ":accountHasCredential", "Credentials located for account.");
                return true;
            }
        }
        return false;
    }

    public static MsalOAuth2TokenCache<MicrosoftStsOAuth2Strategy, MicrosoftStsAuthorizationRequest, MicrosoftStsTokenResponse, MicrosoftAccount, MicrosoftRefreshToken> create(Context context) {
        Logger.verbose(TAG + ":create", "Creating MsalOAuth2TokenCache");
        return new MsalOAuth2TokenCache<>(context, new SharedPreferencesAccountCredentialCache(new CacheKeyValueDelegate(), new SharedPreferencesFileManager(context, SharedPreferencesAccountCredentialCache.DEFAULT_ACCOUNT_CREDENTIAL_SHARED_PREFERENCES, (IStorageHelper) new StorageHelper(context))), new MicrosoftStsAccountCredentialAdapter());
    }

    private void deleteAccessTokensWithIntersectingScopes(AccessTokenRecord accessTokenRecord) {
        List<Credential> credentialsFilteredBy = this.mAccountCredentialCache.getCredentialsFilteredBy(accessTokenRecord.getHomeAccountId(), accessTokenRecord.getEnvironment(), CredentialType.fromString(accessTokenRecord.getCredentialType()), accessTokenRecord.getClientId(), accessTokenRecord.getRealm(), (String) null, accessTokenRecord.getAccessTokenType());
        String a = a.a(new StringBuilder(), TAG, ":", "deleteAccessTokensWithIntersectingScopes");
        StringBuilder a2 = a.a("Inspecting ");
        a2.append(credentialsFilteredBy.size());
        a2.append(" accessToken[s].");
        Logger.verbose(a, a2.toString());
        for (Credential next : credentialsFilteredBy) {
            if (scopesIntersect(accessTokenRecord, (AccessTokenRecord) next, true)) {
                String a3 = a.a(new StringBuilder(), TAG, ":", "deleteAccessTokensWithIntersectingScopes");
                Logger.infoPII(a3, "Removing credential: " + next);
                this.mAccountCredentialCache.removeCredential(next);
            }
        }
    }

    private CredentialType getAccessTokenCredentialTypeForAuthenticationScheme(AbstractAuthenticationScheme abstractAuthenticationScheme) {
        if ("Bearer".equalsIgnoreCase(abstractAuthenticationScheme.getName())) {
            return CredentialType.AccessToken;
        }
        return CredentialType.AccessToken_With_AuthScheme;
    }

    private boolean isAccessTokenSchemaCompliant(AccessTokenRecord accessTokenRecord) {
        return isSchemaCompliant(AccessTokenRecord.class, new String[][]{new String[]{Credential.SerializedNames.CREDENTIAL_TYPE, accessTokenRecord.getCredentialType()}, new String[]{"home_account_id", accessTokenRecord.getHomeAccountId()}, new String[]{"environment", accessTokenRecord.getEnvironment()}, new String[]{"client_id", accessTokenRecord.getClientId()}, new String[]{"target", accessTokenRecord.getTarget()}, new String[]{"cached_at", accessTokenRecord.getCachedAt()}, new String[]{"expires_on", accessTokenRecord.getExpiresOn()}, new String[]{Credential.SerializedNames.SECRET, accessTokenRecord.getSecret()}});
    }

    private boolean isAccountSchemaCompliant(AccountRecord accountRecord) {
        return isSchemaCompliant(AccountRecord.class, new String[][]{new String[]{"home_account_id", accountRecord.getHomeAccountId()}, new String[]{"environment", accountRecord.getEnvironment()}, new String[]{"local_account_id", accountRecord.getLocalAccountId()}, new String[]{"username", accountRecord.getUsername()}, new String[]{AccountRecord.SerializedNames.AUTHORITY_TYPE, accountRecord.getAuthorityType()}});
    }

    private boolean isIdTokenSchemaCompliant(IdTokenRecord idTokenRecord) {
        return isSchemaCompliant(IdTokenRecord.class, new String[][]{new String[]{"home_account_id", idTokenRecord.getHomeAccountId()}, new String[]{"environment", idTokenRecord.getEnvironment()}, new String[]{Credential.SerializedNames.CREDENTIAL_TYPE, idTokenRecord.getCredentialType()}, new String[]{"client_id", idTokenRecord.getClientId()}, new String[]{Credential.SerializedNames.SECRET, idTokenRecord.getSecret()}});
    }

    private boolean isRefreshTokenSchemaCompliant(RefreshTokenRecord refreshTokenRecord) {
        return isSchemaCompliant(RefreshTokenRecord.class, new String[][]{new String[]{Credential.SerializedNames.CREDENTIAL_TYPE, refreshTokenRecord.getCredentialType()}, new String[]{"environment", refreshTokenRecord.getEnvironment()}, new String[]{"home_account_id", refreshTokenRecord.getHomeAccountId()}, new String[]{"client_id", refreshTokenRecord.getClientId()}, new String[]{Credential.SerializedNames.SECRET, refreshTokenRecord.getSecret()}});
    }

    public static boolean isSchemaCompliant(Class<?> cls, String[][] strArr) {
        boolean z = true;
        for (String[] strArr2 : strArr) {
            z = z && !StringExtensions.isNullOrBlank(strArr2[1]);
        }
        if (!z) {
            Logger.warn(a.a(new StringBuilder(), TAG, ":", "isSchemaCompliant"), cls.getSimpleName() + " does not contain all required fields.");
            for (String[] strArr3 : strArr) {
                Logger.warn(a.a(new StringBuilder(), TAG, ":", "isSchemaCompliant"), strArr3[0] + " is null? [" + StringExtensions.isNullOrBlank(strArr3[1]) + "]");
            }
        }
        return z;
    }

    private List<ICacheRecord> mergeCacheRecordWithOtherTenantCacheRecords(ICacheRecord iCacheRecord) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(iCacheRecord);
        ArrayList arrayList2 = new ArrayList(getAllTenantAccountsForAccountByClientId(iCacheRecord.getRefreshToken().getClientId(), iCacheRecord.getAccount()));
        if (!arrayList2.isEmpty()) {
            arrayList2.remove(0);
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                arrayList.add(getSparseCacheRecordForAccount(iCacheRecord.getRefreshToken().getClientId(), (AccountRecord) it.next()));
            }
        }
        return arrayList;
    }

    private int removeCredentialsOfTypeForAccount(String str, String str2, CredentialType credentialType, AccountRecord accountRecord, boolean z) {
        String str3;
        IAccountCredentialCache iAccountCredentialCache = this.mAccountCredentialCache;
        String homeAccountId = accountRecord.getHomeAccountId();
        if (z) {
            str3 = null;
        } else {
            str3 = accountRecord.getRealm();
        }
        int i2 = 0;
        for (Credential removeCredential : iAccountCredentialCache.getCredentialsFilteredBy(homeAccountId, str, credentialType, str2, str3, (String) null, (String) null)) {
            if (this.mAccountCredentialCache.removeCredential(removeCredential)) {
                i2++;
            }
        }
        return i2;
    }

    private int removeRefreshTokensForAccount(AccountRecord accountRecord, boolean z, String str, String str2) {
        if (z) {
            str2 = null;
        }
        return removeCredentialsOfTypeForAccount(str, str2, CredentialType.RefreshToken, accountRecord, true);
    }

    private void saveAccounts(AccountRecord... accountRecordArr) {
        for (AccountRecord saveAccount : accountRecordArr) {
            this.mAccountCredentialCache.saveAccount(saveAccount);
        }
    }

    private Set<String> scopesAsSet(AccessTokenRecord accessTokenRecord) {
        HashSet hashSet = new HashSet();
        String target = accessTokenRecord.getTarget();
        if (!StringExtensions.isNullOrBlank(target)) {
            hashSet.addAll(Arrays.asList(target.split("\\s+")));
        }
        return hashSet;
    }

    private boolean scopesIntersect(AccessTokenRecord accessTokenRecord, AccessTokenRecord accessTokenRecord2, boolean z) {
        Set<String> scopesAsSet = scopesAsSet(accessTokenRecord);
        Set<String> scopesAsSet2 = scopesAsSet(accessTokenRecord2);
        if (z) {
            scopesAsSet.removeAll(BaseController.DEFAULT_SCOPES);
            scopesAsSet2.removeAll(BaseController.DEFAULT_SCOPES);
        }
        for (String next : scopesAsSet2) {
            if (scopesAsSet.contains(next)) {
                Logger.info(TAG + ":" + "scopesIntersect", "Scopes intersect.");
                String a = a.a(new StringBuilder(), TAG, ":", "scopesIntersect");
                Logger.infoPII(a, scopesAsSet.toString() + " contains [" + next + "]");
                return true;
            }
        }
        return false;
    }

    private void setToCacheRecord(CacheRecord cacheRecord, IdTokenRecord idTokenRecord) {
        CredentialType fromString = CredentialType.fromString(idTokenRecord.getCredentialType());
        if (fromString == null) {
            return;
        }
        if (CredentialType.V1IdToken == fromString) {
            cacheRecord.setV1IdToken(idTokenRecord);
        } else if (CredentialType.IdToken == fromString) {
            cacheRecord.setIdToken(idTokenRecord);
        } else {
            String a = a.a(new StringBuilder(), TAG, ":setToCacheRecord");
            StringBuilder a2 = a.a("Unrecognized IdToken type: ");
            a2.append(idTokenRecord.getCredentialType());
            Logger.warn(a, a2.toString());
        }
    }

    public void clearAll() {
        a.c(new StringBuilder(), TAG, ":clearAll", "Clearing cache.");
        this.mAccountCredentialCache.clearAll();
    }

    public AccountRecord getAccount(String str, String str2, String str3, String str4) {
        String a = a.a(new StringBuilder(), TAG, ":getAccount");
        Logger.verbosePII(a, "Environment: [" + str + "]\nClientId: [" + str2 + "]\nHomeAccountId: [" + str3 + "]\nRealm: [" + str4 + "]");
        List<AccountRecord> accounts = getAccounts(str, str2);
        String a2 = a.a(new StringBuilder(), TAG, ":getAccount");
        StringBuilder a3 = a.a("Found ");
        a3.append(accounts.size());
        a3.append(" accounts");
        Logger.info(a2, a3.toString());
        for (AccountRecord next : accounts) {
            if (str3.equals(next.getHomeAccountId()) && (str4 == null || str4.equals(next.getRealm()))) {
                return next;
            }
        }
        a.c(new StringBuilder(), TAG, ":getAccount", "No matching account found.");
        return null;
    }

    public AccountRecord getAccountByHomeAccountId(String str, String str2, String str3) {
        List<AccountRecord> accounts = getAccounts(str, str2);
        String a = a.a(new StringBuilder(), TAG, ":getAccountByHomeAccountId");
        Logger.verbosePII(a, "homeAccountId: [" + str3 + "]");
        for (AccountRecord next : accounts) {
            if (str3.equals(next.getHomeAccountId())) {
                return next;
            }
        }
        return null;
    }

    public AccountRecord getAccountByLocalAccountId(String str, String str2, String str3) {
        List<AccountRecord> accounts = getAccounts(str, str2);
        String a = a.a(new StringBuilder(), TAG, ":getAccountByLocalAccountId");
        Logger.verbosePII(a, "LocalAccountId: [" + str3 + "]");
        for (AccountRecord next : accounts) {
            if (str3.equals(next.getLocalAccountId())) {
                return next;
            }
        }
        return null;
    }

    public IAccountCredentialAdapter<GenericOAuth2Strategy, GenericAuthorizationRequest, GenericTokenResponse, GenericAccount, GenericRefreshToken> getAccountCredentialAdapter() {
        return this.mAccountCredentialAdapter;
    }

    public IAccountCredentialCache getAccountCredentialCache() {
        return this.mAccountCredentialCache;
    }

    public ICacheRecord getAccountWithAggregatedAccountDataByLocalAccountId(String str, String str2, String str3) {
        AccountRecord accountByLocalAccountId = getAccountByLocalAccountId(str, str2, str3);
        if (accountByLocalAccountId == null) {
            return null;
        }
        List<IdTokenRecord> idTokensForAccountRecord = getIdTokensForAccountRecord(str2, accountByLocalAccountId);
        CacheRecord cacheRecord = new CacheRecord();
        cacheRecord.setAccount(accountByLocalAccountId);
        for (IdTokenRecord toCacheRecord : idTokensForAccountRecord) {
            setToCacheRecord(cacheRecord, toCacheRecord);
        }
        return cacheRecord;
    }

    public List<AccountRecord> getAccounts(String str, String str2) {
        String str3 = str;
        String a = a.a(new StringBuilder(), TAG, ":getAccounts");
        Logger.verbosePII(a, "Environment: [" + str3 + "]\nClientId: [" + str2 + "]");
        ArrayList arrayList = new ArrayList();
        List<AccountRecord> accountsFilteredBy = this.mAccountCredentialCache.getAccountsFilteredBy((String) null, str3, (String) null);
        String a2 = a.a(new StringBuilder(), TAG, ":getAccounts");
        StringBuilder a3 = a.a("Found ");
        a3.append(accountsFilteredBy.size());
        a3.append(" accounts for this environment");
        Logger.verbose(a2, a3.toString());
        String str4 = str;
        String str5 = str2;
        List<Credential> credentialsFilteredBy = this.mAccountCredentialCache.getCredentialsFilteredBy((String) null, str4, CredentialType.IdToken, str5, (String) null, (String) null, (String) null);
        credentialsFilteredBy.addAll(this.mAccountCredentialCache.getCredentialsFilteredBy((String) null, str4, CredentialType.V1IdToken, str5, (String) null, (String) null, (String) null));
        for (AccountRecord next : accountsFilteredBy) {
            if (accountHasCredential(next, credentialsFilteredBy)) {
                arrayList.add(next);
            }
        }
        String a4 = a.a(new StringBuilder(), TAG, ":getAccounts");
        StringBuilder a5 = a.a("Found ");
        a5.append(arrayList.size());
        a5.append(" accounts for this clientId");
        Logger.verbose(a4, a5.toString());
        return Collections.unmodifiableList(arrayList);
    }

    public List<AccountRecord> getAccountsByUsername(String str, String str2, String str3) {
        ArrayList arrayList = new ArrayList();
        List<AccountRecord> accounts = getAccounts(str, str2);
        for (AccountRecord next : accounts) {
            if (next.getUsername().equalsIgnoreCase(str3)) {
                arrayList.add(next);
            }
        }
        String a = a.a(new StringBuilder(), TAG, ":getAccountsByUsername");
        StringBuilder a2 = a.a("Found ");
        a2.append(accounts.size());
        a2.append(" accounts matching username.");
        Logger.verbose(a, a2.toString());
        return arrayList;
    }

    public List<ICacheRecord> getAccountsWithAggregatedAccountData(String str, String str2, String str3) {
        ArrayList arrayList = new ArrayList();
        AccountRecord account = getAccount(str, str2, str3, (String) null);
        if (account != null) {
            for (AccountRecord sparseCacheRecordForAccount : getAllTenantAccountsForAccountByClientId(str2, account)) {
                arrayList.add(getSparseCacheRecordForAccount(str2, sparseCacheRecordForAccount));
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public Set<String> getAllClientIds() {
        HashSet hashSet = new HashSet();
        for (Credential clientId : this.mAccountCredentialCache.getCredentials()) {
            hashSet.add(clientId.getClientId());
        }
        String a = a.a(new StringBuilder(), TAG, ":getAllClientIds");
        StringBuilder a2 = a.a("Found [");
        a2.append(hashSet.size());
        a2.append("] clientIds/");
        Logger.verbose(a, a2.toString());
        return hashSet;
    }

    public List<AccountRecord> getAllTenantAccountsForAccountByClientId(String str, AccountRecord accountRecord) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(accountRecord);
        List<AccountRecord> accountsFilteredBy = this.mAccountCredentialCache.getAccountsFilteredBy(accountRecord.getHomeAccountId(), accountRecord.getEnvironment(), (String) null);
        for (AccountRecord next : getAccounts(accountRecord.getEnvironment(), str)) {
            if (accountsFilteredBy.contains(next) && !accountRecord.equals(next)) {
                arrayList.add(next);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public List<IdTokenRecord> getIdTokensForAccountRecord(String str, AccountRecord accountRecord) {
        ArrayList arrayList = new ArrayList();
        List<Credential> credentialsFilteredBy = this.mAccountCredentialCache.getCredentialsFilteredBy(accountRecord.getHomeAccountId(), accountRecord.getEnvironment(), CredentialType.IdToken, str, accountRecord.getRealm(), (String) null, (String) null);
        credentialsFilteredBy.addAll(this.mAccountCredentialCache.getCredentialsFilteredBy(accountRecord.getHomeAccountId(), accountRecord.getEnvironment(), CredentialType.V1IdToken, str, accountRecord.getRealm(), (String) null, (String) null));
        for (Credential next : credentialsFilteredBy) {
            if (next instanceof IdTokenRecord) {
                arrayList.add((IdTokenRecord) next);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public GenericRefreshToken getSingleSignOnState(GenericAccount genericaccount) {
        throw new UnsupportedOperationException("Unimplemented!");
    }

    public ICacheRecord getSparseCacheRecordForAccount(String str, AccountRecord accountRecord) {
        List<IdTokenRecord> idTokensForAccountRecord = getIdTokensForAccountRecord(str, accountRecord);
        if (idTokensForAccountRecord.size() > CredentialType.ID_TOKEN_TYPES.length) {
            String a = a.a(new StringBuilder(), TAG, ":getSparseCacheRecordForAccount");
            StringBuilder a2 = a.a("Found more IdTokens than expected.\nFound: [");
            a2.append(idTokensForAccountRecord.size());
            a2.append("]");
            Logger.warn(a, a2.toString());
        }
        CacheRecord cacheRecord = new CacheRecord();
        cacheRecord.setAccount(accountRecord);
        for (IdTokenRecord toCacheRecord : idTokensForAccountRecord) {
            setToCacheRecord(cacheRecord, toCacheRecord);
        }
        return cacheRecord;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v4, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r9v2, resolved type: com.microsoft.identity.common.internal.dto.IdTokenRecord} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.microsoft.identity.common.internal.cache.ICacheRecord load(java.lang.String r11, java.lang.String r12, com.microsoft.identity.common.internal.dto.AccountRecord r13, com.microsoft.identity.common.internal.authscheme.AbstractAuthenticationScheme r14) {
        /*
            r10 = this;
            com.microsoft.identity.common.internal.telemetry.events.CacheStartEvent r0 = new com.microsoft.identity.common.internal.telemetry.events.CacheStartEvent
            r0.<init>()
            com.microsoft.identity.common.internal.telemetry.Telemetry.emit(r0)
            java.lang.String r0 = r13.getAuthorityType()
            java.lang.String r1 = "MSSTS"
            boolean r0 = r1.equals(r0)
            com.microsoft.identity.common.internal.cache.IAccountCredentialCache r1 = r10.mAccountCredentialCache
            java.lang.String r2 = r13.getHomeAccountId()
            java.lang.String r3 = r13.getEnvironment()
            com.microsoft.identity.common.internal.dto.CredentialType r4 = r10.getAccessTokenCredentialTypeForAuthenticationScheme(r14)
            java.lang.String r6 = r13.getRealm()
            java.lang.String r8 = r14.getName()
            r5 = r11
            r7 = r12
            java.util.List r14 = r1.getCredentialsFilteredBy(r2, r3, r4, r5, r6, r7, r8)
            com.microsoft.identity.common.internal.cache.IAccountCredentialCache r1 = r10.mAccountCredentialCache
            java.lang.String r2 = r13.getHomeAccountId()
            java.lang.String r3 = r13.getEnvironment()
            com.microsoft.identity.common.internal.dto.CredentialType r4 = com.microsoft.identity.common.internal.dto.CredentialType.RefreshToken
            r9 = 0
            if (r0 == 0) goto L_0x003f
            r6 = r9
            goto L_0x0044
        L_0x003f:
            java.lang.String r5 = r13.getRealm()
            r6 = r5
        L_0x0044:
            if (r0 == 0) goto L_0x0048
            r7 = r9
            goto L_0x0049
        L_0x0048:
            r7 = r12
        L_0x0049:
            r8 = 0
            r5 = r11
            java.util.List r12 = r1.getCredentialsFilteredBy(r2, r3, r4, r5, r6, r7, r8)
            com.microsoft.identity.common.internal.cache.IAccountCredentialCache r0 = r10.mAccountCredentialCache
            java.lang.String r1 = r13.getHomeAccountId()
            java.lang.String r2 = r13.getEnvironment()
            com.microsoft.identity.common.internal.dto.CredentialType r3 = com.microsoft.identity.common.internal.dto.CredentialType.IdToken
            java.lang.String r5 = r13.getRealm()
            r6 = 0
            r7 = 0
            r4 = r11
            java.util.List r0 = r0.getCredentialsFilteredBy(r1, r2, r3, r4, r5, r6, r7)
            com.microsoft.identity.common.internal.cache.IAccountCredentialCache r1 = r10.mAccountCredentialCache
            java.lang.String r2 = r13.getHomeAccountId()
            java.lang.String r3 = r13.getEnvironment()
            com.microsoft.identity.common.internal.dto.CredentialType r4 = com.microsoft.identity.common.internal.dto.CredentialType.V1IdToken
            java.lang.String r6 = r13.getRealm()
            r5 = r11
            java.util.List r11 = r1.getCredentialsFilteredBy(r2, r3, r4, r5, r6, r7, r8)
            com.microsoft.identity.common.internal.cache.CacheRecord r1 = new com.microsoft.identity.common.internal.cache.CacheRecord
            r1.<init>()
            r1.setAccount(r13)
            boolean r13 = r14.isEmpty()
            r2 = 0
            if (r13 == 0) goto L_0x008c
            r13 = r9
            goto L_0x0092
        L_0x008c:
            java.lang.Object r13 = r14.get(r2)
            com.microsoft.identity.common.internal.dto.AccessTokenRecord r13 = (com.microsoft.identity.common.internal.dto.AccessTokenRecord) r13
        L_0x0092:
            r1.setAccessToken(r13)
            boolean r13 = r12.isEmpty()
            if (r13 == 0) goto L_0x009d
            r12 = r9
            goto L_0x00a3
        L_0x009d:
            java.lang.Object r12 = r12.get(r2)
            com.microsoft.identity.common.internal.dto.RefreshTokenRecord r12 = (com.microsoft.identity.common.internal.dto.RefreshTokenRecord) r12
        L_0x00a3:
            r1.setRefreshToken(r12)
            boolean r12 = r0.isEmpty()
            if (r12 == 0) goto L_0x00ae
            r12 = r9
            goto L_0x00b4
        L_0x00ae:
            java.lang.Object r12 = r0.get(r2)
            com.microsoft.identity.common.internal.dto.IdTokenRecord r12 = (com.microsoft.identity.common.internal.dto.IdTokenRecord) r12
        L_0x00b4:
            r1.setIdToken(r12)
            boolean r12 = r11.isEmpty()
            if (r12 == 0) goto L_0x00be
            goto L_0x00c5
        L_0x00be:
            java.lang.Object r11 = r11.get(r2)
            r9 = r11
            com.microsoft.identity.common.internal.dto.IdTokenRecord r9 = (com.microsoft.identity.common.internal.dto.IdTokenRecord) r9
        L_0x00c5:
            r1.setV1IdToken(r9)
            com.microsoft.identity.common.internal.telemetry.events.CacheEndEvent r11 = new com.microsoft.identity.common.internal.telemetry.events.CacheEndEvent
            r11.<init>()
            com.microsoft.identity.common.internal.telemetry.events.CacheEndEvent r11 = r11.putCacheRecordStatus(r1)
            com.microsoft.identity.common.internal.telemetry.Telemetry.emit(r11)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.identity.common.internal.cache.MsalOAuth2TokenCache.load(java.lang.String, java.lang.String, com.microsoft.identity.common.internal.dto.AccountRecord, com.microsoft.identity.common.internal.authscheme.AbstractAuthenticationScheme):com.microsoft.identity.common.internal.cache.ICacheRecord");
    }

    public List<ICacheRecord> loadWithAggregatedAccountData(String str, String str2, AccountRecord accountRecord, AbstractAuthenticationScheme abstractAuthenticationScheme) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList();
            arrayList.add(load(str, str2, accountRecord, abstractAuthenticationScheme));
            for (ICacheRecord next : getAccountsWithAggregatedAccountData(accountRecord.getEnvironment(), str, accountRecord.getHomeAccountId())) {
                if (!accountRecord.equals(next.getAccount())) {
                    arrayList.add(next);
                }
            }
        }
        return arrayList;
    }

    public AccountDeletionRecord removeAccount(String str, String str2, String str3, String str4) {
        AccountRecord account;
        String str5 = str;
        String str6 = str2;
        String str7 = str3;
        String str8 = str4;
        String a = a.a(new StringBuilder(), TAG, ":removeAccount");
        Logger.verbosePII(a, "Environment: [" + str5 + "]\nClientId: [" + str6 + "]\nHomeAccountId: [" + str7 + "]\nRealm: [" + str8 + "]");
        if (str5 == null || str6 == null || str7 == null || (account = getAccount(str, str2, str3, str4)) == null) {
            Logger.warn(TAG + ":removeAccount", "Insufficient filtering provided for account removal - preserving Account.");
            return new AccountDeletionRecord((List<AccountRecord>) null);
        }
        boolean z = str8 == null;
        String a2 = a.a(new StringBuilder(), TAG, ":removeAccount");
        Logger.verbose(a2, "IsRealmAgnostic? " + z);
        String str9 = str;
        String str10 = str2;
        AccountRecord accountRecord = account;
        boolean z2 = z;
        int removeCredentialsOfTypeForAccount = removeCredentialsOfTypeForAccount(str9, str10, CredentialType.AccessToken, accountRecord, z);
        int removeCredentialsOfTypeForAccount2 = removeCredentialsOfTypeForAccount(str9, str10, CredentialType.AccessToken_With_AuthScheme, accountRecord, z);
        int removeCredentialsOfTypeForAccount3 = removeCredentialsOfTypeForAccount(str9, str10, CredentialType.RefreshToken, accountRecord, z);
        int removeCredentialsOfTypeForAccount4 = removeCredentialsOfTypeForAccount(str9, str10, CredentialType.IdToken, accountRecord, z);
        int removeCredentialsOfTypeForAccount5 = removeCredentialsOfTypeForAccount(str9, str10, CredentialType.V1IdToken, accountRecord, z);
        ArrayList arrayList = new ArrayList();
        if (z2) {
            for (AccountRecord next : this.mAccountCredentialCache.getAccountsFilteredBy(str7, str5, (String) null)) {
                if (this.mAccountCredentialCache.removeAccount(next)) {
                    arrayList.add(next);
                }
            }
        } else if (this.mAccountCredentialCache.removeAccount(account)) {
            arrayList.add(account);
        }
        String[][] strArr = {new String[]{"Access tokens", String.valueOf(removeCredentialsOfTypeForAccount)}, new String[]{"Access tokens (with authscheme)", String.valueOf(removeCredentialsOfTypeForAccount2)}, new String[]{"Refresh tokens", String.valueOf(removeCredentialsOfTypeForAccount3)}, new String[]{"Id tokens (v1)", String.valueOf(removeCredentialsOfTypeForAccount5)}, new String[]{"Id tokens (v2)", String.valueOf(removeCredentialsOfTypeForAccount4)}, new String[]{"Accounts", String.valueOf(arrayList.size())}};
        for (int i2 = 0; i2 < 6; i2++) {
            String[] strArr2 = strArr[i2];
            String a3 = a.a(new StringBuilder(), TAG, ":removeAccount");
            Logger.info(a3, strArr2[0] + " removed: [" + strArr2[1] + "]");
        }
        return new AccountDeletionRecord(arrayList);
    }

    public boolean removeCredential(Credential credential) {
        Logger.info(TAG + ":removeCredential", "Removing credential...");
        String a = a.a(new StringBuilder(), TAG, ":removeCredential");
        StringBuilder a2 = a.a("ClientId: [");
        a2.append(credential.getClientId());
        a2.append("]\nCredentialType: [");
        a2.append(credential.getCredentialType());
        a2.append("]\nCachedAt: [");
        a2.append(credential.getCachedAt());
        a2.append("]\nEnvironment: [");
        a2.append(credential.getEnvironment());
        a2.append("]\nHomeAccountId: [");
        a2.append(credential.getHomeAccountId());
        a2.append("]\nIsExpired?: [");
        a2.append(credential.isExpired());
        a2.append("]");
        Logger.verbosePII(a, a2.toString());
        return this.mAccountCredentialCache.removeCredential(credential);
    }

    public void removeRefreshTokenIfNeeded(AccountRecord accountRecord, RefreshTokenRecord refreshTokenRecord) {
        boolean z = !StringExtensions.isNullOrBlank(refreshTokenRecord.getFamilyId());
        Logger.info(a.a(new StringBuilder(), TAG, ":removeRefreshTokenIfNeeded"), "isFamilyRefreshToken? [" + z + "]");
        boolean equals = MicrosoftAccount.AUTHORITY_TYPE_V1_V2.equals(accountRecord.getAuthorityType());
        Logger.info(a.a(new StringBuilder(), TAG, ":removeRefreshTokenIfNeeded"), "isMultiResourceCapable? [" + equals + "]");
        if (z || equals) {
            int removeRefreshTokensForAccount = removeRefreshTokensForAccount(accountRecord, z, accountRecord.getEnvironment(), refreshTokenRecord.getClientId());
            Logger.info(a.a(new StringBuilder(), TAG, ":removeRefreshTokenIfNeeded"), "Refresh tokens removed: [" + removeRefreshTokensForAccount + "]");
            if (removeRefreshTokensForAccount > 1) {
                a.c(new StringBuilder(), TAG, ":removeRefreshTokenIfNeeded", "Multiple refresh tokens found for Account.");
            }
        }
    }

    public ICacheRecord save(AccountRecord accountRecord, IdTokenRecord idTokenRecord, AccessTokenRecord accessTokenRecord) {
        boolean isAccountSchemaCompliant = isAccountSchemaCompliant(accountRecord);
        boolean isIdTokenSchemaCompliant = isIdTokenSchemaCompliant(idTokenRecord);
        boolean isAccessTokenSchemaCompliant = isAccessTokenSchemaCompliant(accessTokenRecord);
        if (!isAccountSchemaCompliant) {
            throw new ClientException(ErrorStrings.ACCOUNT_IS_SCHEMA_NONCOMPLIANT);
        } else if (!isIdTokenSchemaCompliant) {
            throw new ClientException(ErrorStrings.CREDENTIAL_IS_SCHEMA_NONCOMPLIANT, "[(ID)]");
        } else if (isAccessTokenSchemaCompliant) {
            a.b(new StringBuilder(), TAG, ":save (broker 3 arg)", "Accounts/Credentials are valid.... proceeding");
            saveAccounts(accountRecord);
            saveCredentialsInternal(idTokenRecord, accessTokenRecord);
            CacheRecord cacheRecord = new CacheRecord();
            cacheRecord.setAccount(accountRecord);
            cacheRecord.setAccessToken(accessTokenRecord);
            CredentialType credentialType = CredentialType.V1IdToken;
            if ("V1IdToken".equalsIgnoreCase(idTokenRecord.getCredentialType())) {
                cacheRecord.setV1IdToken(idTokenRecord);
            } else {
                cacheRecord.setIdToken(idTokenRecord);
            }
            return cacheRecord;
        } else {
            throw new ClientException(ErrorStrings.CREDENTIAL_IS_SCHEMA_NONCOMPLIANT, "[(AT)]");
        }
    }

    public List<ICacheRecord> saveAndLoadAggregatedAccountData(AccountRecord accountRecord, IdTokenRecord idTokenRecord, AccessTokenRecord accessTokenRecord) {
        return mergeCacheRecordWithOtherTenantCacheRecords(save(accountRecord, idTokenRecord, accessTokenRecord));
    }

    public void saveCredentialsInternal(Credential... credentialArr) {
        for (AccessTokenRecord accessTokenRecord : credentialArr) {
            if (accessTokenRecord instanceof AccessTokenRecord) {
                deleteAccessTokensWithIntersectingScopes(accessTokenRecord);
            }
            this.mAccountCredentialCache.saveCredential(accessTokenRecord);
        }
    }

    public void setSingleSignOnState(GenericAccount genericaccount, GenericRefreshToken genericrefreshtoken) {
        AccountRecord asAccount = this.mAccountCredentialAdapter.asAccount(genericaccount);
        RefreshTokenRecord asRefreshToken = this.mAccountCredentialAdapter.asRefreshToken(genericrefreshtoken);
        IdTokenRecord asIdToken = this.mAccountCredentialAdapter.asIdToken(genericaccount, genericrefreshtoken);
        validateCacheArtifacts(asAccount, (AccessTokenRecord) null, asRefreshToken, asIdToken);
        boolean z = !StringExtensions.isNullOrBlank(genericrefreshtoken.getFamilyId());
        boolean equals = MicrosoftAccount.AUTHORITY_TYPE_V1_V2.equals(asAccount.getAuthorityType());
        if (z || equals) {
            int removeRefreshTokensForAccount = removeRefreshTokensForAccount(asAccount, z, asAccount.getEnvironment(), asRefreshToken.getClientId());
            Logger.info(a.a(new StringBuilder(), TAG, "setSingleSignOnState"), "Refresh tokens removed: [" + removeRefreshTokensForAccount + "]");
            if (removeRefreshTokensForAccount > 1) {
                a.c(new StringBuilder(), TAG, "setSingleSignOnState", "Multiple refresh tokens found for Account.");
            }
        }
        saveAccounts(asAccount);
        saveCredentialsInternal(asIdToken, asRefreshToken);
    }

    public void validateCacheArtifacts(AccountRecord accountRecord, AccessTokenRecord accessTokenRecord, RefreshTokenRecord refreshTokenRecord, IdTokenRecord idTokenRecord) {
        a.b(new StringBuilder(), TAG, ":validateCacheArtifacts", "Validating cache artifacts...");
        boolean isAccountSchemaCompliant = isAccountSchemaCompliant(accountRecord);
        boolean z = accessTokenRecord == null || isAccessTokenSchemaCompliant(accessTokenRecord);
        boolean isRefreshTokenSchemaCompliant = isRefreshTokenSchemaCompliant(refreshTokenRecord);
        boolean isIdTokenSchemaCompliant = isIdTokenSchemaCompliant(idTokenRecord);
        if (!isAccountSchemaCompliant) {
            throw new ClientException(ErrorStrings.ACCOUNT_IS_SCHEMA_NONCOMPLIANT);
        } else if (!z || !isRefreshTokenSchemaCompliant || !isIdTokenSchemaCompliant) {
            String str = !z ? "[(AT)" : "[";
            if (!isRefreshTokenSchemaCompliant) {
                str = a.b(str, "(RT)");
            }
            if (!isIdTokenSchemaCompliant) {
                str = a.b(str, "(ID)");
            }
            throw new ClientException(ErrorStrings.CREDENTIAL_IS_SCHEMA_NONCOMPLIANT, a.b(str, "]"));
        }
    }

    public void validateNonNull(Object obj, String str) {
        String b = a.b(str, " passed in is Null");
        if (obj == null) {
            Logger.warn(TAG, b);
            throw new ClientException(b);
        }
    }

    public List<ICacheRecord> saveAndLoadAggregatedAccountData(GenericOAuth2Strategy genericoauth2strategy, GenericAuthorizationRequest genericauthorizationrequest, GenericTokenResponse generictokenresponse) {
        List<ICacheRecord> mergeCacheRecordWithOtherTenantCacheRecords;
        synchronized (this) {
            mergeCacheRecordWithOtherTenantCacheRecords = mergeCacheRecordWithOtherTenantCacheRecords(save(genericoauth2strategy, genericauthorizationrequest, generictokenresponse));
        }
        return mergeCacheRecordWithOtherTenantCacheRecords;
    }

    public List<ICacheRecord> getAccountsWithAggregatedAccountData(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        for (AccountRecord next : getAccounts(str, str2)) {
            List<IdTokenRecord> idTokensForAccountRecord = getIdTokensForAccountRecord(str2, next);
            CacheRecord cacheRecord = new CacheRecord();
            cacheRecord.setAccount(next);
            for (IdTokenRecord toCacheRecord : idTokensForAccountRecord) {
                setToCacheRecord(cacheRecord, toCacheRecord);
            }
            arrayList.add(cacheRecord);
        }
        String a = a.a(new StringBuilder(), TAG, ":getAccountsWithAggregatedAccountData");
        StringBuilder a2 = a.a("Found ");
        a2.append(arrayList.size());
        a2.append(" accounts with IdTokens");
        Logger.verbose(a, a2.toString());
        return Collections.unmodifiableList(arrayList);
    }

    public ICacheRecord save(GenericOAuth2Strategy genericoauth2strategy, GenericAuthorizationRequest genericauthorizationrequest, GenericTokenResponse generictokenresponse) {
        AccountRecord createAccount = this.mAccountCredentialAdapter.createAccount(genericoauth2strategy, genericauthorizationrequest, generictokenresponse);
        AccessTokenRecord createAccessToken = this.mAccountCredentialAdapter.createAccessToken(genericoauth2strategy, genericauthorizationrequest, generictokenresponse);
        RefreshTokenRecord createRefreshToken = this.mAccountCredentialAdapter.createRefreshToken(genericoauth2strategy, genericauthorizationrequest, generictokenresponse);
        IdTokenRecord createIdToken = this.mAccountCredentialAdapter.createIdToken(genericoauth2strategy, genericauthorizationrequest, generictokenresponse);
        validateCacheArtifacts(createAccount, createAccessToken, createRefreshToken, createIdToken);
        removeRefreshTokenIfNeeded(createAccount, createRefreshToken);
        saveAccounts(createAccount);
        saveCredentialsInternal(createAccessToken, createRefreshToken, createIdToken);
        CacheRecord cacheRecord = new CacheRecord();
        cacheRecord.setAccount(createAccount);
        cacheRecord.setAccessToken(createAccessToken);
        cacheRecord.setRefreshToken(createRefreshToken);
        setToCacheRecord(cacheRecord, createIdToken);
        return cacheRecord;
    }

    public ICacheRecord save(AccountRecord accountRecord, IdTokenRecord idTokenRecord) {
        a.b(new StringBuilder(), TAG, ":save", "Importing AccountRecord, IdTokenRecord (direct)");
        boolean isAccountSchemaCompliant = isAccountSchemaCompliant(accountRecord);
        boolean isIdTokenSchemaCompliant = isIdTokenSchemaCompliant(idTokenRecord);
        CacheRecord cacheRecord = new CacheRecord();
        if (!isAccountSchemaCompliant || !isIdTokenSchemaCompliant) {
            String str = !isAccountSchemaCompliant ? "[(Account)" : "[";
            if (!isIdTokenSchemaCompliant) {
                str = a.b(str, "(ID)");
            }
            String b = a.b(str, "]");
            String a = a.a(new StringBuilder(), TAG, ":save");
            Logger.warn(a, "Skipping persistence of non-compliant credentials: " + b);
        } else {
            saveAccounts(accountRecord);
            saveCredentialsInternal(idTokenRecord);
            cacheRecord.setAccount(accountRecord);
            CredentialType credentialType = CredentialType.V1IdToken;
            if ("V1IdToken".equalsIgnoreCase(idTokenRecord.getCredentialType())) {
                cacheRecord.setV1IdToken(idTokenRecord);
            } else {
                cacheRecord.setIdToken(idTokenRecord);
            }
        }
        return cacheRecord;
    }
}
