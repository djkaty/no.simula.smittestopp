package com.microsoft.identity.common.internal.providers.microsoft.microsoftsts;

import android.net.Uri;
import android.util.Pair;
import com.microsoft.identity.common.adal.internal.AuthenticationConstants;
import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.exception.ServiceException;
import com.microsoft.identity.common.internal.authscheme.AbstractAuthenticationScheme;
import com.microsoft.identity.common.internal.authscheme.PopAuthenticationSchemeInternal;
import com.microsoft.identity.common.internal.cache.ICacheRecord;
import com.microsoft.identity.common.internal.controllers.BaseController;
import com.microsoft.identity.common.internal.dto.IAccountRecord;
import com.microsoft.identity.common.internal.eststelemetry.EstsTelemetry;
import com.microsoft.identity.common.internal.logging.DiagnosticContext;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.net.HttpRequest;
import com.microsoft.identity.common.internal.net.HttpResponse;
import com.microsoft.identity.common.internal.net.ObjectMapper;
import com.microsoft.identity.common.internal.platform.Device;
import com.microsoft.identity.common.internal.platform.IDevicePopManager;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftAuthorizationRequest;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftAuthorizationResponse;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftTokenErrorResponse;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectory;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectoryCloud;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.ClientInfo;
import com.microsoft.identity.common.internal.providers.microsoft.microsoftsts.MicrosoftStsAuthorizationRequest;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationResult;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationResultFactory;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationStrategy;
import com.microsoft.identity.common.internal.providers.oauth2.IDToken;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2Strategy;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2StrategyParameters;
import com.microsoft.identity.common.internal.providers.oauth2.OpenIdProviderConfiguration;
import com.microsoft.identity.common.internal.providers.oauth2.TokenErrorResponse;
import com.microsoft.identity.common.internal.providers.oauth2.TokenRequest;
import com.microsoft.identity.common.internal.providers.oauth2.TokenResult;
import com.microsoft.identity.common.internal.telemetry.CliTelemInfo;
import com.microsoft.identity.common.internal.ui.webview.challengehandlers.PKeyAuthChallengeFactory;
import com.microsoft.identity.common.internal.ui.webview.challengehandlers.PKeyAuthChallengeHandler;
import com.microsoft.identity.common.internal.util.HeaderSerializationUtil;
import com.microsoft.identity.common.internal.util.StringUtil;
import e.a.a.a.a;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.UUID;

public class MicrosoftStsOAuth2Strategy extends OAuth2Strategy<MicrosoftStsAccessToken, MicrosoftStsAccount, MicrosoftStsAuthorizationRequest, MicrosoftStsAuthorizationRequest.Builder, AuthorizationStrategy, MicrosoftStsOAuth2Configuration, OAuth2StrategyParameters, MicrosoftStsAuthorizationResponse, MicrosoftStsRefreshToken, MicrosoftStsTokenRequest, MicrosoftStsTokenResponse, TokenResult, AuthorizationResult> {
    public static final String TAG = "MicrosoftStsOAuth2Strategy";

    public MicrosoftStsOAuth2Strategy(MicrosoftStsOAuth2Configuration microsoftStsOAuth2Configuration, OAuth2StrategyParameters oAuth2StrategyParameters) {
        super(microsoftStsOAuth2Configuration, oAuth2StrategyParameters);
        setTokenEndpoint(microsoftStsOAuth2Configuration.getTokenEndpoint().toString());
    }

    public static boolean authSchemeIsPoP(AbstractAuthenticationScheme abstractAuthenticationScheme) {
        return PopAuthenticationSchemeInternal.SCHEME_POP.equals(abstractAuthenticationScheme.getName());
    }

    private String buildCloudSpecificTokenEndpoint(MicrosoftStsAuthorizationResponse microsoftStsAuthorizationResponse) {
        if (!StringUtil.isEmpty(microsoftStsAuthorizationResponse.getCloudInstanceHostName())) {
            return Uri.parse(this.mTokenEndpoint).buildUpon().authority(microsoftStsAuthorizationResponse.getCloudInstanceHostName()).build().toString();
        }
        return this.mTokenEndpoint;
    }

