.class public Lcom/microsoft/identity/common/internal/controllers/RemoveCurrentAccountCommand;
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
.field public static final TAG:Ljava/lang/String; = "RemoveCurrentAccountCommand"


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/request/OperationParameters;Lcom/microsoft/identity/common/internal/controllers/BaseController;Lcom/microsoft/identity/common/internal/controllers/CommandCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;-><init>(Lcom/microsoft/identity/common/internal/request/OperationParameters;Lcom/microsoft/identity/common/internal/controllers/BaseController;Lcom/microsoft/identity/common/internal/controllers/CommandCallback;)V

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Boolean;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->getDefaultController()Lcom/microsoft/identity/common/internal/controllers/BaseController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->getParameters()Lcom/microsoft/identity/common/internal/request/OperationParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/controllers/BaseController;->removeCurrentAccount(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/controllers/RemoveCurrentAccountCommand;->execute()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getCommandNameHashCode()I
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/controllers/RemoveCurrentAccountCommand;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
