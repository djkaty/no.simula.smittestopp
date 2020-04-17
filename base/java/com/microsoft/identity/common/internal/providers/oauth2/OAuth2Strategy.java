package com.microsoft.identity.common.internal.providers.oauth2;

import android.net.Uri;
import android.text.TextUtils;
import com.microsoft.identity.common.BaseAccount;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.internal.authscheme.AbstractAuthenticationScheme;
import com.microsoft.identity.common.internal.cache.ICacheRecord;
import com.microsoft.identity.common.internal.dto.IAccountRecord;
import com.microsoft.identity.common.internal.eststelemetry.EstsTelemetry;
import com.microsoft.identity.common.internal.logging.DiagnosticContext;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.net.HttpRequest;
import com.microsoft.identity.common.internal.net.HttpResponse;
import com.microsoft.identity.common.internal.net.ObjectMapper;
import com.microsoft.identity.common.internal.platform.Device;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftTokenRequest;
import com.microsoft.identity.common.internal.providers.oauth2.AccessToken;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationRequest;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationRequest.Builder;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationResponse;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationResult;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationStrategy;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2Configuration;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2StrategyParameters;
import com.microsoft.identity.common.internal.providers.oauth2.RefreshToken;
import com.microsoft.identity.common.internal.providers.oauth2.TokenRequest;
import com.microsoft.identity.common.internal.providers.oauth2.TokenResponse;
import com.microsoft.identity.common.internal.providers.oauth2.TokenResult;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.util.TreeMap;
import java.util.concurrent.Future;

public abstract class OAuth2Strategy<GenericAccessToken extends AccessToken, GenericAccount extends BaseAccount, GenericAuthorizationRequest extends AuthorizationRequest, GenericAuthorizationRequestBuilder extends AuthorizationRequest.Builder, GenericAuthorizationStrategy extends AuthorizationStrategy, GenericOAuth2Configuration extends OAuth2Configuration, GenericOAuth2StrategyParameters extends OAuth2StrategyParameters, GenericAuthorizationResponse extends AuthorizationResponse, GenericRefreshToken extends RefreshToken, GenericTokenRequest extends TokenRequest, GenericTokenResponse extends TokenResponse, GenericTokenResult extends TokenResult, GenericAuthorizationResult extends AuthorizationResult> {
    public static final String TAG = "OAuth2Strategy";
    public static final String TOKEN_REQUEST_CONTENT_TYPE = "application/x-www-form-urlencoded";
    public String mAuthorizationEndpoint;
    public final GenericOAuth2Configuration mConfig;
    public Uri mIssuer;
    public final GenericOAuth2StrategyParameters mStrategyParameters;
    public String mTokenEndpoint;

    public OAuth2Strategy(GenericOAuth2Configuration genericoauth2configuration, GenericOAuth2StrategyParameters genericoauth2strategyparameters) {
        this.mConfig = genericoauth2configuration;
        this.mStrategyParameters = genericoauth2strategyparameters;
    }

    public abstract GenericAccount createAccount(GenericTokenResponse generictokenresponse);

    public abstract GenericAuthorizationRequestBuilder createAuthorizationRequestBuilder();

    public abstract GenericAuthorizationRequestBuilder createAuthorizationRequestBuilder(IAccountRecord iAccountRecord);

    public abstract GenericTokenRequest createRefreshTokenRequest(AbstractAuthenticationScheme abstractAuthenticationScheme);

    public abstract GenericTokenRequest createTokenRequest(GenericAuthorizationRequest genericauthorizationrequest, GenericAuthorizationResponse genericauthorizationresponse, AbstractAuthenticationScheme abstractAuthenticationScheme);

    public abstract GenericAccessToken getAccessTokenFromResponse(GenericTokenResponse generictokenresponse);

    public String getAuthorityFromTokenEndpoint() {
        return this.mTokenEndpoint.toLowerCase().replace("oauth2/v2.0/token", "");
    }

    public abstract AuthorizationResultFactory getAuthorizationResultFactory();

    public Uri getIssuer() {
        return this.mIssuer;
    }

    public abstract String getIssuerCacheIdentifier(GenericAuthorizationRequest genericauthorizationrequest);

    public GenericOAuth2Configuration getOAuth2Configuration() {
        return this.mConfig;
    }

    public abstract GenericRefreshToken getRefreshTokenFromResponse(GenericTokenResponse generictokenresponse);

    public abstract GenericTokenResult getTokenResultFromHttpResponse(HttpResponse httpResponse);

    public HttpResponse performTokenRequest(GenericTokenRequest generictokenrequest) {
        Logger.verbose(TAG + ":performTokenRequest", "Performing token request...");
        String serializeObjectToFormUrlEncoded = ObjectMapper.serializeObjectToFormUrlEncoded(generictokenrequest);
        TreeMap treeMap = new TreeMap();
        treeMap.put("client-request-id", DiagnosticContext.getRequestContext().get("correlation_id"));
        if (generictokenrequest instanceof MicrosoftTokenRequest) {
            MicrosoftTokenRequest microsoftTokenRequest = (MicrosoftTokenRequest) generictokenrequest;
            if (!TextUtils.isEmpty(microsoftTokenRequest.getBrokerVersion())) {
                treeMap.put("x-client-brkrver", microsoftTokenRequest.getBrokerVersion());
            }
        }
        treeMap.putAll(Device.getPlatformIdParameters());
        treeMap.putAll(EstsTelemetry.getInstance().getTelemetryHeaders());
        return HttpRequest.sendPost(new URL(this.mTokenEndpoint), treeMap, serializeObjectToFormUrlEncoded.getBytes("UTF-8"), TOKEN_REQUEST_CONTENT_TYPE);
    }

    public Future<AuthorizationResult> requestAuthorization(GenericAuthorizationRequest genericauthorizationrequest, GenericAuthorizationStrategy genericauthorizationstrategy) {
        validateAuthorizationRequest(genericauthorizationrequest);
        try {
            return genericauthorizationstrategy.requestAuthorization(genericauthorizationrequest, this);
        } catch (ClientException | UnsupportedEncodingException unused) {
            return null;
        }
    }

    public GenericTokenResult requestToken(GenericTokenRequest generictokenrequest) {
        Logger.verbose(TAG + ":requestToken", "Requesting token...");
        validateTokenRequest(generictokenrequest);
        GenericTokenResult tokenResultFromHttpResponse = getTokenResultFromHttpResponse(performTokenRequest(generictokenrequest));
        if (tokenResultFromHttpResponse.getSuccess()) {
            validateTokenResponse(generictokenrequest, tokenResultFromHttpResponse.getSuccessResponse());
        }
        return tokenResultFromHttpResponse;
    }

    public final void setAuthorizationEndpoint(String str) {
        this.mAuthorizationEndpoint = str;
    }

    public final void setIssuer(Uri uri) {
        this.mIssuer = uri;
    }

    public final void setTokenEndpoint(String str) {
        this.mTokenEndpoint = str;
    }

    public abstract void validateAuthorizationRequest(GenericAuthorizationRequest genericauthorizationrequest);

    public boolean validateCachedResult(AbstractAuthenticationScheme abstractAuthenticationScheme, ICacheRecord iCacheRecord) {
        return true;
    }

    public abstract void validateTokenRequest(GenericTokenRequest generictokenrequest);

    public abstract void validateTokenResponse(GenericTokenRequest generictokenrequest, GenericTokenResponse generictokenresponse);
}