    private boolean cachedAccessTokenKidMatchesKeystoreKid(String str) {
        String deviceAtPopThumbprint = getDeviceAtPopThumbprint();
        if (StringExtensions.isNullOrBlank(deviceAtPopThumbprint)) {
            return false;
        }
        return deviceAtPopThumbprint.equals(str);
    }

    private String getCloudSpecificTokenEndpoint(MicrosoftAuthorizationRequest microsoftAuthorizationRequest, MicrosoftAuthorizationResponse microsoftAuthorizationResponse) {
        if (StringUtil.isEmpty(microsoftAuthorizationResponse.getCloudInstanceHostName())) {
            return this.mTokenEndpoint;
        }
        OpenIdProviderConfiguration openIdWellKnownConfig = ((MicrosoftStsOAuth2Configuration) this.mConfig).getOpenIdWellKnownConfig(microsoftAuthorizationResponse.getCloudInstanceHostName(), microsoftAuthorizationRequest.getAuthority().getPath());
        if (openIdWellKnownConfig != null && openIdWellKnownConfig.getTokenEndpoint() != null) {
            return openIdWellKnownConfig.getTokenEndpoint();
        }
        a.b(new StringBuilder(), TAG, ":getCloudSpecificTokenEndpoint", "Token Endpoint not obtained from well known config. Building token endpoint manually.");
        return buildCloudSpecificTokenEndpoint((MicrosoftStsAuthorizationResponse) microsoftAuthorizationResponse);
    }

    private String getIssuerCacheIdentifierFromAuthority(URL url) {
        AzureActiveDirectoryCloud azureActiveDirectoryCloud = AzureActiveDirectory.getAzureActiveDirectoryCloud(url);
        if (azureActiveDirectoryCloud == null) {
            return url.getHost();
        }
        String preferredCacheHostName = azureActiveDirectoryCloud.getPreferredCacheHostName();
        Logger.info(TAG + ":getIssuerCacheIdentifierFromAuthority", "Using preferred cache host name...");
        String a = a.a(new StringBuilder(), TAG, ":getIssuerCacheIdentifierFromAuthority");
        Logger.infoPII(a, "Preferred cache hostname: [" + preferredCacheHostName + "]");
        return preferredCacheHostName;
    }

    private HttpResponse performPKeyAuthRequest(HttpResponse httpResponse, MicrosoftStsTokenRequest microsoftStsTokenRequest) {
        String serializeObjectToFormUrlEncoded = ObjectMapper.serializeObjectToFormUrlEncoded(microsoftStsTokenRequest);
        TreeMap treeMap = new TreeMap();
        treeMap.put("client-request-id", DiagnosticContext.getRequestContext().get("correlation_id"));
        treeMap.putAll(Device.getPlatformIdParameters());
        String str = (String) httpResponse.getHeaders().get(AuthenticationConstants.Broker.CHALLENGE_REQUEST_HEADER).get(0);
        Logger.info(TAG + "#performPkeyAuthRequest", "Device certificate challenge request. ");
        String a = a.a(new StringBuilder(), TAG, "#performPkeyAuthRequest");
        Logger.infoPII(a, "Challenge header: " + str);
        try {
            PKeyAuthChallengeFactory pKeyAuthChallengeFactory = new PKeyAuthChallengeFactory();
            URL url = StringExtensions.getUrl(this.mTokenEndpoint);
            treeMap.putAll(PKeyAuthChallengeHandler.getChallengeHeader(pKeyAuthChallengeFactory.getPKeyAuthChallenge(str, url.toString())));
            treeMap.putAll(EstsTelemetry.getInstance().getTelemetryHeaders());
            return HttpRequest.sendPost(url, treeMap, serializeObjectToFormUrlEncoded.getBytes("UTF-8"), OAuth2Strategy.TOKEN_REQUEST_CONTENT_TYPE);
        } catch (UnsupportedEncodingException e2) {
            throw new ClientException("unsupported_encoding", "Unsupported encoding", e2);
        }
    }

