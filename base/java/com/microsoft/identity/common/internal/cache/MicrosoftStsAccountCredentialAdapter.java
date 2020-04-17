package com.microsoft.identity.common.internal.cache;

import android.text.TextUtils;
import com.microsoft.identity.common.exception.ServiceException;
import com.microsoft.identity.common.internal.authscheme.PopAuthenticationSchemeInternal;
import com.microsoft.identity.common.internal.controllers.BaseController;
import com.microsoft.identity.common.internal.dto.AccessTokenRecord;
import com.microsoft.identity.common.internal.dto.AccountRecord;
import com.microsoft.identity.common.internal.dto.CredentialType;
import com.microsoft.identity.common.internal.dto.IdTokenRecord;
import com.microsoft.identity.common.internal.dto.RefreshTokenRecord;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftAccount;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftRefreshToken;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.ClientInfo;
import com.microsoft.identity.common.internal.providers.microsoft.microsoftsts.MicrosoftStsAuthorizationRequest;
import com.microsoft.identity.common.internal.providers.microsoft.microsoftsts.MicrosoftStsOAuth2Strategy;
import com.microsoft.identity.common.internal.providers.microsoft.microsoftsts.MicrosoftStsTokenResponse;
import com.microsoft.identity.common.internal.providers.oauth2.IDToken;
import e.a.a.a.a;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;

public class MicrosoftStsAccountCredentialAdapter implements IAccountCredentialAdapter<MicrosoftStsOAuth2Strategy, MicrosoftStsAuthorizationRequest, MicrosoftStsTokenResponse, MicrosoftAccount, MicrosoftRefreshToken> {
    public static final String TAG = "MicrosoftStsAccountCredentialAdapter";

