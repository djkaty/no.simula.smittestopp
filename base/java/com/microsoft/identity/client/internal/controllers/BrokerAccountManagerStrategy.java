package com.microsoft.identity.client.internal.controllers;

import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.microsoft.identity.client.exception.BrokerCommunicationException;
import com.microsoft.identity.common.adal.internal.AuthenticationConstants;
import com.microsoft.identity.common.exception.BaseException;
import com.microsoft.identity.common.internal.cache.ICacheRecord;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.request.AcquireTokenOperationParameters;
import com.microsoft.identity.common.internal.request.AcquireTokenSilentOperationParameters;
import com.microsoft.identity.common.internal.request.OperationParameters;
import com.microsoft.identity.common.internal.result.AcquireTokenResult;
import com.microsoft.identity.common.internal.telemetry.Telemetry;
import com.microsoft.identity.common.internal.telemetry.TelemetryEventStrings;
import com.microsoft.identity.common.internal.telemetry.events.BrokerEndEvent;
import com.microsoft.identity.common.internal.telemetry.events.BrokerStartEvent;
import e.a.a.a.a;
import java.io.IOException;
import java.util.List;

public class BrokerAccountManagerStrategy extends BrokerBaseStrategy {
    public static final String TAG = "BrokerAccountManagerStrategy";

    public interface OperationInfo<T extends OperationParameters, U> {
        String getMethodName();

        Bundle getRequestBundle(T t);

        U getResultFromBundle(Bundle bundle);
    }

    public AcquireTokenResult acquireTokenSilent(AcquireTokenSilentOperationParameters acquireTokenSilentOperationParameters) {
        return (AcquireTokenResult) invokeBrokerAccountManagerOperation(acquireTokenSilentOperationParameters, new OperationInfo<AcquireTokenSilentOperationParameters, AcquireTokenResult>() {
            public String getMethodName() {
                return ":acquireTokenSilentWithAccountManager";
            }

            public Bundle getRequestBundle(AcquireTokenSilentOperationParameters acquireTokenSilentOperationParameters) {
                Bundle requestBundleForAcquireTokenSilent = BrokerAccountManagerStrategy.this.mRequestAdapter.getRequestBundleForAcquireTokenSilent(acquireTokenSilentOperationParameters);
                requestBundleForAcquireTokenSilent.putString(AuthenticationConstants.Broker.BROKER_ACCOUNT_MANAGER_OPERATION_KEY, AuthenticationConstants.BrokerAccountManagerOperation.ACQUIRE_TOKEN_SILENT);
                return requestBundleForAcquireTokenSilent;
            }

            public AcquireTokenResult getResultFromBundle(Bundle bundle) {
                return BrokerAccountManagerStrategy.this.mResultAdapter.getAcquireTokenResultFromResultBundle(bundle);
            }
        });
    }

    public List<ICacheRecord> getBrokerAccounts(OperationParameters operationParameters) {
        return (List) invokeBrokerAccountManagerOperation(operationParameters, new OperationInfo<OperationParameters, List<ICacheRecord>>() {
            public String getMethodName() {
                return ":getBrokerAccountsWithAccountManager";
            }

            public Bundle getRequestBundle(OperationParameters operationParameters) {
                Bundle requestBundleForGetAccounts = BrokerAccountManagerStrategy.this.mRequestAdapter.getRequestBundleForGetAccounts(operationParameters);
                requestBundleForGetAccounts.putString(AuthenticationConstants.Broker.BROKER_ACCOUNT_MANAGER_OPERATION_KEY, AuthenticationConstants.BrokerAccountManagerOperation.GET_ACCOUNTS);
                return requestBundleForGetAccounts;
            }

            public List<ICacheRecord> getResultFromBundle(Bundle bundle) {
                return BrokerAccountManagerStrategy.this.mResultAdapter.getAccountsFromResultBundle(bundle);
            }
        });
    }