    private void setTokenRequestCorrelationId(MicrosoftStsTokenRequest microsoftStsTokenRequest) {
        try {
            microsoftStsTokenRequest.setCorrelationId(UUID.fromString((String) DiagnosticContext.getRequestContext().get("correlation_id")));
        } catch (IllegalArgumentException e2) {
            Logger.error("MicrosoftSTSOAuth2Strategy", "Correlation id on diagnostic context is not a UUID.", e2);
        }
    }

    private void validateAuthScheme(MicrosoftStsTokenRequest microsoftStsTokenRequest, MicrosoftStsTokenResponse microsoftStsTokenResponse) {
        String tokenType = microsoftStsTokenRequest.getTokenType();
        String tokenType2 = microsoftStsTokenResponse.getTokenType();
        if (tokenType != null && !tokenType.equalsIgnoreCase(tokenType2)) {
            throw new ClientException(ClientException.AUTH_SCHEME_MISMATCH, "Expected: [" + tokenType + "]\nActual: [" + tokenType2 + "]");
        }
    }

    public AuthorizationResultFactory getAuthorizationResultFactory() {
        return new MicrosoftStsAuthorizationResultFactory();
    }

    public String getDeviceAtPopThumbprint() {
        IDevicePopManager iDevicePopManager;
        try {
            iDevicePopManager = Device.getDevicePoPManagerInstance();
        } catch (ClientException e2) {
            Logger.error(TAG, e2.getMessage(), e2);
            iDevicePopManager = null;
        }
        if (iDevicePopManager == null) {
            Logger.warn(TAG, "DevicePopManager does not exist.");
            return null;
        } else if (iDevicePopManager.asymmetricKeyExists()) {
            try {
                return iDevicePopManager.getAsymmetricKeyThumbprint();
            } catch (ClientException e3) {
                Logger.error(TAG, "Key exists. But failed to load thumbprint.", e3);
                throw new RuntimeException(e3);
            }
        } else {
            throw new RuntimeException("Symmetric keys do not exist.");
        }
    }

    public String getIssuerCacheIdentifierFromTokenEndpoint() {
        URL url;
        try {
            url = new URL(this.mTokenEndpoint);
        } catch (MalformedURLException e2) {
            Logger.error(TAG + ":getIssuerCacheIdentifierFromTokenEndpoint", "Getting issuer cache identifier from token endpoint failed due to malformed URL (mTokenEndpoint)...", e2);
            url = null;
        }
        if (url != null) {
            return getIssuerCacheIdentifierFromAuthority(url);
        }
        return null;
    }

    public TokenResult getTokenResultFromHttpResponse(HttpResponse httpResponse) {
        TokenErrorResponse tokenErrorResponse;
        List list;
        Logger.verbose(TAG + ":getTokenResultFromHttpResponse", "Getting TokenResult from HttpResponse...");
        MicrosoftStsTokenResponse microsoftStsTokenResponse = null;
        if (httpResponse.getStatusCode() >= 400) {
            tokenErrorResponse = (TokenErrorResponse) ObjectMapper.deserializeJsonStringToObject(httpResponse.getBody(), MicrosoftTokenErrorResponse.class);
            tokenErrorResponse.setStatusCode(httpResponse.getStatusCode());
            if (httpResponse.getHeaders() != null) {
                tokenErrorResponse.setResponseHeadersJson(HeaderSerializationUtil.toJson(httpResponse.getHeaders()));
            }
            tokenErrorResponse.setResponseBody(httpResponse.getBody());
        } else {
            microsoftStsTokenResponse = (MicrosoftStsTokenResponse) ObjectMapper.deserializeJsonStringToObject(httpResponse.getBody(), MicrosoftStsTokenResponse.class);
            tokenErrorResponse = null;
        }
        TokenResult tokenResult = new TokenResult(microsoftStsTokenResponse, tokenErrorResponse);
        BaseController.logResult(TAG, tokenResult);
        if (!(httpResponse.getHeaders() == null || (list = httpResponse.getHeaders().get(AuthenticationConstants.HeaderField.X_MS_CLITELEM)) == null || list.isEmpty())) {
            CliTelemInfo fromXMsCliTelemHeader = CliTelemInfo.fromXMsCliTelemHeader((String) list.get(0));
            tokenResult.setCliTelemInfo(fromXMsCliTelemHeader);
            if (!(microsoftStsTokenResponse == null || fromXMsCliTelemHeader == null)) {
                microsoftStsTokenResponse.setSpeRing(fromXMsCliTelemHeader.getSpeRing());
                microsoftStsTokenResponse.setRefreshTokenAge(fromXMsCliTelemHeader.getRefreshTokenAge());
                microsoftStsTokenResponse.setCliTelemErrorCode(fromXMsCliTelemHeader.getServerErrorCode());
                microsoftStsTokenResponse.setCliTelemSubErrorCode(fromXMsCliTelemHeader.getServerSubErrorCode());
            }
        }
        return tokenResult;
    }

