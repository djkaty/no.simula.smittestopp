.class public final Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->submitSilent(Lcom/microsoft/identity/common/internal/controllers/BaseCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$command:Lcom/microsoft/identity/common/internal/controllers/BaseCommand;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/controllers/BaseCommand;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/internal/controllers/BaseCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/internal/controllers/BaseCommand;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->getParameters()Lcom/microsoft/identity/common/internal/request/OperationParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getCorrelationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->initializeDiagnosticContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->getInstance()Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/internal/controllers/BaseCommand;

    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->getPublicApiId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->emitApiId(Ljava/lang/String;)V

    .line 3
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/internal/controllers/BaseCommand;

    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->getParameters()Lcom/microsoft/identity/common/internal/request/OperationParameters;

    move-result-object v2

    instance-of v2, v2, Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;

    const-string v3, ":submitSilent"

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/internal/controllers/BaseCommand;

    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->getParameters()Lcom/microsoft/identity/common/internal/request/OperationParameters;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;

    invoke-static {v3, v2}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->access$000(Ljava/lang/String;Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;)V

    .line 6
    invoke-static {}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->getInstance()Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;

    move-result-object v2

    iget-object v4, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/internal/controllers/BaseCommand;

    invoke-virtual {v4}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->getParameters()Lcom/microsoft/identity/common/internal/request/OperationParameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getForceRefresh()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->emitForceRefresh(Z)V

    .line 7
    :cond_0
    invoke-static {}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->access$100()Lcom/microsoft/identity/common/internal/controllers/CommandResultCache;

    move-result-object v2

    iget-object v4, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/internal/controllers/BaseCommand;

    invoke-virtual {v2, v4}, Lcom/microsoft/identity/common/internal/controllers/CommandResultCache;->get(Lcom/microsoft/identity/common/internal/controllers/BaseCommand;)Lcom/microsoft/identity/common/internal/controllers/CommandResult;

    move-result-object v2

    if-nez v2, :cond_1

    .line 8
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/internal/controllers/BaseCommand;

    invoke-static {v2}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->access$200(Lcom/microsoft/identity/common/internal/controllers/BaseCommand;)Lcom/microsoft/identity/common/internal/controllers/CommandResult;

    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/internal/controllers/BaseCommand;

    invoke-static {v3, v2}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->access$300(Lcom/microsoft/identity/common/internal/controllers/BaseCommand;Lcom/microsoft/identity/common/internal/controllers/CommandResult;)V

    goto :goto_0

    .line 10
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    invoke-static {}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->access$400()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Silent command result returned from cache."

    .line 12
    invoke-static {v3, v4}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :goto_0
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/internal/controllers/BaseCommand;

    invoke-static {v3, v2, v1}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->access$500(Lcom/microsoft/identity/common/internal/controllers/BaseCommand;Lcom/microsoft/identity/common/internal/controllers/CommandResult;Landroid/os/Handler;)V

    .line 14
    invoke-static {}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->getInstance()Lcom/microsoft/identity/common/internal/telemetry/Telemetry;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->flush(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/controllers/CommandResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/microsoft/identity/common/exception/BaseException;

    if-eqz v1, :cond_2

    .line 16
    invoke-static {}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->getInstance()Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;

    move-result-object v1

    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/controllers/CommandResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/common/exception/BaseException;

    invoke-virtual {v1, v0, v2}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->flush(Ljava/lang/String;Lcom/microsoft/identity/common/exception/BaseException;)V

    goto :goto_1

    .line 17
    :cond_2
    invoke-static {}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->getInstance()Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->flush(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
