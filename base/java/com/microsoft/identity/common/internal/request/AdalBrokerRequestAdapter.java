package com.microsoft.identity.common.internal.request;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.microsoft.identity.common.adal.internal.AuthenticationConstants;
import com.microsoft.identity.common.internal.authorities.Authority;
import com.microsoft.identity.common.internal.authorities.AzureActiveDirectoryAudience;
import com.microsoft.identity.common.internal.authorities.AzureActiveDirectoryAuthority;
import com.microsoft.identity.common.internal.authscheme.BearerAuthenticationSchemeInternal;
import com.microsoft.identity.common.internal.broker.BrokerRequest;
import com.microsoft.identity.common.internal.broker.BrokerValidator;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.migration.TokenCacheItemMigrationAdapter;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectorySlice;
import com.microsoft.identity.common.internal.providers.oauth2.OpenIdConnectPromptParameter;
import com.microsoft.identity.common.internal.result.AdalBrokerResultAdapter;
import com.microsoft.identity.common.internal.ui.AuthorizationAgent;
import com.microsoft.identity.common.internal.util.StringUtil;
import e.a.a.a.a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

public class AdalBrokerRequestAdapter implements IBrokerRequestAdapter {
    public static final String TAG = AdalBrokerResultAdapter.class.getName();

    private List<Pair<String, String>> getExtraQueryParamAsList(String str) {
        ArrayList arrayList = new ArrayList();
        if (!StringUtil.isEmpty(str)) {
            for (String str2 : str.split("&")) {
                if (!StringUtil.isEmpty(str2)) {
                    String[] split = str2.split("=");
                    arrayList.add(new Pair(split[0], split.length > 1 ? split[1] : null));
                }
            }
        }
        return arrayList;
    }

    private String getPackageNameFromBundle(Bundle bundle, Context context) {
        String string = bundle.getString(AuthenticationConstants.Broker.CALLER_INFO_PACKAGE);
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        String string2 = bundle.getString("x-app-name");
        if (!TextUtils.isEmpty(string2)) {
            return string2;
        }
        Logger.warn(TAG, "Caller package name not set by app, getting from context");
        return context.getPackageName();
    }