    public void validateAuthorizationRequest(MicrosoftStsAuthorizationRequest microsoftStsAuthorizationRequest) {
    }

    public boolean validateCachedResult(AbstractAuthenticationScheme abstractAuthenticationScheme, ICacheRecord iCacheRecord) {
        super.validateCachedResult(abstractAuthenticationScheme, iCacheRecord);
        if (authSchemeIsPoP(abstractAuthenticationScheme)) {
            return cachedAccessTokenKidMatchesKeystoreKid(iCacheRecord.getAccessToken().getKid());
        }
        return true;
    }

    public void validateTokenRequest(MicrosoftStsTokenRequest microsoftStsTokenRequest) {
    }

    public MicrosoftStsAccount createAccount(MicrosoftStsTokenResponse microsoftStsTokenResponse) {
        a.b(new StringBuilder(), TAG, ":createAccount", "Creating account from TokenResponse...");
        try {
            MicrosoftStsAccount microsoftStsAccount = new MicrosoftStsAccount(new IDToken(microsoftStsTokenResponse.getIdToken()), new ClientInfo(microsoftStsTokenResponse.getClientInfo()));
            microsoftStsAccount.setEnvironment(getIssuerCacheIdentifierFromTokenEndpoint());
            return microsoftStsAccount;
        } catch (ServiceException e2) {
            Logger.error(TAG + ":createAccount", "Failed to construct IDToken or ClientInfo", (Throwable) null);
            Logger.errorPII(TAG + ":createAccount", "Failed with Exception", e2);
            throw new RuntimeException();
        }
    }

    public MicrosoftStsTokenRequest createRefreshTokenRequest(AbstractAuthenticationScheme abstractAuthenticationScheme) {
        Logger.verbose(TAG + ":createRefreshTokenRequest", "Creating refresh token request");
        MicrosoftStsTokenRequest microsoftStsTokenRequest = new MicrosoftStsTokenRequest();
        microsoftStsTokenRequest.setGrantType("refresh_token");
        if (PopAuthenticationSchemeInternal.SCHEME_POP.equals(abstractAuthenticationScheme.getName())) {
            microsoftStsTokenRequest.setTokenType(TokenRequest.TokenType.POP);
            IDevicePopManager devicePoPManagerInstance = Device.getDevicePoPManagerInstance();
            if (!devicePoPManagerInstance.asymmetricKeyExists()) {
                devicePoPManagerInstance.generateAsymmetricKey(this.mStrategyParameters.getContext());
            }
            microsoftStsTokenRequest.setRequestConfirmation(devicePoPManagerInstance.getRequestConfirmation());
        }
        return microsoftStsTokenRequest;
    }

