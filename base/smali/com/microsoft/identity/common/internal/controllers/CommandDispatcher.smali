.class public Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "CommandDispatcher"

.field public static sCommand:Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;

.field public static final sCommandResultCache:Lcom/microsoft/identity/common/internal/controllers/CommandResultCache;

.field public static final sInteractiveExecutor:Ljava/util/concurrent/ExecutorService;

.field public static final sLock:Ljava/lang/Object;

.field public static final sSilentExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->sInteractiveExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->sSilentExecutor:Ljava/util/concurrent/ExecutorService;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    sput-object v0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->sCommand:Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;

    .line 5
    new-instance v0, Lcom/microsoft/identity/common/internal/controllers/CommandResultCache;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/controllers/CommandResultCache;-><init>()V

    sput-object v0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->sCommandResultCache:Lcom/microsoft/identity/common/internal/controllers/CommandResultCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/String;Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->logSilentRequestParams(Ljava/lang/String;Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;)V

    return-void
.end method

.method public static synthetic access$100()Lcom/microsoft/identity/common/internal/controllers/CommandResultCache;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->sCommandResultCache:Lcom/microsoft/identity/common/internal/controllers/CommandResultCache;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/microsoft/identity/common/internal/controllers/BaseCommand;)Lcom/microsoft/identity/common/internal/controllers/CommandResult;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->executeCommand(Lcom/microsoft/identity/common/internal/controllers/BaseCommand;)Lcom/microsoft/identity/common/internal/controllers/CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/identity/common/internal/controllers/BaseCommand;Lcom/microsoft/identity/common/internal/controllers/CommandResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->cacheCommandResult(Lcom/microsoft/identity/common/internal/controllers/BaseCommand;Lcom/microsoft/identity/common/internal/controllers/CommandResult;)V

    return-void
.end method

