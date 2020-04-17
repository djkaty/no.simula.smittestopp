package com.microsoft.identity.client.internal.controllers;

import android.content.Context;
import android.content.pm.PackageManager;
import com.microsoft.identity.client.AcquireTokenParameters;
import com.microsoft.identity.client.AcquireTokenSilentParameters;
import com.microsoft.identity.client.IAccount;
import com.microsoft.identity.client.IClaimable;
import com.microsoft.identity.client.ITenantProfile;
import com.microsoft.identity.client.MultiTenantAccount;
import com.microsoft.identity.client.Prompt;
import com.microsoft.identity.client.PublicClientApplication;
import com.microsoft.identity.client.PublicClientApplicationConfiguration;
import com.microsoft.identity.client.claims.ClaimsRequest;
import com.microsoft.identity.client.claims.RequestedClaimAdditionalInformation;
import com.microsoft.identity.client.exception.MsalClientException;
import com.microsoft.identity.client.internal.IntuneAcquireTokenParameters;
import com.microsoft.identity.common.internal.authorities.Authority;
import com.microsoft.identity.common.internal.authorities.AzureActiveDirectoryAuthority;
import com.microsoft.identity.common.internal.authorities.AzureActiveDirectoryB2CAuthority;
import com.microsoft.identity.common.internal.authscheme.AuthenticationSchemeFactory;
import com.microsoft.identity.common.internal.cache.SchemaUtil;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2TokenCache;
import com.microsoft.identity.common.internal.providers.oauth2.OpenIdConnectPromptParameter;
import com.microsoft.identity.common.internal.request.AcquireTokenOperationParameters;
import com.microsoft.identity.common.internal.request.AcquireTokenSilentOperationParameters;
import com.microsoft.identity.common.internal.request.OperationParameters;
import com.microsoft.identity.common.internal.ui.AuthorizationAgent;
import com.microsoft.identity.common.internal.util.StringUtil;
import e.a.a.a.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;

public class OperationParametersAdapter {
    public static final String CLIENT_CAPABILITIES_CLAIM = "XMS_CC";
    public static final String TAG = "OperationParametersAdapter";

    public static ClaimsRequest addClientCapabilitiesToClaimsRequest(ClaimsRequest claimsRequest, String str) {
        if (claimsRequest == null) {
            claimsRequest = new ClaimsRequest();
        }
        if (str != null) {
            RequestedClaimAdditionalInformation requestedClaimAdditionalInformation = new RequestedClaimAdditionalInformation();
            requestedClaimAdditionalInformation.setValues(new ArrayList(Arrays.asList(str.split(","))));
            claimsRequest.requestClaimInAccessToken(CLIENT_CAPABILITIES_CLAIM, requestedClaimAdditionalInformation);
        }
        return claimsRequest;
    }