    public MicrosoftStsTokenRequest createTokenRequest(MicrosoftStsAuthorizationRequest microsoftStsAuthorizationRequest, MicrosoftStsAuthorizationResponse microsoftStsAuthorizationResponse, AbstractAuthenticationScheme abstractAuthenticationScheme) {
        a.b(new StringBuilder(), TAG, ":createTokenRequest", "Creating TokenRequest...");
        if (((MicrosoftStsOAuth2Configuration) this.mConfig).getMultipleCloudsSupported() || microsoftStsAuthorizationRequest.getMultipleCloudAware().booleanValue()) {
            Logger.verbose(TAG, "get cloud specific authority based on authorization response.");
            setTokenEndpoint(getCloudSpecificTokenEndpoint(microsoftStsAuthorizationRequest, microsoftStsAuthorizationResponse));
        }
        MicrosoftStsTokenRequest microsoftStsTokenRequest = new MicrosoftStsTokenRequest();
        microsoftStsTokenRequest.setCodeVerifier(microsoftStsAuthorizationRequest.getPkceChallenge().getCodeVerifier());
        microsoftStsTokenRequest.setCode(microsoftStsAuthorizationResponse.getCode());
        microsoftStsTokenRequest.setRedirectUri(microsoftStsAuthorizationRequest.getRedirectUri());
        microsoftStsTokenRequest.setClientId(microsoftStsAuthorizationRequest.getClientId());
        microsoftStsTokenRequest.setScope(microsoftStsAuthorizationRequest.getTokenScope());
        microsoftStsTokenRequest.setClaims(microsoftStsAuthorizationRequest.getClaims());
        microsoftStsTokenRequest.setGrantType("authorization_code");
        setTokenRequestCorrelationId(microsoftStsTokenRequest);
        if (PopAuthenticationSchemeInternal.SCHEME_POP.equals(abstractAuthenticationScheme.getName())) {
            if (this.mStrategyParameters.getContext() != null) {
                microsoftStsTokenRequest.setTokenType(TokenRequest.TokenType.POP);
                IDevicePopManager devicePoPManagerInstance = Device.getDevicePoPManagerInstance();
                if (!devicePoPManagerInstance.asymmetricKeyExists()) {
                    String generateAsymmetricKey = devicePoPManagerInstance.generateAsymmetricKey(this.mStrategyParameters.getContext());
                    String str = TAG;
                    Logger.verbosePII(str, "Generated new PoP asymmetric key with thumbprint: " + generateAsymmetricKey);
                }
                microsoftStsTokenRequest.setRequestConfirmation(devicePoPManagerInstance.getRequestConfirmation());
            } else {
                throw new ClientException(MicrosoftStsOAuth2Strategy.class.getSimpleName() + "Cannot execute PoP request sans Context");
            }
        }
        return microsoftStsTokenRequest;
    }

    public MicrosoftStsAccessToken getAccessTokenFromResponse(MicrosoftStsTokenResponse microsoftStsTokenResponse) {
        Logger.verbose(TAG + ":getAccessTokenFromResponse", "Getting AT from TokenResponse...");
        return new MicrosoftStsAccessToken(microsoftStsTokenResponse);
    }

    public String getIssuerCacheIdentifier(MicrosoftStsAuthorizationRequest microsoftStsAuthorizationRequest) {
        URL authority = microsoftStsAuthorizationRequest.getAuthority();
        AzureActiveDirectoryCloud azureActiveDirectoryCloud = AzureActiveDirectory.getAzureActiveDirectoryCloud(authority);
        if (azureActiveDirectoryCloud == null) {
            return authority.getHost();
        }
        String preferredCacheHostName = azureActiveDirectoryCloud.getPreferredCacheHostName();
        Logger.info(TAG + ":getIssuerCacheIdentifier", "Using preferred cache host name...");
        String a = a.a(new StringBuilder(), TAG, ":getIssuerCacheIdentifier");
        Logger.infoPII(a, "Preferred cache hostname: [" + preferredCacheHostName + "]");
        return preferredCacheHostName;
    }