    private long getCachedAt() {
        return TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis());
    }

    private String getCredentialType(String str) {
        CredentialType credentialType = CredentialType.AccessToken;
        if (!PopAuthenticationSchemeInternal.SCHEME_POP.equalsIgnoreCase(str)) {
            return "AccessToken";
        }
        CredentialType credentialType2 = CredentialType.AccessToken_With_AuthScheme;
        return "AccessToken_With_AuthScheme";
    }

    private long getExpiresOn(MicrosoftStsTokenResponse microsoftStsTokenResponse) {
        return microsoftStsTokenResponse.getExpiresIn().longValue() + TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis());
    }

    private String getExtendedExpiresOn(MicrosoftStsTokenResponse microsoftStsTokenResponse) {
        return String.valueOf(TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis()) + (microsoftStsTokenResponse.getExtExpiresIn() == null ? 0 : microsoftStsTokenResponse.getExtExpiresIn().longValue()));
    }

    private String getRealm(MicrosoftStsOAuth2Strategy microsoftStsOAuth2Strategy, MicrosoftStsTokenResponse microsoftStsTokenResponse) {
        return microsoftStsOAuth2Strategy.createAccount(microsoftStsTokenResponse).getRealm();
    }

    private String getTarget(String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            return str2;
        }
        HashSet hashSet = new HashSet(Arrays.asList(str.split("\\s+")));
        hashSet.removeAll(BaseController.DEFAULT_SCOPES);
        Iterator it = hashSet.iterator();
        String str3 = "";
        while (it.hasNext()) {
            str3 = a.a(str3, (String) it.next(), " ");
        }
        return str3.trim();
    }

    public AccountRecord asAccount(MicrosoftAccount microsoftAccount) {
        return new AccountRecord(microsoftAccount);
    }

    public IdTokenRecord asIdToken(MicrosoftAccount microsoftAccount, MicrosoftRefreshToken microsoftRefreshToken) {
        long cachedAt = getCachedAt();
        IDToken iDToken = microsoftAccount.getIDToken();
        IdTokenRecord idTokenRecord = new IdTokenRecord();
        idTokenRecord.setHomeAccountId(microsoftRefreshToken.getHomeAccountId());
        idTokenRecord.setEnvironment(microsoftRefreshToken.getEnvironment());
        idTokenRecord.setRealm(microsoftAccount.getRealm());
        CredentialType credentialType = CredentialType.IdToken;
        idTokenRecord.setCredentialType("IdToken");
        idTokenRecord.setClientId(microsoftRefreshToken.getClientId());
        idTokenRecord.setSecret(iDToken.getRawIDToken());
        idTokenRecord.setCachedAt(String.valueOf(cachedAt));
        idTokenRecord.setAuthority(SchemaUtil.getAuthority(iDToken));
        return idTokenRecord;
    }

    public RefreshTokenRecord asRefreshToken(MicrosoftRefreshToken microsoftRefreshToken) {
        RefreshTokenRecord refreshTokenRecord = new RefreshTokenRecord();
        refreshTokenRecord.setHomeAccountId(microsoftRefreshToken.getHomeAccountId());
        refreshTokenRecord.setEnvironment(microsoftRefreshToken.getEnvironment());
        CredentialType credentialType = CredentialType.RefreshToken;
        refreshTokenRecord.setCredentialType("RefreshToken");
        refreshTokenRecord.setClientId(microsoftRefreshToken.getClientId());
        refreshTokenRecord.setSecret(microsoftRefreshToken.getSecret());
        refreshTokenRecord.setTarget(microsoftRefreshToken.getTarget());
        refreshTokenRecord.setCachedAt(String.valueOf(TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis())));
        refreshTokenRecord.setFamilyId(microsoftRefreshToken.getFamilyId());
        return refreshTokenRecord;
    }

    public AccessTokenRecord createAccessToken(MicrosoftStsOAuth2Strategy microsoftStsOAuth2Strategy, MicrosoftStsAuthorizationRequest microsoftStsAuthorizationRequest, MicrosoftStsTokenResponse microsoftStsTokenResponse) {
        try {
            long cachedAt = getCachedAt();
            long expiresOn = getExpiresOn(microsoftStsTokenResponse);
            ClientInfo clientInfo = new ClientInfo(microsoftStsTokenResponse.getClientInfo());
            AccessTokenRecord accessTokenRecord = new AccessTokenRecord();
            accessTokenRecord.setCredentialType(getCredentialType(microsoftStsTokenResponse.getTokenType()));
            accessTokenRecord.setHomeAccountId(SchemaUtil.getHomeAccountId(clientInfo));
            accessTokenRecord.setRealm(getRealm(microsoftStsOAuth2Strategy, microsoftStsTokenResponse));
            accessTokenRecord.setEnvironment(microsoftStsOAuth2Strategy.getIssuerCacheIdentifierFromTokenEndpoint());
            accessTokenRecord.setClientId(microsoftStsAuthorizationRequest.getClientId());
            accessTokenRecord.setTarget(getTarget(microsoftStsAuthorizationRequest.getScope(), microsoftStsTokenResponse.getScope()));
            accessTokenRecord.setCachedAt(String.valueOf(cachedAt));
            accessTokenRecord.setExpiresOn(String.valueOf(expiresOn));
            accessTokenRecord.setSecret(microsoftStsTokenResponse.getAccessToken());
            accessTokenRecord.setExtendedExpiresOn(getExtendedExpiresOn(microsoftStsTokenResponse));
            accessTokenRecord.setAuthority(microsoftStsOAuth2Strategy.getAuthorityFromTokenEndpoint());
            accessTokenRecord.setAccessTokenType(microsoftStsTokenResponse.getTokenType());
            if (PopAuthenticationSchemeInternal.SCHEME_POP.equalsIgnoreCase(microsoftStsTokenResponse.getTokenType())) {
                accessTokenRecord.setKid(microsoftStsOAuth2Strategy.getDeviceAtPopThumbprint());
            }
            return accessTokenRecord;
        } catch (ServiceException e2) {
            throw new RuntimeException(e2);
        }
    }

    public AccountRecord createAccount(MicrosoftStsOAuth2Strategy microsoftStsOAuth2Strategy, MicrosoftStsAuthorizationRequest microsoftStsAuthorizationRequest, MicrosoftStsTokenResponse microsoftStsTokenResponse) {
        Logger.verbose(TAG, "Creating Account");
        return new AccountRecord(microsoftStsOAuth2Strategy.createAccount(microsoftStsTokenResponse));
    }

    public IdTokenRecord createIdToken(MicrosoftStsOAuth2Strategy microsoftStsOAuth2Strategy, MicrosoftStsAuthorizationRequest microsoftStsAuthorizationRequest, MicrosoftStsTokenResponse microsoftStsTokenResponse) {
        try {
            ClientInfo clientInfo = new ClientInfo(microsoftStsTokenResponse.getClientInfo());
            IdTokenRecord idTokenRecord = new IdTokenRecord();
            idTokenRecord.setHomeAccountId(SchemaUtil.getHomeAccountId(clientInfo));
            idTokenRecord.setEnvironment(microsoftStsOAuth2Strategy.getIssuerCacheIdentifierFromTokenEndpoint());
            idTokenRecord.setRealm(getRealm(microsoftStsOAuth2Strategy, microsoftStsTokenResponse));
            idTokenRecord.setCredentialType(SchemaUtil.getCredentialTypeFromVersion(microsoftStsTokenResponse.getIdToken()));
            idTokenRecord.setClientId(microsoftStsAuthorizationRequest.getClientId());
            idTokenRecord.setSecret(microsoftStsTokenResponse.getIdToken());
            idTokenRecord.setAuthority(microsoftStsOAuth2Strategy.getAuthorityFromTokenEndpoint());
            return idTokenRecord;
        } catch (ServiceException e2) {
            throw new RuntimeException(e2);
        }
    }

    public RefreshTokenRecord createRefreshToken(MicrosoftStsOAuth2Strategy microsoftStsOAuth2Strategy, MicrosoftStsAuthorizationRequest microsoftStsAuthorizationRequest, MicrosoftStsTokenResponse microsoftStsTokenResponse) {
        try {
            long cachedAt = getCachedAt();
            ClientInfo clientInfo = new ClientInfo(microsoftStsTokenResponse.getClientInfo());
            RefreshTokenRecord refreshTokenRecord = new RefreshTokenRecord();
            CredentialType credentialType = CredentialType.RefreshToken;
            refreshTokenRecord.setCredentialType("RefreshToken");
            refreshTokenRecord.setEnvironment(microsoftStsOAuth2Strategy.getIssuerCacheIdentifierFromTokenEndpoint());
            refreshTokenRecord.setHomeAccountId(SchemaUtil.getHomeAccountId(clientInfo));
            refreshTokenRecord.setClientId(microsoftStsAuthorizationRequest.getClientId());
            refreshTokenRecord.setSecret(microsoftStsTokenResponse.getRefreshToken());
            refreshTokenRecord.setFamilyId(microsoftStsTokenResponse.getFamilyId());
            refreshTokenRecord.setTarget(getTarget(microsoftStsAuthorizationRequest.getScope(), microsoftStsTokenResponse.getScope()));
            refreshTokenRecord.setCachedAt(String.valueOf(cachedAt));
            return refreshTokenRecord;
        } catch (ServiceException e2) {
            throw new RuntimeException(e2);
        }
    }
}
