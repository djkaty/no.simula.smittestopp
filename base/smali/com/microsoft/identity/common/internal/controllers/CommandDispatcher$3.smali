.class public final Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->beginInteractive(Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$command:Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;

.field public final synthetic val$localBroadcastManager:Ld/q/a/a;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;Ld/q/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3;->val$command:Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3;->val$localBroadcastManager:Ld/q/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3;->val$command:Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;

    .line 2
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->getParameters()Lcom/microsoft/identity/common/internal/request/OperationParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getCorrelationId()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->initializeDiagnosticContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->getInstance()Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3;->val$command:Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;

    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->getPublicApiId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->emitApiId(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3;->val$command:Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;

    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->getParameters()Lcom/microsoft/identity/common/internal/request/OperationParameters;

    move-result-object v1

    instance-of v1, v1, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;

    const-string v2, ":beginInteractive"

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3;->val$command:Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;

    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->getParameters()Lcom/microsoft/identity/common/internal/request/OperationParameters;

    move-result-object v1

    check-cast v1, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;

    invoke-static {v2, v1}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->access$600(Ljava/lang/String;Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;)V

    .line 7
    :cond_0
    new-instance v1, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3$1;

    invoke-direct {v1, p0}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3$1;-><init>(Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3;)V

    const/4 v3, 0x0

    .line 8
    :try_start_0
    iget-object v4, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3;->val$localBroadcastManager:Ld/q/a/a;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "return_interactive_request_result"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v5}, Ld/q/a/a;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 9
    iget-object v4, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3;->val$command:Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;

    invoke-static {v4}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->access$802(Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;)Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;

    .line 10
    iget-object v4, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3;->val$command:Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;

    invoke-virtual {v4}, Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;->execute()Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {v3}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->access$802(Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;)Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;

    .line 12
    iget-object v4, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3;->val$localBroadcastManager:Ld/q/a/a;

    invoke-virtual {v4, v1}, Ld/q/a/a;->a(Landroid/content/BroadcastReceiver;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v4

    .line 13
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    invoke-static {}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->access$400()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Interactive request failed with Exception"

    .line 15
    invoke-static {v2, v5, v4}, Lcom/microsoft/identity/common/internal/logging/Logger;->errorPII(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    instance-of v2, v4, Lcom/microsoft/identity/common/exception/BaseException;

    if-eqz v2, :cond_1

    .line 17
    check-cast v4, Lcom/microsoft/identity/common/exception/BaseException;

    goto :goto_0

    .line 18
    :cond_1
    invoke-static {v4}, Lcom/microsoft/identity/common/internal/controllers/ExceptionAdapter;->baseExceptionFromException(Ljava/lang/Exception;)Lcom/microsoft/identity/common/exception/BaseException;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :goto_0
    invoke-static {v3}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->access$802(Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;)Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;

    .line 20
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3;->val$localBroadcastManager:Ld/q/a/a;

    invoke-virtual {v2, v1}, Ld/q/a/a;->a(Landroid/content/BroadcastReceiver;)V

    move-object v2, v3

    move-object v3, v4

    .line 21
    :goto_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    if-eqz v3, :cond_2

    .line 22
    new-instance v2, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3$2;

    invoke-direct {v2, p0, v3}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3$2;-><init>(Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3;Lcom/microsoft/identity/common/exception/BaseException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    .line 23
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->getSucceeded()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 24
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->getLocalAuthenticationResult()Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;

    move-result-object v2

    .line 25
    new-instance v4, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3$3;

    invoke-direct {v4, p0, v2}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3$3;-><init>(Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3;Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 26
    :cond_3
    invoke-static {v2}, Lcom/microsoft/identity/common/internal/controllers/ExceptionAdapter;->exceptionFromAcquireTokenResult(Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;)Lcom/microsoft/identity/common/exception/BaseException;

    move-result-object v3

    .line 27
    instance-of v2, v3, Lcom/microsoft/identity/common/exception/UserCancelException;

    if-eqz v2, :cond_4

    .line 28
    new-instance v2, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3$4;

    invoke-direct {v2, p0}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3$4;-><init>(Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 29
    :cond_4
    new-instance v2, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3$5;

    invoke-direct {v2, p0, v3}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3$5;-><init>(Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3;Lcom/microsoft/identity/common/exception/BaseException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    :goto_2
    invoke-static {}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->getInstance()Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->flush(Ljava/lang/String;Lcom/microsoft/identity/common/exception/BaseException;)V

    .line 31
    invoke-static {}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->getInstance()Lcom/microsoft/identity/common/internal/telemetry/Telemetry;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->flush(Ljava/lang/String;)V

    return-void

    .line 32
    :goto_3
    invoke-static {v3}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->access$802(Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;)Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;

    .line 33
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$3;->val$localBroadcastManager:Ld/q/a/a;

    invoke-virtual {v2, v1}, Ld/q/a/a;->a(Landroid/content/BroadcastReceiver;)V

    .line 34
    throw v0
.end method
