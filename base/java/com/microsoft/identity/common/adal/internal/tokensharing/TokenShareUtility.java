package com.microsoft.identity.common.adal.internal.tokensharing;

import android.net.Uri;
import android.util.Pair;
import com.microsoft.identity.common.BaseAccount;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.exception.ServiceException;
import com.microsoft.identity.common.internal.authscheme.BearerAuthenticationSchemeInternal;
import com.microsoft.identity.common.internal.cache.ADALTokenCacheItem;
import com.microsoft.identity.common.internal.cache.ICacheRecord;
import com.microsoft.identity.common.internal.cache.MsalOAuth2TokenCache;
import com.microsoft.identity.common.internal.dto.AccountRecord;
import com.microsoft.identity.common.internal.dto.IdTokenRecord;
import com.microsoft.identity.common.internal.dto.RefreshTokenRecord;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.migration.AdalMigrationAdapter;
import com.microsoft.identity.common.internal.migration.TokenCacheItemMigrationAdapter;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftAccount;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftRefreshToken;
import com.microsoft.identity.common.internal.providers.oauth2.IDToken;
import com.microsoft.identity.common.internal.providers.oauth2.RefreshToken;
import e.a.a.a.a;
import e.e.a.h;
import e.e.a.q;
import e.e.a.v.c;
import e.e.b.c;
import e.e.b.d;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;

public class TokenShareUtility implements ITokenShareInternal {
    public static final String AUDIENCE_PATH_CONSUMERS = "/consumers";
    public static final String TAG = "TokenShareUtility";
    public static final Map<String, String> sClaimRemapper = new HashMap();
    public static final String sHomeTenantAuthority = "https://login.windows.net/common";
    public final String mClientId;
    public final String mDefaultAuthority;
    public final String mRedirectUri;
    public final MsalOAuth2TokenCache mTokenCache;

    static {
        applyV1ToV2Mappings();
    }

    public TokenShareUtility(String str, String str2, String str3, MsalOAuth2TokenCache msalOAuth2TokenCache) {
        this.mClientId = str;
        this.mRedirectUri = str2;
        this.mDefaultAuthority = str3;
        this.mTokenCache = msalOAuth2TokenCache;
    }

    public static ADALTokenCacheItem adapt(IdTokenRecord idTokenRecord, RefreshTokenRecord refreshTokenRecord) {
        String str;
        ADALTokenCacheItem aDALTokenCacheItem = new ADALTokenCacheItem();
        aDALTokenCacheItem.setClientId(refreshTokenRecord.getClientId());
        aDALTokenCacheItem.setRefreshToken(refreshTokenRecord.getSecret());
        aDALTokenCacheItem.setRawIdToken(mintV1IdTokenFromRawV2IdToken(idTokenRecord.getSecret()));
        aDALTokenCacheItem.setFamilyClientId(refreshTokenRecord.getFamilyId());
        if (isFromHomeTenant(idTokenRecord)) {
            str = sHomeTenantAuthority;
        } else {
            str = idTokenRecord.getAuthority();
        }
        aDALTokenCacheItem.setAuthority(str);
        return aDALTokenCacheItem;
    }

    public static void applyV1ToV2Mappings() {
        sClaimRemapper.put("preferred_username", "upn");
    }

    /* access modifiers changed from: private */
    public ADALTokenCacheItem createTokenCacheItem(String str, String str2) {
        ADALTokenCacheItem aDALTokenCacheItem = new ADALTokenCacheItem();
        aDALTokenCacheItem.setAuthority(str2);
        aDALTokenCacheItem.setClientId(this.mClientId);
        aDALTokenCacheItem.setRefreshToken(str);
        return aDALTokenCacheItem;
    }

    private AccountRecord getAccountRecordForIdentifier(String str) {
        AccountRecord accountByLocalAccountId = this.mTokenCache.getAccountByLocalAccountId((String) null, this.mClientId, str);
        if (accountByLocalAccountId == null) {
            List<AccountRecord> accountsByUsername = this.mTokenCache.getAccountsByUsername((String) null, this.mClientId, str);
            if (!accountsByUsername.isEmpty()) {
                accountByLocalAccountId = accountsByUsername.get(0);
            }
        }
        if (accountByLocalAccountId != null) {
            return accountByLocalAccountId;
        }
        throw new ClientException(ClientException.TOKEN_CACHE_ITEM_NOT_FOUND);
    }

    private ICacheRecord getCacheRecordForIdentifier(String str) {
        return this.mTokenCache.load(this.mClientId, (String) null, getAccountRecordForIdentifier(str), new BearerAuthenticationSchemeInternal());
    }

