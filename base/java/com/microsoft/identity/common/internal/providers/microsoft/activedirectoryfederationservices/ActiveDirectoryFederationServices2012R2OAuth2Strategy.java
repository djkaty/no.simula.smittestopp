package com.microsoft.identity.common.internal.providers.microsoft.activedirectoryfederationservices;

import com.microsoft.identity.common.BaseAccount;
import com.microsoft.identity.common.internal.authscheme.AbstractAuthenticationScheme;
import com.microsoft.identity.common.internal.dto.IAccountRecord;
import com.microsoft.identity.common.internal.net.HttpResponse;
import com.microsoft.identity.common.internal.providers.oauth2.AccessToken;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationRequest;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationResponse;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationResult;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationResultFactory;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationStrategy;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2Configuration;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2Strategy;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2StrategyParameters;
import com.microsoft.identity.common.internal.providers.oauth2.RefreshToken;
import com.microsoft.identity.common.internal.providers.oauth2.TokenRequest;
import com.microsoft.identity.common.internal.providers.oauth2.TokenResponse;
import com.microsoft.identity.common.internal.providers.oauth2.TokenResult;
import java.util.concurrent.Future;

public class ActiveDirectoryFederationServices2012R2OAuth2Strategy extends OAuth2Strategy {
    public ActiveDirectoryFederationServices2012R2OAuth2Strategy(OAuth2Configuration oAuth2Configuration, OAuth2StrategyParameters oAuth2StrategyParameters) {
        super(oAuth2Configuration, oAuth2StrategyParameters);
    }

    public BaseAccount createAccount(TokenResponse tokenResponse) {
        return null;
    }

    public AuthorizationRequest.Builder createAuthorizationRequestBuilder() {
        return null;
    }

    public AuthorizationRequest.Builder createAuthorizationRequestBuilder(IAccountRecord iAccountRecord) {
        return createAuthorizationRequestBuilder();
    }

    public TokenRequest createRefreshTokenRequest(AbstractAuthenticationScheme abstractAuthenticationScheme) {
        return null;
    }

    public TokenRequest createTokenRequest(AuthorizationRequest authorizationRequest, AuthorizationResponse authorizationResponse, AbstractAuthenticationScheme abstractAuthenticationScheme) {
        return null;
    }

    public AccessToken getAccessTokenFromResponse(TokenResponse tokenResponse) {
        return null;
    }

    public AuthorizationResultFactory getAuthorizationResultFactory() {
        throw new UnsupportedOperationException();
    }

    public String getIssuerCacheIdentifier(AuthorizationRequest authorizationRequest) {
        return null;
    }

    public RefreshToken getRefreshTokenFromResponse(TokenResponse tokenResponse) {
        return null;
    }

    public TokenResult getTokenResultFromHttpResponse(HttpResponse httpResponse) {
        return null;
    }

    public Future<AuthorizationResult> requestAuthorization(AuthorizationRequest authorizationRequest, AuthorizationStrategy authorizationStrategy) {
        return super.requestAuthorization(authorizationRequest, authorizationStrategy);
    }

    public void validateAuthorizationRequest(AuthorizationRequest authorizationRequest) {
    }

    public void validateTokenRequest(TokenRequest tokenRequest) {
    }

    public void validateTokenResponse(TokenRequest tokenRequest, TokenResponse tokenResponse) {
    }
}
