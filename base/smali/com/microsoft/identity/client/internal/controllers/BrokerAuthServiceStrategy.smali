.class public Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;
.super Lcom/microsoft/identity/client/internal/controllers/BrokerBaseStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$AuthServiceOperation;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BrokerAuthServiceStrategy"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/client/internal/controllers/BrokerBaseStrategy;-><init>()V

    return-void
.end method

.method private getBrokerAuthorizationIntentFromAuthService(Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;)Landroid/content/Intent;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAppContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$2;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$2;-><init>(Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;)V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;->performAuthServiceOperation(Landroid/content/Context;Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$AuthServiceOperation;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    return-object p1
.end method

.method private performAuthServiceOperation(Landroid/content/Context;Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$AuthServiceOperation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$AuthServiceOperation<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$AuthServiceOperation;->getOperationName()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerStartEvent;

    invoke-direct {v1}, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerStartEvent;-><init>()V

    .line 3
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerStartEvent;->putAction(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/BrokerStartEvent;

    move-result-object v1

    const-string v2, "bound_service"

    .line 4
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerStartEvent;->putStrategy(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/BrokerStartEvent;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    .line 6
    new-instance v1, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;

    invoke-direct {v1, p1}, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 7
    :try_start_0
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->connect()Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthServiceFuture;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthServiceFuture;->get()Lcom/microsoft/identity/client/IMicrosoftAuthService;

    move-result-object v2

    .line 9
    invoke-interface {p2, v2}, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$AuthServiceOperation;->perform(Lcom/microsoft/identity/client/IMicrosoftAuthService;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/microsoft/identity/common/exception/BaseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->disconnect()V

    .line 11
    new-instance p2, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;

    invoke-direct {p2}, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;-><init>()V

    .line 12
    invoke-virtual {p2, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;->putAction(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;

    move-result-object p2

    const/4 v0, 0x1

    .line 13
    invoke-virtual {p2, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;->isSuccessful(Z)Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;

    move-result-object p2

    .line 14
    invoke-static {p2}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :catch_0
    move-exception p2

    .line 15
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/microsoft/identity/common/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    new-instance v2, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;

    invoke-direct {v2}, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;-><init>()V

    .line 17
    invoke-virtual {v2, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;->putAction(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;

    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;->isSuccessful(Z)Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;

    move-result-object p1

    .line 19
    invoke-virtual {p2}, Lcom/microsoft/identity/common/exception/BaseException;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;->putErrorCode(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;

    move-result-object p1

    .line 20
    invoke-virtual {p2}, Lcom/microsoft/identity/common/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;->putErrorDescription(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;

    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    .line 22
    throw p2

    :catch_1
    move-exception p2

    goto :goto_0

    :catch_2
    move-exception p2

    goto :goto_0

    :catch_3
    move-exception p2

    .line 23
    :goto_0
    instance-of v2, p2, Landroid/os/RemoteException;

    if-eqz v2, :cond_0

    const-string v2, "RemoteException occurred while attempting to invoke remote service"

    goto :goto_1

    :cond_0
    const-string v2, "Exception occurred while awaiting (get) return of MicrosoftAuthService"

    .line 24
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2, p2}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    new-instance v3, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;

    invoke-direct {v3}, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;-><init>()V

    .line 26
    invoke-virtual {v3, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;->putAction(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;

    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;->isSuccessful(Z)Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;

    move-result-object p1

    const-string v0, "io_error"

    .line 28
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;->putErrorCode(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;

    move-result-object p1

    .line 29
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;->putErrorDescription(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;

    move-result-object p1

    .line 30
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    .line 31
    new-instance p1, Lcom/microsoft/identity/client/exception/BrokerCommunicationException;

    invoke-direct {p1, v2, p2}, Lcom/microsoft/identity/client/exception/BrokerCommunicationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :goto_2
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->disconnect()V

    .line 33
    throw p1
.end method


# virtual methods
.method public acquireTokenSilent(Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;)Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAppContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$3;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$3;-><init>(Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;)V

    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;->performAuthServiceOperation(Landroid/content/Context;Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$AuthServiceOperation;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;

    return-object p1
.end method

.method public getBrokerAccounts(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/request/OperationParameters;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAppContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$4;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$4;-><init>(Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;Lcom/microsoft/identity/common/internal/request/OperationParameters;)V

    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;->performAuthServiceOperation(Landroid/content/Context;Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$AuthServiceOperation;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getBrokerAuthorizationIntent(Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;)Landroid/content/Intent;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;->TAG:Ljava/lang/String;

    const-string v2, ":getBrokerAuthorizationIntent"

    const-string v3, "Get the broker authorization intent from auth service."

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;->getBrokerAuthorizationIntentFromAuthService(Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;)Landroid/content/Intent;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/client/internal/controllers/BrokerBaseStrategy;->completeInteractiveRequestIntent(Landroid/content/Intent;Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentAccountInSharedDevice(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/request/OperationParameters;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAppContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$7;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$7;-><init>(Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;Lcom/microsoft/identity/common/internal/request/OperationParameters;)V

    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;->performAuthServiceOperation(Landroid/content/Context;Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$AuthServiceOperation;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getDeviceMode(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAppContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$6;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$6;-><init>(Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;)V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;->performAuthServiceOperation(Landroid/content/Context;Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$AuthServiceOperation;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public hello(Lcom/microsoft/identity/common/internal/request/OperationParameters;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAppContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$1;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$1;-><init>(Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;Lcom/microsoft/identity/common/internal/request/OperationParameters;)V

    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;->performAuthServiceOperation(Landroid/content/Context;Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$AuthServiceOperation;)Ljava/lang/Object;

    return-void
.end method

.method public removeBrokerAccount(Lcom/microsoft/identity/common/internal/request/OperationParameters;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAppContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$5;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$5;-><init>(Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;Lcom/microsoft/identity/common/internal/request/OperationParameters;)V

    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;->performAuthServiceOperation(Landroid/content/Context;Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$AuthServiceOperation;)Ljava/lang/Object;

    return-void
.end method

.method public signOutFromSharedDevice(Lcom/microsoft/identity/common/internal/request/OperationParameters;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAppContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$8;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$8;-><init>(Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;Lcom/microsoft/identity/common/internal/request/OperationParameters;)V

    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;->performAuthServiceOperation(Landroid/content/Context;Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$AuthServiceOperation;)Ljava/lang/Object;

    return-void
.end method