    public static AcquireTokenOperationParameters createAcquireTokenOperationParameters(AcquireTokenParameters acquireTokenParameters, PublicClientApplicationConfiguration publicClientApplicationConfiguration, OAuth2TokenCache oAuth2TokenCache) {
        AcquireTokenOperationParameters acquireTokenOperationParameters = new AcquireTokenOperationParameters();
        acquireTokenOperationParameters.setAuthenticationScheme(AuthenticationSchemeFactory.createScheme(acquireTokenParameters.getAuthenticationScheme()));
        if (!StringUtil.isEmpty(acquireTokenParameters.getAuthority())) {
            acquireTokenOperationParameters.setAuthority(Authority.getAuthorityFromAuthorityUrl(acquireTokenParameters.getAuthority()));
        } else if (acquireTokenParameters.getAccount() != null) {
            acquireTokenOperationParameters.setAuthority(getRequestAuthority(publicClientApplicationConfiguration));
        } else {
            acquireTokenOperationParameters.setAuthority(publicClientApplicationConfiguration.getDefaultAuthority());
        }
        acquireTokenOperationParameters.setBrowserSafeList(publicClientApplicationConfiguration.getBrowserSafeList());
        if (acquireTokenOperationParameters.getAuthority() instanceof AzureActiveDirectoryAuthority) {
            ((AzureActiveDirectoryAuthority) acquireTokenOperationParameters.getAuthority()).setMultipleCloudsSupported(publicClientApplicationConfiguration.getMultipleCloudsSupported().booleanValue());
            acquireTokenOperationParameters.setClaimsRequest(ClaimsRequest.getJsonStringFromClaimsRequest(addClientCapabilitiesToClaimsRequest(acquireTokenParameters.getClaimsRequest(), publicClientApplicationConfiguration.getClientCapabilities())));
            if (acquireTokenParameters.getClaimsRequest() != null) {
                acquireTokenOperationParameters.setForceRefresh(true);
            }
        } else {
            acquireTokenOperationParameters.setClaimsRequest(ClaimsRequest.getJsonStringFromClaimsRequest(acquireTokenParameters.getClaimsRequest()));
        }
        StringBuilder a = a.a("Using authority: [");
        a.append(acquireTokenOperationParameters.getAuthority().getAuthorityUri());
        a.append("]");
        Logger.verbosePII(":createAcquireTokenOperationParameters", a.toString());
        acquireTokenOperationParameters.setScopes(new HashSet(acquireTokenParameters.getScopes()));
        acquireTokenOperationParameters.setClientId(publicClientApplicationConfiguration.getClientId());
        acquireTokenOperationParameters.setRedirectUri(publicClientApplicationConfiguration.getRedirectUri());
        acquireTokenOperationParameters.setActivity(acquireTokenParameters.getActivity());
        acquireTokenOperationParameters.setFragment(acquireTokenParameters.getFragment());
        if (acquireTokenParameters.getAccount() != null) {
            acquireTokenOperationParameters.setLoginHint(getUsername(acquireTokenParameters.getAccount()));
            acquireTokenOperationParameters.setAccount(acquireTokenParameters.getAccountRecord());
        } else {
            acquireTokenOperationParameters.setLoginHint(acquireTokenParameters.getLoginHint());
        }
        acquireTokenOperationParameters.setTokenCache(oAuth2TokenCache);
        acquireTokenOperationParameters.setExtraQueryStringParameters(acquireTokenParameters.getExtraQueryStringParameters());
        acquireTokenOperationParameters.setExtraScopesToConsent(acquireTokenParameters.getExtraScopesToConsent());
        acquireTokenOperationParameters.setAppContext(publicClientApplicationConfiguration.getAppContext());
        if (publicClientApplicationConfiguration.getAuthorizationAgent() != null) {
            acquireTokenOperationParameters.setAuthorizationAgent(publicClientApplicationConfiguration.getAuthorizationAgent());
        } else {
            acquireTokenOperationParameters.setAuthorizationAgent(AuthorizationAgent.DEFAULT);
        }
        if (acquireTokenParameters instanceof IntuneAcquireTokenParameters) {
            boolean isBrokerBrowserSupportEnabled = ((IntuneAcquireTokenParameters) acquireTokenParameters).isBrokerBrowserSupportEnabled();
            String a2 = a.a(new StringBuilder(), TAG, ":createAcquireTokenOperationParameters");
            Logger.info(a2, " IntuneAcquireTokenParameters instance, broker browser enabled : " + isBrokerBrowserSupportEnabled);
            acquireTokenOperationParameters.setBrokerBrowserSupportEnabled(isBrokerBrowserSupportEnabled);
        }
        if (acquireTokenParameters.getPrompt() == null || acquireTokenParameters.getPrompt() == Prompt.WHEN_REQUIRED) {
            acquireTokenOperationParameters.setOpenIdConnectPromptParameter(OpenIdConnectPromptParameter.SELECT_ACCOUNT);
        } else {
            acquireTokenOperationParameters.setOpenIdConnectPromptParameter(acquireTokenParameters.getPrompt().toOpenIdConnectPromptParameter());
        }
        Context appContext = publicClientApplicationConfiguration.getAppContext();
        acquireTokenOperationParameters.setApplicationName(appContext.getPackageName());
        acquireTokenOperationParameters.setApplicationVersion(getPackageVersion(appContext));
        acquireTokenOperationParameters.setSdkVersion(PublicClientApplication.getSdkVersion());
        acquireTokenOperationParameters.setWebViewZoomControlsEnabled(publicClientApplicationConfiguration.isWebViewZoomControlsEnabled());
        acquireTokenOperationParameters.setWebViewZoomEnabled(publicClientApplicationConfiguration.isWebViewZoomEnabled());
        return acquireTokenOperationParameters;
    }