    public static boolean isFromHomeTenant(IdTokenRecord idTokenRecord) {
        String homeAccountId = idTokenRecord.getHomeAccountId();
        try {
            String str = (String) IDToken.parseJWT(idTokenRecord.getSecret()).get("oid");
            if (str != null) {
                return homeAccountId.contains(str);
            }
            Logger.warn(TAG + ":isFromHomeTenant", "OID claims was missing from token.");
            return false;
        } catch (ServiceException unused) {
            a.c(new StringBuilder(), TAG, ":isFromHomeTenant", "Failed to parse IdToken.");
            return false;
        }
    }

    public static String mintV1IdTokenFromRawV2IdToken(String str) {
        Map<String, ?> parseJWT = IDToken.parseJWT(str);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry next : parseJWT.entrySet()) {
            String str2 = (String) next.getKey();
            Object value = next.getValue();
            if ("ver".equals(str2)) {
                value = "1";
            }
            linkedHashMap.put(remap(str2), value);
        }
        d dVar = new d(new q(h.y, (String) null, (Set<String>) null, (Map<String, Object>) null, (c) null), new e.e.b.c(linkedHashMap, (c.a) null));
        return dVar.z.a().x + '.' + dVar.x.a().x + '.';
    }

    public static String remap(String str) {
        String str2 = sClaimRemapper.get(str);
        return str2 == null ? str : str2;
    }

    private void saveResult(Pair<MicrosoftAccount, MicrosoftRefreshToken> pair) {
        if (pair != null) {
            this.mTokenCache.setSingleSignOnState((BaseAccount) pair.first, (RefreshToken) pair.second);
        }
    }

    private void throwIfCacheRecordIncomplete(String str, ICacheRecord iCacheRecord) {
        if (iCacheRecord.getRefreshToken() == null || iCacheRecord.getIdToken() == null) {
            String a = a.a(new StringBuilder(), TAG, ":throwIfCacheRecordIncomplete");
            Logger.warn(a, "That's strange, we had an AccountRecord for identifier: " + str + " but couldn't find tokens for them.");
            throw new ClientException(ClientException.TOKEN_CACHE_ITEM_NOT_FOUND);
        }
    }

    public String getMsaFamilyRefreshToken(String str) {
        ICacheRecord cacheRecordForIdentifier = getCacheRecordForIdentifier(str);
        throwIfCacheRecordIncomplete(str, cacheRecordForIdentifier);
        return cacheRecordForIdentifier.getRefreshToken().getSecret();
    }

    public String getOrgIdFamilyRefreshToken(String str) {
        ICacheRecord cacheRecordForIdentifier = getCacheRecordForIdentifier(str);
        throwIfCacheRecordIncomplete(str, cacheRecordForIdentifier);
        return SSOStateSerializer.serialize(adapt(cacheRecordForIdentifier.getIdToken(), cacheRecordForIdentifier.getRefreshToken()));
    }

    public void saveMsaFamilyRefreshToken(final String str) {
        saveResult((Pair) TokenCacheItemMigrationAdapter.sBackgroundExecutor.submit(new Callable<Pair<MicrosoftAccount, MicrosoftRefreshToken>>() {
            public Pair<MicrosoftAccount, MicrosoftRefreshToken> call() {
                String str;
                String path = Uri.parse(TokenShareUtility.this.mDefaultAuthority).getPath();
                if (path != null) {
                    str = TokenShareUtility.this.mDefaultAuthority.replace(path, TokenShareUtility.AUDIENCE_PATH_CONSUMERS);
                } else {
                    str = TokenShareUtility.this.mDefaultAuthority;
                }
                ADALTokenCacheItem access$400 = TokenShareUtility.this.createTokenCacheItem(str, str);
                if (AdalMigrationAdapter.loadCloudDiscoveryMetadata()) {
                    return TokenCacheItemMigrationAdapter.renewToken(TokenShareUtility.this.mRedirectUri, access$400);
                }
                Logger.warn(TokenShareUtility.TAG + "saveMsaFamilyRefreshToken", "Failed to load cloud metadata, aborting.");
                return null;
            }
        }).get());
    }

    public void saveOrgIdFamilyRefreshToken(final String str) {
        saveResult((Pair) TokenCacheItemMigrationAdapter.sBackgroundExecutor.submit(new Callable<Pair<MicrosoftAccount, MicrosoftRefreshToken>>() {
            public Pair<MicrosoftAccount, MicrosoftRefreshToken> call() {
                ADALTokenCacheItem deserialize = SSOStateSerializer.deserialize(str);
                deserialize.setClientId(TokenShareUtility.this.mClientId);
                deserialize.setResource((String) null);
                if (AdalMigrationAdapter.loadCloudDiscoveryMetadata()) {
                    return TokenCacheItemMigrationAdapter.renewToken(TokenShareUtility.this.mRedirectUri, deserialize);
                }
                Logger.warn(TokenShareUtility.TAG + "saveOrgIdFamilyRefreshToken", "Failed to load cloud metadata, aborting.");
                return null;
            }
        }).get());
    }
}
