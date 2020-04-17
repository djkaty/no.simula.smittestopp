.class public Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;
.super Lcom/microsoft/identity/client/internal/controllers/BrokerBaseStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$OperationInfo;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BrokerAccountManagerStrategy"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/client/internal/controllers/BrokerBaseStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireTokenSilent(Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;)Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$3;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$3;-><init>(Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;)V

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;->invokeBrokerAccountManagerOperation(Lcom/microsoft/identity/common/internal/request/OperationParameters;Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$OperationInfo;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;

    return-object p1
.end method

.method public getBrokerAccounts(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Ljava/util/List;
    .locals 1
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
    new-instance v0, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$4;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$4;-><init>(Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;)V

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;->invokeBrokerAccountManagerOperation(Lcom/microsoft/identity/common/internal/request/OperationParameters;Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$OperationInfo;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getBrokerAuthorizationIntent(Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":getBrokerAuthorizationIntent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Get the broker authorization intent from AccountManager."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$2;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$2;-><init>(Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;)V

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;->invokeBrokerAccountManagerOperation(Lcom/microsoft/identity/common/internal/request/OperationParameters;Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$OperationInfo;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    return-object p1
.end method

.method public getCurrentAccountInSharedDevice(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Ljava/util/List;
    .locals 1
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
    new-instance v0, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$7;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$7;-><init>(Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;)V

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;->invokeBrokerAccountManagerOperation(Lcom/microsoft/identity/common/internal/request/OperationParameters;Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$OperationInfo;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getDeviceMode(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$6;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$6;-><init>(Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;)V

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;->invokeBrokerAccountManagerOperation(Lcom/microsoft/identity/common/internal/request/OperationParameters;Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$OperationInfo;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public hello(Lcom/microsoft/identity/common/internal/request/OperationParameters;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;->isAccountManagerPermissionsGranted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$1;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$1;-><init>(Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;)V

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;->invokeBrokerAccountManagerOperation(Lcom/microsoft/identity/common/internal/request/OperationParameters;Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$OperationInfo;)Ljava/lang/Object;

    return-void

    .line 3
    :cond_0
    new-instance p1, Lcom/microsoft/identity/client/exception/BrokerCommunicationException;

    const/4 v0, 0x0

    const-string v1, "AccountManager permissions are not granted"

    invoke-direct {p1, v1, v0}, Lcom/microsoft/identity/client/exception/BrokerCommunicationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public invokeBrokerAccountManagerOperation(Lcom/microsoft/identity/common/internal/request/OperationParameters;Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$OperationInfo;)Ljava/lang/Object;
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/microsoft/identity/common/internal/request/OperationParameters;",
            "U:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$OperationInfo<",
            "TT;TU;>;)TU;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$OperationInfo;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerStartEvent;

    invoke-direct {v1}, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerStartEvent;-><init>()V

    .line 3
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerStartEvent;->putAction(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/BrokerStartEvent;

    move-result-object v1

    const-string v2, "account_manager"

    .line 4
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerStartEvent;->putStrategy(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/BrokerStartEvent;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string v4, "com.microsoft.workaccount"

    const-string v5, "adal.authtoken.type"

    const/4 v6, 0x0

    .line 7
    invoke-interface {p2, p1}, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$OperationInfo;->getRequestBundle(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Landroid/os/Bundle;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 8
    invoke-virtual {p0}, Lcom/microsoft/identity/client/internal/controllers/BrokerBaseStrategy;->getPreferredHandler()Landroid/os/Handler;

    move-result-object v10

    .line 9
    invoke-virtual/range {v3 .. v10}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Received result from broker"

    invoke-static {v2, v3}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p2, p1}, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$OperationInfo;->getResultFromBundle(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/microsoft/identity/common/exception/BaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    new-instance p2, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;

    invoke-direct {p2}, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;-><init>()V

    .line 13
    invoke-virtual {p2, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;->putAction(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;

    move-result-object p2

    const/4 v0, 0x1

    .line 14
    invoke-virtual {p2, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;->isSuccessful(Z)Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;

    move-result-object p2

    .line 15
    invoke-static {p2}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;->TAG:Ljava/lang/String;

    invoke-static {p2, v2, v0}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    new-instance p2, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;

    invoke-direct {p2}, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;-><init>()V

    .line 18
    invoke-virtual {p2, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;->putAction(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;

    move-result-object p2

    .line 19
    invoke-virtual {p2, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;->isSuccessful(Z)Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;

    move-result-object p2

    .line 20
    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/BaseException;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;->putErrorCode(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;

    move-result-object p2

    .line 21
    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;->putErrorDescription(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;

    move-result-object p2

    .line 22
    invoke-static {p2}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    .line 23
    throw p1

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    .line 24
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;->TAG:Ljava/lang/String;

    invoke-static {p2, v2, v0}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    new-instance p2, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;

    invoke-direct {p2}, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;-><init>()V

    .line 26
    invoke-virtual {p2, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;->putAction(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;

    move-result-object p2

    .line 27
    invoke-virtual {p2, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;->isSuccessful(Z)Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;

    move-result-object p2

    const-string v0, "io_error"

    .line 28
    invoke-virtual {p2, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;->putErrorCode(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;

    move-result-object p2

    .line 29
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;->putErrorDescription(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/BrokerEndEvent;

    move-result-object p2

    .line 30
    invoke-static {p2}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    .line 31
    new-instance p2, Lcom/microsoft/identity/client/exception/BrokerCommunicationException;

    const-string v0, "Failed to connect to AccountManager"

    invoke-direct {p2, v0, p1}, Lcom/microsoft/identity/client/exception/BrokerCommunicationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public removeBrokerAccount(Lcom/microsoft/identity/common/internal/request/OperationParameters;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$5;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$5;-><init>(Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;)V

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;->invokeBrokerAccountManagerOperation(Lcom/microsoft/identity/common/internal/request/OperationParameters;Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$OperationInfo;)Ljava/lang/Object;

    return-void
.end method

.method public signOutFromSharedDevice(Lcom/microsoft/identity/common/internal/request/OperationParameters;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$8;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$8;-><init>(Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;)V

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;->invokeBrokerAccountManagerOperation(Lcom/microsoft/identity/common/internal/request/OperationParameters;Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$OperationInfo;)Ljava/lang/Object;

    return-void
.end method
