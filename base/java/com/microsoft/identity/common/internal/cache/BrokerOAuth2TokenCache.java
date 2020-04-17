package com.microsoft.identity.common.internal.cache;

import android.content.Context;
import com.microsoft.identity.common.adal.internal.cache.IStorageHelper;
import com.microsoft.identity.common.adal.internal.cache.StorageHelper;
import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.internal.authscheme.AbstractAuthenticationScheme;
import com.microsoft.identity.common.internal.dto.AccessTokenRecord;
import com.microsoft.identity.common.internal.dto.AccountRecord;
import com.microsoft.identity.common.internal.dto.Credential;
import com.microsoft.identity.common.internal.dto.CredentialType;
import com.microsoft.identity.common.internal.dto.IdTokenRecord;
import com.microsoft.identity.common.internal.dto.RefreshTokenRecord;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftAccount;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftRefreshToken;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftTokenResponse;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationRequest;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2Strategy;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2TokenCache;
import e.a.a.a.a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class BrokerOAuth2TokenCache<GenericOAuth2Strategy extends OAuth2Strategy, GenericAuthorizationRequest extends AuthorizationRequest, GenericTokenResponse extends MicrosoftTokenResponse, GenericAccount extends MicrosoftAccount, GenericRefreshToken extends MicrosoftRefreshToken> extends OAuth2TokenCache<GenericOAuth2Strategy, GenericAuthorizationRequest, GenericTokenResponse> {
    public static final String TAG = "BrokerOAuth2TokenCache";
    public static final String UNCHECKED = "unchecked";
    public final IBrokerApplicationMetadataCache mApplicationMetadataCache;
    public final int mCallingProcessUid;
    public ProcessUidCacheFactory mDelegate = null;
    public final MicrosoftFamilyOAuth2TokenCache mFociCache;

    public interface ProcessUidCacheFactory {
        MsalOAuth2TokenCache getTokenCache(Context context, int i2);
    }

    public BrokerOAuth2TokenCache(Context context, int i2, IBrokerApplicationMetadataCache iBrokerApplicationMetadataCache) {
        super(context);
        String a = a.a(new StringBuilder(), TAG, "ctor");
        StringBuilder a2 = a.a("Init::");
        a2.append(TAG);
        Logger.verbose(a, a2.toString());
        this.mCallingProcessUid = i2;
        this.mFociCache = initializeFociCache(context);
        this.mApplicationMetadataCache = iBrokerApplicationMetadataCache;
    }

    public static <T extends MsalOAuth2TokenCache> T getTokenCache(Context context, ISharedPreferencesFileManager iSharedPreferencesFileManager, boolean z) {
        SharedPreferencesAccountCredentialCache sharedPreferencesAccountCredentialCache = new SharedPreferencesAccountCredentialCache(new CacheKeyValueDelegate(), iSharedPreferencesFileManager);
        MicrosoftStsAccountCredentialAdapter microsoftStsAccountCredentialAdapter = new MicrosoftStsAccountCredentialAdapter();
        return z ? new MicrosoftFamilyOAuth2TokenCache(context, sharedPreferencesAccountCredentialCache, microsoftStsAccountCredentialAdapter) : new MsalOAuth2TokenCache(context, sharedPreferencesAccountCredentialCache, microsoftStsAccountCredentialAdapter);
    }

    private MsalOAuth2TokenCache getTokenCacheForClient(String str, String str2, int i2) {
        MsalOAuth2TokenCache msalOAuth2TokenCache;
        BrokerApplicationMetadata metadata = this.mApplicationMetadataCache.getMetadata(str, str2, i2);
        if (metadata != null) {
            boolean z = metadata.getFoci() != null;
            String a = a.a(new StringBuilder(), TAG, ":getTokenCacheForClient");
            Logger.verbose(a, "is Foci? [" + z + "]");
            msalOAuth2TokenCache = z ? this.mFociCache : initializeProcessUidCache(getContext(), i2);
        } else {
            msalOAuth2TokenCache = null;
        }
        if (msalOAuth2TokenCache == null) {
            a.c(new StringBuilder(), TAG, ":getTokenCacheForClient", "Could not locate a cache for this app.");
        }
        return msalOAuth2TokenCache;
    }

    private List<OAuth2TokenCache> getTokenCachesForClientId(String str) {
        List<BrokerApplicationMetadata> all = this.mApplicationMetadataCache.getAll();
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        for (BrokerApplicationMetadata brokerApplicationMetadata : all) {
            if (str.equals(brokerApplicationMetadata.getClientId())) {
                if (brokerApplicationMetadata.getFoci() == null || z) {
                    MsalOAuth2TokenCache tokenCacheForClient = getTokenCacheForClient(brokerApplicationMetadata.getClientId(), brokerApplicationMetadata.getEnvironment(), this.mCallingProcessUid);
                    if (tokenCacheForClient != null) {
                        arrayList.add(tokenCacheForClient);
                    }
                } else {
                    arrayList.add(this.mFociCache);
                    z = true;
                }
            }
        }
        return arrayList;
    }

    public static MicrosoftFamilyOAuth2TokenCache initializeFociCache(Context context) {
        Logger.verbose(TAG + ":initializeFociCache", "Initializing foci cache");
        return (MicrosoftFamilyOAuth2TokenCache) getTokenCache(context, new SharedPreferencesFileManager(context, SharedPreferencesAccountCredentialCache.BROKER_FOCI_ACCOUNT_CREDENTIAL_SHARED_PREFERENCES, (IStorageHelper) new StorageHelper(context)), true);
    }

    private MsalOAuth2TokenCache initializeProcessUidCache(Context context, int i2) {
        a.b(new StringBuilder(), TAG, ":initializeProcessUidCache", "Initializing uid cache.");
        if (this.mDelegate != null) {
            a.c(new StringBuilder(), TAG, ":initializeProcessUidCache", "Using swapped delegate cache.");
            return this.mDelegate.getTokenCache(context, i2);
        }
        return getTokenCache(context, new SharedPreferencesFileManager(context, SharedPreferencesAccountCredentialCache.getBrokerUidSequesteredFilename(i2), (IStorageHelper) new StorageHelper(context)), false);
    }

    private AccountDeletionRecord removeAccountInternal(String str, String str2, String str3, String str4, boolean z) {
        List<BrokerApplicationMetadata> all = this.mApplicationMetadataCache.getAll();
        ArrayList arrayList = new ArrayList();
        for (BrokerApplicationMetadata brokerApplicationMetadata : all) {
            MsalOAuth2TokenCache tokenCacheForClient = getTokenCacheForClient(brokerApplicationMetadata.getClientId(), brokerApplicationMetadata.getEnvironment(), z ? brokerApplicationMetadata.getUid() : this.mCallingProcessUid);
            if (tokenCacheForClient != null) {
                arrayList.add(tokenCacheForClient.removeAccount(str, str2, str3, str4));
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.addAll((AccountDeletionRecord) it.next());
        }
        String a = a.a(new StringBuilder(), TAG, ":removeAccountInternal");
        StringBuilder a2 = a.a("Deleted [");
        a2.append(arrayList2.size());
        a2.append("] AccountRecords.");
        Logger.info(a, a2.toString());
        return new AccountDeletionRecord(arrayList2);
    }

    private void updateApplicationMetadataCache(String str, String str2, String str3, int i2) {
        BrokerApplicationMetadata brokerApplicationMetadata = new BrokerApplicationMetadata();
        brokerApplicationMetadata.setClientId(str);
        brokerApplicationMetadata.setEnvironment(str2);
        brokerApplicationMetadata.setFoci(str3);
        brokerApplicationMetadata.setUid(i2);
        String a = a.a(new StringBuilder(), TAG, ":updateApplicationMetadataCache");
        Logger.verbose(a, "Adding cache entry for clientId: [" + str + "]");
        boolean insert = this.mApplicationMetadataCache.insert(brokerApplicationMetadata);
        String a2 = a.a(new StringBuilder(), TAG, ":updateApplicationMetadataCache");
        Logger.info(a2, "Cache updated successfully? [" + insert + "]");
    }

    public void clearAll() {
        throw new UnsupportedOperationException(ADALOAuth2TokenCache.ERR_UNSUPPORTED_OPERATION);
    }

    public AccountRecord getAccount(String str, String str2, String str3, String str4) {
        if (str != null) {
            MsalOAuth2TokenCache tokenCacheForClient = getTokenCacheForClient(str2, str, this.mCallingProcessUid);
            if (tokenCacheForClient == null) {
                a.b(new StringBuilder(), TAG, ":getAccount", "Target cache was null. Using FOCI cache.");
                tokenCacheForClient = this.mFociCache;
            }
            return tokenCacheForClient.getAccount(str, str2, str3, str4);
        }
        Iterator<OAuth2TokenCache> it = getTokenCachesForClientId(str2).iterator();
        AccountRecord accountRecord = null;
        while (accountRecord == null && it.hasNext()) {
            accountRecord = it.next().getAccount(str, str2, str3, str4);
        }
        return accountRecord;
    }

    public AccountRecord getAccountByHomeAccountId(String str, String str2, String str3) {
        a.b(new StringBuilder(), TAG, "getAccountByHomeAccountId", "Loading account by home account id.");
        if (str != null) {
            MsalOAuth2TokenCache tokenCacheForClient = getTokenCacheForClient(str2, str, this.mCallingProcessUid);
            String a = a.a(new StringBuilder(), TAG, "getAccountByHomeAccountId");
            StringBuilder a2 = a.a("Loading from FOCI cache? [");
            a2.append(tokenCacheForClient == null);
            a2.append("]");
            Logger.info(a, a2.toString());
            if (tokenCacheForClient != null) {
                return tokenCacheForClient.getAccountByHomeAccountId(str, str2, str3);
            }
            return this.mFociCache.getAccountByHomeAccountId(str, str2, str3);
        }
        AccountRecord accountRecord = null;
        Iterator<OAuth2TokenCache> it = getTokenCachesForClientId(str2).iterator();
        while (accountRecord == null && it.hasNext()) {
            accountRecord = it.next().getAccountByHomeAccountId(str, str2, str3);
        }
        return accountRecord;
    }

    public AccountRecord getAccountByLocalAccountId(String str, String str2, String str3) {
        a.b(new StringBuilder(), TAG, ":getAccountByLocalAccountId", "Loading account by local account id.");
        if (str != null) {
            MsalOAuth2TokenCache tokenCacheForClient = getTokenCacheForClient(str2, str, this.mCallingProcessUid);
            String a = a.a(new StringBuilder(), TAG, ":getAccountByLocalAccountId");
            StringBuilder a2 = a.a("Loading from FOCI cache? [");
            a2.append(tokenCacheForClient == null);
            a2.append("]");
            Logger.info(a, a2.toString());
            if (tokenCacheForClient != null) {
                return tokenCacheForClient.getAccountByLocalAccountId(str, str2, str3);
            }
            return this.mFociCache.getAccountByLocalAccountId(str, str2, str3);
        }
        AccountRecord accountRecord = null;
        Iterator<OAuth2TokenCache> it = getTokenCachesForClientId(str2).iterator();
        while (accountRecord == null && it.hasNext()) {
            accountRecord = it.next().getAccountByLocalAccountId(str, str2, str3);
        }
        return accountRecord;
    }

    public ICacheRecord getAccountWithAggregatedAccountDataByLocalAccountId(String str, String str2, String str3) {
        if (str != null) {
            MsalOAuth2TokenCache tokenCacheForClient = getTokenCacheForClient(str2, str, this.mCallingProcessUid);
            String a = a.a(new StringBuilder(), TAG, ":getAccountWithAggregatedAccountDataByLocalAccountId");
            StringBuilder a2 = a.a("Loading from FOCI cache? [");
            a2.append(tokenCacheForClient == null);
            a2.append("]");
            Logger.info(a, a2.toString());
            if (tokenCacheForClient != null) {
                return tokenCacheForClient.getAccountWithAggregatedAccountDataByLocalAccountId(str, str2, str3);
            }
            return this.mFociCache.getAccountWithAggregatedAccountDataByLocalAccountId(str, str2, str3);
        }
        ICacheRecord iCacheRecord = null;
        Iterator<OAuth2TokenCache> it = getTokenCachesForClientId(str2).iterator();
        while (iCacheRecord == null && it.hasNext()) {
            iCacheRecord = it.next().getAccountWithAggregatedAccountDataByLocalAccountId(str, str2, str3);
        }
        return iCacheRecord;
    }

    public List<AccountRecord> getAccounts(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        if (str != null) {
            MsalOAuth2TokenCache tokenCacheForClient = getTokenCacheForClient(str2, str, this.mCallingProcessUid);
            if (tokenCacheForClient != null) {
                arrayList.addAll(tokenCacheForClient.getAccounts(str, str2));
            } else {
                a.c(new StringBuilder(), TAG, ":getAccounts (2 param)", "No caches to inspect.");
            }
        } else {
            for (OAuth2TokenCache accounts : getTokenCachesForClientId(str2)) {
                arrayList.addAll(accounts.getAccounts(str, str2));
            }
            String a = a.a(new StringBuilder(), TAG, ":getAccounts (2 param)");
            StringBuilder a2 = a.a("Found [");
            a2.append(arrayList.size());
            a2.append("] accounts.");
            Logger.verbose(a, a2.toString());
        }
        return arrayList;
    }

    public List<ICacheRecord> getAccountsWithAggregatedAccountData(String str, String str2, String str3) {
        if (str != null) {
            MsalOAuth2TokenCache tokenCacheForClient = getTokenCacheForClient(str2, str, this.mCallingProcessUid);
            if (tokenCacheForClient == null) {
                a.b(new StringBuilder(), TAG, ":getAccountsWithAggregatedAccountData", "Falling back to FoCI cache...");
                tokenCacheForClient = this.mFociCache;
            }
            return tokenCacheForClient.getAccountsWithAggregatedAccountData(str, str2, str3);
        }
        List<OAuth2TokenCache> tokenCachesForClientId = getTokenCachesForClientId(str2);
        ArrayList arrayList = new ArrayList();
        for (OAuth2TokenCache accountsWithAggregatedAccountData : tokenCachesForClientId) {
            arrayList.addAll(accountsWithAggregatedAccountData.getAccountsWithAggregatedAccountData(str, str2, str3));
        }
        return arrayList;
    }

    public Set<String> getAllClientIds() {
        return this.mApplicationMetadataCache.getAllClientIds();
    }

    public List<AccountRecord> getAllTenantAccountsForAccountByClientId(String str, AccountRecord accountRecord) {
        return getTokenCacheForClient(str, accountRecord.getEnvironment(), this.mCallingProcessUid).getAllTenantAccountsForAccountByClientId(str, accountRecord);
    }

    public List<ICacheRecord> getFociCacheRecords() {
        ArrayList arrayList = new ArrayList();
        for (BrokerApplicationMetadata next : this.mApplicationMetadataCache.getAllFociApplicationMetadata()) {
            for (AccountRecord next2 : this.mFociCache.getAccounts(next.getEnvironment(), next.getClientId())) {
                String homeAccountId = next2.getHomeAccountId();
                String environment = next2.getEnvironment();
                String clientId = next.getClientId();
                String realm = next2.getRealm();
                String str = homeAccountId;
                String str2 = environment;
                String str3 = clientId;
                String str4 = realm;
                List<Credential> credentialsFilteredBy = this.mFociCache.getAccountCredentialCache().getCredentialsFilteredBy(str, str2, CredentialType.RefreshToken, str3, (String) null, (String) null, (String) null);
                List<Credential> credentialsFilteredBy2 = this.mFociCache.getAccountCredentialCache().getCredentialsFilteredBy(str, str2, CredentialType.V1IdToken, str3, str4, (String) null, (String) null);
                List<Credential> credentialsFilteredBy3 = this.mFociCache.getAccountCredentialCache().getCredentialsFilteredBy(str, str2, CredentialType.IdToken, str3, str4, (String) null, (String) null);
                if (!credentialsFilteredBy.isEmpty()) {
                    CacheRecord cacheRecord = new CacheRecord();
                    cacheRecord.setAccount(next2);
                    cacheRecord.setRefreshToken((RefreshTokenRecord) credentialsFilteredBy.get(0));
                    if (!credentialsFilteredBy2.isEmpty()) {
                        String a = a.a(new StringBuilder(), TAG, ":getFociCacheRecords");
                        StringBuilder a2 = a.a("Found [");
                        a2.append(credentialsFilteredBy2.size());
                        a2.append("] V1IdTokens");
                        Logger.verbose(a, a2.toString());
                        cacheRecord.setV1IdToken((IdTokenRecord) credentialsFilteredBy2.get(0));
                    } else {
                        a.c(new StringBuilder(), TAG, ":getFociCacheRecords", "No V1IdTokens exist for this account.");
                    }
                    if (!credentialsFilteredBy3.isEmpty()) {
                        String a3 = a.a(new StringBuilder(), TAG, ":getFociCacheRecords");
                        StringBuilder a4 = a.a("Found [");
                        a4.append(credentialsFilteredBy3.size());
                        a4.append("] IdTokens");
                        Logger.verbose(a3, a4.toString());
                        cacheRecord.setIdToken((IdTokenRecord) credentialsFilteredBy3.get(0));
                    } else {
                        a.c(new StringBuilder(), TAG, ":getFociCacheRecords", "No IdTokens exist for this account.");
                    }
                    arrayList.add(cacheRecord);
                }
            }
        }
        return arrayList;
    }

    public List<IdTokenRecord> getIdTokensForAccountRecord(String str, AccountRecord accountRecord) {
        String environment = accountRecord.getEnvironment();
        if (str != null) {
            return getTokenCacheForClient(str, environment, this.mCallingProcessUid).getIdTokensForAccountRecord(str, accountRecord);
        }
        throw new UnsupportedOperationException("Aggregating IdTokens across ClientIds is not supported - do you have a feature request?");
    }

    public boolean isClientIdKnownToCache(String str) {
        return getAllClientIds().contains(str);
    }

    public ICacheRecord load(String str, String str2, AccountRecord accountRecord, AbstractAuthenticationScheme abstractAuthenticationScheme) {
        boolean z;
        ICacheRecord iCacheRecord;
        a.b(new StringBuilder(), TAG, ":load", "Performing lookup in app-specific cache.");
        BrokerApplicationMetadata metadata = this.mApplicationMetadataCache.getMetadata(str, accountRecord.getEnvironment(), this.mCallingProcessUid);
        boolean z2 = true;
        if (metadata != null) {
            z = metadata.getFoci() != null;
            String a = a.a(new StringBuilder(), TAG, ":load");
            Logger.info(a, "App is known foci? " + z);
        } else {
            z = false;
        }
        MsalOAuth2TokenCache tokenCacheForClient = getTokenCacheForClient(str, accountRecord.getEnvironment(), this.mCallingProcessUid);
        boolean z3 = tokenCacheForClient == null || z;
        String a2 = a.a(new StringBuilder(), TAG, ":load");
        Logger.info(a2, "Loading from FOCI cache? [" + z3 + "]");
        if (z3) {
            iCacheRecord = this.mFociCache.loadByFamilyId(str, str2, accountRecord, abstractAuthenticationScheme);
        } else {
            iCacheRecord = tokenCacheForClient.load(str, str2, accountRecord, abstractAuthenticationScheme);
        }
        if (iCacheRecord.getRefreshToken() == null) {
            z2 = false;
        }
        String a3 = a.a(new StringBuilder(), TAG, ":load");
        Logger.verbose(a3, "Result found? [" + z2 + "]");
        return iCacheRecord;
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0088  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0097  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x00b6  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x00b7  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.List<com.microsoft.identity.common.internal.cache.ICacheRecord> loadWithAggregatedAccountData(java.lang.String r9, java.lang.String r10, com.microsoft.identity.common.internal.dto.AccountRecord r11, com.microsoft.identity.common.internal.authscheme.AbstractAuthenticationScheme r12) {
        /*
            r8 = this;
            monitor-enter(r8)
            com.microsoft.identity.common.internal.cache.IBrokerApplicationMetadataCache r0 = r8.mApplicationMetadataCache     // Catch:{ all -> 0x00e6 }
            java.lang.String r1 = r11.getEnvironment()     // Catch:{ all -> 0x00e6 }
            int r2 = r8.mCallingProcessUid     // Catch:{ all -> 0x00e6 }
            com.microsoft.identity.common.internal.cache.BrokerApplicationMetadata r0 = r0.getMetadata(r9, r1, r2)     // Catch:{ all -> 0x00e6 }
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L_0x0042
            java.lang.String r0 = r0.getFoci()     // Catch:{ all -> 0x00e6 }
            if (r0 == 0) goto L_0x0019
            r0 = 1
            goto L_0x001a
        L_0x0019:
            r0 = 0
        L_0x001a:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x00e6 }
            r3.<init>()     // Catch:{ all -> 0x00e6 }
            java.lang.String r4 = TAG     // Catch:{ all -> 0x00e6 }
            r3.append(r4)     // Catch:{ all -> 0x00e6 }
            java.lang.String r4 = ":loadWithAggregatedAccountData"
            r3.append(r4)     // Catch:{ all -> 0x00e6 }
            java.lang.String r3 = r3.toString()     // Catch:{ all -> 0x00e6 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ all -> 0x00e6 }
            r4.<init>()     // Catch:{ all -> 0x00e6 }
            java.lang.String r5 = "App is known foci? "
            r4.append(r5)     // Catch:{ all -> 0x00e6 }
            r4.append(r0)     // Catch:{ all -> 0x00e6 }
            java.lang.String r4 = r4.toString()     // Catch:{ all -> 0x00e6 }
            com.microsoft.identity.common.internal.logging.Logger.info(r3, r4)     // Catch:{ all -> 0x00e6 }
            goto L_0x0043
        L_0x0042:
            r0 = 0
        L_0x0043:
            java.lang.String r3 = r11.getEnvironment()     // Catch:{ all -> 0x00e6 }
            int r4 = r8.mCallingProcessUid     // Catch:{ all -> 0x00e6 }
            com.microsoft.identity.common.internal.cache.MsalOAuth2TokenCache r3 = r8.getTokenCacheForClient(r9, r3, r4)     // Catch:{ all -> 0x00e6 }
            if (r3 != 0) goto L_0x0051
            r4 = 1
            goto L_0x0052
        L_0x0051:
            r4 = 0
        L_0x0052:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ all -> 0x00e6 }
            r5.<init>()     // Catch:{ all -> 0x00e6 }
            java.lang.String r6 = TAG     // Catch:{ all -> 0x00e6 }
            r5.append(r6)     // Catch:{ all -> 0x00e6 }
            java.lang.String r6 = ":loadWithAggregatedAccountData"
            r5.append(r6)     // Catch:{ all -> 0x00e6 }
            java.lang.String r5 = r5.toString()     // Catch:{ all -> 0x00e6 }
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ all -> 0x00e6 }
            r6.<init>()     // Catch:{ all -> 0x00e6 }
            java.lang.String r7 = "Loading from FOCI cache? ["
            r6.append(r7)     // Catch:{ all -> 0x00e6 }
            if (r0 != 0) goto L_0x0076
            if (r4 == 0) goto L_0x0074
            goto L_0x0076
        L_0x0074:
            r7 = 0
            goto L_0x0077
        L_0x0076:
            r7 = 1
        L_0x0077:
            r6.append(r7)     // Catch:{ all -> 0x00e6 }
            java.lang.String r7 = "]"
            r6.append(r7)     // Catch:{ all -> 0x00e6 }
            java.lang.String r6 = r6.toString()     // Catch:{ all -> 0x00e6 }
            com.microsoft.identity.common.internal.logging.Logger.info(r5, r6)     // Catch:{ all -> 0x00e6 }
            if (r4 == 0) goto L_0x0097
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch:{ all -> 0x00e6 }
            r0.<init>()     // Catch:{ all -> 0x00e6 }
            com.microsoft.identity.common.internal.cache.MicrosoftFamilyOAuth2TokenCache r3 = r8.mFociCache     // Catch:{ all -> 0x00e6 }
            com.microsoft.identity.common.internal.cache.ICacheRecord r9 = r3.loadByFamilyId(r9, r10, r11, r12)     // Catch:{ all -> 0x00e6 }
            r0.add(r9)     // Catch:{ all -> 0x00e6 }
            goto L_0x00a4
        L_0x0097:
            if (r0 == 0) goto L_0x00a0
            com.microsoft.identity.common.internal.cache.MicrosoftFamilyOAuth2TokenCache r0 = r8.mFociCache     // Catch:{ all -> 0x00e6 }
            java.util.List r0 = r0.loadByFamilyIdWithAggregatedAccountData(r9, r10, r11, r12)     // Catch:{ all -> 0x00e6 }
            goto L_0x00a4
        L_0x00a0:
            java.util.List r0 = r3.loadWithAggregatedAccountData(r9, r10, r11, r12)     // Catch:{ all -> 0x00e6 }
        L_0x00a4:
            boolean r9 = r0.isEmpty()     // Catch:{ all -> 0x00e6 }
            if (r9 != 0) goto L_0x00b7
            java.lang.Object r9 = r0.get(r2)     // Catch:{ all -> 0x00e6 }
            com.microsoft.identity.common.internal.cache.ICacheRecord r9 = (com.microsoft.identity.common.internal.cache.ICacheRecord) r9     // Catch:{ all -> 0x00e6 }
            com.microsoft.identity.common.internal.dto.RefreshTokenRecord r9 = r9.getRefreshToken()     // Catch:{ all -> 0x00e6 }
            if (r9 == 0) goto L_0x00b7
            goto L_0x00b8
        L_0x00b7:
            r1 = 0
        L_0x00b8:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch:{ all -> 0x00e6 }
            r9.<init>()     // Catch:{ all -> 0x00e6 }
            java.lang.String r10 = TAG     // Catch:{ all -> 0x00e6 }
            r9.append(r10)     // Catch:{ all -> 0x00e6 }
            java.lang.String r10 = ":loadWithAggregatedAccountData"
            r9.append(r10)     // Catch:{ all -> 0x00e6 }
            java.lang.String r9 = r9.toString()     // Catch:{ all -> 0x00e6 }
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch:{ all -> 0x00e6 }
            r10.<init>()     // Catch:{ all -> 0x00e6 }
            java.lang.String r11 = "Result found? ["
            r10.append(r11)     // Catch:{ all -> 0x00e6 }
            r10.append(r1)     // Catch:{ all -> 0x00e6 }
            java.lang.String r11 = "]"
            r10.append(r11)     // Catch:{ all -> 0x00e6 }
            java.lang.String r10 = r10.toString()     // Catch:{ all -> 0x00e6 }
            com.microsoft.identity.common.internal.logging.Logger.verbose(r9, r10)     // Catch:{ all -> 0x00e6 }
            monitor-exit(r8)     // Catch:{ all -> 0x00e6 }
            return r0
        L_0x00e6:
            r9 = move-exception
            monitor-exit(r8)     // Catch:{ all -> 0x00e6 }
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.identity.common.internal.cache.BrokerOAuth2TokenCache.loadWithAggregatedAccountData(java.lang.String, java.lang.String, com.microsoft.identity.common.internal.dto.AccountRecord, com.microsoft.identity.common.internal.authscheme.AbstractAuthenticationScheme):java.util.List");
    }

    public AccountDeletionRecord removeAccount(String str, String str2, String str3, String str4) {
        return removeAccountInternal(str, str2, str3, str4, false);
    }

    public AccountDeletionRecord removeAccountFromDevice(AccountRecord accountRecord) {
        if (accountRecord != null) {
            Set<String> allClientIds = this.mApplicationMetadataCache.getAllClientIds();
            String a = a.a(new StringBuilder(), TAG, ":removeAccountFromDevice");
            StringBuilder a2 = a.a("Found [");
            a2.append(allClientIds.size());
            a2.append("] client ids.");
            Logger.info(a, a2.toString());
            ArrayList arrayList = new ArrayList();
            for (String removeAccountInternal : allClientIds) {
                arrayList.add(removeAccountInternal(accountRecord.getEnvironment(), removeAccountInternal, accountRecord.getHomeAccountId(), (String) null, true));
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.addAll((AccountDeletionRecord) it.next());
            }
            String a3 = a.a(new StringBuilder(), TAG, ":removeAccountFromDevice");
            StringBuilder a4 = a.a("Deleted [");
            a4.append(arrayList2.size());
            a4.append("] AccountRecords.");
            Logger.info(a3, a4.toString());
            return new AccountDeletionRecord(arrayList2);
        }
        Logger.error(TAG + ":removeAccountFromDevice", "Illegal arg. Cannot delete a null AccountRecord!", (Throwable) null);
        throw new IllegalArgumentException("AccountRecord may not be null.");
    }

    public boolean removeCredential(Credential credential) {
        boolean z;
        MsalOAuth2TokenCache tokenCacheForClient = getTokenCacheForClient(credential.getClientId(), credential.getEnvironment(), this.mCallingProcessUid);
        if (tokenCacheForClient != null) {
            z = tokenCacheForClient.removeCredential(credential);
        } else {
            a.c(new StringBuilder(), TAG, ":removeCredential", "Could not remove credential. Cache not found.");
            z = false;
        }
        String a = a.a(new StringBuilder(), TAG, ":removeCredential");
        Logger.verbose(a, "Credential removed? [" + z + "]");
        return z;
    }

    public void setSingleSignOnState(String str, GenericAccount genericaccount, GenericRefreshToken genericrefreshtoken) {
        MsalOAuth2TokenCache msalOAuth2TokenCache;
        boolean isFamilyRefreshToken = genericrefreshtoken.getIsFamilyRefreshToken();
        int intValue = Integer.valueOf(str).intValue();
        if (isFamilyRefreshToken) {
            a.b(new StringBuilder(), TAG, ":setSingleSignOnState", "Saving tokens to foci cache.");
            msalOAuth2TokenCache = this.mFociCache;
        } else {
            msalOAuth2TokenCache = getTokenCacheForClient(genericrefreshtoken.getClientId(), genericrefreshtoken.getEnvironment(), this.mCallingProcessUid);
            if (msalOAuth2TokenCache == null) {
                Logger.verbose(TAG + ":setSingleSignOnState", "Existing cache could not be found. Creating a new one...");
                msalOAuth2TokenCache = initializeProcessUidCache(getContext(), intValue);
            }
        }
        try {
            msalOAuth2TokenCache.setSingleSignOnState(genericaccount, genericrefreshtoken);
            updateApplicationMetadataCache(genericrefreshtoken.getClientId(), genericrefreshtoken.getEnvironment(), genericrefreshtoken.getFamilyId(), intValue);
        } catch (ClientException unused) {
            a.c(new StringBuilder(), TAG, ":setSingleSignOnState", "Failed to save account/refresh token. Skipping.");
        }
    }

    public ICacheRecord save(AccountRecord accountRecord, IdTokenRecord idTokenRecord, AccessTokenRecord accessTokenRecord, String str) {
        ICacheRecord iCacheRecord;
        boolean z = !StringExtensions.isNullOrBlank(str);
        Logger.info(a.a(new StringBuilder(), TAG, ":save"), "Saving to FOCI cache? [" + z + "]");
        if (z) {
            iCacheRecord = this.mFociCache.save(accountRecord, idTokenRecord, accessTokenRecord);
        } else {
            MsalOAuth2TokenCache tokenCacheForClient = getTokenCacheForClient(idTokenRecord.getClientId(), idTokenRecord.getEnvironment(), this.mCallingProcessUid);
            if (tokenCacheForClient == null) {
                Logger.warn(TAG + ":save", "Existing cache not found. A new one will be created.");
                tokenCacheForClient = initializeProcessUidCache(getContext(), this.mCallingProcessUid);
            }
            iCacheRecord = tokenCacheForClient.save(accountRecord, idTokenRecord, accessTokenRecord);
        }
        updateApplicationMetadataCache(iCacheRecord.getAccessToken().getClientId(), iCacheRecord.getAccessToken().getEnvironment(), str, this.mCallingProcessUid);
        return iCacheRecord;
    }

    /*  JADX ERROR: IndexOutOfBoundsException in pass: RegionMakerVisitor
        java.lang.IndexOutOfBoundsException: Index: 0, Size: 0
        	at java.util.ArrayList.rangeCheck(ArrayList.java:657)
        	at java.util.ArrayList.get(ArrayList.java:433)
        	at jadx.core.dex.nodes.InsnNode.getArg(InsnNode.java:101)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:611)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.processMonitorEnter(RegionMaker.java:561)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:133)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMaker.processMonitorEnter(RegionMaker.java:598)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:133)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:49)
        */
    public synchronized java.util.List<com.microsoft.identity.common.internal.cache.ICacheRecord> saveAndLoadAggregatedAccountData(com.microsoft.identity.common.internal.dto.AccountRecord r2, com.microsoft.identity.common.internal.dto.IdTokenRecord r3, com.microsoft.identity.common.internal.dto.AccessTokenRecord r4, java.lang.String r5, com.microsoft.identity.common.internal.authscheme.AbstractAuthenticationScheme r6) {
        /*
            r1 = this;
            monitor-enter(r1)
            monitor-enter(r1)     // Catch:{ all -> 0x0032 }
            com.microsoft.identity.common.internal.cache.ICacheRecord r2 = r1.save(r2, r3, r4, r5)     // Catch:{ all -> 0x002f }
            com.microsoft.identity.common.internal.dto.AccessTokenRecord r3 = r2.getAccessToken()     // Catch:{ all -> 0x002f }
            java.lang.String r3 = r3.getClientId()     // Catch:{ all -> 0x002f }
            com.microsoft.identity.common.internal.dto.AccessTokenRecord r4 = r2.getAccessToken()     // Catch:{ all -> 0x002f }
            java.lang.String r4 = r4.getTarget()     // Catch:{ all -> 0x002f }
            com.microsoft.identity.common.internal.dto.AccessTokenRecord r5 = r2.getAccessToken()     // Catch:{ all -> 0x002f }
            java.lang.String r5 = r5.getEnvironment()     // Catch:{ all -> 0x002f }
            int r0 = r1.mCallingProcessUid     // Catch:{ all -> 0x002f }
            com.microsoft.identity.common.internal.cache.MsalOAuth2TokenCache r5 = r1.getTokenCacheForClient(r3, r5, r0)     // Catch:{ all -> 0x002f }
            com.microsoft.identity.common.internal.dto.AccountRecord r2 = r2.getAccount()     // Catch:{ all -> 0x002f }
            java.util.List r2 = r5.loadWithAggregatedAccountData(r3, r4, r2, r6)     // Catch:{ all -> 0x002f }
            monitor-exit(r1)     // Catch:{ all -> 0x002f }
            monitor-exit(r1)
            return r2
        L_0x002f:
            r2 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x002f }
            throw r2     // Catch:{ all -> 0x0032 }
        L_0x0032:
            r2 = move-exception
            monitor-exit(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.identity.common.internal.cache.BrokerOAuth2TokenCache.saveAndLoadAggregatedAccountData(com.microsoft.identity.common.internal.dto.AccountRecord, com.microsoft.identity.common.internal.dto.IdTokenRecord, com.microsoft.identity.common.internal.dto.AccessTokenRecord, java.lang.String, com.microsoft.identity.common.internal.authscheme.AbstractAuthenticationScheme):java.util.List");
    }

    public BrokerOAuth2TokenCache(Context context, int i2, IBrokerApplicationMetadataCache iBrokerApplicationMetadataCache, ProcessUidCacheFactory processUidCacheFactory, MicrosoftFamilyOAuth2TokenCache microsoftFamilyOAuth2TokenCache) {
        super(context);
        String a = a.a(new StringBuilder(), TAG, "ctor");
        StringBuilder a2 = a.a("Init::");
        a2.append(TAG);
        Logger.verbose(a, a2.toString());
        this.mDelegate = processUidCacheFactory;
        this.mApplicationMetadataCache = iBrokerApplicationMetadataCache;
        this.mCallingProcessUid = i2;
        this.mFociCache = microsoftFamilyOAuth2TokenCache;
    }

    public List<ICacheRecord> getAccountsWithAggregatedAccountData(String str, String str2) {
        if (str != null) {
            MsalOAuth2TokenCache tokenCacheForClient = getTokenCacheForClient(str2, str, this.mCallingProcessUid);
            if (tokenCacheForClient == null) {
                a.b(new StringBuilder(), TAG, ":getAccountsWithAggregatedAccountData", "Falling back to FoCI cache...");
                tokenCacheForClient = this.mFociCache;
            }
            return tokenCacheForClient.getAccountsWithAggregatedAccountData(str, str2);
        }
        List<OAuth2TokenCache> tokenCachesForClientId = getTokenCachesForClientId(str2);
        ArrayList arrayList = new ArrayList();
        for (OAuth2TokenCache accountsWithAggregatedAccountData : tokenCachesForClientId) {
            arrayList.addAll(accountsWithAggregatedAccountData.getAccountsWithAggregatedAccountData(str, str2));
        }
        return arrayList;
    }

    public List<ICacheRecord> saveAndLoadAggregatedAccountData(GenericOAuth2Strategy genericoauth2strategy, GenericAuthorizationRequest genericauthorizationrequest, GenericTokenResponse generictokenresponse) {
        MsalOAuth2TokenCache msalOAuth2TokenCache;
        List<ICacheRecord> saveAndLoadAggregatedAccountData;
        synchronized (this) {
            boolean z = !StringExtensions.isNullOrBlank(generictokenresponse.getFamilyId());
            Logger.info(TAG + ":saveAndLoadAggregatedAccountData", "Saving to FOCI cache? [" + z + "]");
            if (z) {
                msalOAuth2TokenCache = this.mFociCache;
            } else {
                msalOAuth2TokenCache = getTokenCacheForClient(genericauthorizationrequest.getClientId(), genericoauth2strategy.getIssuerCacheIdentifier(genericauthorizationrequest), this.mCallingProcessUid);
                if (msalOAuth2TokenCache == null) {
                    Logger.warn(TAG + ":saveAndLoadAggregatedAccountData", "Existing cache not found. A new one will be created.");
                    msalOAuth2TokenCache = initializeProcessUidCache(getContext(), this.mCallingProcessUid);
                }
            }
            saveAndLoadAggregatedAccountData = msalOAuth2TokenCache.saveAndLoadAggregatedAccountData(genericoauth2strategy, genericauthorizationrequest, generictokenresponse);
            ICacheRecord iCacheRecord = saveAndLoadAggregatedAccountData.get(0);
            updateApplicationMetadataCache(iCacheRecord.getRefreshToken().getClientId(), iCacheRecord.getRefreshToken().getEnvironment(), iCacheRecord.getRefreshToken().getFamilyId(), this.mCallingProcessUid);
        }
        return saveAndLoadAggregatedAccountData;
    }

    public List<AccountRecord> getAccounts() {
        HashSet hashSet = new HashSet();
        for (BrokerApplicationMetadata brokerApplicationMetadata : this.mApplicationMetadataCache.getAll()) {
            MsalOAuth2TokenCache tokenCacheForClient = getTokenCacheForClient(brokerApplicationMetadata.getClientId(), brokerApplicationMetadata.getEnvironment(), brokerApplicationMetadata.getUid());
            if (tokenCacheForClient != null) {
                hashSet.addAll(tokenCacheForClient.getAccountCredentialCache().getAccounts());
            }
        }
        hashSet.addAll(this.mFociCache.getAccountCredentialCache().getAccounts());
        ArrayList arrayList = new ArrayList(hashSet);
        String a = a.a(new StringBuilder(), TAG, ":getAccounts");
        StringBuilder a2 = a.a("Found [");
        a2.append(arrayList.size());
        a2.append("] accounts.");
        Logger.verbose(a, a2.toString());
        return arrayList;
    }

    public ICacheRecord save(GenericOAuth2Strategy genericoauth2strategy, GenericAuthorizationRequest genericauthorizationrequest, GenericTokenResponse generictokenresponse) {
        MsalOAuth2TokenCache msalOAuth2TokenCache;
        boolean z = !StringExtensions.isNullOrBlank(generictokenresponse.getFamilyId());
        if (z) {
            String a = a.a(new StringBuilder(), TAG, ":save");
            StringBuilder a2 = a.a("Received FOCI value: [");
            a2.append(generictokenresponse.getFamilyId());
            a2.append("]");
            Logger.verbose(a, a2.toString());
        }
        Logger.info(a.a(new StringBuilder(), TAG, ":save"), "Saving to FOCI cache? [" + z + "]");
        if (z) {
            msalOAuth2TokenCache = this.mFociCache;
        } else {
            msalOAuth2TokenCache = getTokenCacheForClient(genericauthorizationrequest.getClientId(), genericoauth2strategy.getIssuerCacheIdentifier(genericauthorizationrequest), this.mCallingProcessUid);
            if (msalOAuth2TokenCache == null) {
                Logger.warn(TAG + ":save", "Existing cache not found. A new one will be created.");
                msalOAuth2TokenCache = initializeProcessUidCache(getContext(), this.mCallingProcessUid);
            }
        }
        ICacheRecord save = msalOAuth2TokenCache.save(genericoauth2strategy, genericauthorizationrequest, generictokenresponse);
        updateApplicationMetadataCache(save.getRefreshToken().getClientId(), save.getRefreshToken().getEnvironment(), save.getRefreshToken().getFamilyId(), this.mCallingProcessUid);
        return save;
    }

    public ICacheRecord save(AccountRecord accountRecord, IdTokenRecord idTokenRecord) {
        throw new UnsupportedOperationException(ADALOAuth2TokenCache.ERR_UNSUPPORTED_OPERATION);
    }
}
