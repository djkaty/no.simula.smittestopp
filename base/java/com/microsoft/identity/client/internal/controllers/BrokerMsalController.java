package com.microsoft.identity.client.internal.controllers;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import com.microsoft.identity.client.exception.BrokerCommunicationException;
import com.microsoft.identity.common.adal.internal.AuthenticationConstants;
import com.microsoft.identity.common.exception.BaseException;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.exception.ServiceException;
import com.microsoft.identity.common.internal.authorities.AzureActiveDirectoryAudience;
import com.microsoft.identity.common.internal.broker.BrokerResult;
import com.microsoft.identity.common.internal.broker.BrokerResultFuture;
import com.microsoft.identity.common.internal.broker.MicrosoftAuthClient;
import com.microsoft.identity.common.internal.cache.ICacheRecord;
import com.microsoft.identity.common.internal.cache.MsalOAuth2TokenCache;
import com.microsoft.identity.common.internal.controllers.BaseController;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftRefreshToken;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.ClientInfo;
import com.microsoft.identity.common.internal.providers.microsoft.microsoftsts.MicrosoftStsAccount;
import com.microsoft.identity.common.internal.providers.oauth2.IDToken;
import com.microsoft.identity.common.internal.request.AcquireTokenOperationParameters;
import com.microsoft.identity.common.internal.request.AcquireTokenSilentOperationParameters;
import com.microsoft.identity.common.internal.request.OperationParameters;
import com.microsoft.identity.common.internal.result.AcquireTokenResult;
import com.microsoft.identity.common.internal.result.MsalBrokerResultAdapter;
import com.microsoft.identity.common.internal.telemetry.Telemetry;
import com.microsoft.identity.common.internal.telemetry.TelemetryEventStrings;
import com.microsoft.identity.common.internal.telemetry.events.ApiEndEvent;
import com.microsoft.identity.common.internal.telemetry.events.ApiStartEvent;
import com.microsoft.identity.common.internal.util.ICacheRecordGsonAdapter;
import e.a.a.a.a;
import e.c.c.e;
import java.util.ArrayList;
import java.util.List;

public class BrokerMsalController extends BaseController {
    public static final String MANIFEST_PERMISSION_MANAGE_ACCOUNTS = "android.permission.MANAGE_ACCOUNTS";
    public static final String TAG = "BrokerMsalController";
    public BrokerResultFuture mBrokerResultFuture;

    public interface BrokerOperationInfo<T extends OperationParameters, U> {
        String getMethodName();

        String getTelemetryApiId();

        U perform(BrokerBaseStrategy brokerBaseStrategy, T t);

        void putValueInSuccessEvent(ApiEndEvent apiEndEvent, U u);
    }

    private Intent getBrokerAuthorizationIntent(AcquireTokenOperationParameters acquireTokenOperationParameters) {
        return (Intent) invokeBrokerOperation(acquireTokenOperationParameters, new BrokerOperationInfo<AcquireTokenOperationParameters, Intent>() {
            public String getMethodName() {
                return ":getBrokerAuthorizationIntent";
            }

            public String getTelemetryApiId() {
                return null;
            }

            public void putValueInSuccessEvent(ApiEndEvent apiEndEvent, Intent intent) {
            }

            public Intent perform(BrokerBaseStrategy brokerBaseStrategy, AcquireTokenOperationParameters acquireTokenOperationParameters) {
                return brokerBaseStrategy.getBrokerAuthorizationIntent(acquireTokenOperationParameters);
            }
        });
    }

