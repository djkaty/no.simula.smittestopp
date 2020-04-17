package com.microsoft.identity.client;

import android.app.Activity;
import android.content.Context;
import android.util.Pair;
import androidx.fragment.app.Fragment;
import com.microsoft.identity.client.ISingleAccountPublicClientApplication;
import com.microsoft.identity.client.claims.ClaimsRequest;
import com.microsoft.identity.client.exception.MsalClientException;
import com.microsoft.identity.client.exception.MsalException;
import com.microsoft.identity.client.internal.AsyncResult;
import com.microsoft.identity.client.internal.MsalUtils;
import com.microsoft.identity.client.internal.controllers.MSALControllerFactory;
import com.microsoft.identity.client.internal.controllers.MsalExceptionAdapter;
import com.microsoft.identity.client.internal.controllers.OperationParametersAdapter;
import com.microsoft.identity.common.adal.internal.cache.IStorageHelper;
import com.microsoft.identity.common.adal.internal.cache.StorageHelper;
import com.microsoft.identity.common.adal.internal.util.JsonExtensions;
import com.microsoft.identity.common.exception.BaseException;
import com.microsoft.identity.common.internal.cache.ICacheRecord;
import com.microsoft.identity.common.internal.cache.SharedPreferencesFileManager;
import com.microsoft.identity.common.internal.controllers.CommandCallback;
import com.microsoft.identity.common.internal.controllers.CommandDispatcher;
import com.microsoft.identity.common.internal.controllers.GetCurrentAccountCommand;
import com.microsoft.identity.common.internal.controllers.RemoveCurrentAccountCommand;
import com.microsoft.identity.common.internal.dto.AccountRecord;
import com.microsoft.identity.common.internal.eststelemetry.PublicApiId;
import com.microsoft.identity.common.internal.request.OperationParameters;
import com.microsoft.identity.common.internal.result.ILocalAuthenticationResult;
import com.microsoft.identity.common.internal.result.ResultFuture;
import e.a.a.a.a;
import java.util.List;

public class SingleAccountPublicClientApplication extends PublicClientApplication implements ISingleAccountPublicClientApplication {
    public static final String CURRENT_ACCOUNT_SHARED_PREFERENCE_KEY = "com.microsoft.identity.client.single_account_credential_cache.current_account";
    public static final String SINGLE_ACCOUNT_CREDENTIAL_SHARED_PREFERENCES = "com.microsoft.identity.client.single_account_credential_cache";
    public static final String TAG = "SingleAccountPublicClientApplication";
    public SharedPreferencesFileManager sharedPreferencesFileManager;

    public SingleAccountPublicClientApplication(PublicClientApplicationConfiguration publicClientApplicationConfiguration) {
        super(publicClientApplicationConfiguration);
        initializeSharedPreferenceFileManager(publicClientApplicationConfiguration.getAppContext());
    }

    /* access modifiers changed from: private */
    public void checkCurrentAccountNotifyCallback(ISingleAccountPublicClientApplication.CurrentAccountCallback currentAccountCallback, List<ICacheRecord> list) {
        MultiTenantAccount multiTenantAccount;
        MultiTenantAccount persistedCurrentAccount = getPersistedCurrentAccount();
        if (list == null) {
            multiTenantAccount = null;
        } else {
            multiTenantAccount = getAccountFromICacheRecordList(list);
        }
        if (didCurrentAccountChange(multiTenantAccount)) {
            currentAccountCallback.onAccountChanged(persistedCurrentAccount, multiTenantAccount);
        }
        persistCurrentAccount(list);
        currentAccountCallback.onAccountLoaded(multiTenantAccount);
    }

    /* access modifiers changed from: private */
    public boolean didCurrentAccountChange(MultiTenantAccount multiTenantAccount) {
        String str;
        MultiTenantAccount persistedCurrentAccount = getPersistedCurrentAccount();
        String str2 = "";
        if (persistedCurrentAccount == null) {
            str = str2;
        } else {
            str = persistedCurrentAccount.getHomeAccountId();
        }
        if (multiTenantAccount != null) {
            str2 = multiTenantAccount.getHomeAccountId();
        }
        return !str.equalsIgnoreCase(str2);
    }

    /* access modifiers changed from: private */
    public MultiTenantAccount getAccountFromICacheRecordList(List<ICacheRecord> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        List<IAccount> adapt = AccountAdapter.adapt(list);
        if (adapt.size() != 1) {
            a.b(new StringBuilder(), TAG, ":getAccountFromICacheRecords", "Returned cacheRecords were adapted into multiple IAccount. This is unexpected in Single account mode.Returning the first adapted account.");
        }
        return (MultiTenantAccount) adapt.get(0);
    }

