package com.microsoft.identity.client.internal.controllers;

import android.content.Intent;
import android.text.TextUtils;
import com.microsoft.identity.common.adal.internal.net.HttpWebRequest;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.internal.authorities.Authority;
import com.microsoft.identity.common.internal.authscheme.AbstractAuthenticationScheme;
import com.microsoft.identity.common.internal.cache.ICacheRecord;
import com.microsoft.identity.common.internal.controllers.BaseController;
import com.microsoft.identity.common.internal.dto.AccountRecord;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationRequest;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationResult;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationStatus;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationStrategy;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2Strategy;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2StrategyParameters;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2TokenCache;
import com.microsoft.identity.common.internal.providers.oauth2.TokenResult;
import com.microsoft.identity.common.internal.request.AcquireTokenOperationParameters;
import com.microsoft.identity.common.internal.request.AcquireTokenSilentOperationParameters;
import com.microsoft.identity.common.internal.request.OperationParameters;
import com.microsoft.identity.common.internal.request.SdkType;
import com.microsoft.identity.common.internal.result.AcquireTokenResult;
import com.microsoft.identity.common.internal.result.LocalAuthenticationResult;
import com.microsoft.identity.common.internal.telemetry.Telemetry;
import com.microsoft.identity.common.internal.telemetry.TelemetryEventStrings;
import com.microsoft.identity.common.internal.telemetry.events.ApiEndEvent;
import com.microsoft.identity.common.internal.telemetry.events.ApiStartEvent;
import com.microsoft.identity.common.internal.ui.AuthorizationStrategyFactory;
import e.a.a.a.a;
import java.util.List;

public class LocalMSALController extends BaseController {
    public static final String TAG = "LocalMSALController";
    public AuthorizationRequest mAuthorizationRequest = null;
    public AuthorizationStrategy mAuthorizationStrategy = null;

    private AuthorizationResult performAuthorizationRequest(OAuth2Strategy oAuth2Strategy, AcquireTokenOperationParameters acquireTokenOperationParameters) {
        HttpWebRequest.throwIfNetworkNotAvailable(acquireTokenOperationParameters.getAppContext());
        this.mAuthorizationStrategy = AuthorizationStrategyFactory.getInstance().getAuthorizationStrategy(acquireTokenOperationParameters);
        AuthorizationRequest authorizationRequest = getAuthorizationRequest(oAuth2Strategy, acquireTokenOperationParameters);
        this.mAuthorizationRequest = authorizationRequest;
        return oAuth2Strategy.requestAuthorization(authorizationRequest, this.mAuthorizationStrategy).get();
    }

    public AcquireTokenResult acquireToken(AcquireTokenOperationParameters acquireTokenOperationParameters) {
        Logger.verbose(TAG + ":acquireToken", "Acquiring token...");
        Telemetry.emit(new ApiStartEvent().putProperties(acquireTokenOperationParameters).putApiId(TelemetryEventStrings.Api.LOCAL_ACQUIRE_TOKEN_INTERACTIVE));
        AcquireTokenResult acquireTokenResult = new AcquireTokenResult();
        acquireTokenOperationParameters.validate();
        addDefaultScopes(acquireTokenOperationParameters);
        logParameters(TAG, acquireTokenOperationParameters);
        HttpWebRequest.throwIfNetworkNotAvailable(acquireTokenOperationParameters.getAppContext());
        Authority.KnownAuthorityResult knownAuthorityResult = Authority.getKnownAuthorityResult(acquireTokenOperationParameters.getAuthority());
        if (knownAuthorityResult.getKnown()) {
            OAuth2StrategyParameters oAuth2StrategyParameters = new OAuth2StrategyParameters();
            oAuth2StrategyParameters.setContext(acquireTokenOperationParameters.getAppContext());
            OAuth2Strategy createOAuth2Strategy = acquireTokenOperationParameters.getAuthority().createOAuth2Strategy(oAuth2StrategyParameters);
            AuthorizationResult performAuthorizationRequest = performAuthorizationRequest(createOAuth2Strategy, acquireTokenOperationParameters);
            acquireTokenResult.setAuthorizationResult(performAuthorizationRequest);
            BaseController.logResult(TAG, performAuthorizationRequest);
            if (performAuthorizationRequest.getAuthorizationStatus().equals(AuthorizationStatus.SUCCESS)) {
                TokenResult performTokenRequest = performTokenRequest(createOAuth2Strategy, this.mAuthorizationRequest, performAuthorizationRequest.getAuthorizationResponse(), acquireTokenOperationParameters);
                acquireTokenResult.setTokenResult(performTokenRequest);
                if (performTokenRequest != null && performTokenRequest.getSuccess()) {
                    List<ICacheRecord> saveTokens = saveTokens(createOAuth2Strategy, this.mAuthorizationRequest, performTokenRequest.getTokenResponse(), acquireTokenOperationParameters.getTokenCache());
                    acquireTokenResult.setLocalAuthenticationResult(new LocalAuthenticationResult(finalizeCacheRecordForResult(saveTokens.get(0), acquireTokenOperationParameters.getAuthenticationScheme()), saveTokens, SdkType.MSAL));
                }
            }
            Telemetry.emit(new ApiEndEvent().putResult(acquireTokenResult).putApiId(TelemetryEventStrings.Api.LOCAL_ACQUIRE_TOKEN_INTERACTIVE));
            return acquireTokenResult;
        }
        Telemetry.emit(new ApiEndEvent().putException(knownAuthorityResult.getClientException()).putApiId(TelemetryEventStrings.Api.LOCAL_ACQUIRE_TOKEN_INTERACTIVE));
        throw knownAuthorityResult.getClientException();
    }

