package com.microsoft.identity.common.internal.controllers;

import android.content.Intent;
import android.text.TextUtils;
import com.microsoft.appcenter.utils.crypto.CryptoConstants;
import com.microsoft.identity.common.adal.internal.AuthenticationConstants;
import com.microsoft.identity.common.adal.internal.net.HttpWebRequest;
import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.internal.authorities.Authority;
import com.microsoft.identity.common.internal.authorities.AzureActiveDirectoryAudience;
import com.microsoft.identity.common.internal.authorities.AzureActiveDirectoryAuthority;
import com.microsoft.identity.common.internal.authscheme.AbstractAuthenticationScheme;
import com.microsoft.identity.common.internal.authscheme.ITokenAuthenticationSchemeInternal;
import com.microsoft.identity.common.internal.cache.ICacheRecord;
import com.microsoft.identity.common.internal.cache.SchemaUtil;
import com.microsoft.identity.common.internal.dto.AccessTokenRecord;
import com.microsoft.identity.common.internal.dto.AccountRecord;
import com.microsoft.identity.common.internal.logging.DiagnosticContext;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.net.ObjectMapper;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftAuthorizationRequest;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftTokenRequest;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftTokenResponse;
import com.microsoft.identity.common.internal.providers.microsoft.microsoftsts.MicrosoftStsAuthorizationRequest;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationRequest;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationResponse;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationResult;
import com.microsoft.identity.common.internal.providers.oauth2.IResult;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2Strategy;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2TokenCache;
import com.microsoft.identity.common.internal.providers.oauth2.OpenIdConnectPromptParameter;
import com.microsoft.identity.common.internal.providers.oauth2.TokenRequest;
import com.microsoft.identity.common.internal.providers.oauth2.TokenResponse;
import com.microsoft.identity.common.internal.providers.oauth2.TokenResult;
import com.microsoft.identity.common.internal.request.AcquireTokenOperationParameters;
import com.microsoft.identity.common.internal.request.AcquireTokenSilentOperationParameters;
import com.microsoft.identity.common.internal.request.BrokerAcquireTokenSilentOperationParameters;
import com.microsoft.identity.common.internal.request.OperationParameters;
import com.microsoft.identity.common.internal.request.SdkType;
import com.microsoft.identity.common.internal.result.AcquireTokenResult;
import com.microsoft.identity.common.internal.result.LocalAuthenticationResult;
import com.microsoft.identity.common.internal.telemetry.CliTelemInfo;
import com.microsoft.identity.common.internal.telemetry.Telemetry;
import com.microsoft.identity.common.internal.telemetry.events.CacheEndEvent;
import e.a.a.a.a;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.regex.Pattern;

public abstract class BaseController {
    public static final Set<String> DEFAULT_SCOPES;
    public static final String TAG = "BaseController";

    static {
        HashSet hashSet = new HashSet();
        DEFAULT_SCOPES = hashSet;
        hashSet.add(AuthenticationConstants.OAuth2Scopes.OPEN_ID_SCOPE);
        DEFAULT_SCOPES.add(AuthenticationConstants.OAuth2Scopes.OFFLINE_ACCESS_SCOPE);
        DEFAULT_SCOPES.add("profile");
    }

    public static void logExposedFieldsOfObject(String str, Object obj) {
        StringBuilder a = a.a(str, ":");
        a.append(obj.getClass().getSimpleName());
        Logger.info(a.toString(), ObjectMapper.serializeExposedFieldsOfObjectToJsonString(obj));
    }

