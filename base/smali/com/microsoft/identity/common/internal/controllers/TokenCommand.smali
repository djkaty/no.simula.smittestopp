.class public Lcom/microsoft/identity/common/internal/controllers/TokenCommand;
.super Lcom/microsoft/identity/common/internal/controllers/BaseCommand;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/controllers/TokenOperation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/identity/common/internal/controllers/BaseCommand<",
        "Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;",
        ">;",
        "Lcom/microsoft/identity/common/internal/controllers/TokenOperation;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TokenCommand"


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/request/OperationParameters;Lcom/microsoft/identity/common/internal/controllers/BaseController;Lcom/microsoft/identity/common/internal/controllers/CommandCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;-><init>(Lcom/microsoft/identity/common/internal/request/OperationParameters;Lcom/microsoft/identity/common/internal/controllers/BaseController;Lcom/microsoft/identity/common/internal/controllers/CommandCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/internal/request/OperationParameters;Ljava/util/List;Lcom/microsoft/identity/common/internal/controllers/CommandCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/request/OperationParameters;",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/controllers/BaseController;",
            ">;",
            "Lcom/microsoft/identity/common/internal/controllers/CommandCallback;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;-><init>(Lcom/microsoft/identity/common/internal/request/OperationParameters;Ljava/util/List;Lcom/microsoft/identity/common/internal/controllers/CommandCallback;)V

    return-void
.end method


# virtual methods
.method public execute()Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;
    .locals 8

    const-string v0, "Executing with controller: "

    const-string v1, ":execute"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->getControllers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->getControllers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/identity/common/internal/controllers/BaseController;

    .line 4
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/microsoft/identity/common/internal/controllers/TokenCommand;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-static {v5, v6}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->getParameters()Lcom/microsoft/identity/common/internal/request/OperationParameters;

    move-result-object v5

    check-cast v5, Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;

    .line 8
    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/internal/controllers/BaseController;->acquireTokenSilent(Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;)Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->getSucceeded()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/microsoft/identity/common/internal/controllers/TokenCommand;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Succeeded"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-static {v5, v4}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/exception/UiRequiredException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/microsoft/identity/common/exception/ClientException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    .line 13
    :goto_1
    invoke-virtual {v4}, Lcom/microsoft/identity/common/exception/BaseException;->getErrorCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "invalid_grant"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->getControllers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    if-le v5, v6, :cond_0

    goto :goto_2

    .line 15
    :cond_0
    invoke-virtual {v4}, Lcom/microsoft/identity/common/exception/BaseException;->getErrorCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "no_tokens_found"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 16
    invoke-virtual {v4}, Lcom/microsoft/identity/common/exception/BaseException;->getErrorCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "no_account_found"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->getControllers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    if-le v5, v6, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 18
    :cond_3
    throw v4

    :cond_4
    return-object v2
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/controllers/TokenCommand;->execute()Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;

    move-result-object v0

    return-object v0
.end method

.method public getCommandNameHashCode()I
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/controllers/TokenCommand;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEligibleForCaching()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notify(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
