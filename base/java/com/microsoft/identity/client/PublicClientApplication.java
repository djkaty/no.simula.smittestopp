package com.microsoft.identity.client;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import androidx.fragment.app.Fragment;
import com.microsoft.identity.client.AcquireTokenParameters;
import com.microsoft.identity.client.AcquireTokenSilentParameters;
import com.microsoft.identity.client.IPublicClientApplication;
import com.microsoft.identity.client.Logger;
import com.microsoft.identity.client.claims.ClaimsRequest;
import com.microsoft.identity.client.configuration.AccountMode;
import com.microsoft.identity.client.configuration.HttpConfiguration;
import com.microsoft.identity.client.configuration.LoggerConfiguration;
import com.microsoft.identity.client.exception.MsalClientException;
import com.microsoft.identity.client.exception.MsalException;
import com.microsoft.identity.client.internal.AsyncResult;
import com.microsoft.identity.client.internal.MsalUtils;
import com.microsoft.identity.client.internal.controllers.MSALControllerFactory;
import com.microsoft.identity.client.internal.controllers.MsalExceptionAdapter;
import com.microsoft.identity.client.internal.controllers.OperationParametersAdapter;
import com.microsoft.identity.common.adal.internal.tokensharing.TokenShareUtility;
import com.microsoft.identity.common.exception.BaseException;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.exception.ErrorStrings;
import com.microsoft.identity.common.internal.authorities.Authority;
import com.microsoft.identity.common.internal.cache.ICacheRecord;
import com.microsoft.identity.common.internal.cache.MsalOAuth2TokenCache;
import com.microsoft.identity.common.internal.cache.SchemaUtil;
import com.microsoft.identity.common.internal.controllers.CommandCallback;
import com.microsoft.identity.common.internal.controllers.CommandDispatcher;
import com.microsoft.identity.common.internal.controllers.ExceptionAdapter;
import com.microsoft.identity.common.internal.controllers.GetDeviceModeCommand;
import com.microsoft.identity.common.internal.controllers.InteractiveTokenCommand;
import com.microsoft.identity.common.internal.controllers.TokenCommand;
import com.microsoft.identity.common.internal.eststelemetry.EstsTelemetry;
import com.microsoft.identity.common.internal.eststelemetry.PublicApiId;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.net.HttpRequest;
import com.microsoft.identity.common.internal.net.cache.HttpCache;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectory;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2TokenCache;
import com.microsoft.identity.common.internal.request.AcquireTokenOperationParameters;
import com.microsoft.identity.common.internal.request.AcquireTokenSilentOperationParameters;
import com.microsoft.identity.common.internal.request.OperationParameters;
import com.microsoft.identity.common.internal.result.ILocalAuthenticationResult;
import com.microsoft.identity.common.internal.result.ResultFuture;
import com.microsoft.identity.common.internal.telemetry.Telemetry;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class PublicClientApplication implements IPublicClientApplication, ITokenShare {
    public static final String ACCESS_NETWORK_STATE_PERMISSION = "android.permission.ACCESS_NETWORK_STATE";
    public static final String INTERNET_PERMISSION = "android.permission.INTERNET";
    public static final String TAG = "PublicClientApplication";
    public static final String TSL_MSG_FAILED_TO_SAVE = "Failed to save FRT - see getCause() for additional Exception info";
    public static final String TSM_MSG_FAILED_TO_RETRIEVE = "Failed to retrieve FRT - see getCause() for additional Exception info";
    public static final ExecutorService sBackgroundExecutor = Executors.newCachedThreadPool();
    public AccountMatcher homeAccountMatcher = new AccountMatcher() {
        public boolean matches(String str, IAccount iAccount) {
            return str.contains(iAccount.getId());
        }
    };
    public AccountMatcher localAccountMatcher = new AccountMatcher() {
        public boolean matches(String str, IAccount iAccount) {
            Map<String, ITenantProfile> tenantProfiles;
            if (str.contains(iAccount.getId())) {
                return true;
            }
            if (!(iAccount instanceof MultiTenantAccount) || (tenantProfiles = ((MultiTenantAccount) iAccount).getTenantProfiles()) == null || tenantProfiles.isEmpty()) {
                return false;
            }
            for (Map.Entry next : tenantProfiles.entrySet()) {
                if (!TextUtils.isEmpty(((ITenantProfile) next.getValue()).getId()) && str.contains(((ITenantProfile) next.getValue()).getId())) {
                    return true;
                }
            }
            return false;
        }
    };
    public PublicClientApplicationConfiguration mPublicClientConfiguration;
    public TokenShareUtility mTokenShareUtility;
    public AccountMatcher usernameMatcher = new AccountMatcher() {
        public boolean matches(String str, IAccount iAccount) {
            ArrayList arrayList = new ArrayList();
            if (iAccount.getClaims() != null) {
                arrayList.add(iAccount);
            }
            if (iAccount instanceof MultiTenantAccount) {
                for (Map.Entry next : ((MultiTenantAccount) iAccount).getTenantProfiles().entrySet()) {
                    if (((ITenantProfile) next.getValue()).getClaims() != null) {
                        arrayList.add(next.getValue());
                    }
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                IClaimable iClaimable = (IClaimable) it.next();
                if (iClaimable.getClaims() != null && str.equalsIgnoreCase(SchemaUtil.getDisplayableId(iClaimable.getClaims()))) {
                    return true;
                }
            }
            return false;
        }
    };

    public interface BrokerDeviceModeCallback {
        void onError(MsalException msalException);

        void onGetMode(boolean z);
    }

    public static class NONNULL_CONSTANTS {
        public static final String ACCOUNT = "account";
        public static final String ACTIVITY = "activity";
        public static final String AUTHORITY = "authority";
        public static final String CALLBACK = "callback";
        public static final String CLIENT_ID = "client_id";
        public static final String CONFIG_FILE = "config_file";
        public static final String CONTEXT = "context";
        public static final String LISTENER = "listener";
        public static final String NULL_ERROR_SUFFIX = " cannot be null or empty";
        public static final String REDIRECT_URI = "redirect_uri";
        public static final String SCOPES = "scopes";
    }

    public PublicClientApplication(PublicClientApplicationConfiguration publicClientApplicationConfiguration) {
        this.mPublicClientConfiguration = publicClientApplicationConfiguration;
        initializeApplication();
    }

    private void checkInternetPermission() {
        PackageManager packageManager = this.mPublicClientConfiguration.getAppContext().getPackageManager();
        if (packageManager.checkPermission(INTERNET_PERMISSION, this.mPublicClientConfiguration.getAppContext().getPackageName()) != 0 || packageManager.checkPermission(ACCESS_NETWORK_STATE_PERMISSION, this.mPublicClientConfiguration.getAppContext().getPackageName()) != 0) {
            throw new IllegalStateException("android.permission.Internet or android.permission.ACCESS_NETWORK_STATE is missing");
        }
    }

    public static void create(Context context, int i2, IPublicClientApplication.ApplicationCreatedListener applicationCreatedListener) {
        MsalUtils.validateNonNullArgument(context, NONNULL_CONSTANTS.CONTEXT);
        MsalUtils.validateNonNullArgument(applicationCreatedListener, NONNULL_CONSTANTS.LISTENER);
        create(PublicClientApplicationConfigurationFactory.initializeConfiguration(context, i2), (String) null, (String) null, (String) null, applicationCreatedListener);
    }

    public static void createMultipleAccountPublicClientApplication(Context context, int i2, IPublicClientApplication.IMultipleAccountApplicationCreatedListener iMultipleAccountApplicationCreatedListener) {
        MsalUtils.validateNonNullArgument(context, NONNULL_CONSTANTS.CONTEXT);
        MsalUtils.validateNonNullArgument(iMultipleAccountApplicationCreatedListener, NONNULL_CONSTANTS.LISTENER);
        createMultipleAccountPublicClientApplication(PublicClientApplicationConfigurationFactory.initializeConfiguration(context, i2), iMultipleAccountApplicationCreatedListener);
    }

    public static void createSingleAccountPublicClientApplication(Context context, int i2, IPublicClientApplication.ISingleAccountApplicationCreatedListener iSingleAccountApplicationCreatedListener) {
        MsalUtils.validateNonNullArgument(context, NONNULL_CONSTANTS.CONTEXT);
        MsalUtils.validateNonNullArgument(iSingleAccountApplicationCreatedListener, NONNULL_CONSTANTS.LISTENER);
        createSingleAccountPublicClientApplication(PublicClientApplicationConfigurationFactory.initializeConfiguration(context, i2), iSingleAccountApplicationCreatedListener);
    }

    public static CommandCallback<List<ICacheRecord>, BaseException> getLoadAccountsCallback(final IPublicClientApplication.LoadAccountsCallback loadAccountsCallback) {
        return new CommandCallback<List<ICacheRecord>, BaseException>() {
            public void onCancel() {
            }

            public void onError(BaseException baseException) {
                loadAccountsCallback.onError(MsalExceptionAdapter.msalExceptionFromBaseException(baseException));
            }

            public void onTaskCompleted(List<ICacheRecord> list) {
                if (list == null) {
                    loadAccountsCallback.onTaskCompleted((List<IAccount>) null);
                } else {
                    loadAccountsCallback.onTaskCompleted(AccountAdapter.adapt(list));
                }
            }
        };
    }

    private OAuth2TokenCache<?, ?, ?> getOAuth2TokenCache() {
        return MsalOAuth2TokenCache.create(this.mPublicClientConfiguration.getAppContext());
    }

    public static String getSdkVersion() {
        return "1.4.0";
    }

    private void initializeApplication() {
        Context appContext = this.mPublicClientConfiguration.getAppContext();
        EstsTelemetry.getInstance().setupLastRequestTelemetryCache(appContext);
        setupTelemetry(appContext, this.mPublicClientConfiguration);
        AzureActiveDirectory.setEnvironment(this.mPublicClientConfiguration.getEnvironment());
        Authority.addKnownAuthorities(this.mPublicClientConfiguration.getAuthorities());
        initializeHttpSettings(this.mPublicClientConfiguration.getHttpConfiguration());
        initializeLoggerSettings(this.mPublicClientConfiguration.getLoggerConfiguration());
        initializeTokenSharingLibrary();
        this.mPublicClientConfiguration.checkIntentFilterAddedToAppManifestForBrokerFlow();
        checkInternetPermission();
        HttpCache.initialize(appContext.getCacheDir());
        Logger.info(TAG + ":initializeApplication", "Create new public client application.");
    }

    private void initializeHttpSettings(HttpConfiguration httpConfiguration) {
        if (httpConfiguration == null) {
            Logger.info(TAG + ":initializeHttpSettings", "HttpConfiguration not provided - using defaults.");
            return;
        }
        int readTimeout = httpConfiguration.getReadTimeout();
        int connectTimeout = httpConfiguration.getConnectTimeout();
        if (readTimeout >= 0) {
            HttpRequest.READ_TIMEOUT = readTimeout;
        }
        if (connectTimeout >= 0) {
            HttpRequest.CONNECT_TIMEOUT = connectTimeout;
        }
    }

    private void initializeLoggerSettings(LoggerConfiguration loggerConfiguration) {
        if (loggerConfiguration != null) {
            Logger.LogLevel logLevel = loggerConfiguration.getLogLevel();
            boolean isPiiEnabled = loggerConfiguration.isPiiEnabled();
            boolean isLogcatEnabled = loggerConfiguration.isLogcatEnabled();
            Logger instance = Logger.getInstance();
            if (logLevel != null) {
                instance.setLogLevel(logLevel);
            }
            instance.setEnablePII(isPiiEnabled);
            instance.setEnableLogcatLog(isLogcatEnabled);
        }
    }

    private void initializeTokenSharingLibrary() {
        if (this.mPublicClientConfiguration.getOAuth2TokenCache() instanceof MsalOAuth2TokenCache) {
            this.mTokenShareUtility = new TokenShareUtility(this.mPublicClientConfiguration.getClientId(), this.mPublicClientConfiguration.getRedirectUri(), this.mPublicClientConfiguration.getDefaultAuthority().getAuthorityURL().toString(), (MsalOAuth2TokenCache) this.mPublicClientConfiguration.getOAuth2TokenCache());
            return;
        }
        throw new IllegalStateException("TSL support mandates use of the MsalOAuth2TokenCache");
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00de  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00ed  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.microsoft.identity.common.internal.dto.AccountRecord selectAccountRecordForTokenRequest(com.microsoft.identity.client.PublicClientApplicationConfiguration r8, com.microsoft.identity.client.TokenParameters r9) {
        /*
            r7 = this;
            java.lang.String r0 = r9.getAuthority()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L_0x0019
            com.microsoft.identity.common.internal.authorities.Authority r8 = r8.getDefaultAuthority()
            android.net.Uri r8 = r8.getAuthorityUri()
            java.lang.String r8 = r8.toString()
            r9.setAuthority(r8)
        L_0x0019:
            com.microsoft.identity.client.IAccount r8 = r9.getAccount()
            r0 = 0
            if (r8 != 0) goto L_0x0021
            return r0
        L_0x0021:
            com.microsoft.identity.client.IAccount r8 = r9.getAccount()
            r1 = r8
            com.microsoft.identity.client.MultiTenantAccount r1 = (com.microsoft.identity.client.MultiTenantAccount) r1
            java.lang.String r2 = r9.getAuthority()
            com.microsoft.identity.common.internal.authorities.Authority r2 = com.microsoft.identity.common.internal.authorities.Authority.getAuthorityFromAuthorityUrl(r2)
            boolean r3 = r2 instanceof com.microsoft.identity.common.internal.authorities.AzureActiveDirectoryB2CAuthority
            if (r3 == 0) goto L_0x004d
            com.microsoft.identity.client.PublicClientApplicationConfiguration r8 = r7.mPublicClientConfiguration
            java.lang.String r8 = r8.getClientId()
            com.microsoft.identity.client.PublicClientApplicationConfiguration r9 = r7.mPublicClientConfiguration
            com.microsoft.identity.common.internal.providers.oauth2.OAuth2TokenCache r9 = r9.getOAuth2TokenCache()
            java.lang.String r0 = r1.getHomeAccountId()
            java.lang.String r1 = r1.getTenantId()
            com.microsoft.identity.common.internal.dto.AccountRecord r8 = com.microsoft.identity.client.AccountAdapter.getAccountInternal(r8, r9, r0, r1)
            return r8
        L_0x004d:
            boolean r3 = r2 instanceof com.microsoft.identity.common.internal.authorities.AzureActiveDirectoryAuthority
            if (r3 == 0) goto L_0x010d
            r3 = r2
            com.microsoft.identity.common.internal.authorities.AzureActiveDirectoryAuthority r3 = (com.microsoft.identity.common.internal.authorities.AzureActiveDirectoryAuthority) r3
            com.microsoft.identity.common.internal.authorities.AzureActiveDirectoryAudience r4 = r3.getAudience()
            java.lang.String r4 = r4.getTenantId()
            com.microsoft.identity.common.internal.dto.AccountRecord r5 = new com.microsoft.identity.common.internal.dto.AccountRecord
            r5.<init>()
            java.lang.String r6 = r1.getEnvironment()
            r5.setEnvironment(r6)
            java.lang.String r6 = r1.getHomeAccountId()
            r5.setHomeAccountId(r6)
            boolean r6 = com.microsoft.identity.common.internal.util.StringUtil.isUuid(r4)
            if (r6 != 0) goto L_0x008b
            boolean r6 = com.microsoft.identity.common.internal.authorities.AzureActiveDirectoryAudience.isHomeTenantAlias(r4)
            if (r6 != 0) goto L_0x008b
            com.microsoft.identity.common.internal.authorities.AzureActiveDirectoryAudience r3 = r3.getAudience()
            java.net.URL r2 = r2.getAuthorityURL()
            java.lang.String r2 = r2.toString()
            java.lang.String r4 = r3.getTenantUuidForAlias(r2)
        L_0x008b:
            boolean r2 = com.microsoft.identity.common.internal.authorities.AzureActiveDirectoryAudience.isHomeTenantAlias(r4)
            if (r2 != 0) goto L_0x00a7
            java.util.Map r2 = r1.getClaims()
            boolean r2 = com.microsoft.identity.client.internal.controllers.OperationParametersAdapter.isAccountHomeTenant(r2, r4)
            if (r2 == 0) goto L_0x009c
            goto L_0x00a7
        L_0x009c:
            java.util.Map r0 = r1.getTenantProfiles()
            java.lang.Object r0 = r0.get(r4)
            com.microsoft.identity.client.IAccount r0 = (com.microsoft.identity.client.IAccount) r0
            goto L_0x00ae
        L_0x00a7:
            java.util.Map r2 = r1.getClaims()
            if (r2 == 0) goto L_0x00ae
            r0 = r1
        L_0x00ae:
            if (r0 != 0) goto L_0x00db
            boolean r9 = r9 instanceof com.microsoft.identity.client.AcquireTokenSilentParameters
            if (r9 == 0) goto L_0x00db
            java.util.Map r9 = r8.getClaims()
            if (r9 == 0) goto L_0x00bb
            goto L_0x00dc
        L_0x00bb:
            java.util.Map r8 = r1.getTenantProfiles()
            java.util.Collection r8 = r8.values()
            java.util.Iterator r8 = r8.iterator()
        L_0x00c7:
            boolean r9 = r8.hasNext()
            if (r9 == 0) goto L_0x00db
            java.lang.Object r9 = r8.next()
            com.microsoft.identity.client.ITenantProfile r9 = (com.microsoft.identity.client.ITenantProfile) r9
            java.util.Map r1 = r9.getClaims()
            if (r1 == 0) goto L_0x00c7
            r8 = r9
            goto L_0x00dc
        L_0x00db:
            r8 = r0
        L_0x00dc:
            if (r8 == 0) goto L_0x00ed
            java.lang.String r9 = r8.getId()
            r5.setLocalAccountId(r9)
            java.lang.String r8 = r8.getUsername()
            r5.setUsername(r8)
            return r5
        L_0x00ed:
            java.lang.String r8 = TAG
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r0 = "No account record found for IAccount with request tenantId: "
            r9.append(r0)
            r9.append(r4)
            java.lang.String r9 = r9.toString()
            com.microsoft.identity.common.internal.logging.Logger.warnPII(r8, r9)
            com.microsoft.identity.common.exception.ClientException r8 = new com.microsoft.identity.common.exception.ClientException
            java.lang.String r9 = "no_account_found"
            java.lang.String r0 = "No account record found for IAccount"
            r8.<init>(r9, r0)
            throw r8
        L_0x010d:
            java.lang.UnsupportedOperationException r8 = new java.lang.UnsupportedOperationException
            java.lang.String r9 = "Unsupported Authority type: "
            java.lang.StringBuilder r9 = e.a.a.a.a.a(r9)
            java.lang.Class r0 = r2.getClass()
            java.lang.String r0 = r0.getSimpleName()
            r9.append(r0)
            java.lang.String r9 = r9.toString()
            r8.<init>(r9)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.identity.client.PublicClientApplication.selectAccountRecordForTokenRequest(com.microsoft.identity.client.PublicClientApplicationConfiguration, com.microsoft.identity.client.TokenParameters):com.microsoft.identity.common.internal.dto.AccountRecord");
    }

    private void setupTelemetry(Context context, PublicClientApplicationConfiguration publicClientApplicationConfiguration) {
        if (publicClientApplicationConfiguration.getTelemetryConfiguration() != null) {
            com.microsoft.identity.common.internal.logging.Logger.verbose(TAG, "Telemetry configuration is set. Telemetry is enabled.");
        } else {
            com.microsoft.identity.common.internal.logging.Logger.verbose(TAG, "Telemetry configuration is null. Telemetry is disabled.");
        }
        new Telemetry.Builder().withContext(context).defaultConfiguration(publicClientApplicationConfiguration.getTelemetryConfiguration()).build();
    }

    private void validateBrokerNotInUse() {
        if (MSALControllerFactory.brokerEligible(this.mPublicClientConfiguration.getAppContext(), this.mPublicClientConfiguration.getDefaultAuthority(), this.mPublicClientConfiguration)) {
            throw new MsalClientException("Cannot perform this action - broker is enabled.");
        }
    }

    public void acquireToken(Activity activity, String[] strArr, AuthenticationCallback authenticationCallback) {
        acquireTokenInternal(buildAcquireTokenParameters(activity, (Fragment) null, strArr, (IAccount) null, (Prompt) null, (List<Pair<String, String>>) null, (String[]) null, (String) null, authenticationCallback, (String) null, (ClaimsRequest) null), PublicApiId.PCA_ACQUIRE_TOKEN_WITH_ACTIVITY_SCOPES_CALLBACK);
    }

    public void acquireTokenInternal(final AcquireTokenParameters acquireTokenParameters, final String str) {
        sBackgroundExecutor.submit(new Runnable() {
            public void run() {
                final CommandCallback commandCallback = PublicClientApplication.this.getCommandCallback(acquireTokenParameters.getCallback(), acquireTokenParameters);
                try {
                    PublicClientApplication.this.validateAcquireTokenParameters(acquireTokenParameters);
                    acquireTokenParameters.setAccountRecord(PublicClientApplication.this.selectAccountRecordForTokenRequest(PublicClientApplication.this.mPublicClientConfiguration, acquireTokenParameters));
                    AcquireTokenOperationParameters createAcquireTokenOperationParameters = OperationParametersAdapter.createAcquireTokenOperationParameters(acquireTokenParameters, PublicClientApplication.this.mPublicClientConfiguration, PublicClientApplication.this.mPublicClientConfiguration.getOAuth2TokenCache());
                    InteractiveTokenCommand interactiveTokenCommand = new InteractiveTokenCommand(createAcquireTokenOperationParameters, MSALControllerFactory.getDefaultController(PublicClientApplication.this.mPublicClientConfiguration.getAppContext(), createAcquireTokenOperationParameters.getAuthority(), PublicClientApplication.this.mPublicClientConfiguration), commandCallback);
                    interactiveTokenCommand.setPublicApiId(str);
                    CommandDispatcher.beginInteractive(interactiveTokenCommand);
                } catch (Exception e2) {
                    final BaseException baseExceptionFromException = ExceptionAdapter.baseExceptionFromException(e2);
                    new Handler(Looper.getMainLooper()).post(new Runnable() {
                        public void run() {
                            commandCallback.onError(baseExceptionFromException);
                        }
                    });
                }
            }
        });
    }

    public IAuthenticationResult acquireTokenSilent(AcquireTokenSilentParameters acquireTokenSilentParameters) {
        return acquireTokenSilentInternal(acquireTokenSilentParameters, PublicApiId.PCA_ACQUIRE_TOKEN_SILENT_WITH_PARAMETERS);
    }

    public void acquireTokenSilentAsync(AcquireTokenSilentParameters acquireTokenSilentParameters) {
        acquireTokenSilentAsyncInternal(acquireTokenSilentParameters, PublicApiId.PCA_ACQUIRE_TOKEN_SILENT_ASYNC_WITH_PARAMETERS);
    }

    public void acquireTokenSilentAsyncInternal(final AcquireTokenSilentParameters acquireTokenSilentParameters, final String str) {
        sBackgroundExecutor.submit(new Runnable() {
            public void run() {
                final CommandCallback commandCallback = PublicClientApplication.this.getCommandCallback(acquireTokenSilentParameters.getCallback(), acquireTokenSilentParameters);
                try {
                    PublicClientApplication.this.validateAcquireTokenSilentParameters(acquireTokenSilentParameters);
                    acquireTokenSilentParameters.setAccountRecord(PublicClientApplication.this.selectAccountRecordForTokenRequest(PublicClientApplication.this.mPublicClientConfiguration, acquireTokenSilentParameters));
                    AcquireTokenSilentOperationParameters createAcquireTokenSilentOperationParameters = OperationParametersAdapter.createAcquireTokenSilentOperationParameters(acquireTokenSilentParameters, PublicClientApplication.this.mPublicClientConfiguration, PublicClientApplication.this.mPublicClientConfiguration.getOAuth2TokenCache());
                    TokenCommand tokenCommand = new TokenCommand((OperationParameters) createAcquireTokenSilentOperationParameters, MSALControllerFactory.getAllControllers(PublicClientApplication.this.mPublicClientConfiguration.getAppContext(), createAcquireTokenSilentOperationParameters.getAuthority(), PublicClientApplication.this.mPublicClientConfiguration), commandCallback);
                    tokenCommand.setPublicApiId(str);
                    CommandDispatcher.submitSilent(tokenCommand);
                } catch (Exception e2) {
                    final BaseException baseExceptionFromException = ExceptionAdapter.baseExceptionFromException(e2);
                    new Handler(Looper.getMainLooper()).post(new Runnable() {
                        public void run() {
                            commandCallback.onError(baseExceptionFromException);
                        }
                    });
                }
            }
        });
    }

    public IAuthenticationResult acquireTokenSilentInternal(AcquireTokenSilentParameters acquireTokenSilentParameters, String str) {
        if (acquireTokenSilentParameters.getCallback() == null) {
            final ResultFuture resultFuture = new ResultFuture();
            acquireTokenSilentParameters.setCallback(new SilentAuthenticationCallback() {
                public void onError(MsalException msalException) {
                    resultFuture.setResult(new AsyncResult(null, msalException));
                }

                public void onSuccess(IAuthenticationResult iAuthenticationResult) {
                    resultFuture.setResult(new AsyncResult(iAuthenticationResult, (MsalException) null));
                }
            });
            acquireTokenSilentAsyncInternal(acquireTokenSilentParameters, str);
            AsyncResult asyncResult = (AsyncResult) resultFuture.get();
            if (asyncResult.getSuccess()) {
                return (IAuthenticationResult) asyncResult.getResult();
            }
            throw asyncResult.getException();
        }
        throw new IllegalArgumentException("Do not provide callback for synchronous methods");
    }

    public IAuthenticationResult acquireTokenSilentSyncInternal(String[] strArr, String str, IAccount iAccount, boolean z, String str2) {
        MsalUtils.throwOnMainThread("acquireTokenSilent");
        final ResultFuture resultFuture = new ResultFuture();
        acquireTokenSilentAsyncInternal(buildAcquireTokenSilentParameters(strArr, iAccount, str, z, (ClaimsRequest) null, new SilentAuthenticationCallback() {
            public void onError(MsalException msalException) {
                resultFuture.setResult(new AsyncResult(null, msalException));
            }

            public void onSuccess(IAuthenticationResult iAuthenticationResult) {
                resultFuture.setResult(new AsyncResult(iAuthenticationResult, (MsalException) null));
            }
        }), str2);
        AsyncResult asyncResult = (AsyncResult) resultFuture.get();
        if (asyncResult.getSuccess()) {
            return (IAuthenticationResult) asyncResult.getResult();
        }
        throw asyncResult.getException();
    }

    public AcquireTokenParameters buildAcquireTokenParameters(Activity activity, Fragment fragment, String[] strArr, IAccount iAccount, Prompt prompt, List<Pair<String, String>> list, String[] strArr2, String str, AuthenticationCallback authenticationCallback, String str2, ClaimsRequest claimsRequest) {
        MsalUtils.validateNonNullArgument(activity, NONNULL_CONSTANTS.ACTIVITY);
        MsalUtils.validateNonNullArgument(strArr, "scopes");
        MsalUtils.validateNonNullArgument(authenticationCallback, NONNULL_CONSTANTS.CALLBACK);
        AcquireTokenParameters.Builder withAuthorizationQueryStringParameters = ((AcquireTokenParameters.Builder) ((AcquireTokenParameters.Builder) new AcquireTokenParameters.Builder().startAuthorizationFromActivity(activity).withFragment(fragment).forAccount(iAccount)).withScopes(Arrays.asList(strArr))).withPrompt(prompt).withAuthorizationQueryStringParameters(list);
        if (strArr2 == null) {
            strArr2 = new String[0];
        }
        return ((AcquireTokenParameters.Builder) ((AcquireTokenParameters.Builder) withAuthorizationQueryStringParameters.withOtherScopesToAuthorize(Arrays.asList(strArr2)).fromAuthority(str)).withCallback(authenticationCallback).withLoginHint(str2).withClaims(claimsRequest)).build();
    }

    public AcquireTokenSilentParameters buildAcquireTokenSilentParameters(String[] strArr, IAccount iAccount, String str, boolean z, ClaimsRequest claimsRequest, SilentAuthenticationCallback silentAuthenticationCallback) {
        MsalUtils.validateNonNullArgument(iAccount, "account");
        MsalUtils.validateNonNullArgument(silentAuthenticationCallback, NONNULL_CONSTANTS.CALLBACK);
        return ((AcquireTokenSilentParameters.Builder) ((AcquireTokenSilentParameters.Builder) ((AcquireTokenSilentParameters.Builder) ((AcquireTokenSilentParameters.Builder) new AcquireTokenSilentParameters.Builder().withScopes(Arrays.asList(strArr))).forAccount(iAccount)).fromAuthority(str)).forceRefresh(z).withClaims(claimsRequest)).withCallback(silentAuthenticationCallback).build();
    }

    public CommandCallback getCommandCallback(final SilentAuthenticationCallback silentAuthenticationCallback, final TokenParameters tokenParameters) {
        return new CommandCallback<ILocalAuthenticationResult, BaseException>() {
            public void onCancel() {
                SilentAuthenticationCallback silentAuthenticationCallback = silentAuthenticationCallback;
                if (silentAuthenticationCallback instanceof AuthenticationCallback) {
                    ((AuthenticationCallback) silentAuthenticationCallback).onCancel();
                    return;
                }
                throw new IllegalStateException("Silent requests cannot be cancelled.");
            }

            public void onError(BaseException baseException) {
                MsalException msalExceptionFromBaseException = MsalExceptionAdapter.msalExceptionFromBaseException(baseException);
                SilentAuthenticationCallback silentAuthenticationCallback = silentAuthenticationCallback;
                if (silentAuthenticationCallback != null) {
                    silentAuthenticationCallback.onError(msalExceptionFromBaseException);
                    return;
                }
                throw new IllegalStateException("callback cannot be null or empty");
            }

            public void onTaskCompleted(ILocalAuthenticationResult iLocalAuthenticationResult) {
                PublicClientApplication.this.postAuthResult(iLocalAuthenticationResult, tokenParameters, silentAuthenticationCallback);
            }
        };
    }

    public PublicClientApplicationConfiguration getConfiguration() {
        return this.mPublicClientConfiguration;
    }

    public String getMsaFamilyRefreshToken(String str) {
        MsalUtils.validateNonNullArgument(str, "identifier");
        validateBrokerNotInUse();
        try {
            return this.mTokenShareUtility.getMsaFamilyRefreshToken(str);
        } catch (Exception e2) {
            throw new MsalClientException(ClientException.TOKEN_CACHE_ITEM_NOT_FOUND, TSM_MSG_FAILED_TO_RETRIEVE, e2);
        }
    }

    public String getOrgIdFamilyRefreshToken(String str) {
        MsalUtils.validateNonNullArgument(str, "identifier");
        validateBrokerNotInUse();
        try {
            return this.mTokenShareUtility.getOrgIdFamilyRefreshToken(str);
        } catch (Exception e2) {
            throw new MsalClientException(ClientException.TOKEN_CACHE_ITEM_NOT_FOUND, TSM_MSG_FAILED_TO_RETRIEVE, e2);
        }
    }

    public boolean isSharedDevice() {
        return this.mPublicClientConfiguration.getIsSharedDevice();
    }

    public void postAuthResult(ILocalAuthenticationResult iLocalAuthenticationResult, TokenParameters tokenParameters, SilentAuthenticationCallback silentAuthenticationCallback) {
        if (silentAuthenticationCallback != null) {
            List<String> declinedScopes = AuthenticationResultAdapter.getDeclinedScopes(Arrays.asList(iLocalAuthenticationResult.getScope()), tokenParameters.getScopes());
            if (!declinedScopes.isEmpty()) {
                silentAuthenticationCallback.onError(AuthenticationResultAdapter.declinedScopeExceptionFromResult(iLocalAuthenticationResult, declinedScopes, tokenParameters));
            } else {
                silentAuthenticationCallback.onSuccess(AuthenticationResultAdapter.adapt(iLocalAuthenticationResult));
            }
        } else {
            throw new IllegalStateException("callback cannot be null or empty");
        }
    }

    public void saveMsaFamilyRefreshToken(String str) {
        MsalUtils.validateNonNullArgument(str, "refreshToken");
        validateBrokerNotInUse();
        try {
            this.mTokenShareUtility.saveMsaFamilyRefreshToken(str);
        } catch (Exception e2) {
            throw new MsalClientException(ClientException.TOKEN_SHARING_MSA_PERSISTENCE_ERROR, TSL_MSG_FAILED_TO_SAVE, e2);
        }
    }

    public void saveOrgIdFamilyRefreshToken(String str) {
        MsalUtils.validateNonNullArgument(str, "SsoStateSerializerBlob");
        validateBrokerNotInUse();
        try {
            this.mTokenShareUtility.saveOrgIdFamilyRefreshToken(str);
        } catch (Exception e2) {
            throw new MsalClientException(ClientException.TOKEN_SHARING_DESERIALIZATION_ERROR, TSL_MSG_FAILED_TO_SAVE, e2);
        }
    }

    public void validateAcquireTokenParameters(AcquireTokenParameters acquireTokenParameters) {
        Activity activity = acquireTokenParameters.getActivity();
        List<String> scopes = acquireTokenParameters.getScopes();
        AuthenticationCallback callback = acquireTokenParameters.getCallback();
        MsalUtils.validateNonNullArg(activity, NONNULL_CONSTANTS.ACTIVITY);
        MsalUtils.validateNonNullArg(scopes, "scopes");
        MsalUtils.validateNonNullArg(callback, NONNULL_CONSTANTS.CALLBACK);
    }

    public void validateAcquireTokenSilentParameters(AcquireTokenSilentParameters acquireTokenSilentParameters) {
        String authority = acquireTokenSilentParameters.getAuthority();
        IAccount account = acquireTokenSilentParameters.getAccount();
        List<String> scopes = acquireTokenSilentParameters.getScopes();
        SilentAuthenticationCallback callback = acquireTokenSilentParameters.getCallback();
        MsalUtils.validateNonNullArg(authority, "authority");
        MsalUtils.validateNonNullArg(account, "account");
        MsalUtils.validateNonNullArg(callback, NONNULL_CONSTANTS.CALLBACK);
        MsalUtils.validateNonNullArg(scopes, "scopes");
    }

    public class AccountMatcher {
        public final AccountMatcher[] mDelegateMatchers;

        public AccountMatcher() {
            this.mDelegateMatchers = new AccountMatcher[0];
        }

        public boolean matches(String str, IAccount iAccount) {
            boolean z = false;
            for (AccountMatcher matches : this.mDelegateMatchers) {
                z = matches.matches(str, iAccount);
                if (z) {
                    break;
                }
            }
            return z;
        }

        public AccountMatcher(AccountMatcher... accountMatcherArr) {
            this.mDelegateMatchers = accountMatcherArr;
        }
    }

    public void acquireToken(AcquireTokenParameters acquireTokenParameters) {
        acquireTokenInternal(acquireTokenParameters, PublicApiId.PCA_ACQUIRE_TOKEN_WITH_PARAMETERS);
    }

    public static void create(Context context, File file, IPublicClientApplication.ApplicationCreatedListener applicationCreatedListener) {
        MsalUtils.validateNonNullArgument(context, NONNULL_CONSTANTS.CONTEXT);
        MsalUtils.validateNonNullArgument(applicationCreatedListener, NONNULL_CONSTANTS.LISTENER);
        create(PublicClientApplicationConfigurationFactory.initializeConfiguration(context, file), (String) null, (String) null, (String) null, applicationCreatedListener);
    }

    public static void createMultipleAccountPublicClientApplication(Context context, File file, IPublicClientApplication.IMultipleAccountApplicationCreatedListener iMultipleAccountApplicationCreatedListener) {
        MsalUtils.validateNonNullArgument(context, NONNULL_CONSTANTS.CONTEXT);
        MsalUtils.validateNonNullArgument(iMultipleAccountApplicationCreatedListener, NONNULL_CONSTANTS.LISTENER);
        createMultipleAccountPublicClientApplication(PublicClientApplicationConfigurationFactory.initializeConfiguration(context, file), iMultipleAccountApplicationCreatedListener);
    }

    public static void createSingleAccountPublicClientApplication(Context context, File file, IPublicClientApplication.ISingleAccountApplicationCreatedListener iSingleAccountApplicationCreatedListener) {
        MsalUtils.validateNonNullArgument(context, NONNULL_CONSTANTS.CONTEXT);
        MsalUtils.validateNonNullArgument(file, NONNULL_CONSTANTS.CONFIG_FILE);
        MsalUtils.validateNonNullArgument(iSingleAccountApplicationCreatedListener, NONNULL_CONSTANTS.LISTENER);
        createSingleAccountPublicClientApplication(PublicClientApplicationConfigurationFactory.initializeConfiguration(context, file), iSingleAccountApplicationCreatedListener);
    }

    public static void create(Context context, String str, String str2, String str3, IPublicClientApplication.ApplicationCreatedListener applicationCreatedListener) {
        MsalUtils.validateNonNullArgument(context, NONNULL_CONSTANTS.CONTEXT);
        MsalUtils.validateNonNullArgument(str, "client_id");
        MsalUtils.validateNonNullArgument(str3, "redirect_uri");
        MsalUtils.validateNonNullArgument(applicationCreatedListener, NONNULL_CONSTANTS.LISTENER);
        create(PublicClientApplicationConfigurationFactory.initializeConfiguration(context), str, str2, str3, applicationCreatedListener);
    }

    public static IMultipleAccountPublicClientApplication createMultipleAccountPublicClientApplication(Context context, int i2) {
        MsalUtils.validateNonNullArgument(context, NONNULL_CONSTANTS.CONTEXT);
        return createMultipleAccountPublicClientApplication(PublicClientApplicationConfigurationFactory.initializeConfiguration(context, i2));
    }

    public static ISingleAccountPublicClientApplication createSingleAccountPublicClientApplication(Context context, int i2) {
        MsalUtils.validateNonNullArgument(context, NONNULL_CONSTANTS.CONTEXT);
        return createSingleAccountPublicClientApplication(PublicClientApplicationConfigurationFactory.initializeConfiguration(context, i2));
    }

    public static IMultipleAccountPublicClientApplication createMultipleAccountPublicClientApplication(Context context, File file) {
        MsalUtils.validateNonNullArgument(context, NONNULL_CONSTANTS.CONTEXT);
        MsalUtils.validateNonNullArgument(file, "configFile");
        return createMultipleAccountPublicClientApplication(PublicClientApplicationConfigurationFactory.initializeConfiguration(context, file));
    }

    public static ISingleAccountPublicClientApplication createSingleAccountPublicClientApplication(Context context, File file) {
        MsalUtils.validateNonNullArgument(context, NONNULL_CONSTANTS.CONTEXT);
        return createSingleAccountPublicClientApplication(PublicClientApplicationConfigurationFactory.initializeConfiguration(context, file));
    }

    public static IPublicClientApplication create(Context context, int i2) {
        MsalUtils.validateNonNullArgument(context, NONNULL_CONSTANTS.CONTEXT);
        return create(PublicClientApplicationConfigurationFactory.initializeConfiguration(context, i2));
    }

    public static IMultipleAccountPublicClientApplication createMultipleAccountPublicClientApplication(PublicClientApplicationConfiguration publicClientApplicationConfiguration) {
        if (publicClientApplicationConfiguration.getAccountMode() == AccountMode.MULTIPLE) {
            IPublicClientApplication create = create(publicClientApplicationConfiguration);
            if (create instanceof IMultipleAccountPublicClientApplication) {
                return (IMultipleAccountPublicClientApplication) create;
            }
            if (publicClientApplicationConfiguration.getAccountMode() != AccountMode.MULTIPLE || !create.isSharedDevice()) {
                throw new MsalClientException(ErrorStrings.MULTIPLE_ACCOUNT_PCA_INIT_FAIL_UNKNOWN_REASON_ERROR_CODE, ErrorStrings.MULTIPLE_ACCOUNT_PCA_INIT_FAIL_UNKNOWN_REASON_ERROR_MESSAGE);
            }
            throw new MsalClientException(ErrorStrings.MULTIPLE_ACCOUNT_PCA_INIT_FAIL_ON_SHARED_DEVICE_ERROR_CODE, ErrorStrings.MULTIPLE_ACCOUNT_PCA_INIT_FAIL_ON_SHARED_DEVICE_ERROR_MESSAGE);
        }
        throw new MsalClientException(ErrorStrings.MULTIPLE_ACCOUNT_PCA_INIT_FAIL_ACCOUNT_MODE_ERROR_CODE, ErrorStrings.MULTIPLE_ACCOUNT_PCA_INIT_FAIL_ACCOUNT_MODE_ERROR_MESSAGE);
    }

    public static ISingleAccountPublicClientApplication createSingleAccountPublicClientApplication(PublicClientApplicationConfiguration publicClientApplicationConfiguration) {
        IPublicClientApplication create = create(publicClientApplicationConfiguration);
        if (create instanceof ISingleAccountPublicClientApplication) {
            return (ISingleAccountPublicClientApplication) create;
        }
        if (publicClientApplicationConfiguration.getAccountMode() != AccountMode.SINGLE) {
            throw new MsalClientException(ErrorStrings.SINGLE_ACCOUNT_PCA_INIT_FAIL_ACCOUNT_MODE_ERROR_CODE, ErrorStrings.SINGLE_ACCOUNT_PCA_INIT_FAIL_ACCOUNT_MODE_ERROR_MESSAGE);
        }
        throw new MsalClientException(ErrorStrings.SINGLE_ACCOUNT_PCA_INIT_FAIL_UNKNOWN_REASON_ERROR_CODE, ErrorStrings.SINGLE_ACCOUNT_PCA_INIT_FAIL_UNKNOWN_REASON_ERROR_MESSAGE);
    }

    public static IPublicClientApplication create(PublicClientApplicationConfiguration publicClientApplicationConfiguration) {
        MsalUtils.validateNonNullArgument(publicClientApplicationConfiguration, "configuration");
        MsalUtils.throwOnMainThread("createPublicClientApplication");
        final ResultFuture resultFuture = new ResultFuture();
        create(publicClientApplicationConfiguration, (String) null, (String) null, (String) null, (IPublicClientApplication.ApplicationCreatedListener) new IPublicClientApplication.ApplicationCreatedListener() {
            public void onCreated(IPublicClientApplication iPublicClientApplication) {
                resultFuture.setResult(new AsyncResult(iPublicClientApplication, (MsalException) null));
            }

            public void onError(MsalException msalException) {
                resultFuture.setResult(new AsyncResult(null, msalException));
            }
        });
        AsyncResult asyncResult = (AsyncResult) resultFuture.get();
        if (asyncResult.getSuccess()) {
            return (IPublicClientApplication) asyncResult.getResult();
        }
        throw asyncResult.getException();
    }

    public static void createSingleAccountPublicClientApplication(PublicClientApplicationConfiguration publicClientApplicationConfiguration, final IPublicClientApplication.ISingleAccountApplicationCreatedListener iSingleAccountApplicationCreatedListener) {
        create(publicClientApplicationConfiguration, (String) null, (String) null, (String) null, (IPublicClientApplication.ApplicationCreatedListener) new IPublicClientApplication.ApplicationCreatedListener() {
            public void onCreated(IPublicClientApplication iPublicClientApplication) {
                if (iPublicClientApplication instanceof ISingleAccountPublicClientApplication) {
                    iSingleAccountApplicationCreatedListener.onCreated((ISingleAccountPublicClientApplication) iPublicClientApplication);
                } else if (iPublicClientApplication.getConfiguration().getAccountMode() != AccountMode.SINGLE) {
                    iSingleAccountApplicationCreatedListener.onError(new MsalClientException(ErrorStrings.SINGLE_ACCOUNT_PCA_INIT_FAIL_ACCOUNT_MODE_ERROR_CODE, ErrorStrings.SINGLE_ACCOUNT_PCA_INIT_FAIL_ACCOUNT_MODE_ERROR_MESSAGE));
                } else {
                    iSingleAccountApplicationCreatedListener.onError(new MsalClientException(ErrorStrings.SINGLE_ACCOUNT_PCA_INIT_FAIL_UNKNOWN_REASON_ERROR_CODE, ErrorStrings.SINGLE_ACCOUNT_PCA_INIT_FAIL_UNKNOWN_REASON_ERROR_MESSAGE));
                }
            }

            public void onError(MsalException msalException) {
                iSingleAccountApplicationCreatedListener.onError(msalException);
            }
        });
    }

    public static void createMultipleAccountPublicClientApplication(PublicClientApplicationConfiguration publicClientApplicationConfiguration, final IPublicClientApplication.IMultipleAccountApplicationCreatedListener iMultipleAccountApplicationCreatedListener) {
        create(publicClientApplicationConfiguration, (String) null, (String) null, (String) null, (IPublicClientApplication.ApplicationCreatedListener) new IPublicClientApplication.ApplicationCreatedListener() {
            public void onCreated(IPublicClientApplication iPublicClientApplication) {
                if (iPublicClientApplication instanceof IMultipleAccountPublicClientApplication) {
                    iMultipleAccountApplicationCreatedListener.onCreated((IMultipleAccountPublicClientApplication) iPublicClientApplication);
                } else if (iPublicClientApplication.getConfiguration().getAccountMode() != AccountMode.MULTIPLE || !iPublicClientApplication.isSharedDevice()) {
                    iMultipleAccountApplicationCreatedListener.onError(new MsalClientException(ErrorStrings.MULTIPLE_ACCOUNT_PCA_INIT_FAIL_UNKNOWN_REASON_ERROR_CODE, ErrorStrings.MULTIPLE_ACCOUNT_PCA_INIT_FAIL_UNKNOWN_REASON_ERROR_MESSAGE));
                } else {
                    iMultipleAccountApplicationCreatedListener.onError(new MsalClientException(ErrorStrings.MULTIPLE_ACCOUNT_PCA_INIT_FAIL_ON_SHARED_DEVICE_ERROR_CODE, ErrorStrings.MULTIPLE_ACCOUNT_PCA_INIT_FAIL_ON_SHARED_DEVICE_ERROR_MESSAGE));
                }
            }

            public void onError(MsalException msalException) {
                iMultipleAccountApplicationCreatedListener.onError(msalException);
            }
        });
    }

    public static void create(final PublicClientApplicationConfiguration publicClientApplicationConfiguration, String str, String str2, String str3, final IPublicClientApplication.ApplicationCreatedListener applicationCreatedListener) {
        if (str != null) {
            publicClientApplicationConfiguration.setClientId(str);
        }
        if (str2 != null) {
            publicClientApplicationConfiguration.getAuthorities().clear();
            Authority authorityFromAuthorityUrl = Authority.getAuthorityFromAuthorityUrl(str2);
            authorityFromAuthorityUrl.setDefault(true);
            publicClientApplicationConfiguration.getAuthorities().add(authorityFromAuthorityUrl);
        }
        if (str3 != null) {
            publicClientApplicationConfiguration.setRedirectUri(str3);
        }
        OperationParameters createOperationParameters = OperationParametersAdapter.createOperationParameters(publicClientApplicationConfiguration, publicClientApplicationConfiguration.getOAuth2TokenCache());
        try {
            CommandDispatcher.submitSilent(new GetDeviceModeCommand(createOperationParameters, MSALControllerFactory.getDefaultController(publicClientApplicationConfiguration.getAppContext(), createOperationParameters.getAuthority(), publicClientApplicationConfiguration), new CommandCallback<Boolean, BaseException>() {
                public void onCancel() {
                }

                public void onError(BaseException baseException) {
                    applicationCreatedListener.onError(MsalExceptionAdapter.msalExceptionFromBaseException(baseException));
                }

                public void onTaskCompleted(Boolean bool) {
                    publicClientApplicationConfiguration.setIsSharedDevice(bool.booleanValue());
                    try {
                        if (publicClientApplicationConfiguration.getAccountMode() != AccountMode.SINGLE) {
                            if (!bool.booleanValue()) {
                                applicationCreatedListener.onCreated(new MultipleAccountPublicClientApplication(publicClientApplicationConfiguration));
                                return;
                            }
                        }
                        applicationCreatedListener.onCreated(new SingleAccountPublicClientApplication(publicClientApplicationConfiguration));
                    } catch (MsalClientException e2) {
                        applicationCreatedListener.onError(e2);
                    }
                }
            }));
        } catch (MsalClientException e2) {
            applicationCreatedListener.onError(e2);
        }
    }
}