    public static AzureActiveDirectoryAuthority getRequestAuthorityWithExtraQP(String str, List<Pair<String, String>> list) {
        AzureActiveDirectoryAuthority azureActiveDirectoryAuthority = (AzureActiveDirectoryAuthority) Authority.getAuthorityFromAuthorityUrl(str);
        if (list != null) {
            AzureActiveDirectorySlice azureActiveDirectorySlice = new AzureActiveDirectorySlice();
            Iterator it = new ArrayList(list).iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                if (StringUtil.isEmpty((String) pair.first)) {
                    Logger.warn(TAG, "The extra query parameter.first is empty.");
                } else if (((String) pair.first).equalsIgnoreCase("instance_aware")) {
                    Logger.info(TAG, "Set the extra query parameter mMultipleCloudAware for MicrosoftStsAuthorizationRequest.");
                    String str2 = TAG;
                    StringBuilder a = a.a("Set the mMultipleCloudAware to ");
                    Object obj = pair.second;
                    a.append(obj == null ? "null" : (String) obj);
                    Logger.infoPII(str2, a.toString());
                    Object obj2 = pair.second;
                    azureActiveDirectoryAuthority.mMultipleCloudsSupported = obj2 != null && ((String) obj2).equalsIgnoreCase(Boolean.TRUE.toString());
                    list.remove(pair);
                } else if (((String) pair.first).equalsIgnoreCase(AzureActiveDirectorySlice.SLICE_PARAMETER)) {
                    azureActiveDirectorySlice.setSlice((String) pair.second);
                    list.remove(pair);
                } else if (((String) pair.first).equalsIgnoreCase(AzureActiveDirectorySlice.DC_PARAMETER)) {
                    azureActiveDirectorySlice.setDataCenter((String) pair.second);
                    list.remove(pair);
                }
            }
            Logger.verbose(TAG, "Set the extra query parameter mSlice for MicrosoftStsAuthorizationRequest.");
            String str3 = TAG;
            StringBuilder a2 = a.a("Set the mSlice to ");
            a2.append(azureActiveDirectorySlice.toString());
            Logger.verbosePII(str3, a2.toString());
            azureActiveDirectoryAuthority.mSlice = azureActiveDirectorySlice;
        }
        return azureActiveDirectoryAuthority;
    }

    private boolean packageNameWasProvidedInBundle(Bundle bundle) {
        if (bundle == null) {
            return false;
        }
        String string = bundle.getString(AuthenticationConstants.Broker.CALLER_INFO_PACKAGE);
        String string2 = bundle.getString("x-app-name");
        if (!TextUtils.isEmpty(string) || !TextUtils.isEmpty(string2)) {
            return true;
        }
        return false;
    }

    public BrokerAcquireTokenOperationParameters brokerInteractiveParametersFromActivity(Activity activity) {
        Logger.verbose(TAG + "brokerInteractiveParametersFromActivity", "Constructing BrokerAcquireTokenOperationParameters from activity ");
        BrokerAcquireTokenOperationParameters brokerAcquireTokenOperationParameters = new BrokerAcquireTokenOperationParameters();
        Intent intent = activity.getIntent();
        brokerAcquireTokenOperationParameters.setAuthenticationScheme(new BearerAuthenticationSchemeInternal());
        brokerAcquireTokenOperationParameters.setActivity(activity);
        brokerAcquireTokenOperationParameters.setAppContext(activity.getApplicationContext());
        brokerAcquireTokenOperationParameters.setSdkType(SdkType.ADAL);
        brokerAcquireTokenOperationParameters.setCallerUId(intent.getIntExtra(AuthenticationConstants.Broker.CALLER_INFO_UID, 0));
        boolean packageNameWasProvidedInBundle = packageNameWasProvidedInBundle(intent.getExtras());
        brokerAcquireTokenOperationParameters.setCallerPackageName(getPackageNameFromBundle(intent.getExtras(), activity.getApplicationContext()));
        brokerAcquireTokenOperationParameters.setCallerAppVersion(intent.getStringExtra("x-app-ver"));
        List<Pair<String, String>> extraQueryParamAsList = getExtraQueryParamAsList(intent.getStringExtra(AuthenticationConstants.Broker.ACCOUNT_EXTRA_QUERY_PARAM));
        AzureActiveDirectoryAuthority requestAuthorityWithExtraQP = getRequestAuthorityWithExtraQP(intent.getStringExtra(AuthenticationConstants.Broker.ACCOUNT_AUTHORITY), extraQueryParamAsList);
        if (requestAuthorityWithExtraQP.getAudience().getTenantId().equalsIgnoreCase("common")) {
            requestAuthorityWithExtraQP.getAudience().setTenantId(AzureActiveDirectoryAudience.ORGANIZATIONS);
        }
        brokerAcquireTokenOperationParameters.setAuthority(requestAuthorityWithExtraQP);
        brokerAcquireTokenOperationParameters.setExtraQueryStringParameters(extraQueryParamAsList);
        String stringExtra = intent.getStringExtra(AuthenticationConstants.Broker.ACCOUNT_RESOURCE);
        HashSet hashSet = new HashSet();
        hashSet.add(TokenCacheItemMigrationAdapter.getScopeFromResource(stringExtra));
        brokerAcquireTokenOperationParameters.setScopes(hashSet);
        brokerAcquireTokenOperationParameters.setClientId(intent.getStringExtra(AuthenticationConstants.Broker.ACCOUNT_CLIENTID_KEY));
        if (packageNameWasProvidedInBundle) {
            brokerAcquireTokenOperationParameters.setRedirectUri(BrokerValidator.getBrokerRedirectUri(activity, brokerAcquireTokenOperationParameters.getCallerPackageName()));
        } else {
            brokerAcquireTokenOperationParameters.setRedirectUri(intent.getStringExtra(AuthenticationConstants.Broker.ACCOUNT_REDIRECT));
        }
        brokerAcquireTokenOperationParameters.setLoginHint(intent.getStringExtra(AuthenticationConstants.Broker.ACCOUNT_NAME));
        String stringExtra2 = intent.getStringExtra(AuthenticationConstants.Broker.ACCOUNT_CORRELATIONID);
        if (TextUtils.isEmpty(stringExtra2)) {
            Logger.info(TAG, "Correlation id not set by Adal, creating a new one");
            stringExtra2 = UUID.randomUUID().toString();
        }
        brokerAcquireTokenOperationParameters.setCorrelationId(stringExtra2);
        brokerAcquireTokenOperationParameters.setClaimsRequest(intent.getStringExtra(AuthenticationConstants.Broker.ACCOUNT_CLAIMS));
        brokerAcquireTokenOperationParameters.setOpenIdConnectPromptParameter(OpenIdConnectPromptParameter._fromPromptBehavior(intent.getStringExtra(AuthenticationConstants.Broker.ACCOUNT_PROMPT)));
        brokerAcquireTokenOperationParameters.setAuthorizationAgent(AuthorizationAgent.WEBVIEW);
        return brokerAcquireTokenOperationParameters;
    }

    public BrokerRequest brokerRequestFromAcquireTokenParameters(AcquireTokenOperationParameters acquireTokenOperationParameters) {
        throw new UnsupportedOperationException();
    }

    public BrokerRequest brokerRequestFromSilentOperationParameters(AcquireTokenSilentOperationParameters acquireTokenSilentOperationParameters) {
        throw new UnsupportedOperationException();
    }

    public BrokerAcquireTokenSilentOperationParameters brokerSilentParametersFromBundle(Bundle bundle, Context context, Account account) {
        Logger.verbose(TAG + ":brokerSilentParametersFromBundle", "Constructing BrokerAcquireTokenOperationParameters from activity ");
        BrokerAcquireTokenSilentOperationParameters brokerAcquireTokenSilentOperationParameters = new BrokerAcquireTokenSilentOperationParameters();
        brokerAcquireTokenSilentOperationParameters.setAuthenticationScheme(new BearerAuthenticationSchemeInternal());
        brokerAcquireTokenSilentOperationParameters.setAppContext(context);
        brokerAcquireTokenSilentOperationParameters.setAccountManagerAccount(account);
        brokerAcquireTokenSilentOperationParameters.setSdkType(SdkType.ADAL);
        brokerAcquireTokenSilentOperationParameters.setCallerUId(bundle.getInt(AuthenticationConstants.Broker.CALLER_INFO_UID));
        boolean packageNameWasProvidedInBundle = packageNameWasProvidedInBundle(bundle);
        String packageNameFromBundle = getPackageNameFromBundle(bundle, context);
        brokerAcquireTokenSilentOperationParameters.setCallerPackageName(packageNameFromBundle);
        brokerAcquireTokenSilentOperationParameters.setCallerAppVersion(bundle.getString("x-app-ver"));
        brokerAcquireTokenSilentOperationParameters.setAuthority(Authority.getAuthorityFromAuthorityUrl(bundle.getString(AuthenticationConstants.Broker.ACCOUNT_AUTHORITY)));
        String string = bundle.getString(AuthenticationConstants.Broker.ACCOUNT_CORRELATIONID);
        if (TextUtils.isEmpty(string)) {
            Logger.info(TAG, "Correlation id not set by Adal, creating a new one");
            string = UUID.randomUUID().toString();
        }
        brokerAcquireTokenSilentOperationParameters.setCorrelationId(string);
        String string2 = bundle.getString(AuthenticationConstants.Broker.ACCOUNT_RESOURCE);
        HashSet hashSet = new HashSet();
        hashSet.add(TokenCacheItemMigrationAdapter.getScopeFromResource(string2));
        brokerAcquireTokenSilentOperationParameters.setScopes(hashSet);
        brokerAcquireTokenSilentOperationParameters.setClientId(bundle.getString(AuthenticationConstants.Broker.ACCOUNT_CLIENTID_KEY));
        brokerAcquireTokenSilentOperationParameters.setLocalAccountId(bundle.getString(AuthenticationConstants.Broker.ACCOUNT_USERINFO_USERID));
        String string3 = bundle.getString(AuthenticationConstants.Broker.ACCOUNT_REDIRECT);
        if (packageNameWasProvidedInBundle || TextUtils.isEmpty(string3)) {
            string3 = BrokerValidator.getBrokerRedirectUri(context, packageNameFromBundle);
        }
        brokerAcquireTokenSilentOperationParameters.setRedirectUri(string3);
        brokerAcquireTokenSilentOperationParameters.setForceRefresh(Boolean.parseBoolean(bundle.getString(AuthenticationConstants.Broker.BROKER_FORCE_REFRESH)));
        brokerAcquireTokenSilentOperationParameters.setClaimsRequest(bundle.getString(AuthenticationConstants.Broker.ACCOUNT_CLAIMS));
        brokerAcquireTokenSilentOperationParameters.setLoginHint(bundle.getString(AuthenticationConstants.Broker.ACCOUNT_NAME));
        brokerAcquireTokenSilentOperationParameters.setExtraQueryStringParameters(getExtraQueryParamAsList(bundle.getString(AuthenticationConstants.Broker.ACCOUNT_EXTRA_QUERY_PARAM)));
        return brokerAcquireTokenSilentOperationParameters;
    }
}