    public Intent getBrokerAuthorizationIntent(final AcquireTokenOperationParameters acquireTokenOperationParameters) {
        Logger.verbose(TAG + ":getBrokerAuthorizationIntent", "Get the broker authorization intent from AccountManager.");
        return (Intent) invokeBrokerAccountManagerOperation(acquireTokenOperationParameters, new OperationInfo<AcquireTokenOperationParameters, Intent>() {
            public String getMethodName() {
                return ":getBrokerAuthorizationIntent";
            }

            public Bundle getRequestBundle(AcquireTokenOperationParameters acquireTokenOperationParameters) {
                Bundle bundle = new Bundle();
                bundle.putString(AuthenticationConstants.Broker.BROKER_ACCOUNT_MANAGER_OPERATION_KEY, AuthenticationConstants.BrokerAccountManagerOperation.GET_INTENT_FOR_INTERACTIVE_REQUEST);
                return bundle;
            }

            public Intent getResultFromBundle(Bundle bundle) {
                return BrokerAccountManagerStrategy.this.completeInteractiveRequestIntent((Intent) bundle.getParcelable("intent"), acquireTokenOperationParameters);
            }
        });
    }

    public List<ICacheRecord> getCurrentAccountInSharedDevice(OperationParameters operationParameters) {
        return (List) invokeBrokerAccountManagerOperation(operationParameters, new OperationInfo<OperationParameters, List<ICacheRecord>>() {
            public String getMethodName() {
                return ":getCurrentAccountInSharedDeviceWithAccountManager";
            }

            public Bundle getRequestBundle(OperationParameters operationParameters) {
                Bundle requestBundleForGetAccounts = BrokerAccountManagerStrategy.this.mRequestAdapter.getRequestBundleForGetAccounts(operationParameters);
                requestBundleForGetAccounts.putString(AuthenticationConstants.Broker.BROKER_ACCOUNT_MANAGER_OPERATION_KEY, AuthenticationConstants.BrokerAccountManagerOperation.GET_CURRENT_ACCOUNT);
                return requestBundleForGetAccounts;
            }

            public List<ICacheRecord> getResultFromBundle(Bundle bundle) {
                return BrokerAccountManagerStrategy.this.mResultAdapter.getAccountsFromResultBundle(bundle);
            }
        });
    }

    public boolean getDeviceMode(OperationParameters operationParameters) {
        return ((Boolean) invokeBrokerAccountManagerOperation(operationParameters, new OperationInfo<OperationParameters, Boolean>() {
            public String getMethodName() {
                return ":getDeviceModeWithAccountManager";
            }

            public Bundle getRequestBundle(OperationParameters operationParameters) {
                Bundle bundle = new Bundle();
                bundle.putString(AuthenticationConstants.Broker.BROKER_ACCOUNT_MANAGER_OPERATION_KEY, AuthenticationConstants.BrokerAccountManagerOperation.GET_DEVICE_MODE);
                return bundle;
            }

            public Boolean getResultFromBundle(Bundle bundle) {
                return Boolean.valueOf(BrokerAccountManagerStrategy.this.mResultAdapter.getDeviceModeFromResultBundle(bundle));
            }
        })).booleanValue();
    }

    @SuppressLint({"MissingPermission"})
    public void hello(OperationParameters operationParameters) {
        if (BrokerMsalController.isAccountManagerPermissionsGranted(operationParameters.getAppContext())) {
            invokeBrokerAccountManagerOperation(operationParameters, new OperationInfo<OperationParameters, Void>() {
                public String getMethodName() {
                    return ":helloWithAccountManager";
                }

                public Bundle getRequestBundle(OperationParameters operationParameters) {
                    Bundle requestBundleForHello = BrokerAccountManagerStrategy.this.mRequestAdapter.getRequestBundleForHello(operationParameters);
                    requestBundleForHello.putString(AuthenticationConstants.Broker.BROKER_ACCOUNT_MANAGER_OPERATION_KEY, AuthenticationConstants.BrokerAccountManagerOperation.HELLO);
                    return requestBundleForHello;
                }

                public Void getResultFromBundle(Bundle bundle) {
                    BrokerAccountManagerStrategy.this.mResultAdapter.verifyHelloFromResultBundle(bundle);
                    return null;
                }
            });
            return;
        }
        throw new BrokerCommunicationException("AccountManager permissions are not granted", (Throwable) null);
    }

