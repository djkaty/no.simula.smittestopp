.class public Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;
.super Lcom/microsoft/identity/common/internal/controllers/TokenCommand;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "InteractiveTokenCommand"


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;Lcom/microsoft/identity/common/internal/controllers/BaseController;Lcom/microsoft/identity/common/internal/controllers/CommandCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/controllers/TokenCommand;-><init>(Lcom/microsoft/identity/common/internal/request/OperationParameters;Lcom/microsoft/identity/common/internal/controllers/BaseController;Lcom/microsoft/identity/common/internal/controllers/CommandCallback;)V

    return-void
.end method


# virtual methods
.method public execute()Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->getParameters()Lcom/microsoft/identity/common/internal/request/OperationParameters;

    move-result-object v0

    instance-of v0, v0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":execute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Executing interactive token command..."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->getDefaultController()Lcom/microsoft/identity/common/internal/controllers/BaseController;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->getParameters()Lcom/microsoft/identity/common/internal/request/OperationParameters;

    move-result-object v1

    check-cast v1, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;

    .line 6
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/controllers/BaseController;->acquireToken(Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;)Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;

    move-result-object v0

    return-object v0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid operation parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;->execute()Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;

    move-result-object v0

    return-object v0
.end method

.method public getCommandNameHashCode()I
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public notify(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->getDefaultController()Lcom/microsoft/identity/common/internal/controllers/BaseController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/controllers/BaseController;->completeAcquireToken(IILandroid/content/Intent;)V

    return-void
.end method