    private List<BrokerBaseStrategy> getStrategies() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BrokerAuthServiceStrategy());
        arrayList.add(new BrokerAccountManagerStrategy());
        return arrayList;
    }

    private <T extends OperationParameters, U> U invokeBrokerOperation(T t, BrokerOperationInfo<T, U> brokerOperationInfo) {
        if (brokerOperationInfo.getTelemetryApiId() != null) {
            Telemetry.emit(new ApiStartEvent().putProperties(t).putApiId(brokerOperationInfo.getTelemetryApiId()));
        }
        List<BrokerBaseStrategy> strategies = getStrategies();
        int i2 = 0;
        U u = null;
        Throwable e2 = null;
        while (i2 < strategies.size()) {
            BrokerBaseStrategy brokerBaseStrategy = strategies.get(i2);
            try {
                Logger.info(TAG + brokerOperationInfo.getMethodName(), "Executing with strategy: " + brokerBaseStrategy.getClass().getSimpleName());
                brokerBaseStrategy.hello(t);
                u = brokerOperationInfo.perform(brokerBaseStrategy, t);
                if (u != null) {
                    break;
                }
                i2++;
            } catch (BaseException e3) {
                if (brokerOperationInfo.getTelemetryApiId() != null) {
                    Telemetry.emit(new ApiEndEvent().putException(e3).putApiId(brokerOperationInfo.getTelemetryApiId()));
                }
                throw e3;
            } catch (BrokerCommunicationException | Exception e4) {
                e2 = e4;
            }
        }
        if (u == null) {
            BrokerCommunicationException brokerCommunicationException = new BrokerCommunicationException("MSAL failed to communicate to Broker.", e2);
            if (brokerOperationInfo.getTelemetryApiId() != null) {
                Telemetry.emit(new ApiEndEvent().putException(brokerCommunicationException).putApiId(brokerOperationInfo.getTelemetryApiId()));
            }
            throw brokerCommunicationException;
        }
        if (brokerOperationInfo.getTelemetryApiId() != null) {
            ApiEndEvent isApiCallSuccessful = new ApiEndEvent().putApiId(brokerOperationInfo.getTelemetryApiId()).isApiCallSuccessful(Boolean.TRUE);
            brokerOperationInfo.putValueInSuccessEvent(isApiCallSuccessful, u);
            Telemetry.emit(isApiCallSuccessful);
        }
        return u;
    }

    public static boolean isAccountManagerPermissionsGranted(Context context) {
        if (Build.VERSION.SDK_INT >= 23) {
            return true;
        }
        return isPermissionGranted(context, MANIFEST_PERMISSION_MANAGE_ACCOUNTS);
    }

    public static boolean isMicrosoftAuthServiceSupported(Context context) {
        return new MicrosoftAuthClient(context).getIntentForAuthService(context) != null;
    }

    public static boolean isPermissionGranted(Context context, String str) {
        boolean z = context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
        String a = a.a(new StringBuilder(), TAG, ":isPermissionGranted");
        Logger.verbose(a, "is " + str + " granted? [" + z + "]");
        return z;
    }

    private void saveMsaAccountToCache(Bundle bundle, MsalOAuth2TokenCache msalOAuth2TokenCache) {
        e eVar = new e();
        eVar.a(ICacheRecord.class, new ICacheRecordGsonAdapter());
        BrokerResult brokerResult = (BrokerResult) eVar.a().a(bundle.getString(AuthenticationConstants.Broker.BROKER_RESULT_V2), BrokerResult.class);
        if (bundle.getBoolean(AuthenticationConstants.Broker.BROKER_REQUEST_V2_SUCCESS) && brokerResult != null && AzureActiveDirectoryAudience.MSA_MEGA_TENANT_ID.equalsIgnoreCase(brokerResult.getTenantId())) {
            Logger.info(TAG + ":saveMsaAccountToCache", "Result returned for MSA Account, saving to cache");
            try {
                ClientInfo clientInfo = new ClientInfo(brokerResult.getClientInfo());
                MicrosoftStsAccount microsoftStsAccount = new MicrosoftStsAccount(new IDToken(brokerResult.getIdToken()), clientInfo);
                microsoftStsAccount.setEnvironment(brokerResult.getEnvironment());
                msalOAuth2TokenCache.setSingleSignOnState(microsoftStsAccount, new MicrosoftRefreshToken(brokerResult.getRefreshToken(), clientInfo, brokerResult.getScope(), brokerResult.getClientId(), brokerResult.getEnvironment(), brokerResult.getFamilyId()));
            } catch (ServiceException e2) {
                Logger.errorPII(TAG + ":saveMsaAccountToCache", "Exception while creating Idtoken or ClientInfo, cannot save MSA account tokens", e2);
                throw new ClientException("invalid_jwt", e2.getMessage(), e2);
            }
        }
    }

    public AcquireTokenResult acquireToken(AcquireTokenOperationParameters acquireTokenOperationParameters) {
        Telemetry.emit(new ApiStartEvent().putProperties(acquireTokenOperationParameters).putApiId(TelemetryEventStrings.Api.BROKER_ACQUIRE_TOKEN_INTERACTIVE));
        this.mBrokerResultFuture = new BrokerResultFuture();
        Intent brokerAuthorizationIntent = getBrokerAuthorizationIntent(acquireTokenOperationParameters);
        Intent intent = new Intent(acquireTokenOperationParameters.getAppContext(), BrokerActivity.class);
        intent.putExtra(BrokerActivity.BROKER_INTENT, brokerAuthorizationIntent);
        this.mBrokerResultFuture = new BrokerResultFuture();
        acquireTokenOperationParameters.getActivity().startActivity(intent);
        Bundle bundle = this.mBrokerResultFuture.get();
        saveMsaAccountToCache(bundle, (MsalOAuth2TokenCache) acquireTokenOperationParameters.getTokenCache());
        try {
            AcquireTokenResult acquireTokenResultFromResultBundle = new MsalBrokerResultAdapter().getAcquireTokenResultFromResultBundle(bundle);
            Telemetry.emit(new ApiEndEvent().putResult(acquireTokenResultFromResultBundle).putApiId(TelemetryEventStrings.Api.BROKER_ACQUIRE_TOKEN_INTERACTIVE));
            return acquireTokenResultFromResultBundle;
        } catch (BaseException e2) {
            Telemetry.emit(new ApiEndEvent().putException(e2).putApiId(TelemetryEventStrings.Api.BROKER_ACQUIRE_TOKEN_INTERACTIVE));
            throw e2;
        }
    }

    public AcquireTokenResult acquireTokenSilent(AcquireTokenSilentOperationParameters acquireTokenSilentOperationParameters) {
        return (AcquireTokenResult) invokeBrokerOperation(acquireTokenSilentOperationParameters, new BrokerOperationInfo<AcquireTokenSilentOperationParameters, AcquireTokenResult>() {
            public String getMethodName() {
                return ":acquireTokenSilent";
            }

            public String getTelemetryApiId() {
                return TelemetryEventStrings.Api.BROKER_ACQUIRE_TOKEN_SILENT;
            }

            public AcquireTokenResult perform(BrokerBaseStrategy brokerBaseStrategy, AcquireTokenSilentOperationParameters acquireTokenSilentOperationParameters) {
                return brokerBaseStrategy.acquireTokenSilent(acquireTokenSilentOperationParameters);
            }

            public void putValueInSuccessEvent(ApiEndEvent apiEndEvent, AcquireTokenResult acquireTokenResult) {
                apiEndEvent.putResult(acquireTokenResult);
            }
        });
    }

    public void completeAcquireToken(int i2, int i3, Intent intent) {
        Telemetry.emit(new ApiStartEvent().putApiId(TelemetryEventStrings.Api.BROKER_COMPLETE_ACQUIRE_TOKEN_INTERACTIVE).put(TelemetryEventStrings.Key.RESULT_CODE, String.valueOf(i3)).put(TelemetryEventStrings.Key.REQUEST_CODE, String.valueOf(i2)));
        this.mBrokerResultFuture.setResultBundle(intent.getExtras());
        Telemetry.emit(new ApiEndEvent().putApiId(TelemetryEventStrings.Api.BROKER_COMPLETE_ACQUIRE_TOKEN_INTERACTIVE));
    }

    public List<ICacheRecord> getAccounts(OperationParameters operationParameters) {
        return (List) invokeBrokerOperation(operationParameters, new BrokerOperationInfo<OperationParameters, List<ICacheRecord>>() {
            public String getMethodName() {
                return ":getBrokerAccounts";
            }

            public String getTelemetryApiId() {
                return TelemetryEventStrings.Api.BROKER_GET_ACCOUNTS;
            }

            public List<ICacheRecord> perform(BrokerBaseStrategy brokerBaseStrategy, OperationParameters operationParameters) {
                return brokerBaseStrategy.getBrokerAccounts(operationParameters);
            }

            public void putValueInSuccessEvent(ApiEndEvent apiEndEvent, List<ICacheRecord> list) {
                apiEndEvent.put(TelemetryEventStrings.Key.ACCOUNTS_NUMBER, Integer.toString(list.size()));
            }
        });
    }

    public List<ICacheRecord> getCurrentAccount(OperationParameters operationParameters) {
        if (operationParameters.getIsSharedDevice()) {
            return (List) invokeBrokerOperation(operationParameters, new BrokerOperationInfo<OperationParameters, List<ICacheRecord>>() {
                public String getMethodName() {
                    return ":getCurrentAccount";
                }

                public String getTelemetryApiId() {
                    return TelemetryEventStrings.Api.BROKER_GET_CURRENT_ACCOUNT;
                }

                public List<ICacheRecord> perform(BrokerBaseStrategy brokerBaseStrategy, OperationParameters operationParameters) {
                    return brokerBaseStrategy.getCurrentAccountInSharedDevice(operationParameters);
                }

                public void putValueInSuccessEvent(ApiEndEvent apiEndEvent, List<ICacheRecord> list) {
                    apiEndEvent.put(TelemetryEventStrings.Key.ACCOUNTS_NUMBER, Integer.toString(list.size()));
                }
            });
        }
        Logger.verbose(TAG + ":getCurrentAccount", "Not a shared device, invoke getAccounts() instead of getCurrentAccount()");
        return getAccounts(operationParameters);
    }

    public boolean getDeviceMode(OperationParameters operationParameters) {
        return ((Boolean) invokeBrokerOperation(operationParameters, new BrokerOperationInfo<OperationParameters, Boolean>() {
            public String getMethodName() {
                return ":getDeviceMode";
            }

            public String getTelemetryApiId() {
                return TelemetryEventStrings.Api.GET_BROKER_DEVICE_MODE;
            }

            public Boolean perform(BrokerBaseStrategy brokerBaseStrategy, OperationParameters operationParameters) {
                return Boolean.valueOf(brokerBaseStrategy.getDeviceMode(operationParameters));
            }

            public void putValueInSuccessEvent(ApiEndEvent apiEndEvent, Boolean bool) {
                apiEndEvent.put(TelemetryEventStrings.Key.IS_DEVICE_SHARED, Boolean.toString(bool.booleanValue()));
            }
        })).booleanValue();
    }

    public boolean removeAccount(OperationParameters operationParameters) {
        return ((Boolean) invokeBrokerOperation(operationParameters, new BrokerOperationInfo<OperationParameters, Boolean>() {
            public String getMethodName() {
                return ":removeAccount";
            }

            public String getTelemetryApiId() {
                return TelemetryEventStrings.Api.BROKER_REMOVE_ACCOUNT;
            }

            public void putValueInSuccessEvent(ApiEndEvent apiEndEvent, Boolean bool) {
            }

            public Boolean perform(BrokerBaseStrategy brokerBaseStrategy, OperationParameters operationParameters) {
                brokerBaseStrategy.removeBrokerAccount(operationParameters);
                return true;
            }
        })).booleanValue();
    }

    public boolean removeCurrentAccount(OperationParameters operationParameters) {
        if (operationParameters.getIsSharedDevice()) {
            return ((Boolean) invokeBrokerOperation(operationParameters, new BrokerOperationInfo<OperationParameters, Boolean>() {
                public String getMethodName() {
                    return ":removeCurrentAccount";
                }

                public String getTelemetryApiId() {
                    return TelemetryEventStrings.Api.BROKER_REMOVE_ACCOUNT_FROM_SHARED_DEVICE;
                }

                public void putValueInSuccessEvent(ApiEndEvent apiEndEvent, Boolean bool) {
                }

                public Boolean perform(BrokerBaseStrategy brokerBaseStrategy, OperationParameters operationParameters) {
                    brokerBaseStrategy.signOutFromSharedDevice(operationParameters);
                    return true;
                }
            })).booleanValue();
        }
        Logger.verbose(TAG + ":removeCurrentAccount", "Not a shared device, invoke removeAccount() instead of removeCurrentAccount()");
        return removeAccount(operationParameters);
    }
}
