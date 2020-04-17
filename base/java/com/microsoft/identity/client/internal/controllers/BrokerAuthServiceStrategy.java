package com.microsoft.identity.client.internal.controllers;

import android.content.Intent;
import com.microsoft.identity.client.IMicrosoftAuthService;
import com.microsoft.identity.common.internal.cache.ICacheRecord;
import com.microsoft.identity.common.internal.request.AcquireTokenOperationParameters;
import com.microsoft.identity.common.internal.request.AcquireTokenSilentOperationParameters;
import com.microsoft.identity.common.internal.request.OperationParameters;
import com.microsoft.identity.common.internal.result.AcquireTokenResult;
import e.a.a.a.a;
import java.util.List;

public class BrokerAuthServiceStrategy extends BrokerBaseStrategy {
    public static final String TAG = "BrokerAuthServiceStrategy";

    public interface AuthServiceOperation<T> {
        String getOperationName();

        T perform(IMicrosoftAuthService iMicrosoftAuthService);
    }

    private Intent getBrokerAuthorizationIntentFromAuthService(AcquireTokenOperationParameters acquireTokenOperationParameters) {
        return (Intent) performAuthServiceOperation(acquireTokenOperationParameters.getAppContext(), new AuthServiceOperation<Intent>() {
            public String getOperationName() {
                return ":getBrokerAuthorizationIntentFromAuthService";
            }

            public Intent perform(IMicrosoftAuthService iMicrosoftAuthService) {
                return iMicrosoftAuthService.getIntentForInteractiveRequest();
            }
        });
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x0083 A[Catch:{ RemoteException -> 0x007e, InterruptedException -> 0x007c, ExecutionException -> 0x007a, BaseException -> 0x0040, all -> 0x003d }] */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0086 A[Catch:{ RemoteException -> 0x007e, InterruptedException -> 0x007c, ExecutionException -> 0x007a, BaseException -> 0x0040, all -> 0x003d }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private <T> T performAuthServiceOperation(android.content.Context r6, com.microsoft.identity.client.internal.controllers.BrokerAuthServiceStrategy.AuthServiceOperation<T> r7) {
        /*
            r5 = this;
            java.lang.String r0 = r7.getOperationName()
            com.microsoft.identity.common.internal.telemetry.events.BrokerStartEvent r1 = new com.microsoft.identity.common.internal.telemetry.events.BrokerStartEvent
            r1.<init>()
            com.microsoft.identity.common.internal.telemetry.events.BrokerStartEvent r1 = r1.putAction(r0)
            java.lang.String r2 = "bound_service"
            com.microsoft.identity.common.internal.telemetry.events.BrokerStartEvent r1 = r1.putStrategy(r2)
            com.microsoft.identity.common.internal.telemetry.Telemetry.emit(r1)
            com.microsoft.identity.common.internal.broker.MicrosoftAuthClient r1 = new com.microsoft.identity.common.internal.broker.MicrosoftAuthClient
            r1.<init>(r6)
            r6 = 0
            com.microsoft.identity.common.internal.broker.MicrosoftAuthServiceFuture r2 = r1.connect()     // Catch:{ RemoteException -> 0x007e, InterruptedException -> 0x007c, ExecutionException -> 0x007a, BaseException -> 0x0040 }
            com.microsoft.identity.client.IMicrosoftAuthService r2 = r2.get()     // Catch:{ RemoteException -> 0x007e, InterruptedException -> 0x007c, ExecutionException -> 0x007a, BaseException -> 0x0040 }
            java.lang.Object r6 = r7.perform(r2)     // Catch:{ RemoteException -> 0x007e, InterruptedException -> 0x007c, ExecutionException -> 0x007a, BaseException -> 0x0040 }
            r1.disconnect()
            com.microsoft.identity.common.internal.telemetry.events.BrokerEndEvent r7 = new com.microsoft.identity.common.internal.telemetry.events.BrokerEndEvent
            r7.<init>()
            com.microsoft.identity.common.internal.telemetry.events.BrokerEndEvent r7 = r7.putAction(r0)
            r0 = 1
            com.microsoft.identity.common.internal.telemetry.events.BrokerEndEvent r7 = r7.isSuccessful(r0)
            com.microsoft.identity.common.internal.telemetry.Telemetry.emit(r7)
            return r6
        L_0x003d:
            r6 = move-exception
            goto L_0x00c0
        L_0x0040:
            r7 = move-exception
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x003d }
            r2.<init>()     // Catch:{ all -> 0x003d }
            java.lang.String r3 = TAG     // Catch:{ all -> 0x003d }
            r2.append(r3)     // Catch:{ all -> 0x003d }
            r2.append(r0)     // Catch:{ all -> 0x003d }
            java.lang.String r2 = r2.toString()     // Catch:{ all -> 0x003d }
            java.lang.String r3 = r7.getMessage()     // Catch:{ all -> 0x003d }
            com.microsoft.identity.common.internal.logging.Logger.error(r2, r3, r7)     // Catch:{ all -> 0x003d }
            com.microsoft.identity.common.internal.telemetry.events.BrokerEndEvent r2 = new com.microsoft.identity.common.internal.telemetry.events.BrokerEndEvent     // Catch:{ all -> 0x003d }
            r2.<init>()     // Catch:{ all -> 0x003d }
            com.microsoft.identity.common.internal.telemetry.events.BrokerEndEvent r0 = r2.putAction(r0)     // Catch:{ all -> 0x003d }
            com.microsoft.identity.common.internal.telemetry.events.BrokerEndEvent r6 = r0.isSuccessful(r6)     // Catch:{ all -> 0x003d }
            java.lang.String r0 = r7.getErrorCode()     // Catch:{ all -> 0x003d }
            com.microsoft.identity.common.internal.telemetry.events.BrokerEndEvent r6 = r6.putErrorCode(r0)     // Catch:{ all -> 0x003d }
            java.lang.String r0 = r7.getMessage()     // Catch:{ all -> 0x003d }
            com.microsoft.identity.common.internal.telemetry.events.BrokerEndEvent r6 = r6.putErrorDescription(r0)     // Catch:{ all -> 0x003d }
            com.microsoft.identity.common.internal.telemetry.Telemetry.emit(r6)     // Catch:{ all -> 0x003d }
            throw r7     // Catch:{ all -> 0x003d }
        L_0x007a:
            r7 = move-exception
            goto L_0x007f
        L_0x007c:
            r7 = move-exception
            goto L_0x007f
        L_0x007e:
            r7 = move-exception
        L_0x007f:
            boolean r2 = r7 instanceof android.os.RemoteException     // Catch:{ all -> 0x003d }
            if (r2 == 0) goto L_0x0086
            java.lang.String r2 = "RemoteException occurred while attempting to invoke remote service"
            goto L_0x0088
        L_0x0086:
            java.lang.String r2 = "Exception occurred while awaiting (get) return of MicrosoftAuthService"
        L_0x0088:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x003d }
            r3.<init>()     // Catch:{ all -> 0x003d }
            java.lang.String r4 = TAG     // Catch:{ all -> 0x003d }
            r3.append(r4)     // Catch:{ all -> 0x003d }
            r3.append(r0)     // Catch:{ all -> 0x003d }
            java.lang.String r3 = r3.toString()     // Catch:{ all -> 0x003d }
            com.microsoft.identity.common.internal.logging.Logger.error(r3, r2, r7)     // Catch:{ all -> 0x003d }
            com.microsoft.identity.common.internal.telemetry.events.BrokerEndEvent r3 = new com.microsoft.identity.common.internal.telemetry.events.BrokerEndEvent     // Catch:{ all -> 0x003d }
            r3.<init>()     // Catch:{ all -> 0x003d }
            com.microsoft.identity.common.internal.telemetry.events.BrokerEndEvent r0 = r3.putAction(r0)     // Catch:{ all -> 0x003d }
            com.microsoft.identity.common.internal.telemetry.events.BrokerEndEvent r6 = r0.isSuccessful(r6)     // Catch:{ all -> 0x003d }
            java.lang.String r0 = "io_error"
            com.microsoft.identity.common.internal.telemetry.events.BrokerEndEvent r6 = r6.putErrorCode(r0)     // Catch:{ all -> 0x003d }
            java.lang.String r0 = r7.getMessage()     // Catch:{ all -> 0x003d }
            com.microsoft.identity.common.internal.telemetry.events.BrokerEndEvent r6 = r6.putErrorDescription(r0)     // Catch:{ all -> 0x003d }
            com.microsoft.identity.common.internal.telemetry.Telemetry.emit(r6)     // Catch:{ all -> 0x003d }
            com.microsoft.identity.client.exception.BrokerCommunicationException r6 = new com.microsoft.identity.client.exception.BrokerCommunicationException     // Catch:{ all -> 0x003d }
            r6.<init>(r2, r7)     // Catch:{ all -> 0x003d }
            throw r6     // Catch:{ all -> 0x003d }
        L_0x00c0:
            r1.disconnect()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.identity.client.internal.controllers.BrokerAuthServiceStrategy.performAuthServiceOperation(android.content.Context, com.microsoft.identity.client.internal.controllers.BrokerAuthServiceStrategy$AuthServiceOperation):java.lang.Object");
    }

    public AcquireTokenResult acquireTokenSilent(final AcquireTokenSilentOperationParameters acquireTokenSilentOperationParameters) {
        return (AcquireTokenResult) performAuthServiceOperation(acquireTokenSilentOperationParameters.getAppContext(), new AuthServiceOperation<AcquireTokenResult>() {
            public String getOperationName() {
                return ":acquireTokenSilentWithAuthService";
            }

            public AcquireTokenResult perform(IMicrosoftAuthService iMicrosoftAuthService) {
                return BrokerAuthServiceStrategy.this.mResultAdapter.getAcquireTokenResultFromResultBundle(iMicrosoftAuthService.acquireTokenSilently(BrokerAuthServiceStrategy.this.mRequestAdapter.getRequestBundleForAcquireTokenSilent(acquireTokenSilentOperationParameters)));
            }
        });
    }

    public List<ICacheRecord> getBrokerAccounts(final OperationParameters operationParameters) {
        return (List) performAuthServiceOperation(operationParameters.getAppContext(), new AuthServiceOperation<List<ICacheRecord>>() {
            public String getOperationName() {
                return ":getBrokerAccountsWithAuthService";
            }

            public List<ICacheRecord> perform(IMicrosoftAuthService iMicrosoftAuthService) {
                return BrokerAuthServiceStrategy.this.mResultAdapter.getAccountsFromResultBundle(iMicrosoftAuthService.getAccounts(BrokerAuthServiceStrategy.this.mRequestAdapter.getRequestBundleForGetAccounts(operationParameters)));
            }
        });
    }

    public Intent getBrokerAuthorizationIntent(AcquireTokenOperationParameters acquireTokenOperationParameters) {
        a.b(new StringBuilder(), TAG, ":getBrokerAuthorizationIntent", "Get the broker authorization intent from auth service.");
        return completeInteractiveRequestIntent(getBrokerAuthorizationIntentFromAuthService(acquireTokenOperationParameters), acquireTokenOperationParameters);
    }

    public List<ICacheRecord> getCurrentAccountInSharedDevice(final OperationParameters operationParameters) {
        return (List) performAuthServiceOperation(operationParameters.getAppContext(), new AuthServiceOperation<List<ICacheRecord>>() {
            public String getOperationName() {
                return ":getCurrentAccountInSharedDeviceWithAuthService";
            }

            public List<ICacheRecord> perform(IMicrosoftAuthService iMicrosoftAuthService) {
                return BrokerAuthServiceStrategy.this.mResultAdapter.getAccountsFromResultBundle(iMicrosoftAuthService.getCurrentAccount(BrokerAuthServiceStrategy.this.mRequestAdapter.getRequestBundleForGetAccounts(operationParameters)));
            }
        });
    }

    public boolean getDeviceMode(OperationParameters operationParameters) {
        return ((Boolean) performAuthServiceOperation(operationParameters.getAppContext(), new AuthServiceOperation<Boolean>() {
            public String getOperationName() {
                return ":getDeviceModeWithAuthService";
            }

            public Boolean perform(IMicrosoftAuthService iMicrosoftAuthService) {
                return Boolean.valueOf(BrokerAuthServiceStrategy.this.mResultAdapter.getDeviceModeFromResultBundle(iMicrosoftAuthService.getDeviceMode()));
            }
        })).booleanValue();
    }

    public void hello(final OperationParameters operationParameters) {
        performAuthServiceOperation(operationParameters.getAppContext(), new AuthServiceOperation<Void>() {
            public String getOperationName() {
                return ":helloWithMicrosoftAuthService";
            }

            public Void perform(IMicrosoftAuthService iMicrosoftAuthService) {
                BrokerAuthServiceStrategy.this.mResultAdapter.verifyHelloFromResultBundle(iMicrosoftAuthService.hello(BrokerAuthServiceStrategy.this.mRequestAdapter.getRequestBundleForHello(operationParameters)));
                return null;
            }
        });
    }

    public void removeBrokerAccount(final OperationParameters operationParameters) {
        performAuthServiceOperation(operationParameters.getAppContext(), new AuthServiceOperation<Void>() {
            public String getOperationName() {
                return ":removeBrokerAccountWithAuthService";
            }

            public Void perform(IMicrosoftAuthService iMicrosoftAuthService) {
                BrokerAuthServiceStrategy.this.mResultAdapter.verifyRemoveAccountResultFromBundle(iMicrosoftAuthService.removeAccount(BrokerAuthServiceStrategy.this.mRequestAdapter.getRequestBundleForRemoveAccount(operationParameters)));
                return null;
            }
        });
    }

    public void signOutFromSharedDevice(final OperationParameters operationParameters) {
        performAuthServiceOperation(operationParameters.getAppContext(), new AuthServiceOperation<Void>() {
            public String getOperationName() {
                return ":signOutFromSharedDeviceWithAuthService";
            }

            public Void perform(IMicrosoftAuthService iMicrosoftAuthService) {
                BrokerAuthServiceStrategy.this.mResultAdapter.verifyRemoveAccountResultFromBundle(iMicrosoftAuthService.removeAccountFromSharedDevice(BrokerAuthServiceStrategy.this.mRequestAdapter.getRequestBundleForRemoveAccountFromSharedDevice(operationParameters)));
                return null;
            }
        });
    }
}
