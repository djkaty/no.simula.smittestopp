package com.microsoft.identity.client;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import androidx.fragment.app.Fragment;
import com.microsoft.identity.client.IMultipleAccountPublicClientApplication;
import com.microsoft.identity.client.IPublicClientApplication;
import com.microsoft.identity.client.PublicClientApplication;
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
import com.microsoft.identity.common.exception.BaseException;
import com.microsoft.identity.common.internal.cache.ADALOAuth2TokenCache;
import com.microsoft.identity.common.internal.cache.ICacheRecord;
import com.microsoft.identity.common.internal.cache.IShareSingleSignOnState;
import com.microsoft.identity.common.internal.cache.SharedPreferencesFileManager;
import com.microsoft.identity.common.internal.controllers.CommandCallback;
import com.microsoft.identity.common.internal.controllers.CommandDispatcher;
import com.microsoft.identity.common.internal.controllers.LoadAccountCommand;
import com.microsoft.identity.common.internal.controllers.RemoveAccountCommand;
import com.microsoft.identity.common.internal.dto.AccountRecord;
import com.microsoft.identity.common.internal.eststelemetry.PublicApiId;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.migration.AdalMigrationAdapter;
import com.microsoft.identity.common.internal.migration.TokenMigrationCallback;
import com.microsoft.identity.common.internal.migration.TokenMigrationUtility;
import com.microsoft.identity.common.internal.request.OperationParameters;
import com.microsoft.identity.common.internal.result.ResultFuture;
import e.a.a.a.a;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MultipleAccountPublicClientApplication extends PublicClientApplication implements IMultipleAccountPublicClientApplication {
    public static final String TAG = "MultipleAccountPublicClientApplication";

    public MultipleAccountPublicClientApplication(PublicClientApplicationConfiguration publicClientApplicationConfiguration) {
        super(publicClientApplicationConfiguration);
    }

    private void getAccountInternal(final String str, final IMultipleAccountPublicClientApplication.GetAccountCallback getAccountCallback, String str2) {
        a.b(new StringBuilder(), TAG, ":getAccount", "Get account with the identifier.");
        try {
            OperationParameters createOperationParameters = OperationParametersAdapter.createOperationParameters(this.mPublicClientConfiguration, this.mPublicClientConfiguration.getOAuth2TokenCache());
            LoadAccountCommand loadAccountCommand = new LoadAccountCommand(createOperationParameters, MSALControllerFactory.getAllControllers(this.mPublicClientConfiguration.getAppContext(), createOperationParameters.getAuthority(), this.mPublicClientConfiguration), (CommandCallback) new CommandCallback<List<ICacheRecord>, BaseException>() {
                public void onCancel() {
                }

                public void onError(BaseException baseException) {
                    Logger.error(MultipleAccountPublicClientApplication.TAG + ":getAccount", baseException.getMessage(), baseException);
                    getAccountCallback.onError(MsalExceptionAdapter.msalExceptionFromBaseException(baseException));
                }

                public void onTaskCompleted(List<ICacheRecord> list) {
                    if (list == null || list.size() == 0) {
                        Logger.verbose(MultipleAccountPublicClientApplication.TAG + ":getAccount", "No account found.");
                        getAccountCallback.onTaskCompleted((IAccount) null);
                        return;
                    }
                    List<IAccount> adapt = AccountAdapter.adapt(list);
                    String trim = str.trim();
                    MultipleAccountPublicClientApplication multipleAccountPublicClientApplication = MultipleAccountPublicClientApplication.this;
                    PublicClientApplication.AccountMatcher accountMatcher = new PublicClientApplication.AccountMatcher(multipleAccountPublicClientApplication.homeAccountMatcher, multipleAccountPublicClientApplication.localAccountMatcher, multipleAccountPublicClientApplication.usernameMatcher);
                    for (IAccount next : adapt) {
                        if (accountMatcher.matches(trim, next)) {
                            getAccountCallback.onTaskCompleted(next);
                            return;
                        }
                    }
                    getAccountCallback.onTaskCompleted((IAccount) null);
                }
            });
            loadAccountCommand.setPublicApiId(str2);
            CommandDispatcher.submitSilent(loadAccountCommand);
        } catch (MsalClientException e2) {
            Logger.error(a.a(new StringBuilder(), TAG, ":getAccount"), e2.getMessage(), e2);
            getAccountCallback.onError(e2);
        }
    }

    private void getAccountsInternal(final IPublicClientApplication.LoadAccountsCallback loadAccountsCallback, String str) {
        Handler handler;
        List<ICacheRecord> accountsWithAggregatedAccountData = this.mPublicClientConfiguration.getOAuth2TokenCache().getAccountsWithAggregatedAccountData((String) null, this.mPublicClientConfiguration.getClientId());
        if (Looper.myLooper() == null || Looper.getMainLooper() == Looper.myLooper()) {
            handler = new Handler(Looper.getMainLooper());
        } else {
            handler = new Handler(Looper.myLooper());
        }
        if (accountsWithAggregatedAccountData.isEmpty()) {
            Map<String, String> all = new SharedPreferencesFileManager(this.mPublicClientConfiguration.getAppContext(), ADALOAuth2TokenCache.SHARED_PREFERENCES_FILENAME, (IStorageHelper) new StorageHelper(this.mPublicClientConfiguration.getAppContext())).getAll();
            HashMap hashMap = new HashMap();
            hashMap.put(this.mPublicClientConfiguration.getClientId(), this.mPublicClientConfiguration.getRedirectUri());
            new TokenMigrationUtility()._import(new AdalMigrationAdapter(this.mPublicClientConfiguration.getAppContext(), hashMap, false), all, (IShareSingleSignOnState) this.mPublicClientConfiguration.getOAuth2TokenCache(), new TokenMigrationCallback() {
                public void onMigrationFinished(int i2) {
                    Logger.info(MultipleAccountPublicClientApplication.TAG + ":getAccounts" + ":onMigrationFinished", "Migrated [" + i2 + "] accounts");
                }
            });
        } else {
            new AdalMigrationAdapter(this.mPublicClientConfiguration.getAppContext(), (Map<String, String>) null, false).setMigrationStatus(true);
        }
        try {
            OperationParameters createOperationParameters = OperationParametersAdapter.createOperationParameters(this.mPublicClientConfiguration, this.mPublicClientConfiguration.getOAuth2TokenCache());
            LoadAccountCommand loadAccountCommand = new LoadAccountCommand(createOperationParameters, MSALControllerFactory.getAllControllers(this.mPublicClientConfiguration.getAppContext(), createOperationParameters.getAuthority(), this.mPublicClientConfiguration), (CommandCallback) PublicClientApplication.getLoadAccountsCallback(loadAccountsCallback));
            loadAccountCommand.setPublicApiId(str);
            CommandDispatcher.submitSilent(loadAccountCommand);
        } catch (MsalClientException e2) {
            handler.post(new Runnable() {
                public void run() {
                    loadAccountsCallback.onError(e2);
                }
            });
        }
    }

    private void removeAccountInternal(IAccount iAccount, final IMultipleAccountPublicClientApplication.RemoveAccountCallback removeAccountCallback, String str) {
        MultiTenantAccount multiTenantAccount = (MultiTenantAccount) iAccount;
        if (multiTenantAccount == null) {
            Logger.warn(TAG, "Requisite IAccount or IAccount fields were null. Insufficient criteria to remove IAccount.");
            removeAccountCallback.onError(new MsalClientException(MsalClientException.INVALID_PARAMETER));
            return;
        }
        PublicClientApplicationConfiguration publicClientApplicationConfiguration = this.mPublicClientConfiguration;
        OperationParameters createOperationParameters = OperationParametersAdapter.createOperationParameters(publicClientApplicationConfiguration, publicClientApplicationConfiguration.getOAuth2TokenCache());
        AccountRecord accountRecord = new AccountRecord();
        accountRecord.setEnvironment(multiTenantAccount.getEnvironment());
        accountRecord.setHomeAccountId(multiTenantAccount.getHomeAccountId());
        createOperationParameters.setAccount(accountRecord);
        try {
            RemoveAccountCommand removeAccountCommand = new RemoveAccountCommand(createOperationParameters, MSALControllerFactory.getAllControllers(this.mPublicClientConfiguration.getAppContext(), createOperationParameters.getAuthority(), this.mPublicClientConfiguration), new CommandCallback<Boolean, BaseException>() {
                public void onCancel() {
                }

                public void onError(BaseException baseException) {
                    removeAccountCallback.onError(MsalExceptionAdapter.msalExceptionFromBaseException(baseException));
                }

                public void onTaskCompleted(Boolean bool) {
                    removeAccountCallback.onRemoved();
                }
            });
            removeAccountCommand.setPublicApiId(str);
            CommandDispatcher.submitSilent(removeAccountCommand);
        } catch (MsalClientException e2) {
            removeAccountCallback.onError(e2);
        }
    }

    public void acquireToken(Activity activity, String[] strArr, String str, AuthenticationCallback authenticationCallback) {
        acquireTokenInternal(buildAcquireTokenParameters(activity, (Fragment) null, strArr, (IAccount) null, (Prompt) null, (List<Pair<String, String>>) null, (String[]) null, (String) null, authenticationCallback, str, (ClaimsRequest) null), PublicApiId.MULTIPLE_ACCOUNT_PCA_ACQUIRE_TOKEN_WITH_ACTIVITY_SCOPES_LOGINHINT_CALLBACK);
    }

    public IAuthenticationResult acquireTokenSilent(String[] strArr, IAccount iAccount, String str) {
        return acquireTokenSilentSyncInternal(strArr, str, iAccount, false, PublicApiId.MULTIPLE_ACCOUNT_PCA_ACQUIRE_TOKEN_SILENT_WITH_SCOPES_ACCOUNT_AUTHORITY);
    }

    public void acquireTokenSilentAsync(String[] strArr, IAccount iAccount, String str, SilentAuthenticationCallback silentAuthenticationCallback) {
        acquireTokenSilentAsyncInternal(buildAcquireTokenSilentParameters(strArr, iAccount, str, false, (ClaimsRequest) null, silentAuthenticationCallback), PublicApiId.MULTIPLE_ACCOUNT_PCA_ACQUIRE_TOKEN_SILENT_ASYNC_WITH_SCOPES_ACCOUNT_AUTHORITY_CALLBACK);
    }

    public void getAccount(String str, IMultipleAccountPublicClientApplication.GetAccountCallback getAccountCallback) {
        getAccountInternal(str, getAccountCallback, PublicApiId.MULTIPLE_ACCOUNT_PCA_GET_ACCOUNT_WITH_IDENTIFIER_CALLBACK);
    }

    public void getAccounts(IPublicClientApplication.LoadAccountsCallback loadAccountsCallback) {
        getAccountsInternal(loadAccountsCallback, PublicApiId.MULTIPLE_ACCOUNT_PCA_GET_ACCOUNTS_WITH_CALLBACK);
    }

    public void removeAccount(IAccount iAccount, IMultipleAccountPublicClientApplication.RemoveAccountCallback removeAccountCallback) {
        removeAccountInternal(iAccount, removeAccountCallback, PublicApiId.MULTIPLE_ACCOUNT_PCA_REMOVE_ACCOUNT_WITH_ACCOUNT_CALLBACK);
    }

    public IAccount getAccount(String str) {
        MsalUtils.throwOnMainThread("getAccount");
        final ResultFuture resultFuture = new ResultFuture();
        getAccountInternal(str, new IMultipleAccountPublicClientApplication.GetAccountCallback() {
            public void onError(MsalException msalException) {
                resultFuture.setResult(new AsyncResult(null, msalException));
            }

            public void onTaskCompleted(IAccount iAccount) {
                resultFuture.setResult(new AsyncResult(iAccount, (MsalException) null));
            }
        }, PublicApiId.MULTIPLE_ACCOUNT_PCA_GET_ACCOUNT_WITH_IDENTIFIER);
        AsyncResult asyncResult = (AsyncResult) resultFuture.get();
        if (asyncResult.getSuccess()) {
            return (IAccount) asyncResult.getResult();
        }
        throw asyncResult.getException();
    }

    public List<IAccount> getAccounts() {
        MsalUtils.throwOnMainThread("getAccounts");
        final ResultFuture resultFuture = new ResultFuture();
        getAccountsInternal(new IPublicClientApplication.LoadAccountsCallback() {
            public void onError(MsalException msalException) {
                resultFuture.setResult(new AsyncResult(null, msalException));
            }

            public void onTaskCompleted(List<IAccount> list) {
                resultFuture.setResult(new AsyncResult(list, (MsalException) null));
            }
        }, PublicApiId.MULTIPLE_ACCOUNT_PCA_GET_ACCOUNTS);
        AsyncResult asyncResult = (AsyncResult) resultFuture.get();
        if (asyncResult.getSuccess()) {
            return (List) asyncResult.getResult();
        }
        throw asyncResult.getException();
    }

    public boolean removeAccount(IAccount iAccount) {
        final ResultFuture resultFuture = new ResultFuture();
        removeAccountInternal(iAccount, new IMultipleAccountPublicClientApplication.RemoveAccountCallback() {
            public void onError(MsalException msalException) {
                resultFuture.setResult(new AsyncResult(false, msalException));
            }

            public void onRemoved() {
                resultFuture.setResult(new AsyncResult(true, (MsalException) null));
            }
        }, PublicApiId.MULTIPLE_ACCOUNT_PCA_REMOVE_ACCOUNT_WITH_ACCOUNT);
        AsyncResult asyncResult = (AsyncResult) resultFuture.get();
        if (asyncResult.getSuccess()) {
            return ((Boolean) asyncResult.getResult()).booleanValue();
        }
        throw asyncResult.getException();
    }
}