    public AcquireTokenResult acquireTokenSilent(AcquireTokenSilentOperationParameters acquireTokenSilentOperationParameters) {
        Logger.verbose(TAG + ":acquireTokenSilent", "Acquiring token silently...");
        Telemetry.emit(new ApiStartEvent().putProperties(acquireTokenSilentOperationParameters).putApiId(TelemetryEventStrings.Api.LOCAL_ACQUIRE_TOKEN_SILENT));
        AcquireTokenResult acquireTokenResult = new AcquireTokenResult();
        acquireTokenSilentOperationParameters.validate();
        addDefaultScopes(acquireTokenSilentOperationParameters);
        OAuth2TokenCache tokenCache = acquireTokenSilentOperationParameters.getTokenCache();
        AccountRecord cachedAccountRecord = getCachedAccountRecord(acquireTokenSilentOperationParameters);
        AbstractAuthenticationScheme authenticationScheme = acquireTokenSilentOperationParameters.getAuthenticationScheme();
        OAuth2StrategyParameters oAuth2StrategyParameters = new OAuth2StrategyParameters();
        oAuth2StrategyParameters.setContext(acquireTokenSilentOperationParameters.getAppContext());
        OAuth2Strategy createOAuth2Strategy = acquireTokenSilentOperationParameters.getAuthority().createOAuth2Strategy(oAuth2StrategyParameters);
        List<ICacheRecord> loadWithAggregatedAccountData = tokenCache.loadWithAggregatedAccountData(acquireTokenSilentOperationParameters.getClientId(), TextUtils.join(" ", acquireTokenSilentOperationParameters.getScopes()), cachedAccountRecord, authenticationScheme);
        ICacheRecord iCacheRecord = loadWithAggregatedAccountData.get(0);
        if (accessTokenIsNull(iCacheRecord) || refreshTokenIsNull(iCacheRecord) || acquireTokenSilentOperationParameters.getForceRefresh() || !isRequestAuthorityRealmSameAsATRealm(acquireTokenSilentOperationParameters.getAuthority(), iCacheRecord.getAccessToken()) || !createOAuth2Strategy.validateCachedResult(authenticationScheme, iCacheRecord)) {
            if (!refreshTokenIsNull(iCacheRecord)) {
                a.b(new StringBuilder(), TAG, ":acquireTokenSilent", "No access token found, but RT is available.");
                renewAccessToken(acquireTokenSilentOperationParameters, acquireTokenResult, tokenCache, createOAuth2Strategy, iCacheRecord);
            } else {
                ClientException clientException = new ClientException("no_tokens_found", "No refresh token was found. ");
                Telemetry.emit(new ApiEndEvent().putException(clientException).putApiId(TelemetryEventStrings.Api.LOCAL_ACQUIRE_TOKEN_SILENT));
                throw clientException;
            }
        } else if (iCacheRecord.getAccessToken().isExpired()) {
            Logger.warn(TAG + ":acquireTokenSilent", "Access token is expired. Removing from cache...");
            tokenCache.removeCredential(iCacheRecord.getAccessToken());
            a.b(new StringBuilder(), TAG, ":acquireTokenSilent", "Renewing access token...");
            renewAccessToken(acquireTokenSilentOperationParameters, acquireTokenResult, tokenCache, createOAuth2Strategy, iCacheRecord);
        } else {
            Logger.verbose(TAG + ":acquireTokenSilent", "Returning silent result");
            acquireTokenResult.setLocalAuthenticationResult(new LocalAuthenticationResult(finalizeCacheRecordForResult(iCacheRecord, acquireTokenSilentOperationParameters.getAuthenticationScheme()), loadWithAggregatedAccountData, SdkType.MSAL));
        }
        Telemetry.emit(new ApiEndEvent().putResult(acquireTokenResult).putApiId(TelemetryEventStrings.Api.LOCAL_ACQUIRE_TOKEN_SILENT));
        return acquireTokenResult;
    }

