package com.microsoft.identity.common.internal.cache;

import android.app.Application;
import android.content.Context;
import android.net.Uri;
import com.google.gson.Gson;
import com.microsoft.identity.common.BaseAccount;
import com.microsoft.identity.common.adal.internal.AuthenticationSettings;
import com.microsoft.identity.common.adal.internal.cache.CacheKey;
import com.microsoft.identity.common.adal.internal.cache.DateTimeAdapter;
import com.microsoft.identity.common.adal.internal.cache.IStorageHelper;
import com.microsoft.identity.common.adal.internal.cache.StorageHelper;
import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.internal.authscheme.AbstractAuthenticationScheme;
import com.microsoft.identity.common.internal.dto.AccountRecord;
import com.microsoft.identity.common.internal.dto.Credential;
import com.microsoft.identity.common.internal.dto.IdTokenRecord;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftAccount;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftRefreshToken;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectoryAccount;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectoryAuthorizationRequest;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectoryOAuth2Strategy;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectoryRefreshToken;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectoryTokenResponse;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2TokenCache;
import com.microsoft.identity.common.internal.providers.oauth2.RefreshToken;
import e.a.a.a.a;
import e.c.c.e;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

public class ADALOAuth2TokenCache extends OAuth2TokenCache<AzureActiveDirectoryOAuth2Strategy, AzureActiveDirectoryAuthorizationRequest, AzureActiveDirectoryTokenResponse> implements IShareSingleSignOnState {
    public static final String ERR_UNSUPPORTED_OPERATION = "This method is unsupported.";
    public static final String SHARED_PREFERENCES_FILENAME = "com.microsoft.aad.adal.cache";
    public static final String TAG = "ADALOAuth2TokenCache";
    public Gson mGson;
    public ISharedPreferencesFileManager mISharedPreferencesFileManager;
    public List<IShareSingleSignOnState<MicrosoftAccount, MicrosoftRefreshToken>> mSharedSSOCaches;

    public ADALOAuth2TokenCache(Context context) {
        super(context);
        e eVar = new e();
        eVar.a(Date.class, new DateTimeAdapter());
        this.mGson = eVar.a();
        String str = TAG;
        StringBuilder a = a.a("Init: ");
        a.append(TAG);
        Logger.verbose(str, a.toString());
        validateSecretKeySetting();
        initializeSharedPreferencesFileManager(SHARED_PREFERENCES_FILENAME);
        this.mSharedSSOCaches = new ArrayList();
    }

    public static void logTokenCacheItem(ADALTokenCacheItem aDALTokenCacheItem) {
        Logger.info(TAG, "Logging TokenCacheItem");
        String str = TAG;
        StringBuilder a = a.a("resource: [");
        a.append(aDALTokenCacheItem.getResource());
        a.append("]");
        Logger.infoPII(str, a.toString());
        String str2 = TAG;
        StringBuilder a2 = a.a("authority: [");
        a2.append(aDALTokenCacheItem.getAuthority());
        a2.append("]");
        Logger.infoPII(str2, a2.toString());
        String str3 = TAG;
        StringBuilder a3 = a.a("clientId: [");
        a3.append(aDALTokenCacheItem.getClientId());
        a3.append("]");
        Logger.infoPII(str3, a3.toString());
        String str4 = TAG;
        StringBuilder a4 = a.a("expiresOn: [");
        a4.append(aDALTokenCacheItem.getExpiresOn());
        a4.append("]");
        Logger.infoPII(str4, a4.toString());
        String str5 = TAG;
        StringBuilder a5 = a.a("isMrrt: [");
        a5.append(aDALTokenCacheItem.getIsMultiResourceRefreshToken());
        a5.append("]");
        Logger.infoPII(str5, a5.toString());
        String str6 = TAG;
        StringBuilder a6 = a.a("tenantId: [");
        a6.append(aDALTokenCacheItem.getTenantId());
        a6.append("]");
        Logger.infoPII(str6, a6.toString());
        String str7 = TAG;
        StringBuilder a7 = a.a("foci: [");
        a7.append(aDALTokenCacheItem.getFamilyClientId());
        a7.append("]");
        Logger.infoPII(str7, a7.toString());
        String str8 = TAG;
        StringBuilder a8 = a.a("extendedExpires: [");
        a8.append(aDALTokenCacheItem.getExtendedExpiresOn());
        a8.append("]");
        Logger.infoPII(str8, a8.toString());
        String str9 = TAG;
        StringBuilder a9 = a.a("speRing: [");
        a9.append(aDALTokenCacheItem.getSpeRing());
        a9.append("]");
        Logger.infoPII(str9, a9.toString());
    }

    private void setItem(String str, ADALTokenCacheItem aDALTokenCacheItem) {
        Logger.info(TAG, "Setting item to cache");
        this.mISharedPreferencesFileManager.putString(str, this.mGson.a((Object) aDALTokenCacheItem));
    }

