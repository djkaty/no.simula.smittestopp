.class public Lcom/microsoft/identity/common/internal/controllers/CommandResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;
    }
.end annotation


# instance fields
.field public mResult:Ljava/lang/Object;

.field public mStatus:Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/CommandResult;->mStatus:Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;

    .line 3
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/controllers/CommandResult;->mResult:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/CommandResult;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatus()Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/CommandResult;->mStatus:Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;

    return-object v0
.end method