    private void getCurrentAccountAsyncInternal(final ISingleAccountPublicClientApplication.CurrentAccountCallback currentAccountCallback, String str) {
        PublicClientApplicationConfiguration publicClientApplicationConfiguration = this.mPublicClientConfiguration;
        OperationParameters createOperationParameters = OperationParametersAdapter.createOperationParameters(publicClientApplicationConfiguration, publicClientApplicationConfiguration.getOAuth2TokenCache());
        try {
            GetCurrentAccountCommand getCurrentAccountCommand = new GetCurrentAccountCommand(createOperationParameters, MSALControllerFactory.getDefaultController(this.mPublicClientConfiguration.getAppContext(), createOperationParameters.getAuthority(), this.mPublicClientConfiguration), (CommandCallback) new CommandCallback<List<ICacheRecord>, BaseException>() {
                public void onCancel() {
                }

                public void onError(BaseException baseException) {
                    currentAccountCallback.onError(MsalExceptionAdapter.msalExceptionFromBaseException(baseException));
                }

                public void onTaskCompleted(List<ICacheRecord> list) {
                    SingleAccountPublicClientApplication.this.checkCurrentAccountNotifyCallback(currentAccountCallback, list);
                }
            });
            getCurrentAccountCommand.setPublicApiId(str);
            CommandDispatcher.submitSilent(getCurrentAccountCommand);
        } catch (MsalClientException e2) {
            currentAccountCallback.onError(e2);
        }
    }

    /* access modifiers changed from: private */
    public MultiTenantAccount getPersistedCurrentAccount() {
        String string = this.sharedPreferencesFileManager.getString(CURRENT_ACCOUNT_SHARED_PREFERENCE_KEY);
        if (string == null) {
            return null;
        }
        return getAccountFromICacheRecordList(JsonExtensions.getICacheRecordListFromJsonString(string));
    }

    private void initializeSharedPreferenceFileManager(Context context) {
        this.sharedPreferencesFileManager = new SharedPreferencesFileManager(context, SINGLE_ACCOUNT_CREDENTIAL_SHARED_PREFERENCES, (IStorageHelper) new StorageHelper(context));
    }

    /* access modifiers changed from: private */
    public void persistCurrentAccount(List<ICacheRecord> list) {
        this.sharedPreferencesFileManager.clear();
        if (list != null && list.size() != 0) {
            this.sharedPreferencesFileManager.putString(CURRENT_ACCOUNT_SHARED_PREFERENCE_KEY, JsonExtensions.getJsonStringFromICacheRecordList(list));
        }
    }

    public void acquireToken(Activity activity, String[] strArr, AuthenticationCallback authenticationCallback) {
        if (getPersistedCurrentAccount() == null) {
            authenticationCallback.onError(new MsalClientException(MsalClientException.NO_CURRENT_ACCOUNT));
            return;
        }
        acquireTokenInternal(buildAcquireTokenParameters(activity, (Fragment) null, strArr, getPersistedCurrentAccount(), (Prompt) null, (List<Pair<String, String>>) null, (String[]) null, (String) null, authenticationCallback, (String) null, (ClaimsRequest) null), PublicApiId.SINGLE_ACCOUNT_PCA_ACQUIRE_TOKEN_WITH_ACTIVITY_SCOPES_CALLBACK);
    }

    public IAuthenticationResult acquireTokenSilent(String[] strArr, String str) {
        MultiTenantAccount persistedCurrentAccount = getPersistedCurrentAccount();
        if (persistedCurrentAccount != null) {
            return acquireTokenSilentSyncInternal(strArr, str, persistedCurrentAccount, false, PublicApiId.SINGLE_ACCOUNT_PCA_ACQUIRE_TOKEN_SILENT_WITH_SCOPES_AUTHORITY);
        }
        throw new MsalClientException(MsalClientException.NO_CURRENT_ACCOUNT);
    }