.method public static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$500(Lcom/microsoft/identity/common/internal/controllers/BaseCommand;Lcom/microsoft/identity/common/internal/controllers/CommandResult;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->returnCommandResult(Lcom/microsoft/identity/common/internal/controllers/BaseCommand;Lcom/microsoft/identity/common/internal/controllers/CommandResult;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic access$600(Ljava/lang/String;Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->logInteractiveRequestParameters(Ljava/lang/String;Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;)V

    return-void
.end method

.method public static synthetic access$700(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->completeInteractive(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic access$802(Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;)Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;
    .locals 0

    .line 1
    sput-object p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->sCommand:Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;

    return-object p0
.end method

.method public static beginInteractive(Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":beginInteractive"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Beginning interactive request"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->getParameters()Lcom/microsoft/identity/common/internal/request/OperationParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ld/q/a/a;->a(Landroid/content/Context;)Ld/q/a/a;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->getParameters()Lcom/microsoft/identity/common/internal/request/OperationParameters;

    move-result-object v2

    instance-of v2, v2, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;

    if-eqz v2, :cond_0

    .line 5
    new-instance v2, Landroid/content/Intent;

    const-string v3, "cancel_interactive_request"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ld/q/a/a;->a(Landroid/content/Intent;)Z

    .line 6
    :cond_0
    sget-object v2, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->sInteractiveExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3;

    invoke-direct {v3, p0, v1}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3;-><init>(Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;Ld/q/a/a;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static cacheCommandResult(Lcom/microsoft/identity/common/internal/controllers/BaseCommand;Lcom/microsoft/identity/common/internal/controllers/CommandResult;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->isEligibleForCaching()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->eligibleToCache(Lcom/microsoft/identity/common/internal/controllers/CommandResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->sCommandResultCache:Lcom/microsoft/identity/common/internal/controllers/CommandResultCache;

    invoke-virtual {v0, p0, p1}, Lcom/microsoft/identity/common/internal/controllers/CommandResultCache;->put(Lcom/microsoft/identity/common/internal/controllers/BaseCommand;Lcom/microsoft/identity/common/internal/controllers/CommandResult;)V

    :cond_0
    return-void
.end method

.method public static clearCommandCache()V
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->sCommandResultCache:Lcom/microsoft/identity/common/internal/controllers/CommandResultCache;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/controllers/CommandResultCache;->clear()V

    return-void
.end method

.method public static completeInteractive(Landroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "com.microsoft.identity.client.request.code"

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "com.microsoft.identity.client.result.code"

    .line 2
    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3
    sget-object v2, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->sCommand:Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2, v1, v0, p0}, Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;->notify(IILandroid/content/Intent;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->TAG:Ljava/lang/String;

    const-string v1, ":completeInteractive"

    const-string v2, "sCommand is null, No interactive call in progress to complete."

    invoke-static {p0, v0, v1, v2}, Le/a/a/a/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static eligibleToCache(Lcom/microsoft/identity/common/internal/controllers/CommandResult;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/controllers/CommandResult;->getStatus()Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/controllers/CommandResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/exception/BaseException;

    invoke-static {p0}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->eligibleToCacheException(Lcom/microsoft/identity/common/exception/BaseException;)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public static eligibleToCacheException(Lcom/microsoft/identity/common/exception/BaseException;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static executeCommand(Lcom/microsoft/identity/common/internal/controllers/BaseCommand;)Lcom/microsoft/identity/common/internal/controllers/CommandResult;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->execute()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 2
    instance-of v1, p0, Lcom/microsoft/identity/common/exception/BaseException;

    if-eqz v1, :cond_0

    .line 3
    check-cast p0, Lcom/microsoft/identity/common/exception/BaseException;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/controllers/ExceptionAdapter;->baseExceptionFromException(Ljava/lang/Exception;)Lcom/microsoft/identity/common/exception/BaseException;

    move-result-object p0

    :goto_0
    move-object v2, v0

    move-object v0, p0

    move-object p0, v2

    :goto_1
    if-eqz v0, :cond_1

    .line 5
    new-instance p0, Lcom/microsoft/identity/common/internal/controllers/CommandResult;

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;->ERROR:Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;

    invoke-direct {p0, v1, v0}, Lcom/microsoft/identity/common/internal/controllers/CommandResult;-><init>(Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    if-eqz p0, :cond_2

    .line 6
    instance-of v1, p0, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;

    if-eqz v1, :cond_2

    .line 7
    check-cast p0, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;

    invoke-static {v0, p0}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->getCommandResultFromTokenResult(Lcom/microsoft/identity/common/exception/BaseException;Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;)Lcom/microsoft/identity/common/internal/controllers/CommandResult;

    move-result-object p0

    goto :goto_2

    .line 8
    :cond_2
    new-instance v0, Lcom/microsoft/identity/common/internal/controllers/CommandResult;

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;->COMPLETED:Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;

    invoke-direct {v0, v1, p0}, Lcom/microsoft/identity/common/internal/controllers/CommandResult;-><init>(Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;Ljava/lang/Object;)V

    move-object p0, v0

    :goto_2
    return-object p0
.end method

.method public static getCachedResultCount()I
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->sCommandResultCache:Lcom/microsoft/identity/common/internal/controllers/CommandResultCache;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/controllers/CommandResultCache;->getSize()I

    move-result v0

    return v0
.end method

.method public static getCommandResultFromTokenResult(Lcom/microsoft/identity/common/exception/BaseException;Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;)Lcom/microsoft/identity/common/internal/controllers/CommandResult;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->getSucceeded()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Lcom/microsoft/identity/common/internal/controllers/CommandResult;

    sget-object v0, Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;->COMPLETED:Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->getLocalAuthenticationResult()Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/microsoft/identity/common/internal/controllers/CommandResult;-><init>(Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;Ljava/lang/Object;)V

    return-object p0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/controllers/ExceptionAdapter;->exceptionFromAcquireTokenResult(Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;)Lcom/microsoft/identity/common/exception/BaseException;

    move-result-object p0

    .line 4
    instance-of p1, p0, Lcom/microsoft/identity/common/exception/UserCancelException;

    if-eqz p1, :cond_1

    .line 5
    new-instance p0, Lcom/microsoft/identity/common/internal/controllers/CommandResult;

    sget-object p1, Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;->CANCEL:Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/microsoft/identity/common/internal/controllers/CommandResult;-><init>(Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;Ljava/lang/Object;)V

    return-object p0

    .line 6
    :cond_1
    new-instance p1, Lcom/microsoft/identity/common/internal/controllers/CommandResult;

    sget-object v0, Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;->ERROR:Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;

    invoke-direct {p1, v0, p0}, Lcom/microsoft/identity/common/internal/controllers/CommandResult;-><init>(Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static initializeDiagnosticContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/internal/logging/RequestContext;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/logging/RequestContext;-><init>()V

    const-string v1, "correlation_id"

    .line 4
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->setRequestContext(Lcom/microsoft/identity/common/internal/logging/IRequestContext;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->TAG:Ljava/lang/String;

    const-string v2, ":initializeDiagnosticContext"

    const-string v3, "Initialized new DiagnosticContext"

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static logInteractiveRequestParameters(Ljava/lang/String;Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Requested "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getScopes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " scopes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "----\nRequested scopes:"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getScopes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "\t"

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->TAG:Ljava/lang/String;

    invoke-static {v3, v4, p0}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "----"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClientId: ["

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RedirectUri: ["

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 12
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getRedirectUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Login hint: ["

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getLoginHint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getExtraQueryStringParameters()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Extra query params:"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getExtraQueryStringParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->TAG:Ljava/lang/String;

    invoke-static {v3, v4, p0}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\t\""

    invoke-static {v4}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getExtraScopesToConsent()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Extra scopes to consent:"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getExtraScopesToConsent()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->TAG:Ljava/lang/String;

    invoke-static {v3, v4, p0}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Using authorization agent: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 26
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getAuthorizationAgent()Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAccount()Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Using account: "

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAccount()Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    move-result-object p1

    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/dto/IAccountRecord;->getHomeAccountId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static logSilentRequestParams(Ljava/lang/String;Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClientId: ["

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "----\nRequested scopes:"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getScopes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->TAG:Ljava/lang/String;

    invoke-static {v3, v4, p0}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "----"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAccount()Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Using account: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAccount()Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    move-result-object v3

    invoke-interface {v3}, Lcom/microsoft/identity/common/internal/dto/IAccountRecord;->getHomeAccountId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Force refresh? ["

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 13
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getForceRefresh()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static returnCommandResult(Lcom/microsoft/identity/common/internal/controllers/BaseCommand;Lcom/microsoft/identity/common/internal/controllers/CommandResult;Landroid/os/Handler;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$2;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$2;-><init>(Lcom/microsoft/identity/common/internal/controllers/CommandResult;Lcom/microsoft/identity/common/internal/controllers/BaseCommand;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static submitSilent(Lcom/microsoft/identity/common/internal/controllers/BaseCommand;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->TAG:Ljava/lang/String;

    const-string v2, ":submitSilent"

    const-string v3, "Beginning execution of silent command."

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->sSilentExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$1;

    invoke-direct {v1, p0}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$1;-><init>(Lcom/microsoft/identity/common/internal/controllers/BaseCommand;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
