.class public final Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->returnCommandResult(Lcom/microsoft/identity/common/internal/controllers/BaseCommand;Lcom/microsoft/identity/common/internal/controllers/CommandResult;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$command:Lcom/microsoft/identity/common/internal/controllers/BaseCommand;

.field public final synthetic val$result:Lcom/microsoft/identity/common/internal/controllers/CommandResult;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/controllers/CommandResult;Lcom/microsoft/identity/common/internal/controllers/BaseCommand;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$2;->val$result:Lcom/microsoft/identity/common/internal/controllers/CommandResult;

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$2;->val$command:Lcom/microsoft/identity/common/internal/controllers/BaseCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$2;->val$result:Lcom/microsoft/identity/common/internal/controllers/CommandResult;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/controllers/CommandResult;->getStatus()Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$2;->val$command:Lcom/microsoft/identity/common/internal/controllers/BaseCommand;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->getCallback()Lcom/microsoft/identity/common/internal/controllers/CommandCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$2;->val$result:Lcom/microsoft/identity/common/internal/controllers/CommandResult;

    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/controllers/CommandResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/microsoft/identity/common/internal/controllers/TaskCompletedCallbackWithError;->onError(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$2;->val$command:Lcom/microsoft/identity/common/internal/controllers/BaseCommand;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->getCallback()Lcom/microsoft/identity/common/internal/controllers/CommandCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$2;->val$result:Lcom/microsoft/identity/common/internal/controllers/CommandResult;

    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/controllers/CommandResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/microsoft/identity/common/internal/controllers/TaskCompletedCallback;->onTaskCompleted(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher$2;->val$command:Lcom/microsoft/identity/common/internal/controllers/BaseCommand;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->getCallback()Lcom/microsoft/identity/common/internal/controllers/CommandCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/identity/common/internal/controllers/CommandCallback;->onCancel()V

    :goto_0
    return-void
.end method