    public MicrosoftStsRefreshToken getRefreshTokenFromResponse(MicrosoftStsTokenResponse microsoftStsTokenResponse) {
        Logger.verbose(TAG + ":getRefreshTokenFromResponse", "Getting RT from TokenResponse...");
        return new MicrosoftStsRefreshToken(microsoftStsTokenResponse);
    }

    public HttpResponse performTokenRequest(MicrosoftStsTokenRequest microsoftStsTokenRequest) {
        HttpResponse performTokenRequest = super.performTokenRequest(microsoftStsTokenRequest);
        if (performTokenRequest.getStatusCode() != 401 || performTokenRequest.getHeaders() == null || !performTokenRequest.getHeaders().containsKey(AuthenticationConstants.Broker.CHALLENGE_REQUEST_HEADER)) {
            return performTokenRequest;
        }
        Logger.info(TAG + ":performTokenRequest", "Receiving device certificate challenge request. ");
        return performPKeyAuthRequest(performTokenRequest, microsoftStsTokenRequest);
    }

    public void validateTokenResponse(MicrosoftStsTokenRequest microsoftStsTokenRequest, MicrosoftStsTokenResponse microsoftStsTokenResponse) {
        validateAuthScheme(microsoftStsTokenRequest, microsoftStsTokenResponse);
    }

    public MicrosoftStsAuthorizationRequest.Builder createAuthorizationRequestBuilder() {
        Logger.info(TAG + ":createAuthorizationRequestBuilder", "Creating AuthorizationRequestBuilder...");
        MicrosoftStsAuthorizationRequest.Builder builder = new MicrosoftStsAuthorizationRequest.Builder();
        builder.setAuthority(((MicrosoftStsOAuth2Configuration) this.mConfig).getAuthorityUrl());
        if (((MicrosoftStsOAuth2Configuration) this.mConfig).getSlice() != null) {
            Logger.info(TAG + ":createAuthorizationRequestBuilder", "Setting slice params...");
            builder.setSlice(((MicrosoftStsOAuth2Configuration) this.mConfig).getSlice());
        }
        Map<String, String> platformIdParameters = Device.getPlatformIdParameters();
        builder.setLibraryName(platformIdParameters.get("x-client-SKU"));
        builder.setLibraryVersion(platformIdParameters.get("x-client-Ver"));
        builder.setFlightParameters(((MicrosoftStsOAuth2Configuration) this.mConfig).getFlightParameters());
        builder.setMultipleCloudAware(((MicrosoftStsOAuth2Configuration) this.mConfig).getMultipleCloudsSupported());
        return builder;
    }

    public MicrosoftStsAuthorizationRequest.Builder createAuthorizationRequestBuilder(IAccountRecord iAccountRecord) {
        Logger.info(TAG + ":createAuthorizationRequestBuilder", "Creating AuthorizationRequestBuilder");
        MicrosoftStsAuthorizationRequest.Builder createAuthorizationRequestBuilder = createAuthorizationRequestBuilder();
        if (iAccountRecord != null) {
            Pair<String, String> tenantInfo = StringUtil.getTenantInfo(iAccountRecord.getHomeAccountId());
            if (!StringExtensions.isNullOrBlank((String) tenantInfo.first) && !StringExtensions.isNullOrBlank((String) tenantInfo.second)) {
                createAuthorizationRequestBuilder.setUid((String) tenantInfo.first);
                createAuthorizationRequestBuilder.setUtid((String) tenantInfo.second);
                String a = a.a(new StringBuilder(), TAG, ":createAuthorizationRequestBuilder");
                StringBuilder a2 = a.a("Builder w/ uid: [");
                a2.append((String) tenantInfo.first);
                a2.append("]");
                Logger.infoPII(a, a2.toString());
                String a3 = a.a(new StringBuilder(), TAG, ":createAuthorizationRequestBuilder");
                StringBuilder a4 = a.a("Builder w/ utid: [");
                a4.append((String) tenantInfo.second);
                a4.append("]");
                Logger.infoPII(a3, a4.toString());
            }
        }
        return createAuthorizationRequestBuilder;
    }
}
