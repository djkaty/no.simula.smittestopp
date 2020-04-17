package com.microsoft.identity.common.internal.request;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.microsoft.identity.client.internal.MsalUtils;
import com.microsoft.identity.common.adal.internal.AuthenticationConstants;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.internal.authorities.Authority;
import com.microsoft.identity.common.internal.authorities.AzureActiveDirectoryAuthority;
import com.microsoft.identity.common.internal.authorities.Environment;
import com.microsoft.identity.common.internal.authscheme.AbstractAuthenticationScheme;
import com.microsoft.identity.common.internal.authscheme.BearerAuthenticationSchemeInternal;
import com.microsoft.identity.common.internal.broker.BrokerRequest;
import com.microsoft.identity.common.internal.broker.BrokerValidator;
import com.microsoft.identity.common.internal.logging.DiagnosticContext;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectory;
import com.microsoft.identity.common.internal.ui.AuthorizationAgent;
import com.microsoft.identity.common.internal.ui.browser.BrowserDescriptor;
import com.microsoft.identity.common.internal.ui.browser.BrowserSelector;
import com.microsoft.identity.common.internal.util.QueryParamsAdapter;
import com.microsoft.identity.common.internal.util.StringUtil;
import e.a.a.a.a;
import e.c.c.e;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

public class MsalBrokerRequestAdapter implements IBrokerRequestAdapter {
    public static final String TAG = "com.microsoft.identity.common.internal.request.MsalBrokerRequestAdapter";
    public static Gson sRequestAdapterGsonInstance;

    static {
        e eVar = new e();
        eVar.a(AbstractAuthenticationScheme.class, new AuthenticationSchemeTypeAdapter());
        sRequestAdapterGsonInstance = eVar.a();
    }

    public static AbstractAuthenticationScheme getAuthenticationScheme(BrokerRequest brokerRequest) {
        AbstractAuthenticationScheme authenticationScheme = brokerRequest.getAuthenticationScheme();
        return authenticationScheme == null ? new BearerAuthenticationSchemeInternal() : authenticationScheme;
    }

    public static List<BrowserDescriptor> getBrowserSafeListForBroker() {
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        hashSet.add("7fmduHKTdHHrlMvldlEqAIlSfii1tl35bxj1OXN5Ve8c4lU6URVu4xtSHc3BVZxS6WWJnxMDhIfQN0N0K2NDJg==");
        arrayList.add(new BrowserDescriptor(MsalUtils.CHROME_PACKAGE, (Set<String>) hashSet, (String) null, (String) null));
        return arrayList;
    }

    private boolean getMultipleCloudsSupported(OperationParameters operationParameters) {
        if (operationParameters.getAuthority() instanceof AzureActiveDirectoryAuthority) {
            return ((AzureActiveDirectoryAuthority) operationParameters.getAuthority()).getMultipleCloudsSupported();
        }
        return false;
    }

    private String getRedirectUri(OperationParameters operationParameters) {
        if (TextUtils.isEmpty(operationParameters.getRedirectUri())) {
            return BrokerValidator.getBrokerRedirectUri(operationParameters.getAppContext(), operationParameters.getApplicationName());
        }
        return operationParameters.getRedirectUri();
    }

    private Set<String> getScopesAsSet(String str) {
        if (TextUtils.isEmpty(str)) {
            return new HashSet();
        }
        return new HashSet(Arrays.asList(str.split(" ")));
    }