    private void setItemToCacheForUser(String str, String str2, String str3, ADALTokenCacheItem aDALTokenCacheItem, String str4) {
        Logger.info(TAG + ":" + "setItemToCacheForUser", "Setting cacheitem for RT entry.");
        setItem(CacheKey.createCacheKeyForRTEntry(str, str2, str3, str4), aDALTokenCacheItem);
        if (aDALTokenCacheItem.getIsMultiResourceRefreshToken()) {
            Logger.info(TAG + ":" + "setItemToCacheForUser", "CacheItem is an MRRT.");
            setItem(CacheKey.createCacheKeyForMRRT(str, str3, str4), ADALTokenCacheItem.getAsMRRTTokenCacheItem(aDALTokenCacheItem));
        }
        if (!StringExtensions.isNullOrBlank(aDALTokenCacheItem.getFamilyClientId())) {
            Logger.info(TAG + ":" + "setItemToCacheForUser", "CacheItem is an FRT.");
            setItem(CacheKey.createCacheKeyForFRT(str, aDALTokenCacheItem.getFamilyClientId(), str4), ADALTokenCacheItem.getAsFRTTokenCacheItem(aDALTokenCacheItem));
        }
    }

    private void validateSecretKeySetting() {
        Logger.verbose(TAG, "Validating secret key settings.");
        byte[] secretKeyData = AuthenticationSettings.INSTANCE.getSecretKeyData();
    }

    public void clearAll() {
        throw new UnsupportedOperationException(ERR_UNSUPPORTED_OPERATION);
    }

    public AccountRecord getAccount(String str, String str2, String str3, String str4) {
        throw new UnsupportedOperationException(ERR_UNSUPPORTED_OPERATION);
    }

    public AccountRecord getAccountByHomeAccountId(String str, String str2, String str3) {
        throw new UnsupportedOperationException(ERR_UNSUPPORTED_OPERATION);
    }

    public AccountRecord getAccountByLocalAccountId(String str, String str2, String str3) {
        throw new UnsupportedOperationException(ERR_UNSUPPORTED_OPERATION);
    }

    public ICacheRecord getAccountWithAggregatedAccountDataByLocalAccountId(String str, String str2, String str3) {
        throw new UnsupportedOperationException(ERR_UNSUPPORTED_OPERATION);
    }

    public List<AccountRecord> getAccounts(String str, String str2) {
        throw new UnsupportedOperationException(ERR_UNSUPPORTED_OPERATION);
    }

    public List<ICacheRecord> getAccountsWithAggregatedAccountData(String str, String str2, String str3) {
        throw new UnsupportedOperationException(ERR_UNSUPPORTED_OPERATION);
    }

    public Set<String> getAllClientIds() {
        throw new UnsupportedOperationException(ERR_UNSUPPORTED_OPERATION);
    }

    public List<AccountRecord> getAllTenantAccountsForAccountByClientId(String str, AccountRecord accountRecord) {
        throw new UnsupportedOperationException(ERR_UNSUPPORTED_OPERATION);
    }

    public List<IdTokenRecord> getIdTokensForAccountRecord(String str, AccountRecord accountRecord) {
        throw new UnsupportedOperationException(ERR_UNSUPPORTED_OPERATION);
    }

    public RefreshToken getSingleSignOnState(BaseAccount baseAccount) {
        Logger.warn(TAG, "getSingleSignOnState was called, but is not implemented.");
        return null;
    }

    public void initializeSharedPreferencesFileManager(String str) {
        Logger.verbose(TAG, "Initializing SharedPreferencesFileManager");
        String str2 = TAG;
        Logger.verbosePII(str2, "Initializing with name: " + str);
        this.mISharedPreferencesFileManager = new SharedPreferencesFileManager(getContext(), str, (IStorageHelper) new StorageHelper(getContext()));
    }

    public ICacheRecord load(String str, String str2, AccountRecord accountRecord, AbstractAuthenticationScheme abstractAuthenticationScheme) {
        throw new UnsupportedOperationException(ERR_UNSUPPORTED_OPERATION);
    }

    public List<ICacheRecord> loadWithAggregatedAccountData(String str, String str2, AccountRecord accountRecord, AbstractAuthenticationScheme abstractAuthenticationScheme) {
        throw new UnsupportedOperationException(ERR_UNSUPPORTED_OPERATION);
    }

    public AccountDeletionRecord removeAccount(String str, String str2, String str3, String str4) {
        throw new UnsupportedOperationException(ERR_UNSUPPORTED_OPERATION);
    }

    public boolean removeCredential(Credential credential) {
        throw new UnsupportedOperationException(ERR_UNSUPPORTED_OPERATION);
    }

    public void setSingleSignOnState(BaseAccount baseAccount, RefreshToken refreshToken) {
        Logger.warn(TAG, "setSingleSignOnState was called, but is not implemented.");
    }