    public static void logResult(String str, IResult iResult) {
        StringBuilder a = a.a(str, ":");
        a.append(iResult.getClass().getSimpleName());
        String sb = a.toString();
        if (iResult.getSuccess()) {
            Logger.info(sb, "Success Result");
            logExposedFieldsOfObject(sb, iResult.getSuccessResponse());
        } else {
            Logger.warn(sb, "Failure Result");
            if (iResult.getErrorResponse() != null) {
                if (iResult.getErrorResponse().getError() != null) {
                    StringBuilder a2 = a.a("Error: ");
                    a2.append(iResult.getErrorResponse().getError());
                    Logger.warn(sb, a2.toString());
                }
                if (iResult.getErrorResponse().getErrorDescription() != null) {
                    StringBuilder a3 = a.a("Description: ");
                    a3.append(iResult.getErrorResponse().getErrorDescription());
                    Logger.warnPII(sb, a3.toString());
                }
                logExposedFieldsOfObject(sb, iResult.getErrorResponse());
            }
        }
        if (iResult instanceof AuthorizationResult) {
            AuthorizationResult authorizationResult = (AuthorizationResult) iResult;
            if (authorizationResult.getAuthorizationStatus() != null) {
                StringBuilder a4 = a.a("Authorization Status: ");
                a4.append(authorizationResult.getAuthorizationStatus().toString());
                Logger.info(sb, a4.toString());
            }
        }
    }

    public boolean accessTokenIsNull(ICacheRecord iCacheRecord) {
        return iCacheRecord.getAccessToken() == null;
    }

    public abstract AcquireTokenResult acquireToken(AcquireTokenOperationParameters acquireTokenOperationParameters);

    public abstract AcquireTokenResult acquireTokenSilent(AcquireTokenSilentOperationParameters acquireTokenSilentOperationParameters);

    public void addDefaultScopes(OperationParameters operationParameters) {
        Set<String> scopes = operationParameters.getScopes();
        scopes.addAll(DEFAULT_SCOPES);
        scopes.removeAll(Arrays.asList(new String[]{"", null}));
        operationParameters.setScopes(scopes);
    }

    public abstract void completeAcquireToken(int i2, int i3, Intent intent);

    public ICacheRecord finalizeCacheRecordForResult(ICacheRecord iCacheRecord, AbstractAuthenticationScheme abstractAuthenticationScheme) {
        if (abstractAuthenticationScheme instanceof ITokenAuthenticationSchemeInternal) {
            iCacheRecord.getAccessToken().setSecret(((ITokenAuthenticationSchemeInternal) abstractAuthenticationScheme).getAccessTokenForScheme(iCacheRecord.getAccessToken().getSecret()));
        }
        return iCacheRecord;
    }

    public abstract List<ICacheRecord> getAccounts(OperationParameters operationParameters);

    public AuthorizationRequest getAuthorizationRequest(OAuth2Strategy oAuth2Strategy, OperationParameters operationParameters) {
        AuthorizationRequest.Builder createAuthorizationRequestBuilder = oAuth2Strategy.createAuthorizationRequestBuilder(operationParameters.getAccount());
        initializeAuthorizationRequestBuilder(createAuthorizationRequestBuilder, operationParameters);
        return createAuthorizationRequestBuilder.build();
    }

    public AccountRecord getCachedAccountRecord(AcquireTokenSilentOperationParameters acquireTokenSilentOperationParameters) {
        AccountRecord accountRecord;
        if (acquireTokenSilentOperationParameters.getAccount() != null) {
            boolean equalsIgnoreCase = Authority.B2C.equalsIgnoreCase(acquireTokenSilentOperationParameters.getAuthority().getAuthorityTypeString());
            String clientId = acquireTokenSilentOperationParameters.getClientId();
            String homeAccountId = acquireTokenSilentOperationParameters.getAccount().getHomeAccountId();
            String localAccountId = acquireTokenSilentOperationParameters.getAccount().getLocalAccountId();
            if (equalsIgnoreCase) {
                accountRecord = acquireTokenSilentOperationParameters.getTokenCache().getAccountByHomeAccountId((String) null, clientId, homeAccountId);
            } else {
                accountRecord = acquireTokenSilentOperationParameters.getTokenCache().getAccountByLocalAccountId((String) null, clientId, localAccountId);
            }
            if (accountRecord != null) {
                return accountRecord;
            }
            String str = TAG;
            Logger.info(str, "No accounts found for clientId [" + clientId + ", ]", (String) null);
            String str2 = TAG;
            Logger.errorPII(str2, "No accounts found for clientId, homeAccountId: [" + clientId + ", " + homeAccountId + "]", (Throwable) null);
            throw new ClientException("no_account_found", "No cached accounts found for the supplied homeAccountId");
        }
        throw new ClientException("no_account_found", "No cached accounts found for the supplied homeAccountId and clientId");
    }

