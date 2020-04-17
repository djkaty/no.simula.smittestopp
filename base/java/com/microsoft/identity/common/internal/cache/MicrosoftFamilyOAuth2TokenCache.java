package com.microsoft.identity.common.internal.cache;

import android.content.Context;
import com.microsoft.identity.common.BaseAccount;
import com.microsoft.identity.common.internal.authscheme.AbstractAuthenticationScheme;
import com.microsoft.identity.common.internal.authscheme.PopAuthenticationSchemeInternal;
import com.microsoft.identity.common.internal.dto.AccessTokenRecord;
import com.microsoft.identity.common.internal.dto.AccountRecord;
import com.microsoft.identity.common.internal.dto.Credential;
import com.microsoft.identity.common.internal.dto.CredentialType;
import com.microsoft.identity.common.internal.dto.IdTokenRecord;
import com.microsoft.identity.common.internal.dto.RefreshTokenRecord;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationRequest;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2Strategy;
import com.microsoft.identity.common.internal.providers.oauth2.RefreshToken;
import com.microsoft.identity.common.internal.providers.oauth2.TokenResponse;
import e.a.a.a.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MicrosoftFamilyOAuth2TokenCache<GenericOAuth2Strategy extends OAuth2Strategy, GenericAuthorizationRequest extends AuthorizationRequest, GenericTokenResponse extends TokenResponse, GenericAccount extends BaseAccount, GenericRefreshToken extends RefreshToken> extends MsalOAuth2TokenCache<GenericOAuth2Strategy, GenericAuthorizationRequest, GenericTokenResponse, GenericAccount, GenericRefreshToken> {
    public static final String TAG = "MicrosoftFamilyOAuth2TokenCache";

    public MicrosoftFamilyOAuth2TokenCache(Context context, IAccountCredentialCache iAccountCredentialCache, IAccountCredentialAdapter<GenericOAuth2Strategy, GenericAuthorizationRequest, GenericTokenResponse, GenericAccount, GenericRefreshToken> iAccountCredentialAdapter) {
        super(context, iAccountCredentialCache, iAccountCredentialAdapter);
    }

    public ICacheRecord loadByFamilyId(String str, String str2, AccountRecord accountRecord, AbstractAuthenticationScheme abstractAuthenticationScheme) {
        AccessTokenRecord accessTokenRecord;
        RefreshTokenRecord refreshTokenRecord;
        IdTokenRecord idTokenRecord;
        AccessTokenRecord accessTokenRecord2;
        Logger.verbose(a.a(new StringBuilder(), TAG, ":loadByFamilyId"), "ClientId[" + str + ", " + "1" + "]");
        List<Credential> credentials = getAccountCredentialCache().getCredentials();
        Iterator<Credential> it = credentials.iterator();
        while (true) {
            accessTokenRecord = null;
            if (!it.hasNext()) {
                refreshTokenRecord = null;
                break;
            }
            Credential next = it.next();
            if (next instanceof RefreshTokenRecord) {
                refreshTokenRecord = (RefreshTokenRecord) next;
                if ("1".equals(refreshTokenRecord.getFamilyId()) && accountRecord.getEnvironment().equals(refreshTokenRecord.getEnvironment()) && accountRecord.getHomeAccountId().equals(refreshTokenRecord.getHomeAccountId())) {
                    break;
                }
            }
        }
        Iterator<Credential> it2 = credentials.iterator();
        while (true) {
            if (!it2.hasNext()) {
                idTokenRecord = null;
                break;
            }
            Credential next2 = it2.next();
            if (next2 instanceof IdTokenRecord) {
                idTokenRecord = (IdTokenRecord) next2;
                if (str != null && str.equals(idTokenRecord.getClientId()) && accountRecord.getEnvironment().equals(idTokenRecord.getEnvironment()) && accountRecord.getHomeAccountId().equals(idTokenRecord.getHomeAccountId()) && accountRecord.getRealm().equals(idTokenRecord.getRealm())) {
                    break;
                }
            }
        }
        if (str2 != null && abstractAuthenticationScheme != null) {
            Iterator<Credential> it3 = credentials.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                Credential next3 = it3.next();
                if (next3 instanceof AccessTokenRecord) {
                    accessTokenRecord2 = (AccessTokenRecord) next3;
                    if (str != null && str.equals(accessTokenRecord2.getClientId()) && accountRecord.getEnvironment().equals(accessTokenRecord2.getEnvironment()) && accountRecord.getHomeAccountId().equals(accessTokenRecord2.getHomeAccountId()) && accountRecord.getRealm().equals(accessTokenRecord2.getRealm()) && AbstractAccountCredentialCache.targetsIntersect(str2, accessTokenRecord2.getTarget(), true)) {
                        CredentialType credentialType = CredentialType.AccessToken;
                        if ("AccessToken".equalsIgnoreCase(accessTokenRecord2.getCredentialType()) && "Bearer".equalsIgnoreCase(abstractAuthenticationScheme.getName())) {
                            break;
                        }
                        CredentialType credentialType2 = CredentialType.AccessToken_With_AuthScheme;
                        if ("AccessToken_With_AuthScheme".equalsIgnoreCase(accessTokenRecord2.getCredentialType()) && PopAuthenticationSchemeInternal.SCHEME_POP.equalsIgnoreCase(abstractAuthenticationScheme.getName())) {
                            break;
                        }
                    }
                }
            }
            accessTokenRecord = accessTokenRecord2;
        }
        CacheRecord cacheRecord = new CacheRecord();
        cacheRecord.setAccount(accountRecord);
        cacheRecord.setRefreshToken(refreshTokenRecord);
        cacheRecord.setAccessToken(accessTokenRecord);
        if (idTokenRecord != null) {
            CredentialType credentialType3 = CredentialType.V1IdToken;
            if ("V1IdToken".equalsIgnoreCase(idTokenRecord.getCredentialType())) {
                cacheRecord.setV1IdToken(idTokenRecord);
            } else {
                cacheRecord.setIdToken(idTokenRecord);
            }
        }
        return cacheRecord;
    }

    public List<ICacheRecord> loadByFamilyIdWithAggregatedAccountData(String str, String str2, AccountRecord accountRecord, AbstractAuthenticationScheme abstractAuthenticationScheme) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(loadByFamilyId(str, str2, accountRecord, abstractAuthenticationScheme));
        ArrayList arrayList2 = new ArrayList(getAllTenantAccountsForAccountByClientId(str, accountRecord));
        String a = a.a(new StringBuilder(), TAG, ":loadByFamilyIdWithAggregatedAccountData");
        StringBuilder a2 = a.a("Found ");
        a2.append(arrayList2.size() - 1);
        a2.append(" profiles for this account");
        Logger.info(a, a2.toString());
        arrayList2.remove(0);
        if (!arrayList2.isEmpty()) {
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                AccountRecord accountRecord2 = (AccountRecord) it.next();
                CacheRecord cacheRecord = new CacheRecord();
                cacheRecord.setAccount(accountRecord2);
                cacheRecord.setRefreshToken(((ICacheRecord) arrayList.get(0)).getRefreshToken());
                for (IdTokenRecord next : getIdTokensForAccountRecord(str, accountRecord2)) {
                    CredentialType credentialType = CredentialType.V1IdToken;
                    if ("V1IdToken".equalsIgnoreCase(next.getCredentialType())) {
                        cacheRecord.setV1IdToken(next);
                    } else {
                        cacheRecord.setIdToken(next);
                    }
                }
                arrayList.add(cacheRecord);
            }
        }
        return arrayList;
    }
}