    private boolean isCallingPackageIntune(String str) {
        String a = a.a(new StringBuilder(), TAG, ":isCallingPackageIntune");
        Logger.info(a, "Calling package name : " + str);
        return "com.microsoft.intune".equalsIgnoreCase(str);
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x0127  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.microsoft.identity.common.internal.request.BrokerAcquireTokenOperationParameters brokerInteractiveParametersFromActivity(android.app.Activity r6) {
        /*
            r5 = this;
            java.lang.String r0 = TAG
            java.lang.String r1 = "Constructing BrokerAcquireTokenOperationParameters from calling activity"
            com.microsoft.identity.common.internal.logging.Logger.info(r0, r1)
            com.microsoft.identity.common.internal.request.BrokerAcquireTokenOperationParameters r0 = new com.microsoft.identity.common.internal.request.BrokerAcquireTokenOperationParameters
            r0.<init>()
            android.content.Intent r1 = r6.getIntent()
            com.google.gson.Gson r2 = sRequestAdapterGsonInstance
            java.lang.String r3 = "broker_request_v2"
            java.lang.String r3 = r1.getStringExtra(r3)
            java.lang.Class<com.microsoft.identity.common.internal.broker.BrokerRequest> r4 = com.microsoft.identity.common.internal.broker.BrokerRequest.class
            java.lang.Object r2 = r2.a((java.lang.String) r3, r4)
            com.microsoft.identity.common.internal.broker.BrokerRequest r2 = (com.microsoft.identity.common.internal.broker.BrokerRequest) r2
            com.microsoft.identity.common.internal.authscheme.AbstractAuthenticationScheme r3 = getAuthenticationScheme(r2)
            r0.setAuthenticationScheme(r3)
            r0.setActivity(r6)
            android.content.Context r6 = r6.getApplicationContext()
            r0.setAppContext(r6)
            com.microsoft.identity.common.internal.request.SdkType r6 = com.microsoft.identity.common.internal.request.SdkType.MSAL
            r0.setSdkType(r6)
            java.lang.String r6 = "caller.info.uid"
            r3 = 0
            int r6 = r1.getIntExtra(r6, r3)
            r0.setCallerUId(r6)
            java.lang.String r6 = r2.getApplicationName()
            r0.setCallerPackageName(r6)
            java.lang.String r6 = r2.getApplicationVersion()
            r0.setCallerAppVersion(r6)
            java.util.ArrayList r6 = new java.util.ArrayList
            r6.<init>()
            java.lang.String r1 = r2.getExtraQueryStringParameter()
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 != 0) goto L_0x0068
            java.lang.String r6 = r2.getExtraQueryStringParameter()
            java.util.List r6 = com.microsoft.identity.common.internal.util.QueryParamsAdapter._fromJson(r6)
            r0.setExtraQueryStringParameters(r6)
        L_0x0068:
            java.lang.String r1 = r2.getAuthority()
            com.microsoft.identity.common.internal.authorities.AzureActiveDirectoryAuthority r6 = com.microsoft.identity.common.internal.request.AdalBrokerRequestAdapter.getRequestAuthorityWithExtraQP(r1, r6)
            if (r6 == 0) goto L_0x007c
            boolean r1 = r2.getMultipleCloudsSupported()
            r6.setMultipleCloudsSupported(r1)
            r0.setAuthority(r6)
        L_0x007c:
            java.lang.String r6 = r2.getScope()
            java.util.Set r6 = r5.getScopesAsSet(r6)
            r0.setScopes(r6)
            java.lang.String r6 = r2.getClientId()
            r0.setClientId(r6)
            java.lang.String r6 = r2.getRedirect()
            r0.setRedirectUri(r6)
            java.lang.String r6 = r2.getUserName()
            r0.setLoginHint(r6)
            java.lang.String r6 = r2.getCorrelationId()
            boolean r1 = android.text.TextUtils.isEmpty(r6)
            if (r1 == 0) goto L_0x00ae
            java.util.UUID r6 = java.util.UUID.randomUUID()
            java.lang.String r6 = r6.toString()
        L_0x00ae:
            r0.setCorrelationId(r6)
            java.lang.String r6 = r2.getClaims()
            r0.setClaimsRequest(r6)
            java.lang.String r6 = r2.getPrompt()
            if (r6 == 0) goto L_0x00c7
            java.lang.String r6 = r2.getPrompt()
            com.microsoft.identity.common.internal.providers.oauth2.OpenIdConnectPromptParameter r6 = com.microsoft.identity.common.internal.providers.oauth2.OpenIdConnectPromptParameter.valueOf(r6)
            goto L_0x00c9
        L_0x00c7:
            com.microsoft.identity.common.internal.providers.oauth2.OpenIdConnectPromptParameter r6 = com.microsoft.identity.common.internal.providers.oauth2.OpenIdConnectPromptParameter.NONE
        L_0x00c9:
            r0.setOpenIdConnectPromptParameter(r6)
            java.lang.String r6 = TAG
            java.lang.String r1 = "Authorization agent passed in by MSAL: "
            java.lang.StringBuilder r1 = e.a.a.a.a.a(r1)
            java.lang.String r3 = r2.getAuthorizationAgent()
            r1.append(r3)
            java.lang.String r1 = r1.toString()
            com.microsoft.identity.common.internal.logging.Logger.info(r6, r1)
            java.lang.String r6 = r2.getAuthorizationAgent()
            if (r6 == 0) goto L_0x0118
            java.lang.String r6 = r2.getAuthorizationAgent()
            com.microsoft.identity.common.internal.ui.AuthorizationAgent r1 = com.microsoft.identity.common.internal.ui.AuthorizationAgent.BROWSER
            java.lang.String r1 = "BROWSER"
            boolean r6 = r6.equalsIgnoreCase(r1)
            if (r6 == 0) goto L_0x0118
            java.lang.String r6 = r0.getCallerPackageName()
            boolean r6 = r5.isCallingPackageIntune(r6)
            if (r6 == 0) goto L_0x0118
            java.lang.String r6 = TAG
            java.lang.String r1 = "Setting Authorization Agent to Browser for Intune app"
            com.microsoft.identity.common.internal.logging.Logger.info(r6, r1)
            com.microsoft.identity.common.internal.ui.AuthorizationAgent r6 = com.microsoft.identity.common.internal.ui.AuthorizationAgent.BROWSER
            r0.setAuthorizationAgent(r6)
            r6 = 1
            r0.setBrokerBrowserSupportEnabled(r6)
            java.util.List r6 = getBrowserSafeListForBroker()
            r0.setBrowserSafeList(r6)
            goto L_0x011d
        L_0x0118:
            com.microsoft.identity.common.internal.ui.AuthorizationAgent r6 = com.microsoft.identity.common.internal.ui.AuthorizationAgent.WEBVIEW
            r0.setAuthorizationAgent(r6)
        L_0x011d:
            java.lang.String r6 = r2.getEnvironment()
            boolean r6 = android.text.TextUtils.isEmpty(r6)
            if (r6 != 0) goto L_0x0132
            java.lang.String r6 = r2.getEnvironment()
            com.microsoft.identity.common.internal.authorities.Environment r6 = com.microsoft.identity.common.internal.authorities.Environment.valueOf(r6)
            com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectory.setEnvironment(r6)
        L_0x0132:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.identity.common.internal.request.MsalBrokerRequestAdapter.brokerInteractiveParametersFromActivity(android.app.Activity):com.microsoft.identity.common.internal.request.BrokerAcquireTokenOperationParameters");
    }

    public BrokerRequest brokerRequestFromAcquireTokenParameters(AcquireTokenOperationParameters acquireTokenOperationParameters) {
        String str;
        Logger.info(TAG, "Constructing result bundle from AcquireTokenOperationParameters.");
        BrokerRequest.Builder multipleCloudsSupported = new BrokerRequest.Builder().authority(acquireTokenOperationParameters.getAuthority().getAuthorityURL().toString()).scope(TextUtils.join(" ", acquireTokenOperationParameters.getScopes())).redirect(getRedirectUri(acquireTokenOperationParameters)).clientId(acquireTokenOperationParameters.getClientId()).username(acquireTokenOperationParameters.getLoginHint()).extraQueryStringParameter(acquireTokenOperationParameters.getExtraQueryStringParameters() != null ? QueryParamsAdapter._toJson(acquireTokenOperationParameters.getExtraQueryStringParameters()) : null).prompt(acquireTokenOperationParameters.getOpenIdConnectPromptParameter().name()).claims(acquireTokenOperationParameters.getClaimsRequestJson()).forceRefresh(acquireTokenOperationParameters.getForceRefresh()).correlationId((String) DiagnosticContext.getRequestContext().get("correlation_id")).applicationName(acquireTokenOperationParameters.getApplicationName()).applicationVersion(acquireTokenOperationParameters.getApplicationVersion()).msalVersion(acquireTokenOperationParameters.getSdkVersion()).environment(AzureActiveDirectory.getEnvironment().name()).multipleCloudsSupported(getMultipleCloudsSupported(acquireTokenOperationParameters));
        if (acquireTokenOperationParameters.isBrokerBrowserSupportEnabled()) {
            AuthorizationAgent authorizationAgent = AuthorizationAgent.BROWSER;
            str = "BROWSER";
        } else {
            AuthorizationAgent authorizationAgent2 = AuthorizationAgent.WEBVIEW;
            str = "WEBVIEW";
        }
        return multipleCloudsSupported.authorizationAgent(str).authenticationScheme(acquireTokenOperationParameters.getAuthenticationScheme()).build();
    }

    public BrokerRequest brokerRequestFromSilentOperationParameters(AcquireTokenSilentOperationParameters acquireTokenSilentOperationParameters) {
        Logger.info(TAG, "Constructing result bundle from AcquireTokenSilentOperationParameters.");
        return new BrokerRequest.Builder().authority(acquireTokenSilentOperationParameters.getAuthority().getAuthorityURL().toString()).scope(TextUtils.join(" ", acquireTokenSilentOperationParameters.getScopes())).redirect(getRedirectUri(acquireTokenSilentOperationParameters)).clientId(acquireTokenSilentOperationParameters.getClientId()).homeAccountId(acquireTokenSilentOperationParameters.getAccount().getHomeAccountId()).localAccountId(acquireTokenSilentOperationParameters.getAccount().getLocalAccountId()).username(acquireTokenSilentOperationParameters.getAccount().getUsername()).claims(acquireTokenSilentOperationParameters.getClaimsRequestJson()).forceRefresh(acquireTokenSilentOperationParameters.getForceRefresh()).correlationId((String) DiagnosticContext.getRequestContext().get("correlation_id")).applicationName(acquireTokenSilentOperationParameters.getApplicationName()).applicationVersion(acquireTokenSilentOperationParameters.getApplicationVersion()).msalVersion(acquireTokenSilentOperationParameters.getSdkVersion()).environment(AzureActiveDirectory.getEnvironment().name()).multipleCloudsSupported(getMultipleCloudsSupported(acquireTokenSilentOperationParameters)).authenticationScheme(acquireTokenSilentOperationParameters.getAuthenticationScheme()).build();
    }

    public BrokerAcquireTokenSilentOperationParameters brokerSilentParametersFromBundle(Bundle bundle, Context context, Account account) {
        Logger.info(TAG, "Constructing BrokerAcquireTokenSilentOperationParameters from result bundle");
        BrokerRequest brokerRequest = (BrokerRequest) sRequestAdapterGsonInstance.a(bundle.getString(AuthenticationConstants.Broker.BROKER_REQUEST_V2), BrokerRequest.class);
        BrokerAcquireTokenSilentOperationParameters brokerAcquireTokenSilentOperationParameters = new BrokerAcquireTokenSilentOperationParameters();
        brokerAcquireTokenSilentOperationParameters.setAuthenticationScheme(getAuthenticationScheme(brokerRequest));
        brokerAcquireTokenSilentOperationParameters.setAppContext(context);
        brokerAcquireTokenSilentOperationParameters.setAccountManagerAccount(account);
        brokerAcquireTokenSilentOperationParameters.setSdkType(SdkType.MSAL);
        brokerAcquireTokenSilentOperationParameters.setCallerUId(bundle.getInt(AuthenticationConstants.Broker.CALLER_INFO_UID));
        brokerAcquireTokenSilentOperationParameters.setCallerPackageName(brokerRequest.getApplicationName());
        brokerAcquireTokenSilentOperationParameters.setCallerAppVersion(brokerRequest.getApplicationVersion());
        Authority authorityFromAuthorityUrl = Authority.getAuthorityFromAuthorityUrl(brokerRequest.getAuthority());
        if (authorityFromAuthorityUrl instanceof AzureActiveDirectoryAuthority) {
            ((AzureActiveDirectoryAuthority) authorityFromAuthorityUrl).setMultipleCloudsSupported(brokerRequest.getMultipleCloudsSupported());
        }
        brokerAcquireTokenSilentOperationParameters.setAuthority(authorityFromAuthorityUrl);
        String string = bundle.getString(brokerRequest.getCorrelationId());
        if (TextUtils.isEmpty(string)) {
            string = UUID.randomUUID().toString();
        }
        brokerAcquireTokenSilentOperationParameters.setCorrelationId(string);
        brokerAcquireTokenSilentOperationParameters.setScopes(getScopesAsSet(brokerRequest.getScope()));
        brokerAcquireTokenSilentOperationParameters.setRedirectUri(brokerRequest.getRedirect());
        brokerAcquireTokenSilentOperationParameters.setClientId(brokerRequest.getClientId());
        brokerAcquireTokenSilentOperationParameters.setForceRefresh(brokerRequest.getForceRefresh());
        brokerAcquireTokenSilentOperationParameters.setClaimsRequest(brokerRequest.getClaims());
        brokerAcquireTokenSilentOperationParameters.setLoginHint(brokerRequest.getUserName());
        brokerAcquireTokenSilentOperationParameters.setHomeAccountId(brokerRequest.getHomeAccountId());
        brokerAcquireTokenSilentOperationParameters.setLocalAccountId(brokerRequest.getLocalAccountId());
        if (!TextUtils.isEmpty(brokerRequest.getExtraQueryStringParameter())) {
            brokerAcquireTokenSilentOperationParameters.setExtraQueryStringParameters(QueryParamsAdapter._fromJson(brokerRequest.getExtraQueryStringParameter()));
        }
        if (!TextUtils.isEmpty(brokerRequest.getEnvironment())) {
            AzureActiveDirectory.setEnvironment(Environment.valueOf(brokerRequest.getEnvironment()));
        }
        return brokerAcquireTokenSilentOperationParameters;
    }

    public Bundle getRequestBundleForAcquireTokenSilent(AcquireTokenSilentOperationParameters acquireTokenSilentOperationParameters) {
        MsalBrokerRequestAdapter msalBrokerRequestAdapter = new MsalBrokerRequestAdapter();
        Bundle bundle = new Bundle();
        bundle.putString(AuthenticationConstants.Broker.BROKER_REQUEST_V2, sRequestAdapterGsonInstance.a((Object) msalBrokerRequestAdapter.brokerRequestFromSilentOperationParameters(acquireTokenSilentOperationParameters), (Type) BrokerRequest.class));
        bundle.putInt(AuthenticationConstants.Broker.CALLER_INFO_UID, acquireTokenSilentOperationParameters.getAppContext().getApplicationInfo().uid);
        return bundle;
    }

    public Bundle getRequestBundleForGetAccounts(OperationParameters operationParameters) {
        Bundle bundle = new Bundle();
        bundle.putString(AuthenticationConstants.Broker.ACCOUNT_CLIENTID_KEY, operationParameters.getClientId());
        bundle.putString(AuthenticationConstants.Broker.ACCOUNT_REDIRECT, operationParameters.getRedirectUri());
        return bundle;
    }

    public Bundle getRequestBundleForHello(OperationParameters operationParameters) {
        Bundle bundle = new Bundle();
        bundle.putString(AuthenticationConstants.Broker.CLIENT_ADVERTISED_MAXIMUM_BP_VERSION_KEY, AuthenticationConstants.Broker.BROKER_PROTOCOL_VERSION_CODE);
        if (!StringUtil.isEmpty(operationParameters.getRequiredBrokerProtocolVersion())) {
            bundle.putString(AuthenticationConstants.Broker.CLIENT_CONFIGURED_MINIMUM_BP_VERSION_KEY, operationParameters.getRequiredBrokerProtocolVersion());
        }
        return bundle;
    }

    public Bundle getRequestBundleForRemoveAccount(OperationParameters operationParameters) {
        Bundle bundle = new Bundle();
        if (operationParameters.getAccount() != null) {
            bundle.putString(AuthenticationConstants.Broker.ACCOUNT_CLIENTID_KEY, operationParameters.getClientId());
            bundle.putString("environment", operationParameters.getAccount().getEnvironment());
            bundle.putString(AuthenticationConstants.Broker.ACCOUNT_HOME_ACCOUNT_ID, operationParameters.getAccount().getHomeAccountId());
        }
        return bundle;
    }

    public Bundle getRequestBundleForRemoveAccountFromSharedDevice(OperationParameters operationParameters) {
        Bundle bundle = new Bundle();
        try {
            bundle.putString(AuthenticationConstants.Broker.DEFAULT_BROWSER_PACKAGE_NAME, BrowserSelector.select(operationParameters.getAppContext(), operationParameters.getBrowserSafeList()).getPackageName());
        } catch (ClientException e2) {
            Logger.error(TAG, e2.getErrorCode(), e2);
        }
        return bundle;
    }
}
