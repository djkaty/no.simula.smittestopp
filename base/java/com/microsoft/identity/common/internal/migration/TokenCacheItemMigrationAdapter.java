package com.microsoft.identity.common.internal.migration;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.internal.authscheme.AbstractAuthenticationScheme;
import com.microsoft.identity.common.internal.authscheme.BearerAuthenticationSchemeInternal;
import com.microsoft.identity.common.internal.cache.ADALTokenCacheItem;
import com.microsoft.identity.common.internal.cache.BrokerOAuth2TokenCache;
import com.microsoft.identity.common.internal.cache.ICacheRecord;
import com.microsoft.identity.common.internal.cache.ITokenCacheItem;
import com.microsoft.identity.common.internal.dto.IAccountRecord;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftAccount;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftRefreshToken;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftTokenResponse;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectory;
import com.microsoft.identity.common.internal.providers.microsoft.microsoftsts.MicrosoftStsAccount;
import com.microsoft.identity.common.internal.providers.microsoft.microsoftsts.MicrosoftStsAuthorizationRequest;
import com.microsoft.identity.common.internal.providers.microsoft.microsoftsts.MicrosoftStsOAuth2Configuration;
import com.microsoft.identity.common.internal.providers.microsoft.microsoftsts.MicrosoftStsOAuth2Strategy;
import com.microsoft.identity.common.internal.providers.microsoft.microsoftsts.MicrosoftStsRefreshToken;
import com.microsoft.identity.common.internal.providers.microsoft.microsoftsts.MicrosoftStsTokenRequest;
import com.microsoft.identity.common.internal.providers.microsoft.microsoftsts.MicrosoftStsTokenResponse;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2StrategyParameters;
import com.microsoft.identity.common.internal.providers.oauth2.TokenErrorResponse;
import com.microsoft.identity.common.internal.providers.oauth2.TokenResult;
import com.microsoft.identity.common.internal.util.StringUtil;
import e.a.a.a.a;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class TokenCacheItemMigrationAdapter {
    public static final String COMMON = "/common";
    public static final String DEFAULT_SCOPES = "openid profile offline_access";
    public static final String RESOURCE_DEFAULT_SCOPE = "/.default";
    public static final String TAG = "TokenCacheItemMigrationAdapter";
    public static final ExecutorService sBackgroundExecutor = Executors.newCachedThreadPool();

    public static MicrosoftStsAuthorizationRequest createAuthRequest(MicrosoftStsOAuth2Strategy microsoftStsOAuth2Strategy, ICacheRecord iCacheRecord, String str, String str2, String str3, UUID uuid) {
        return ((MicrosoftStsAuthorizationRequest.Builder) ((MicrosoftStsAuthorizationRequest.Builder) ((MicrosoftStsAuthorizationRequest.Builder) ((MicrosoftStsAuthorizationRequest.Builder) microsoftStsOAuth2Strategy.createAuthorizationRequestBuilder((IAccountRecord) iCacheRecord.getAccount()).setClientId(str)).setRedirectUri(str2)).setCorrelationId(uuid)).setScope(str3)).build();
    }

    public static MicrosoftStsTokenRequest createTokenRequest(String str, String str2, String str3, String str4, MicrosoftStsOAuth2Strategy microsoftStsOAuth2Strategy, UUID uuid, String str5) {
        MicrosoftStsTokenRequest createRefreshTokenRequest = microsoftStsOAuth2Strategy.createRefreshTokenRequest((AbstractAuthenticationScheme) new BearerAuthenticationSchemeInternal());
        createRefreshTokenRequest.setClientId(str);
        createRefreshTokenRequest.setScope(str2);
        createRefreshTokenRequest.setCorrelationId(uuid);
        createRefreshTokenRequest.setRefreshToken(str3);
        createRefreshTokenRequest.setRedirectUri(str4);
        createRefreshTokenRequest.setIdTokenVersion(str5);
        return createRefreshTokenRequest;
    }

    public static List<ADALTokenCacheItem> filterDuplicateTokens(Collection<ADALTokenCacheItem> collection) {
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        for (ADALTokenCacheItem next : collection) {
            if (next.getResource() == null) {
                Logger.warn(TAG, "Skipping resourceless token.");
            } else {
                if (hashMap.get(next.getRefreshToken()) == null) {
                    hashMap.put(next.getRefreshToken(), next);
                }
                if (hashMap.get(next.getRefreshToken()) != null && next.getAuthority().contains(COMMON)) {
                    hashMap.put(next.getRefreshToken(), next);
                }
            }
        }
        arrayList.addAll(hashMap.values());
        return arrayList;
    }

    public static ADALTokenCacheItem findFrt(List<ADALTokenCacheItem> list) {
        for (ADALTokenCacheItem next : list) {
            if (!StringExtensions.isNullOrBlank(next.getRefreshToken()) && !StringExtensions.isNullOrBlank(next.getFamilyClientId())) {
                a.b(new StringBuilder(), TAG, ":findFrt", "Frt found.");
                return next;
            }
        }
        return null;
    }

    public static ADALTokenCacheItem findMrrt(List<ADALTokenCacheItem> list) {
        for (ADALTokenCacheItem next : list) {
            if (!StringExtensions.isNullOrBlank(next.getRefreshToken()) && next.getIsMultiResourceRefreshToken()) {
                a.b(new StringBuilder(), TAG, ":findMrrt", "Mrrt found.");
                return next;
            }
        }
        return null;
    }

    public static ADALTokenCacheItem findRt(List<ADALTokenCacheItem> list) {
        for (ADALTokenCacheItem next : list) {
            if (!StringExtensions.isNullOrBlank(next.getRefreshToken())) {
                a.b(new StringBuilder(), TAG, ":findRt", "RT found.");
                return next;
            }
        }
        return null;
    }

    public static String getScopeFromResource(String str) {
        return a.b(str, RESOURCE_DEFAULT_SCOPE);
    }

    public static String getScopesForTokenRequest(String str) {
        return a.b(getScopeFromResource(str), " openid profile offline_access");
    }

    public static void logTokenResultError(UUID uuid, TokenResult tokenResult) {
        TokenErrorResponse errorResponse = tokenResult.getErrorResponse();
        String str = TAG;
        String uuid2 = uuid.toString();
        StringBuilder a = a.a("Status code: [");
        a.append(errorResponse.getStatusCode());
        a.append("]");
        Logger.warn(str, uuid2, a.toString());
        String str2 = TAG;
        String uuid3 = uuid.toString();
        StringBuilder a2 = a.a("Error description: [");
        a2.append(errorResponse.getErrorDescription());
        a2.append("]");
        Logger.warn(str2, uuid3, a2.toString());
    }

    public static List<Pair<MicrosoftAccount, MicrosoftRefreshToken>> migrateTokens(Map<String, String> map, Collection<ADALTokenCacheItem> collection) {
        ArrayList arrayList = new ArrayList();
        if (AdalMigrationAdapter.loadCloudDiscoveryMetadata()) {
            Map<String, List<ADALTokenCacheItem>> preferentiallySelectTokens = preferentiallySelectTokens(splitTokensByClientId(filterDuplicateTokens(collection)));
            ArrayList arrayList2 = new ArrayList();
            for (List<ADALTokenCacheItem> addAll : preferentiallySelectTokens.values()) {
                arrayList2.addAll(addAll);
            }
            arrayList.addAll(renewTokens(map, arrayList2));
        }
        return arrayList;
    }

    public static Map<String, List<ADALTokenCacheItem>> preferentiallySelectTokens(Map<String, List<ADALTokenCacheItem>> map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry next : map.entrySet()) {
            String str = (String) next.getKey();
            List list = (List) next.getValue();
            ADALTokenCacheItem findFrt = findFrt(list);
            if (findFrt == null) {
                Logger.verbose(TAG + ":preferentiallySelectTokens", "FRT was null. Try MRRT.");
                findFrt = findMrrt(list);
            }
            if (findFrt == null) {
                Logger.verbose(TAG + ":preferentiallySelectTokens", "MRRT was null. Try RT.");
                findFrt = findRt(list);
            }
            if (findFrt != null) {
                if (hashMap.get(str) == null) {
                    hashMap.put(str, new ArrayList());
                }
                ((List) hashMap.get(str)).add(findFrt);
            } else {
                a.c(new StringBuilder(), TAG, ":preferentiallySelectTokens", "Refresh token could not be located.");
            }
        }
        return hashMap;
    }

    public static Pair<MicrosoftAccount, MicrosoftRefreshToken> renewToken(String str, ITokenCacheItem iTokenCacheItem) {
        String scopesForTokenRequest;
        if (StringExtensions.isNullOrBlank(str)) {
            return null;
        }
        try {
            String authority = iTokenCacheItem.getAuthority();
            String clientId = iTokenCacheItem.getClientId();
            String refreshToken = iTokenCacheItem.getRefreshToken();
            MicrosoftStsOAuth2Configuration microsoftStsOAuth2Configuration = new MicrosoftStsOAuth2Configuration();
            microsoftStsOAuth2Configuration.setAuthorityUrl(new URL(authority));
            UUID randomUUID = UUID.randomUUID();
            if (TextUtils.isEmpty(iTokenCacheItem.getResource())) {
                scopesForTokenRequest = DEFAULT_SCOPES;
            } else {
                scopesForTokenRequest = getScopesForTokenRequest(iTokenCacheItem.getResource());
            }
            String str2 = scopesForTokenRequest;
            MicrosoftStsOAuth2Strategy microsoftStsOAuth2Strategy = new MicrosoftStsOAuth2Strategy(microsoftStsOAuth2Configuration, new OAuth2StrategyParameters());
            TokenResult requestToken = microsoftStsOAuth2Strategy.requestToken(createTokenRequest(clientId, str2, refreshToken, str, microsoftStsOAuth2Strategy, randomUUID, "2"));
            if (requestToken.getSuccess()) {
                MicrosoftStsTokenResponse microsoftStsTokenResponse = (MicrosoftStsTokenResponse) requestToken.getTokenResponse();
                microsoftStsTokenResponse.setClientId(clientId);
                MicrosoftStsAccount createAccount = microsoftStsOAuth2Strategy.createAccount(microsoftStsTokenResponse);
                MicrosoftStsRefreshToken microsoftStsRefreshToken = new MicrosoftStsRefreshToken(microsoftStsTokenResponse);
                microsoftStsRefreshToken.setEnvironment(AzureActiveDirectory.getAzureActiveDirectoryCloud(new URL(authority)).getPreferredCacheHostName());
                return new Pair<>(createAccount, microsoftStsRefreshToken);
            }
            Logger.warn(TAG, randomUUID.toString(), "TokenRequest was unsuccessful.");
            if (requestToken.getErrorResponse() == null) {
                return null;
            }
            logTokenResultError(randomUUID, requestToken);
            return null;
        } catch (Exception e2) {
            Logger.errorPII(TAG, "Failed to request new refresh token...", e2);
            return null;
        }
    }

    public static List<Pair<MicrosoftAccount, MicrosoftRefreshToken>> renewTokens(Map<String, String> map, List<ADALTokenCacheItem> list) {
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        CountDownLatch countDownLatch = new CountDownLatch(size);
        for (int i2 = 0; i2 < size; i2++) {
            final List<ADALTokenCacheItem> list2 = list;
            final int i3 = i2;
            final Map<String, String> map2 = map;
            final ArrayList arrayList2 = arrayList;
            final CountDownLatch countDownLatch2 = countDownLatch;
            sBackgroundExecutor.submit(new Runnable() {
                public void run() {
                    ADALTokenCacheItem aDALTokenCacheItem = (ADALTokenCacheItem) list2.get(i3);
                    Pair<MicrosoftAccount, MicrosoftRefreshToken> renewToken = TokenCacheItemMigrationAdapter.renewToken((String) map2.get(aDALTokenCacheItem.getClientId()), aDALTokenCacheItem);
                    if (renewToken != null) {
                        arrayList2.add(renewToken);
                    }
                    countDownLatch2.countDown();
                }
            });
        }
        try {
            countDownLatch.await();
        } catch (InterruptedException e2) {
            Logger.error(TAG, "Interrupted while requesting tokens...", e2);
            Thread.currentThread().interrupt();
        }
        return arrayList;
    }

    public static Map<String, List<ADALTokenCacheItem>> splitTokensByClientId(List<ADALTokenCacheItem> list) {
        String a = a.a(new StringBuilder(), TAG, ":splitTokensByClientId");
        StringBuilder a2 = a.a("Splitting [");
        a2.append(list.size());
        a2.append("] cache items.");
        Logger.verbose(a, a2.toString());
        HashMap hashMap = new HashMap();
        for (ADALTokenCacheItem next : list) {
            if (hashMap.get(next.getClientId()) == null) {
                hashMap.put(next.getClientId(), new ArrayList());
            }
            ((List) hashMap.get(next.getClientId())).add(next);
        }
        return hashMap;
    }

    public static boolean tryFociTokenWithGivenClientId(BrokerOAuth2TokenCache brokerOAuth2TokenCache, String str, String str2, ICacheRecord iCacheRecord) {
        MicrosoftStsOAuth2Configuration microsoftStsOAuth2Configuration = new MicrosoftStsOAuth2Configuration();
        Uri.Builder builder = new Uri.Builder();
        String realm = iCacheRecord.getAccount().getRealm();
        Uri.Builder authority = builder.scheme("https").authority(iCacheRecord.getRefreshToken().getEnvironment());
        if (StringUtil.isEmpty(realm)) {
            realm = "common";
        }
        authority.appendPath(realm);
        microsoftStsOAuth2Configuration.setAuthorityUrl(new URL(builder.build().toString()));
        MicrosoftStsOAuth2Strategy microsoftStsOAuth2Strategy = new MicrosoftStsOAuth2Strategy(microsoftStsOAuth2Configuration, new OAuth2StrategyParameters());
        String secret = iCacheRecord.getRefreshToken().getSecret();
        String target = iCacheRecord.getRefreshToken().getTarget();
        UUID randomUUID = UUID.randomUUID();
        String a = a.a(new StringBuilder(), TAG, ":tryFociTokenWithGivenClientId");
        Logger.verbose(a, "Create the token request with correlationId [" + randomUUID + "]");
        MicrosoftStsTokenRequest createTokenRequest = createTokenRequest(str, target, secret, str2, microsoftStsOAuth2Strategy, randomUUID, "2");
        String a2 = a.a(new StringBuilder(), TAG, ":tryFociTokenWithGivenClientId");
        Logger.verbose(a2, "Start refreshing token with correlationId [" + randomUUID + "]");
        TokenResult requestToken = microsoftStsOAuth2Strategy.requestToken(createTokenRequest);
        String a3 = a.a(new StringBuilder(), TAG, ":tryFociTokenWithGivenClientId");
        StringBuilder a4 = a.a("Is the client ID able to use the foci? [");
        a4.append(requestToken.getSuccess());
        a4.append("] with correlationId [");
        a4.append(randomUUID);
        a4.append("]");
        Logger.verbose(a3, a4.toString());
        if (requestToken.getSuccess()) {
            MicrosoftStsAuthorizationRequest createAuthRequest = createAuthRequest(microsoftStsOAuth2Strategy, iCacheRecord, str, str2, target, randomUUID);
            String a5 = a.a(new StringBuilder(), TAG, ":tryFociTokenWithGivenClientId");
            Logger.verbose(a5, "Saving records to cache with client id" + str);
            brokerOAuth2TokenCache.save(microsoftStsOAuth2Strategy, createAuthRequest, (MicrosoftTokenResponse) requestToken.getTokenResponse());
        }
        return requestToken.getSuccess();
    }
}