    @SuppressLint({"MissingPermission"})
    public <T extends OperationParameters, U> U invokeBrokerAccountManagerOperation(T t, OperationInfo<T, U> operationInfo) {
        String methodName = operationInfo.getMethodName();
        Telemetry.emit(new BrokerStartEvent().putAction(methodName).putStrategy(TelemetryEventStrings.Value.ACCOUNT_MANAGER));
        try {
            AccountManagerFuture<Bundle> addAccount = AccountManager.get(t.getAppContext()).addAccount(AuthenticationConstants.Broker.BROKER_ACCOUNT_TYPE, AuthenticationConstants.Broker.AUTHTOKEN_TYPE, (String[]) null, operationInfo.getRequestBundle(t), (Activity) null, (AccountManagerCallback) null, getPreferredHandler());
            Logger.verbose(TAG + methodName, "Received result from broker");
            U resultFromBundle = operationInfo.getResultFromBundle(addAccount.getResult());
            Telemetry.emit(new BrokerEndEvent().putAction(methodName).isSuccessful(true));
            return resultFromBundle;
        } catch (AuthenticatorException | OperationCanceledException | IOException e2) {
            Logger.error(a.a(new StringBuilder(), TAG, methodName), e2.getMessage(), e2);
            Telemetry.emit(new BrokerEndEvent().putAction(methodName).isSuccessful(false).putErrorCode("io_error").putErrorDescription(e2.getMessage()));
            throw new BrokerCommunicationException("Failed to connect to AccountManager", e2);
        } catch (BaseException e3) {
            Logger.error(a.a(new StringBuilder(), TAG, methodName), e3.getMessage(), e3);
            Telemetry.emit(new BrokerEndEvent().putAction(methodName).isSuccessful(false).putErrorCode(e3.getErrorCode()).putErrorDescription(e3.getMessage()));
            throw e3;
        }
    }

    public void removeBrokerAccount(OperationParameters operationParameters) {
        invokeBrokerAccountManagerOperation(operationParameters, new OperationInfo<OperationParameters, Void>() {
            public String getMethodName() {
                return ":removeBrokerAccountWithAccountManager";
            }

            public Bundle getRequestBundle(OperationParameters operationParameters) {
                Bundle requestBundleForRemoveAccount = BrokerAccountManagerStrategy.this.mRequestAdapter.getRequestBundleForRemoveAccount(operationParameters);
                requestBundleForRemoveAccount.putString(AuthenticationConstants.Broker.BROKER_ACCOUNT_MANAGER_OPERATION_KEY, AuthenticationConstants.BrokerAccountManagerOperation.REMOVE_ACCOUNT);
                return requestBundleForRemoveAccount;
            }

            public Void getResultFromBundle(Bundle bundle) {
                BrokerAccountManagerStrategy.this.mResultAdapter.verifyRemoveAccountResultFromBundle(bundle);
                return null;
            }
        });
    }

    public void signOutFromSharedDevice(OperationParameters operationParameters) {
        invokeBrokerAccountManagerOperation(operationParameters, new OperationInfo<OperationParameters, Void>() {
            public String getMethodName() {
                return ":signOutFromSharedDeviceWithAccountManager";
            }

            public Bundle getRequestBundle(OperationParameters operationParameters) {
                Bundle requestBundleForRemoveAccountFromSharedDevice = BrokerAccountManagerStrategy.this.mRequestAdapter.getRequestBundleForRemoveAccountFromSharedDevice(operationParameters);
                requestBundleForRemoveAccountFromSharedDevice.putString(AuthenticationConstants.Broker.BROKER_ACCOUNT_MANAGER_OPERATION_KEY, AuthenticationConstants.BrokerAccountManagerOperation.REMOVE_ACCOUNT_FROM_SHARED_DEVICE);
                return requestBundleForRemoveAccountFromSharedDevice;
            }

            public Void getResultFromBundle(Bundle bundle) {
                BrokerAccountManagerStrategy.this.mResultAdapter.verifyRemoveAccountResultFromBundle(bundle);
                return null;
            }
        });
    }
}