    public void acquireTokenSilentAsync(String[] strArr, String str, SilentAuthenticationCallback silentAuthenticationCallback) {
        MultiTenantAccount persistedCurrentAccount = getPersistedCurrentAccount();
        if (persistedCurrentAccount == null) {
            silentAuthenticationCallback.onError(new MsalClientException(MsalClientException.NO_CURRENT_ACCOUNT));
        } else {
            acquireTokenSilentAsyncInternal(buildAcquireTokenSilentParameters(strArr, persistedCurrentAccount, str, false, (ClaimsRequest) null, silentAuthenticationCallback), PublicApiId.SINGLE_ACCOUNT_PCA_ACQUIRE_TOKEN_SILENT_ASYNC_WITH_SCOPES_AUTHORITY_CALLBACK);
        }
    }

    public CommandCallback<ILocalAuthenticationResult, BaseException> getCommandCallback(final SilentAuthenticationCallback silentAuthenticationCallback, final TokenParameters tokenParameters) {
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
                if (silentAuthenticationCallback != null) {
                    if (!SingleAccountPublicClientApplication.this.didCurrentAccountChange(SingleAccountPublicClientApplication.this.getAccountFromICacheRecordList(iLocalAuthenticationResult.getCacheRecordWithTenantProfileData()))) {
                        SingleAccountPublicClientApplication.this.persistCurrentAccount(iLocalAuthenticationResult.getCacheRecordWithTenantProfileData());
                    } else if (SingleAccountPublicClientApplication.this.getPersistedCurrentAccount() != null) {
                        silentAuthenticationCallback.onError(new MsalClientException(MsalClientException.CURRENT_ACCOUNT_MISMATCH));
                        return;
                    } else {
                        SingleAccountPublicClientApplication.this.persistCurrentAccount(iLocalAuthenticationResult.getCacheRecordWithTenantProfileData());
                    }
                    SingleAccountPublicClientApplication.this.postAuthResult(iLocalAuthenticationResult, tokenParameters, silentAuthenticationCallback);
                    return;
                }
                throw new IllegalStateException("callback cannot be null or empty");
            }
        };
    }

    public ICurrentAccountResult getCurrentAccount() {
        MsalUtils.throwOnMainThread("getCurrentAccount");
        final ResultFuture resultFuture = new ResultFuture();
        getCurrentAccountAsyncInternal(new ISingleAccountPublicClientApplication.CurrentAccountCallback() {
            public void onAccountChanged(IAccount iAccount, IAccount iAccount2) {
                resultFuture.setResult(new AsyncResult(new CurrentAccountResult(iAccount2, iAccount, false), (MsalException) null));
            }

            public void onAccountLoaded(IAccount iAccount) {
                resultFuture.setResult(new AsyncResult(new CurrentAccountResult(iAccount, (IAccount) null, false), (MsalException) null));
            }

            public void onError(MsalException msalException) {
                resultFuture.setResult(new AsyncResult(null, msalException));
            }
        }, PublicApiId.SINGLE_ACCOUNT_PCA_GET_CURRENT_ACCOUNT);
        AsyncResult asyncResult = (AsyncResult) resultFuture.get();
        if (asyncResult.getSuccess()) {
            return (ICurrentAccountResult) asyncResult.getResult();
        }
        throw asyncResult.getException();
    }

    public void getCurrentAccountAsync(ISingleAccountPublicClientApplication.CurrentAccountCallback currentAccountCallback) {
        getCurrentAccountAsyncInternal(currentAccountCallback, PublicApiId.SINGLE_ACCOUNT_PCA_GET_CURRENT_ACCOUNT_ASYNC);
    }

    public void signIn(Activity activity, String str, String[] strArr, AuthenticationCallback authenticationCallback) {
        if (getPersistedCurrentAccount() != null) {
            authenticationCallback.onError(new MsalClientException(MsalClientException.INVALID_PARAMETER));
            return;
        }
        AuthenticationCallback authenticationCallback2 = authenticationCallback;
        acquireTokenInternal(buildAcquireTokenParameters(activity, (Fragment) null, strArr, (IAccount) null, (Prompt) null, (List<Pair<String, String>>) null, (String[]) null, (String) null, authenticationCallback, str, (ClaimsRequest) null), PublicApiId.SINGLE_ACCOUNT_PCA_SIGN_IN);
    }

    public void signOut(ISingleAccountPublicClientApplication.SignOutCallback signOutCallback) {
        signOutInternal(signOutCallback, PublicApiId.SINGLE_ACCOUNT_PCA_SIGN_OUT_WITH_CALLBACK);
    }

    public void signOutInternal(final ISingleAccountPublicClientApplication.SignOutCallback signOutCallback, String str) {
        MultiTenantAccount persistedCurrentAccount = getPersistedCurrentAccount();
        if (persistedCurrentAccount == null) {
            signOutCallback.onError(new MsalClientException(MsalClientException.NO_CURRENT_ACCOUNT));
            return;
        }
        PublicClientApplicationConfiguration publicClientApplicationConfiguration = this.mPublicClientConfiguration;
        OperationParameters createOperationParameters = OperationParametersAdapter.createOperationParameters(publicClientApplicationConfiguration, publicClientApplicationConfiguration.getOAuth2TokenCache());
        AccountRecord accountRecord = new AccountRecord();
        accountRecord.setEnvironment(persistedCurrentAccount.getEnvironment());
        accountRecord.setHomeAccountId(persistedCurrentAccount.getHomeAccountId());
        createOperationParameters.setAccount(accountRecord);
        try {
            RemoveCurrentAccountCommand removeCurrentAccountCommand = new RemoveCurrentAccountCommand(createOperationParameters, MSALControllerFactory.getDefaultController(this.mPublicClientConfiguration.getAppContext(), createOperationParameters.getAuthority(), this.mPublicClientConfiguration), new CommandCallback<Boolean, BaseException>() {
                public void onCancel() {
                }

                public void onError(BaseException baseException) {
                    signOutCallback.onError(MsalExceptionAdapter.msalExceptionFromBaseException(baseException));
                }

                public void onTaskCompleted(Boolean bool) {
                    SingleAccountPublicClientApplication.this.persistCurrentAccount((List<ICacheRecord>) null);
                    signOutCallback.onSignOut();
                }
            });
            removeCurrentAccountCommand.setPublicApiId(str);
            CommandDispatcher.submitSilent(removeCurrentAccountCommand);
        } catch (MsalClientException e2) {
            signOutCallback.onError(e2);
        }
    }

    public boolean signOut() {
        MsalUtils.throwOnMainThread("signOut");
        final ResultFuture resultFuture = new ResultFuture();
        signOutInternal(new ISingleAccountPublicClientApplication.SignOutCallback() {
            public void onError(MsalException msalException) {
                resultFuture.setResult(new AsyncResult(false, msalException));
            }

            public void onSignOut() {
                resultFuture.setResult(new AsyncResult(true, (MsalException) null));
            }
        }, PublicApiId.SINGLE_ACCOUNT_PCA_SIGN_OUT);
        AsyncResult asyncResult = (AsyncResult) resultFuture.get();
        if (asyncResult.getSuccess()) {
            return ((Boolean) asyncResult.getResult()).booleanValue();
        }
        throw asyncResult.getException();
    }

    public IAuthenticationResult acquireTokenSilent(AcquireTokenSilentParameters acquireTokenSilentParameters) {
        MultiTenantAccount persistedCurrentAccount = getPersistedCurrentAccount();
        if (persistedCurrentAccount != null) {
            acquireTokenSilentParameters.setAccount(persistedCurrentAccount);
            return acquireTokenSilentInternal(acquireTokenSilentParameters, PublicApiId.SINGLE_ACCOUNT_PCA_ACQUIRE_TOKEN_SILENT_WITH_PARAMETERS);
        }
        throw new MsalClientException(MsalClientException.NO_CURRENT_ACCOUNT);
    }

    public void acquireTokenSilentAsync(AcquireTokenSilentParameters acquireTokenSilentParameters) {
        MultiTenantAccount persistedCurrentAccount = getPersistedCurrentAccount();
        if (persistedCurrentAccount == null) {
            acquireTokenSilentParameters.getCallback().onError(new MsalClientException(MsalClientException.NO_CURRENT_ACCOUNT));
            return;
        }
        acquireTokenSilentParameters.setAccount(persistedCurrentAccount);
        acquireTokenSilentAsyncInternal(acquireTokenSilentParameters, PublicApiId.SINGLE_ACCOUNT_PCA_ACQUIRE_TOKEN_SILENT_ASYNC_WITH_PARAMETERS);
    }

    public void acquireToken(AcquireTokenParameters acquireTokenParameters) {
        MultiTenantAccount persistedCurrentAccount = getPersistedCurrentAccount();
        if (persistedCurrentAccount != null) {
            acquireTokenParameters.setAccount(persistedCurrentAccount);
            acquireTokenParameters.setLoginHint("");
        }
        acquireTokenInternal(acquireTokenParameters, PublicApiId.SINGLE_ACCOUNT_PCA_ACQUIRE_TOKEN_WITH_PARAMETERS);
    }
}
