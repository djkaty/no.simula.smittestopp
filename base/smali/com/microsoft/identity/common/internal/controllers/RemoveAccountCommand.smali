.class public Lcom/microsoft/identity/common/internal/controllers/RemoveAccountCommand;
.super Lcom/microsoft/identity/common/internal/controllers/BaseCommand;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/identity/common/internal/controllers/BaseCommand<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RemoveAccountCommand"


# direct methods
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

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;-><init>(Lcom/microsoft/identity/common/internal/request/OperationParameters;Ljava/util/List;Lcom/microsoft/identity/common/internal/controllers/CommandCallback;)V

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Boolean;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->getControllers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->getControllers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/identity/common/internal/controllers/BaseController;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/microsoft/identity/common/internal/controllers/RemoveAccountCommand;->TAG:Ljava/lang/String;

    const-string v4, ":execute"

    invoke-static {v2, v3, v4}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Executing with controller: "

    invoke-static {v3}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v2, v3}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->getParameters()Lcom/microsoft/identity/common/internal/request/OperationParameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/internal/controllers/BaseController;->removeAccount(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Z

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/controllers/RemoveAccountCommand;->execute()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getCommandNameHashCode()I
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/controllers/RemoveAccountCommand;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