    public abstract List<ICacheRecord> getCurrentAccount(OperationParameters operationParameters);

    public abstract boolean getDeviceMode(OperationParameters operationParameters);

    public boolean idTokenIsNull(ICacheRecord iCacheRecord, SdkType sdkType) {
        return (sdkType == SdkType.ADAL ? iCacheRecord.getV1IdToken() : iCacheRecord.getIdToken()) == null;
    }

    public final AuthorizationRequest.Builder initializeAuthorizationRequestBuilder(AuthorizationRequest.Builder builder, OperationParameters operationParameters) {
        UUID uuid;
        try {
            uuid = UUID.fromString((String) DiagnosticContext.getRequestContext().get("correlation_id"));
        } catch (IllegalArgumentException e2) {
            Logger.error(TAG, "correlation id from diagnostic context is not a UUID", e2);
            uuid = null;
        }
        builder.setClientId(operationParameters.getClientId()).setRedirectUri(operationParameters.getRedirectUri()).setCorrelationId(uuid);
        if (operationParameters instanceof AcquireTokenOperationParameters) {
            AcquireTokenOperationParameters acquireTokenOperationParameters = (AcquireTokenOperationParameters) operationParameters;
            if (acquireTokenOperationParameters.getAuthority() instanceof AzureActiveDirectoryAuthority) {
                AzureActiveDirectoryAuthority azureActiveDirectoryAuthority = (AzureActiveDirectoryAuthority) acquireTokenOperationParameters.getAuthority();
                ((MicrosoftAuthorizationRequest.Builder) builder).setAuthority(azureActiveDirectoryAuthority.getAuthorityURL()).setMultipleCloudAware(azureActiveDirectoryAuthority.mMultipleCloudsSupported).setSlice(azureActiveDirectoryAuthority.mSlice);
            }
            if (builder instanceof MicrosoftStsAuthorizationRequest.Builder) {
                ((MicrosoftStsAuthorizationRequest.Builder) builder).setTokenScope(TextUtils.join(" ", operationParameters.getScopes()));
            }
            if (acquireTokenOperationParameters.getExtraScopesToConsent() != null) {
                operationParameters.getScopes().addAll(acquireTokenOperationParameters.getExtraScopesToConsent());
            }
            builder.setLoginHint(acquireTokenOperationParameters.getLoginHint()).setExtraQueryParams(acquireTokenOperationParameters.getExtraQueryStringParameters()).setPrompt(acquireTokenOperationParameters.getOpenIdConnectPromptParameter().toString()).setClaims(operationParameters.getClaimsRequestJson()).setRequestHeaders(acquireTokenOperationParameters.getRequestHeaders()).setWebViewZoomEnabled(acquireTokenOperationParameters.isWebViewZoomEnabled()).setWebViewZoomControlsEnabled(acquireTokenOperationParameters.isWebViewZoomControlsEnabled());
            if (!StringExtensions.isNullOrBlank(acquireTokenOperationParameters.getLoginHint()) && acquireTokenOperationParameters.getOpenIdConnectPromptParameter() == OpenIdConnectPromptParameter.SELECT_ACCOUNT) {
                builder.setPrompt((String) null);
            }
        }
        builder.setScope(TextUtils.join(" ", operationParameters.getScopes()));
        return builder;
    }