    public static AcquireTokenSilentOperationParameters createAcquireTokenSilentOperationParameters(AcquireTokenSilentParameters acquireTokenSilentParameters, PublicClientApplicationConfiguration publicClientApplicationConfiguration, OAuth2TokenCache oAuth2TokenCache) {
        Context appContext = publicClientApplicationConfiguration.getAppContext();
        Authority authorityFromAuthorityUrl = Authority.getAuthorityFromAuthorityUrl(acquireTokenSilentParameters.getAuthority());
        ClaimsRequest claimsRequest = acquireTokenSilentParameters.getClaimsRequest();
        String jsonStringFromClaimsRequest = ClaimsRequest.getJsonStringFromClaimsRequest(claimsRequest);
        AcquireTokenSilentOperationParameters acquireTokenSilentOperationParameters = new AcquireTokenSilentOperationParameters();
        acquireTokenSilentOperationParameters.setAppContext(publicClientApplicationConfiguration.getAppContext());
        acquireTokenSilentOperationParameters.setScopes(new HashSet(acquireTokenSilentParameters.getScopes()));
        acquireTokenSilentOperationParameters.setClientId(publicClientApplicationConfiguration.getClientId());
        acquireTokenSilentOperationParameters.setTokenCache(oAuth2TokenCache);
        acquireTokenSilentOperationParameters.setAuthority(authorityFromAuthorityUrl);
        acquireTokenSilentOperationParameters.setApplicationName(appContext.getPackageName());
        acquireTokenSilentOperationParameters.setApplicationVersion(getPackageVersion(appContext));
        acquireTokenSilentOperationParameters.setSdkVersion(PublicClientApplication.getSdkVersion());
        acquireTokenSilentOperationParameters.setForceRefresh(acquireTokenSilentParameters.getForceRefresh());
        acquireTokenSilentOperationParameters.setRedirectUri(publicClientApplicationConfiguration.getRedirectUri());
        acquireTokenSilentOperationParameters.setAccount(acquireTokenSilentParameters.getAccountRecord());
        acquireTokenSilentOperationParameters.setAuthenticationScheme(AuthenticationSchemeFactory.createScheme(acquireTokenSilentParameters.getAuthenticationScheme()));
        if (acquireTokenSilentOperationParameters.getAuthority() instanceof AzureActiveDirectoryAuthority) {
            ((AzureActiveDirectoryAuthority) acquireTokenSilentOperationParameters.getAuthority()).setMultipleCloudsSupported(publicClientApplicationConfiguration.getMultipleCloudsSupported().booleanValue());
            ClaimsRequest addClientCapabilitiesToClaimsRequest = addClientCapabilitiesToClaimsRequest(claimsRequest, publicClientApplicationConfiguration.getClientCapabilities());
            if (claimsRequest != null) {
                acquireTokenSilentOperationParameters.setForceRefresh(true);
            }
            jsonStringFromClaimsRequest = ClaimsRequest.getJsonStringFromClaimsRequest(addClientCapabilitiesToClaimsRequest);
        }
        acquireTokenSilentOperationParameters.setClaimsRequest(jsonStringFromClaimsRequest);
        return acquireTokenSilentOperationParameters;
    }

    public static OperationParameters createOperationParameters(PublicClientApplicationConfiguration publicClientApplicationConfiguration, OAuth2TokenCache oAuth2TokenCache) {
        OperationParameters operationParameters = new OperationParameters();
        operationParameters.setAppContext(publicClientApplicationConfiguration.getAppContext());
        operationParameters.setTokenCache(oAuth2TokenCache);
        operationParameters.setBrowserSafeList(publicClientApplicationConfiguration.getBrowserSafeList());
        operationParameters.setIsSharedDevice(publicClientApplicationConfiguration.getIsSharedDevice());
        operationParameters.setClientId(publicClientApplicationConfiguration.getClientId());
        operationParameters.setRedirectUri(publicClientApplicationConfiguration.getRedirectUri());
        operationParameters.setAuthority(publicClientApplicationConfiguration.getDefaultAuthority());
        operationParameters.setApplicationName(publicClientApplicationConfiguration.getAppContext().getPackageName());
        operationParameters.setApplicationVersion(getPackageVersion(publicClientApplicationConfiguration.getAppContext()));
        operationParameters.setSdkVersion(PublicClientApplication.getSdkVersion());
        operationParameters.setRequiredBrokerProtocolVersion(publicClientApplicationConfiguration.getRequiredBrokerProtocolVersion());
        return operationParameters;
    }

    public static String getPackageVersion(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static Authority getRequestAuthority(PublicClientApplicationConfiguration publicClientApplicationConfiguration) {
        String url = publicClientApplicationConfiguration.getDefaultAuthority() instanceof AzureActiveDirectoryB2CAuthority ? publicClientApplicationConfiguration.getDefaultAuthority().getAuthorityURL().toString() : null;
        if (url == null) {
            return publicClientApplicationConfiguration.getDefaultAuthority();
        }
        return Authority.getAuthorityFromAuthorityUrl(url);
    }

    public static String getUsername(IAccount iAccount) {
        if (iAccount.getClaims() != null) {
            return SchemaUtil.getDisplayableId(iAccount.getClaims());
        }
        for (Map.Entry next : ((MultiTenantAccount) iAccount).getTenantProfiles().entrySet()) {
            if (((ITenantProfile) next.getValue()).getClaims() != null) {
                String displayableId = SchemaUtil.getDisplayableId(((ITenantProfile) next.getValue()).getClaims());
                if (!SchemaUtil.MISSING_FROM_THE_TOKEN_RESPONSE.equalsIgnoreCase(displayableId)) {
                    return displayableId;
                }
            }
        }
        return null;
    }

    public static boolean isAccountHomeTenant(Map<String, ?> map, String str) {
        if (map == null || map.isEmpty()) {
            return false;
        }
        return map.get("tid").equals(str);
    }

    public static void validateClaimsExistForTenant(String str, IClaimable iClaimable) {
        if (iClaimable == null || iClaimable.getClaims() == null) {
            String a = a.a("Attempting to authorize for tenant: ", str, " but no matching account was found.");
            Logger.warn(TAG + ":validateClaimsExistForTenant", a);
            throw new MsalClientException(a);
        }
    }
}