    public List<ICacheRecord> getAccountsWithAggregatedAccountData(String str, String str2) {
        throw new UnsupportedOperationException(ERR_UNSUPPORTED_OPERATION);
    }

    public ICacheRecord save(AzureActiveDirectoryOAuth2Strategy azureActiveDirectoryOAuth2Strategy, AzureActiveDirectoryAuthorizationRequest azureActiveDirectoryAuthorizationRequest, AzureActiveDirectoryTokenResponse azureActiveDirectoryTokenResponse) {
        Logger.info(TAG + ":" + "save", "Saving Tokens...");
        String issuerCacheIdentifier = azureActiveDirectoryOAuth2Strategy.getIssuerCacheIdentifier(azureActiveDirectoryAuthorizationRequest);
        AzureActiveDirectoryAccount createAccount = azureActiveDirectoryOAuth2Strategy.createAccount(azureActiveDirectoryTokenResponse);
        String authority = Uri.parse(issuerCacheIdentifier).getAuthority();
        createAccount.setEnvironment(authority);
        AzureActiveDirectoryRefreshToken refreshTokenFromResponse = azureActiveDirectoryOAuth2Strategy.getRefreshTokenFromResponse(azureActiveDirectoryTokenResponse);
        refreshTokenFromResponse.setEnvironment(authority);
        Logger.info(TAG, "Constructing new ADALTokenCacheItem");
        ADALTokenCacheItem aDALTokenCacheItem = new ADALTokenCacheItem(azureActiveDirectoryOAuth2Strategy, azureActiveDirectoryAuthorizationRequest, azureActiveDirectoryTokenResponse);
        logTokenCacheItem(aDALTokenCacheItem);
        Logger.info(TAG + ":" + "save", "Setting items to cache for user...");
        for (String next : createAccount.getCacheIdentifiers()) {
            String scope = azureActiveDirectoryAuthorizationRequest.getScope();
            String clientId = azureActiveDirectoryAuthorizationRequest.getClientId();
            String a = a.a(new StringBuilder(), TAG, ":", "save");
            Logger.infoPII(a, "issuerCacheIdentifier: [" + issuerCacheIdentifier + "]");
            String a2 = a.a(new StringBuilder(), TAG, ":", "save");
            Logger.infoPII(a2, "scope: [" + scope + "]");
            String a3 = a.a(new StringBuilder(), TAG, ":", "save");
            Logger.infoPII(a3, "clientId: [" + clientId + "]");
            String a4 = a.a(new StringBuilder(), TAG, ":", "save");
            Logger.infoPII(a4, "cacheIdentifier: [" + next + "]");
            setItemToCacheForUser(issuerCacheIdentifier, scope, clientId, aDALTokenCacheItem, next);
        }
        setItemToCacheForUser(issuerCacheIdentifier, azureActiveDirectoryAuthorizationRequest.getScope(), azureActiveDirectoryAuthorizationRequest.getClientId(), aDALTokenCacheItem, (String) null);
        Logger.info(TAG + ":" + "save", "Syncing SSO state to caches...");
        for (IShareSingleSignOnState singleSignOnState : this.mSharedSSOCaches) {
            try {
                singleSignOnState.setSingleSignOnState(createAccount, refreshTokenFromResponse);
            } catch (ClientException e2) {
                String str = TAG;
                StringBuilder a5 = a.a("Exception setting single sign on state for account ");
                a5.append(createAccount.getUsername());
                Logger.errorPII(str, a5.toString(), e2);
            }
        }
        return null;
    }

    public List<ICacheRecord> saveAndLoadAggregatedAccountData(AzureActiveDirectoryOAuth2Strategy azureActiveDirectoryOAuth2Strategy, AzureActiveDirectoryAuthorizationRequest azureActiveDirectoryAuthorizationRequest, AzureActiveDirectoryTokenResponse azureActiveDirectoryTokenResponse) {
        throw new UnsupportedOperationException(ERR_UNSUPPORTED_OPERATION);
    }

    public ADALOAuth2TokenCache(Context context, List<IShareSingleSignOnState<MicrosoftAccount, MicrosoftRefreshToken>> list) {
        super(context);
        e eVar = new e();
        eVar.a(Date.class, new DateTimeAdapter());
        this.mGson = eVar.a();
        String str = TAG;
        StringBuilder a = a.a("Init: ");
        a.append(TAG);
        Logger.verbose(str, a.toString());
        String str2 = TAG;
        StringBuilder a2 = a.a("Context is an Application? [");
        a2.append(context instanceof Application);
        a2.append("]");
        Logger.info(str2, a2.toString());
        validateSecretKeySetting();
        initializeSharedPreferencesFileManager(SHARED_PREFERENCES_FILENAME);
        this.mSharedSSOCaches = list;
    }

    public ICacheRecord save(AccountRecord accountRecord, IdTokenRecord idTokenRecord) {
        throw new UnsupportedOperationException(ERR_UNSUPPORTED_OPERATION);
    }
}