    public boolean isMsaAccount(MicrosoftTokenResponse microsoftTokenResponse) {
        return AzureActiveDirectoryAudience.MSA_MEGA_TENANT_ID.equalsIgnoreCase(SchemaUtil.getTenantId(microsoftTokenResponse.getClientInfo(), microsoftTokenResponse.getIdToken()));
    }

    public boolean isRequestAuthorityRealmSameAsATRealm(Authority authority, AccessTokenRecord accessTokenRecord) {
        if (!(authority instanceof AzureActiveDirectoryAuthority)) {
            return true;
        }
        AzureActiveDirectoryAuthority azureActiveDirectoryAuthority = (AzureActiveDirectoryAuthority) authority;
        if (AzureActiveDirectoryAudience.isHomeTenantAlias(azureActiveDirectoryAuthority.getAudience().getTenantId())) {
            return accessTokenRecord.getHomeAccountId().split(Pattern.quote(CryptoConstants.ALIAS_SEPARATOR))[1].equalsIgnoreCase(accessTokenRecord.getRealm());
        }
        return azureActiveDirectoryAuthority.getAudience().getTenantUuidForAlias(authority.getAuthorityURL().toString()).equalsIgnoreCase(accessTokenRecord.getRealm());
    }

    public void logParameters(String str, Object obj) {
        StringBuilder a = a.a(str, ":");
        a.append(obj.getClass().getSimpleName());
        String sb = a.toString();
        if (Logger.getAllowPii()) {
            Logger.infoPII(sb, ObjectMapper.serializeObjectToJsonString(obj));
        } else {
            Logger.info(sb, ObjectMapper.serializeExposedFieldsOfObjectToJsonString(obj));
        }
    }

    public TokenResult performSilentTokenRequest(OAuth2Strategy oAuth2Strategy, AcquireTokenSilentOperationParameters acquireTokenSilentOperationParameters) {
        Logger.info(TAG + ":performSilentTokenRequest", "Requesting tokens...");
        HttpWebRequest.throwIfNetworkNotAvailable(acquireTokenSilentOperationParameters.getAppContext());
        Authority.KnownAuthorityResult knownAuthorityResult = Authority.getKnownAuthorityResult(acquireTokenSilentOperationParameters.getAuthority());
        if (knownAuthorityResult.getKnown()) {
            TokenRequest createRefreshTokenRequest = oAuth2Strategy.createRefreshTokenRequest(acquireTokenSilentOperationParameters.getAuthenticationScheme());
            createRefreshTokenRequest.setClientId(acquireTokenSilentOperationParameters.getClientId());
            createRefreshTokenRequest.setScope(TextUtils.join(" ", acquireTokenSilentOperationParameters.getScopes()));
            createRefreshTokenRequest.setRefreshToken(acquireTokenSilentOperationParameters.getRefreshToken().getSecret());
            if (createRefreshTokenRequest instanceof MicrosoftTokenRequest) {
                ((MicrosoftTokenRequest) createRefreshTokenRequest).setClaims(acquireTokenSilentOperationParameters.getClaimsRequestJson());
            }
            if (acquireTokenSilentOperationParameters.getSdkType() == SdkType.ADAL) {
                ((MicrosoftTokenRequest) createRefreshTokenRequest).setIdTokenVersion("1");
            }
            if (acquireTokenSilentOperationParameters instanceof BrokerAcquireTokenSilentOperationParameters) {
                ((MicrosoftTokenRequest) createRefreshTokenRequest).setBrokerVersion(((BrokerAcquireTokenSilentOperationParameters) acquireTokenSilentOperationParameters).getBrokerVersion());
            }
            if (!StringExtensions.isNullOrBlank(createRefreshTokenRequest.getScope())) {
                String a = a.a(new StringBuilder(), TAG, ":performSilentTokenRequest");
                StringBuilder a2 = a.a("Scopes: [");
                a2.append(createRefreshTokenRequest.getScope());
                a2.append("]");
                Logger.infoPII(a, a2.toString());
            }
            return oAuth2Strategy.requestToken(createRefreshTokenRequest);
        }
        throw knownAuthorityResult.getClientException();
    }

