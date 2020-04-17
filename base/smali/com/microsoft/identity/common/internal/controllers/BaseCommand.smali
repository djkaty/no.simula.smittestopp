.class public abstract Lcom/microsoft/identity/common/internal/controllers/BaseCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/controllers/Command;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/internal/controllers/Command<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public mCallback:Lcom/microsoft/identity/common/internal/controllers/CommandCallback;

.field public mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/controllers/BaseController;",
            ">;"
        }
    .end annotation
.end field

.field public mParameters:Lcom/microsoft/identity/common/internal/request/OperationParameters;

.field public mPublicApiId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/request/OperationParameters;Lcom/microsoft/identity/common/internal/controllers/BaseController;Lcom/microsoft/identity/common/internal/controllers/CommandCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->mParameters:Lcom/microsoft/identity/common/internal/request/OperationParameters;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->mControllers:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->mCallback:Lcom/microsoft/identity/common/internal/controllers/CommandCallback;

    .line 5
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->mParameters:Lcom/microsoft/identity/common/internal/request/OperationParameters;

    .line 8
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->mControllers:Ljava/util/List;

    .line 9
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->mCallback:Lcom/microsoft/identity/common/internal/controllers/CommandCallback;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;

    .line 3
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->mParameters:Lcom/microsoft/identity/common/internal/request/OperationParameters;

    iget-object p1, p1, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->mParameters:Lcom/microsoft/identity/common/internal/request/OperationParameters;

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract execute()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCallback()Lcom/microsoft/identity/common/internal/controllers/CommandCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->mCallback:Lcom/microsoft/identity/common/internal/controllers/CommandCallback;

    return-object v0
.end method

.method public abstract getCommandNameHashCode()I
.end method

.method public getControllers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/controllers/BaseController;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->mControllers:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultController()Lcom/microsoft/identity/common/internal/controllers/BaseController;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->mControllers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/common/internal/controllers/BaseController;

    return-object v0
.end method

.method public getParameters()Lcom/microsoft/identity/common/internal/request/OperationParameters;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->mParameters:Lcom/microsoft/identity/common/internal/request/OperationParameters;

    return-object v0
.end method

.method public getPublicApiId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->mPublicApiId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->getCommandNameHashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->mParameters:Lcom/microsoft/identity/common/internal/request/OperationParameters;

    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public isEligibleForCaching()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/microsoft/identity/common/internal/controllers/CommandCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->mCallback:Lcom/microsoft/identity/common/internal/controllers/CommandCallback;

    return-void
.end method

.method public setControllers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/controllers/BaseController;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->mControllers:Ljava/util/List;

    return-void
.end method

.method public setParameters(Lcom/microsoft/identity/common/internal/request/OperationParameters;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->mParameters:Lcom/microsoft/identity/common/internal/request/OperationParameters;

    return-void
.end method

.method public setPublicApiId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->mPublicApiId:Ljava/lang/String;

    return-void
.end method