    public void completeAcquireToken(int i2, int i3, Intent intent) {
        Logger.verbose(TAG + ":completeAcquireToken", "Completing acquire token...");
        Telemetry.emit(new ApiStartEvent().putApiId(TelemetryEventStrings.Api.LOCAL_COMPLETE_ACQUIRE_TOKEN_INTERACTIVE).put(TelemetryEventStrings.Key.RESULT_CODE, String.valueOf(i3)).put(TelemetryEventStrings.Key.REQUEST_CODE, String.valueOf(i2)));
        this.mAuthorizationStrategy.completeAuthorization(i2, i3, intent);
        Telemetry.emit(new ApiEndEvent().putApiId(TelemetryEventStrings.Api.LOCAL_COMPLETE_ACQUIRE_TOKEN_INTERACTIVE));
    }

    public List<ICacheRecord> getAccounts(OperationParameters operationParameters) {
        Telemetry.emit(new ApiStartEvent().putProperties(operationParameters).putApiId(TelemetryEventStrings.Api.LOCAL_GET_ACCOUNTS));
        List<ICacheRecord> accountsWithAggregatedAccountData = operationParameters.getTokenCache().getAccountsWithAggregatedAccountData((String) null, operationParameters.getClientId());
        Telemetry.emit(new ApiEndEvent().putApiId(TelemetryEventStrings.Api.LOCAL_GET_ACCOUNTS).put(TelemetryEventStrings.Key.ACCOUNTS_NUMBER, Integer.toString(accountsWithAggregatedAccountData.size())).put(TelemetryEventStrings.Key.IS_SUCCESSFUL, "true"));
        return accountsWithAggregatedAccountData;
    }

    public List<ICacheRecord> getCurrentAccount(OperationParameters operationParameters) {
        return getAccounts(operationParameters);
    }

    public boolean getDeviceMode(OperationParameters operationParameters) {
        a.c(new StringBuilder(), TAG, ":getDeviceMode", "LocalMSALController is not eligible to use the broker. Do not check sharedDevice mode and return false immediately.");
        return false;
    }

    public boolean removeAccount(OperationParameters operationParameters) {
        Telemetry.emit(new ApiStartEvent().putProperties(operationParameters).putApiId(TelemetryEventStrings.Api.LOCAL_REMOVE_ACCOUNT));
        String str = null;
        String realm = operationParameters.getAccount() != null ? operationParameters.getAccount().getRealm() : null;
        OAuth2TokenCache tokenCache = operationParameters.getTokenCache();
        String environment = operationParameters.getAccount() == null ? null : operationParameters.getAccount().getEnvironment();
        String clientId = operationParameters.getClientId();
        if (operationParameters.getAccount() != null) {
            str = operationParameters.getAccount().getHomeAccountId();
        }
        boolean z = !tokenCache.removeAccount(environment, clientId, str, realm).isEmpty();
        Telemetry.emit(new ApiEndEvent().put(TelemetryEventStrings.Key.IS_SUCCESSFUL, String.valueOf(z)).putApiId(TelemetryEventStrings.Api.LOCAL_REMOVE_ACCOUNT));
        return z;
    }

    public boolean removeCurrentAccount(OperationParameters operationParameters) {
        return removeAccount(operationParameters);
    }
}