    public TokenResult performTokenRequest(OAuth2Strategy oAuth2Strategy, AuthorizationRequest authorizationRequest, AuthorizationResponse authorizationResponse, AcquireTokenOperationParameters acquireTokenOperationParameters) {
        HttpWebRequest.throwIfNetworkNotAvailable(acquireTokenOperationParameters.getAppContext());
        TokenRequest createTokenRequest = oAuth2Strategy.createTokenRequest(authorizationRequest, authorizationResponse, acquireTokenOperationParameters.getAuthenticationScheme());
        logExposedFieldsOfObject(TAG + ":performTokenRequest", createTokenRequest);
        TokenResult requestToken = oAuth2Strategy.requestToken(createTokenRequest);
        logResult(TAG, requestToken);
        return requestToken;
    }

    public boolean refreshTokenIsNull(ICacheRecord iCacheRecord) {
        return iCacheRecord.getRefreshToken() == null;
    }

    public abstract boolean removeAccount(OperationParameters operationParameters);

    public abstract boolean removeCurrentAccount(OperationParameters operationParameters);

    public void renewAccessToken(AcquireTokenSilentOperationParameters acquireTokenSilentOperationParameters, AcquireTokenResult acquireTokenResult, OAuth2TokenCache oAuth2TokenCache, OAuth2Strategy oAuth2Strategy, ICacheRecord iCacheRecord) {
        Logger.info(TAG + ":renewAccessToken", "Renewing access token...");
        acquireTokenSilentOperationParameters.setRefreshToken(iCacheRecord.getRefreshToken());
        logParameters(TAG, acquireTokenSilentOperationParameters);
        TokenResult performSilentTokenRequest = performSilentTokenRequest(oAuth2Strategy, acquireTokenSilentOperationParameters);
        acquireTokenResult.setTokenResult(performSilentTokenRequest);
        logResult(TAG + ":renewAccessToken", performSilentTokenRequest);
        if (performSilentTokenRequest.getSuccess()) {
            Logger.info(TAG + ":renewAccessToken", "Token request was successful");
            List<ICacheRecord> saveAndLoadAggregatedAccountData = oAuth2TokenCache.saveAndLoadAggregatedAccountData(oAuth2Strategy, getAuthorizationRequest(oAuth2Strategy, acquireTokenSilentOperationParameters), performSilentTokenRequest.getTokenResponse());
            LocalAuthenticationResult localAuthenticationResult = new LocalAuthenticationResult(finalizeCacheRecordForResult(saveAndLoadAggregatedAccountData.get(0), acquireTokenSilentOperationParameters.getAuthenticationScheme()), saveAndLoadAggregatedAccountData, SdkType.MSAL);
            if (performSilentTokenRequest.getCliTelemInfo() != null) {
                CliTelemInfo cliTelemInfo = performSilentTokenRequest.getCliTelemInfo();
                localAuthenticationResult.setSpeRing(cliTelemInfo.getSpeRing());
                localAuthenticationResult.setRefreshTokenAge(cliTelemInfo.getRefreshTokenAge());
                Telemetry.emit(new CacheEndEvent().putSpeInfo(performSilentTokenRequest.getCliTelemInfo().getSpeRing()));
            } else {
                Telemetry.emit(new CacheEndEvent());
            }
            acquireTokenResult.setLocalAuthenticationResult(localAuthenticationResult);
        }
    }

    public List<ICacheRecord> saveTokens(OAuth2Strategy oAuth2Strategy, AuthorizationRequest authorizationRequest, TokenResponse tokenResponse, OAuth2TokenCache oAuth2TokenCache) {
        Logger.info(TAG + ":saveTokens", "Saving tokens...");
        return oAuth2TokenCache.saveAndLoadAggregatedAccountData(oAuth2Strategy, authorizationRequest, tokenResponse);
    }
}
