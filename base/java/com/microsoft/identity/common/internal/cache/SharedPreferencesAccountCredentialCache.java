package com.microsoft.identity.common.internal.cache;

import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.internal.dto.AccessTokenRecord;
import com.microsoft.identity.common.internal.dto.AccountRecord;
import com.microsoft.identity.common.internal.dto.Credential;
import com.microsoft.identity.common.internal.dto.CredentialType;
import com.microsoft.identity.common.internal.dto.IAccountRecord;
import com.microsoft.identity.common.internal.dto.IdTokenRecord;
import com.microsoft.identity.common.internal.dto.RefreshTokenRecord;
import com.microsoft.identity.common.internal.logging.Logger;
import e.a.a.a.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class SharedPreferencesAccountCredentialCache extends AbstractAccountCredentialCache {
    public static final String ACCOUNT_RECORD_DESERIALIZATION_FAILED;
    public static final String BROKER_FOCI_ACCOUNT_CREDENTIAL_SHARED_PREFERENCES = "com.microsoft.identity.client.account_credential_cache.foci-1";
    public static final String CREDENTIAL_DESERIALIZATION_FAILED;
    public static final String DEFAULT_ACCOUNT_CREDENTIAL_SHARED_PREFERENCES = "com.microsoft.identity.client.account_credential_cache";
    public static final String DESERIALIZATION_FAILED = "Deserialization failed. Skipping ";
    public static final AccountRecord EMPTY_ACCOUNT = new AccountRecord();
    public static final AccessTokenRecord EMPTY_AT = new AccessTokenRecord();
    public static final IdTokenRecord EMPTY_ID = new IdTokenRecord();
    public static final RefreshTokenRecord EMPTY_RT = new RefreshTokenRecord();
    public static final String TAG = "SharedPreferencesAccountCredentialCache";
    public final ICacheKeyValueDelegate mCacheValueDelegate;
    public final ISharedPreferencesFileManager mSharedPreferencesFileManager;

    static {
        StringBuilder a = a.a(DESERIALIZATION_FAILED);
        a.append(AccountRecord.class.getSimpleName());
        ACCOUNT_RECORD_DESERIALIZATION_FAILED = a.toString();
        StringBuilder a2 = a.a(DESERIALIZATION_FAILED);
        a2.append(Credential.class.getSimpleName());
        CREDENTIAL_DESERIALIZATION_FAILED = a2.toString();
    }

    public SharedPreferencesAccountCredentialCache(ICacheKeyValueDelegate iCacheKeyValueDelegate, ISharedPreferencesFileManager iSharedPreferencesFileManager) {
        String str = TAG;
        StringBuilder a = a.a("Init: ");
        a.append(TAG);
        Logger.verbose(str, a.toString());
        this.mSharedPreferencesFileManager = iSharedPreferencesFileManager;
        this.mCacheValueDelegate = iCacheKeyValueDelegate;
    }

    private Class<? extends Credential> credentialClassForType(String str) {
        Logger.verbose(TAG, "Resolving class for key/CredentialType...");
        String str2 = TAG;
        Logger.verbosePII(str2, "Supplied key: [" + str + "]");
        CredentialType credentialTypeForCredentialCacheKey = getCredentialTypeForCredentialCacheKey(str);
        String str3 = TAG;
        Logger.verbose(str3, "CredentialType matched: [" + credentialTypeForCredentialCacheKey + "]");
        return getTargetClassForCredentialType(str, credentialTypeForCredentialCacheKey);
    }

    private Map<String, AccountRecord> getAccountsWithKeys() {
        Logger.verbose(TAG, "Loading Accounts + keys...");
        Map<String, String> all = this.mSharedPreferencesFileManager.getAll();
        HashMap hashMap = new HashMap();
        for (Map.Entry next : all.entrySet()) {
            String str = (String) next.getKey();
            if (isAccount(str)) {
                AccountRecord accountRecord = (AccountRecord) this.mCacheValueDelegate.fromCacheValue(next.getValue().toString(), AccountRecord.class);
                if (accountRecord == null) {
                    Logger.warn(TAG, ACCOUNT_RECORD_DESERIALIZATION_FAILED);
                } else {
                    hashMap.put(str, accountRecord);
                }
            }
        }
        String str2 = TAG;
        StringBuilder a = a.a("Returning [");
        a.append(hashMap.size());
        a.append("] Accounts w/ keys...");
        Logger.verbose(str2, a.toString());
        return hashMap;
    }

    public static String getBrokerUidSequesteredFilename(int i2) {
        return a.a("com.microsoft.identity.client.account_credential_cache.uid-", i2);
    }

    public static CredentialType getCredentialTypeForCredentialCacheKey(String str) {
        if (!StringExtensions.isNullOrBlank(str)) {
            String str2 = TAG;
            Logger.verbosePII(str2, "Evaluating cache key for CredentialType [" + str + "]");
            HashSet hashSet = new HashSet();
            for (String lowerCase : CredentialType.valueSet()) {
                hashSet.add(lowerCase.toLowerCase(Locale.US));
            }
            CredentialType credentialType = null;
            Iterator it = hashSet.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                String str3 = (String) it.next();
                if (str.contains(CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR + str3 + CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR)) {
                    Logger.verbose(TAG, "Cache key is a Credential type...");
                    CredentialType credentialType2 = CredentialType.AccessToken;
                    if (str3.equalsIgnoreCase("AccessToken")) {
                        credentialType = CredentialType.AccessToken;
                        break;
                    }
                    CredentialType credentialType3 = CredentialType.AccessToken_With_AuthScheme;
                    if (str3.equalsIgnoreCase("AccessToken_With_AuthScheme")) {
                        credentialType = CredentialType.AccessToken_With_AuthScheme;
                        break;
                    }
                    CredentialType credentialType4 = CredentialType.RefreshToken;
                    if (str3.equalsIgnoreCase("RefreshToken")) {
                        credentialType = CredentialType.RefreshToken;
                        break;
                    }
                    CredentialType credentialType5 = CredentialType.IdToken;
                    if (str3.equalsIgnoreCase("IdToken")) {
                        credentialType = CredentialType.IdToken;
                        break;
                    }
                    CredentialType credentialType6 = CredentialType.V1IdToken;
                    if (str3.equalsIgnoreCase("V1IdToken")) {
                        credentialType = CredentialType.V1IdToken;
                        break;
                    }
                    Logger.warn(TAG, "Unexpected credential type.");
                }
            }
            String str4 = TAG;
            Logger.verbose(str4, "Cache key was type: [" + credentialType + "]");
            return credentialType;
        }
        throw new IllegalArgumentException("Param [cacheKey] cannot be null.");
    }

    private Map<String, Credential> getCredentialsWithKeys() {
        Logger.verbose(TAG, "Loading Credentials with keys...");
        Map<String, String> all = this.mSharedPreferencesFileManager.getAll();
        HashMap hashMap = new HashMap();
        for (Map.Entry next : all.entrySet()) {
            String str = (String) next.getKey();
            if (isCredential(str)) {
                Credential credential = (Credential) this.mCacheValueDelegate.fromCacheValue(next.getValue().toString(), credentialClassForType(str));
                if (credential == null) {
                    Logger.warn(TAG, CREDENTIAL_DESERIALIZATION_FAILED);
                } else {
                    hashMap.put(str, credential);
                }
            }
        }
        String str2 = TAG;
        StringBuilder a = a.a("Loaded [");
        a.append(hashMap.size());
        a.append("] Credentials...");
        Logger.verbose(str2, a.toString());
        return hashMap;
    }

    private boolean isAccount(String str) {
        String str2 = TAG;
        Logger.verbosePII(str2, "Evaluating cache key: [" + str + "]");
        boolean z = getCredentialTypeForCredentialCacheKey(str) == null;
        String str3 = TAG;
        Logger.verbose(str3, "isAccount? [" + z + "]");
        return z;
    }

    private boolean isCredential(String str) {
        String str2 = TAG;
        Logger.verbosePII(str2, "Evaluating cache key: [" + str + "]");
        boolean z = getCredentialTypeForCredentialCacheKey(str) != null;
        String str3 = TAG;
        Logger.verbose(str3, "isCredential? [" + z + "]");
        return z;
    }

    public void clearAll() {
        Logger.info(TAG, "Clearing all SharedPreferences entries...");
        this.mSharedPreferencesFileManager.clear();
        Logger.info(TAG, "SharedPreferences cleared.");
    }

    public synchronized AccountRecord getAccount(String str) {
        AccountRecord accountRecord;
        Logger.verbose(TAG, "Loading Account by key...");
        accountRecord = (AccountRecord) this.mCacheValueDelegate.fromCacheValue(this.mSharedPreferencesFileManager.getString(str), AccountRecord.class);
        if (accountRecord == null) {
            Logger.warn(TAG, ACCOUNT_RECORD_DESERIALIZATION_FAILED);
        } else if (EMPTY_ACCOUNT.equals(accountRecord)) {
            Logger.warn(TAG, "The returned Account was uninitialized. Removing...");
            this.mSharedPreferencesFileManager.remove(str);
            accountRecord = null;
        }
        return accountRecord;
    }

    public synchronized List<AccountRecord> getAccounts() {
        ArrayList arrayList;
        Logger.verbose(TAG, "Loading Accounts...(no arg)");
        arrayList = new ArrayList(getAccountsWithKeys().values());
        String str = TAG;
        Logger.info(str, "Found [" + arrayList.size() + "] Accounts...");
        return arrayList;
    }

    public List<AccountRecord> getAccountsFilteredBy(String str, String str2, String str3) {
        Logger.verbose(TAG, "Loading Accounts...");
        List<AccountRecord> accountsFilteredByInternal = getAccountsFilteredByInternal(str, str2, str3, getAccounts());
        String str4 = TAG;
        StringBuilder a = a.a("Found [");
        a.append(accountsFilteredByInternal.size());
        a.append("] matching Accounts...");
        Logger.info(str4, a.toString());
        return accountsFilteredByInternal;
    }

    public synchronized Credential getCredential(String str) {
        Credential credential;
        Logger.verbose(TAG, "getCredential()");
        String str2 = TAG;
        Logger.verbosePII(str2, "Using cache key: [" + str + "]");
        CredentialType credentialTypeForCredentialCacheKey = getCredentialTypeForCredentialCacheKey(str);
        credential = null;
        Class targetClassForCredentialType = credentialTypeForCredentialCacheKey != null ? getTargetClassForCredentialType(str, credentialTypeForCredentialCacheKey) : null;
        Credential credential2 = targetClassForCredentialType != null ? (Credential) this.mCacheValueDelegate.fromCacheValue(this.mSharedPreferencesFileManager.getString(str), targetClassForCredentialType) : null;
        if (credential2 == null) {
            Logger.warn(TAG, CREDENTIAL_DESERIALIZATION_FAILED);
        } else if ((AccessTokenRecord.class == targetClassForCredentialType && EMPTY_AT.equals(credential2)) || ((RefreshTokenRecord.class == targetClassForCredentialType && EMPTY_RT.equals(credential2)) || (IdTokenRecord.class == targetClassForCredentialType && EMPTY_ID.equals(credential2)))) {
            Logger.warn(TAG, "The returned Credential was uninitialized. Removing...");
            this.mSharedPreferencesFileManager.remove(str);
        }
        credential = credential2;
        return credential;
    }

    public synchronized List<Credential> getCredentials() {
        Logger.verbose(TAG, "Loading Credentials...");
        return new ArrayList(getCredentialsWithKeys().values());
    }

    public List<Credential> getCredentialsFilteredBy(String str, String str2, CredentialType credentialType, String str3, String str4, String str5, String str6) {
        Logger.verbose(TAG, "getCredentialsFilteredBy()");
        List<Credential> credentialsFilteredByInternal = getCredentialsFilteredByInternal(str, str2, credentialType, str3, str4, str5, str6, getCredentials());
        String str7 = TAG;
        StringBuilder a = a.a("Found [");
        a.append(credentialsFilteredByInternal.size());
        a.append("] matching Credentials...");
        Logger.info(str7, a.toString());
        return credentialsFilteredByInternal;
    }

    public boolean removeAccount(AccountRecord accountRecord) {
        Logger.info(TAG, "Removing Account...");
        if (accountRecord != null) {
            boolean z = false;
            Iterator<Map.Entry<String, AccountRecord>> it = getAccountsWithKeys().entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry next = it.next();
                String str = TAG;
                StringBuilder a = a.a("Inspecting: [");
                a.append((String) next.getKey());
                a.append("]");
                Logger.verbosePII(str, a.toString());
                if (((IAccountRecord) next.getValue()).equals(accountRecord)) {
                    this.mSharedPreferencesFileManager.remove((String) next.getKey());
                    z = true;
                    break;
                }
            }
            String str2 = TAG;
            Logger.info(str2, "Account was removed? [" + z + "]");
            return z;
        }
        throw new IllegalArgumentException("Param [accountToRemove] cannot be null.");
    }

    public boolean removeCredential(Credential credential) {
        Logger.info(TAG, "Removing Credential...");
        if (credential != null) {
            boolean z = false;
            Iterator<Map.Entry<String, Credential>> it = getCredentialsWithKeys().entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry next = it.next();
                String str = TAG;
                StringBuilder a = a.a("Inspecting: [");
                a.append((String) next.getKey());
                a.append("]");
                Logger.verbosePII(str, a.toString());
                if (((Credential) next.getValue()).equals(credential)) {
                    this.mSharedPreferencesFileManager.remove((String) next.getKey());
                    z = true;
                    break;
                }
            }
            String str2 = TAG;
            Logger.info(str2, "Credential was removed? [" + z + "]");
            return z;
        }
        throw new IllegalArgumentException("Param [credentialToRemove] cannot be null.");
    }

    public synchronized void saveAccount(AccountRecord accountRecord) {
        Logger.verbose(TAG, "Saving Account...");
        String str = TAG;
        Logger.verbose(str, "Account type: [" + accountRecord.getClass().getSimpleName() + "]");
        String generateCacheKey = this.mCacheValueDelegate.generateCacheKey(accountRecord);
        String str2 = TAG;
        Logger.verbosePII(str2, "Generated cache key: [" + generateCacheKey + "]");
        this.mSharedPreferencesFileManager.putString(generateCacheKey, this.mCacheValueDelegate.generateCacheValue(accountRecord));
    }

    public synchronized void saveCredential(Credential credential) {
        Logger.verbose(TAG, "Saving credential...");
        String generateCacheKey = this.mCacheValueDelegate.generateCacheKey(credential);
        String str = TAG;
        Logger.verbosePII(str, "Generated cache key: [" + generateCacheKey + "]");
        this.mSharedPreferencesFileManager.putString(generateCacheKey, this.mCacheValueDelegate.generateCacheValue(credential));
    }
}
