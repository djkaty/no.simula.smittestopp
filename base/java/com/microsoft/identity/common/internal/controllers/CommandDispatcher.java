package com.microsoft.identity.common.internal.controllers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import com.microsoft.identity.common.adal.internal.AuthenticationConstants;
import com.microsoft.identity.common.exception.BaseException;
import com.microsoft.identity.common.exception.IntuneAppProtectionPolicyRequiredException;
import com.microsoft.identity.common.exception.UserCancelException;
import com.microsoft.identity.common.internal.controllers.CommandResult;
import com.microsoft.identity.common.internal.eststelemetry.EstsTelemetry;
import com.microsoft.identity.common.internal.logging.DiagnosticContext;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.logging.RequestContext;
import com.microsoft.identity.common.internal.request.AcquireTokenOperationParameters;
import com.microsoft.identity.common.internal.request.AcquireTokenSilentOperationParameters;
import com.microsoft.identity.common.internal.request.BrokerAcquireTokenOperationParameters;
import com.microsoft.identity.common.internal.result.AcquireTokenResult;
import com.microsoft.identity.common.internal.result.ILocalAuthenticationResult;
import com.microsoft.identity.common.internal.telemetry.Telemetry;
import d.q.a.a;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class CommandDispatcher {
    public static final String TAG = "CommandDispatcher";
    public static InteractiveTokenCommand sCommand = null;
    public static final CommandResultCache sCommandResultCache = new CommandResultCache();
    public static final ExecutorService sInteractiveExecutor = Executors.newSingleThreadExecutor();
    public static final Object sLock = new Object();
    public static final ExecutorService sSilentExecutor = Executors.newCachedThreadPool();

    /* renamed from: com.microsoft.identity.common.internal.controllers.CommandDispatcher$4  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass4 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$identity$common$internal$controllers$CommandResult$ResultStatus;

        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|1|2|3|4|5|6|8) */
        /* JADX WARNING: Code restructure failed: missing block: B:9:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x000f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x0015 */
        static {
            /*
                com.microsoft.identity.common.internal.controllers.CommandResult$ResultStatus[] r0 = com.microsoft.identity.common.internal.controllers.CommandResult.ResultStatus.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$identity$common$internal$controllers$CommandResult$ResultStatus = r0
                r1 = 1
                r2 = 2
                com.microsoft.identity.common.internal.controllers.CommandResult$ResultStatus r3 = com.microsoft.identity.common.internal.controllers.CommandResult.ResultStatus.ERROR     // Catch:{ NoSuchFieldError -> 0x000f }
                r0[r2] = r1     // Catch:{ NoSuchFieldError -> 0x000f }
            L_0x000f:
                int[] r0 = $SwitchMap$com$microsoft$identity$common$internal$controllers$CommandResult$ResultStatus     // Catch:{ NoSuchFieldError -> 0x0015 }
                com.microsoft.identity.common.internal.controllers.CommandResult$ResultStatus r3 = com.microsoft.identity.common.internal.controllers.CommandResult.ResultStatus.COMPLETED     // Catch:{ NoSuchFieldError -> 0x0015 }
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0015 }
            L_0x0015:
                int[] r0 = $SwitchMap$com$microsoft$identity$common$internal$controllers$CommandResult$ResultStatus     // Catch:{ NoSuchFieldError -> 0x001d }
                com.microsoft.identity.common.internal.controllers.CommandResult$ResultStatus r1 = com.microsoft.identity.common.internal.controllers.CommandResult.ResultStatus.CANCEL     // Catch:{ NoSuchFieldError -> 0x001d }
                r1 = 0
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001d }
            L_0x001d:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.identity.common.internal.controllers.CommandDispatcher.AnonymousClass4.<clinit>():void");
        }
    }

    public static void beginInteractive(final InteractiveTokenCommand interactiveTokenCommand) {
        Logger.info(TAG + ":beginInteractive", "Beginning interactive request");
        synchronized (sLock) {
            final a a = a.a(interactiveTokenCommand.getParameters().getAppContext());
            if (interactiveTokenCommand.getParameters() instanceof BrokerAcquireTokenOperationParameters) {
                a.a(new Intent(AuthenticationConstants.AuthorizationIntentAction.CANCEL_INTERACTIVE_REQUEST));
            }
            sInteractiveExecutor.execute(new Runnable() {
                /* JADX INFO: finally extract failed */
                public void run() {
                    AcquireTokenResult acquireTokenResult;
                    BaseException baseException;
                    String initializeDiagnosticContext = CommandDispatcher.initializeDiagnosticContext(interactiveTokenCommand.getParameters().getCorrelationId());
                    EstsTelemetry.getInstance().emitApiId(interactiveTokenCommand.getPublicApiId());
                    if (interactiveTokenCommand.getParameters() instanceof AcquireTokenOperationParameters) {
                        CommandDispatcher.logInteractiveRequestParameters(":beginInteractive", (AcquireTokenOperationParameters) interactiveTokenCommand.getParameters());
                    }
                    AnonymousClass1 r1 = new BroadcastReceiver() {
                        public void onReceive(Context context, Intent intent) {
                            CommandDispatcher.completeInteractive(intent);
                        }
                    };
                    final BaseException baseException2 = null;
                    try {
                        a.a(r1, new IntentFilter(AuthenticationConstants.AuthorizationIntentAction.RETURN_INTERACTIVE_REQUEST_RESULT));
                        InteractiveTokenCommand unused = CommandDispatcher.sCommand = interactiveTokenCommand;
                        acquireTokenResult = interactiveTokenCommand.execute();
                        InteractiveTokenCommand unused2 = CommandDispatcher.sCommand = null;
                        a.a((BroadcastReceiver) r1);
                    } catch (Exception e2) {
                        Logger.errorPII(CommandDispatcher.TAG + ":beginInteractive", "Interactive request failed with Exception", e2);
                        if (e2 instanceof BaseException) {
                            baseException = (BaseException) e2;
                        } else {
                            baseException = ExceptionAdapter.baseExceptionFromException(e2);
                        }
                        InteractiveTokenCommand unused3 = CommandDispatcher.sCommand = null;
                        a.a((BroadcastReceiver) r1);
                        acquireTokenResult = null;
                        baseException2 = baseException;
                    } catch (Throwable th) {
                        InteractiveTokenCommand unused4 = CommandDispatcher.sCommand = null;
                        a.a((BroadcastReceiver) r1);
                        throw th;
                    }
                    Handler handler = new Handler(Looper.getMainLooper());
                    if (baseException2 != null) {
                        handler.post(new Runnable() {
                            public void run() {
                                interactiveTokenCommand.getCallback().onError(baseException2);
                            }
                        });
                    } else if (acquireTokenResult == null || !acquireTokenResult.getSucceeded().booleanValue()) {
                        baseException2 = ExceptionAdapter.exceptionFromAcquireTokenResult(acquireTokenResult);
                        if (baseException2 instanceof UserCancelException) {
                            handler.post(new Runnable() {
                                public void run() {
                                    interactiveTokenCommand.getCallback().onCancel();
                                }
                            });
                        } else {
                            handler.post(new Runnable() {
                                public void run() {
                                    interactiveTokenCommand.getCallback().onError(baseException2);
                                }
                            });
                        }
                    } else {
                        final ILocalAuthenticationResult localAuthenticationResult = acquireTokenResult.getLocalAuthenticationResult();
                        handler.post(new Runnable() {
                            public void run() {
                                interactiveTokenCommand.getCallback().onTaskCompleted(localAuthenticationResult);
                            }
                        });
                    }
                    EstsTelemetry.getInstance().flush(initializeDiagnosticContext, baseException2);
                    Telemetry.getInstance().flush(initializeDiagnosticContext);
                }
            });
        }
    }

    public static void cacheCommandResult(BaseCommand baseCommand, CommandResult commandResult) {
        if (baseCommand.isEligibleForCaching() && eligibleToCache(commandResult)) {
            sCommandResultCache.put(baseCommand, commandResult);
        }
    }

    public static void clearCommandCache() {
        sCommandResultCache.clear();
    }

    public static void completeInteractive(Intent intent) {
        int intExtra = intent.getIntExtra(AuthenticationConstants.AuthorizationIntentKey.REQUEST_CODE, 0);
        int intExtra2 = intent.getIntExtra(AuthenticationConstants.AuthorizationIntentKey.RESULT_CODE, 0);
        InteractiveTokenCommand interactiveTokenCommand = sCommand;
        if (interactiveTokenCommand != null) {
            interactiveTokenCommand.notify(intExtra, intExtra2, intent);
        } else {
            e.a.a.a.a.c(new StringBuilder(), TAG, ":completeInteractive", "sCommand is null, No interactive call in progress to complete.");
        }
    }

    public static boolean eligibleToCache(CommandResult commandResult) {
        int ordinal = commandResult.getStatus().ordinal();
        if (ordinal == 1) {
            return true;
        }
        if (ordinal != 2) {
            return false;
        }
        return eligibleToCacheException((BaseException) commandResult.getResult());
    }

    public static boolean eligibleToCacheException(BaseException baseException) {
        return !(baseException instanceof IntuneAppProtectionPolicyRequiredException);
    }

    public static CommandResult executeCommand(BaseCommand baseCommand) {
        Object obj;
        BaseException baseException;
        BaseException baseException2 = null;
        try {
            obj = baseCommand.execute();
        } catch (Exception e2) {
            if (e2 instanceof BaseException) {
                baseException = (BaseException) e2;
            } else {
                baseException = ExceptionAdapter.baseExceptionFromException(e2);
            }
            baseException2 = baseException;
            obj = null;
        }
        if (baseException2 != null) {
            return new CommandResult(CommandResult.ResultStatus.ERROR, baseException2);
        }
        if (obj == null || !(obj instanceof AcquireTokenResult)) {
            return new CommandResult(CommandResult.ResultStatus.COMPLETED, obj);
        }
        return getCommandResultFromTokenResult(baseException2, (AcquireTokenResult) obj);
    }

    public static int getCachedResultCount() {
        return sCommandResultCache.getSize();
    }

    public static CommandResult getCommandResultFromTokenResult(BaseException baseException, AcquireTokenResult acquireTokenResult) {
        if (acquireTokenResult.getSucceeded().booleanValue()) {
            return new CommandResult(CommandResult.ResultStatus.COMPLETED, acquireTokenResult.getLocalAuthenticationResult());
        }
        BaseException exceptionFromAcquireTokenResult = ExceptionAdapter.exceptionFromAcquireTokenResult(acquireTokenResult);
        if (exceptionFromAcquireTokenResult instanceof UserCancelException) {
            return new CommandResult(CommandResult.ResultStatus.CANCEL, (Object) null);
        }
        return new CommandResult(CommandResult.ResultStatus.ERROR, exceptionFromAcquireTokenResult);
    }

    public static String initializeDiagnosticContext(String str) {
        if (TextUtils.isEmpty(str)) {
            str = UUID.randomUUID().toString();
        }
        RequestContext requestContext = new RequestContext();
        requestContext.put("correlation_id", str);
        DiagnosticContext.setRequestContext(requestContext);
        e.a.a.a.a.b(new StringBuilder(), TAG, ":initializeDiagnosticContext", "Initialized new DiagnosticContext");
        return str;
    }

    public static void logInteractiveRequestParameters(String str, AcquireTokenOperationParameters acquireTokenOperationParameters) {
        String a = e.a.a.a.a.a(new StringBuilder(), TAG, str);
        StringBuilder a2 = e.a.a.a.a.a("Requested ");
        a2.append(acquireTokenOperationParameters.getScopes().size());
        a2.append(" scopes");
        Logger.info(a, a2.toString());
        Logger.infoPII(TAG + str, "----\nRequested scopes:");
        for (String str2 : acquireTokenOperationParameters.getScopes()) {
            String a3 = e.a.a.a.a.a(new StringBuilder(), TAG, str);
            Logger.infoPII(a3, "\t" + str2);
        }
        Logger.infoPII(TAG + str, "----");
        String a4 = e.a.a.a.a.a(new StringBuilder(), TAG, str);
        StringBuilder a5 = e.a.a.a.a.a("ClientId: [");
        a5.append(acquireTokenOperationParameters.getClientId());
        a5.append("]");
        Logger.infoPII(a4, a5.toString());
        String a6 = e.a.a.a.a.a(new StringBuilder(), TAG, str);
        StringBuilder a7 = e.a.a.a.a.a("RedirectUri: [");
        a7.append(acquireTokenOperationParameters.getRedirectUri());
        a7.append("]");
        Logger.infoPII(a6, a7.toString());
        String a8 = e.a.a.a.a.a(new StringBuilder(), TAG, str);
        StringBuilder a9 = e.a.a.a.a.a("Login hint: [");
        a9.append(acquireTokenOperationParameters.getLoginHint());
        a9.append("]");
        Logger.infoPII(a8, a9.toString());
        if (acquireTokenOperationParameters.getExtraQueryStringParameters() != null) {
            Logger.infoPII(TAG + str, "Extra query params:");
            for (Pair next : acquireTokenOperationParameters.getExtraQueryStringParameters()) {
                String a10 = e.a.a.a.a.a(new StringBuilder(), TAG, str);
                StringBuilder a11 = e.a.a.a.a.a("\t\"");
                a11.append((String) next.first);
                a11.append("\":\"");
                a11.append((String) next.second);
                a11.append("\"");
                Logger.infoPII(a10, a11.toString());
            }
        }
        if (acquireTokenOperationParameters.getExtraScopesToConsent() != null) {
            Logger.infoPII(TAG + str, "Extra scopes to consent:");
            for (String str3 : acquireTokenOperationParameters.getExtraScopesToConsent()) {
                String a12 = e.a.a.a.a.a(new StringBuilder(), TAG, str);
                Logger.infoPII(a12, "\t" + str3);
            }
        }
        String a13 = e.a.a.a.a.a(new StringBuilder(), TAG, str);
        StringBuilder a14 = e.a.a.a.a.a("Using authorization agent: ");
        a14.append(acquireTokenOperationParameters.getAuthorizationAgent().toString());
        Logger.info(a13, a14.toString());
        if (acquireTokenOperationParameters.getAccount() != null) {
            String a15 = e.a.a.a.a.a(new StringBuilder(), TAG, str);
            StringBuilder a16 = e.a.a.a.a.a("Using account: ");
            a16.append(acquireTokenOperationParameters.getAccount().getHomeAccountId());
            Logger.infoPII(a15, a16.toString());
        }
    }

    public static void logSilentRequestParams(String str, AcquireTokenSilentOperationParameters acquireTokenSilentOperationParameters) {
        String a = e.a.a.a.a.a(new StringBuilder(), TAG, str);
        StringBuilder a2 = e.a.a.a.a.a("ClientId: [");
        a2.append(acquireTokenSilentOperationParameters.getClientId());
        a2.append("]");
        Logger.infoPII(a, a2.toString());
        Logger.infoPII(TAG + str, "----\nRequested scopes:");
        for (String str2 : acquireTokenSilentOperationParameters.getScopes()) {
            String a3 = e.a.a.a.a.a(new StringBuilder(), TAG, str);
            Logger.infoPII(a3, "\t" + str2);
        }
        Logger.infoPII(TAG + str, "----");
        if (acquireTokenSilentOperationParameters.getAccount() != null) {
            String a4 = e.a.a.a.a.a(new StringBuilder(), TAG, str);
            StringBuilder a5 = e.a.a.a.a.a("Using account: ");
            a5.append(acquireTokenSilentOperationParameters.getAccount().getHomeAccountId());
            Logger.infoPII(a4, a5.toString());
        }
        String a6 = e.a.a.a.a.a(new StringBuilder(), TAG, str);
        StringBuilder a7 = e.a.a.a.a.a("Force refresh? [");
        a7.append(acquireTokenSilentOperationParameters.getForceRefresh());
        a7.append("]");
        Logger.info(a6, a7.toString());
    }

    public static void returnCommandResult(final BaseCommand baseCommand, final CommandResult commandResult, Handler handler) {
        handler.post(new Runnable() {
            public void run() {
                int ordinal = commandResult.getStatus().ordinal();
                if (ordinal == 0) {
                    baseCommand.getCallback().onCancel();
                } else if (ordinal == 1) {
                    baseCommand.getCallback().onTaskCompleted(commandResult.getResult());
                } else if (ordinal == 2) {
                    baseCommand.getCallback().onError(commandResult.getResult());
                }
            }
        });
    }

    public static void submitSilent(final BaseCommand baseCommand) {
        e.a.a.a.a.b(new StringBuilder(), TAG, ":submitSilent", "Beginning execution of silent command.");
        sSilentExecutor.execute(new Runnable() {
            public void run() {
                String initializeDiagnosticContext = CommandDispatcher.initializeDiagnosticContext(baseCommand.getParameters().getCorrelationId());
                EstsTelemetry.getInstance().emitApiId(baseCommand.getPublicApiId());
                Handler handler = new Handler(Looper.getMainLooper());
                if (baseCommand.getParameters() instanceof AcquireTokenSilentOperationParameters) {
                    CommandDispatcher.logSilentRequestParams(":submitSilent", (AcquireTokenSilentOperationParameters) baseCommand.getParameters());
                    EstsTelemetry.getInstance().emitForceRefresh(baseCommand.getParameters().getForceRefresh());
                }
                CommandResult commandResult = CommandDispatcher.sCommandResultCache.get(baseCommand);
                if (commandResult == null) {
                    commandResult = CommandDispatcher.executeCommand(baseCommand);
                    CommandDispatcher.cacheCommandResult(baseCommand, commandResult);
                } else {
                    Logger.info(CommandDispatcher.TAG + ":submitSilent", "Silent command result returned from cache.");
                }
                CommandDispatcher.returnCommandResult(baseCommand, commandResult, handler);
                Telemetry.getInstance().flush(initializeDiagnosticContext);
                if (commandResult.getResult() instanceof BaseException) {
                    EstsTelemetry.getInstance().flush(initializeDiagnosticContext, (BaseException) commandResult.getResult());
                } else {
                    EstsTelemetry.getInstance().flush(initializeDiagnosticContext);
                }
            }
        });
    }
}
