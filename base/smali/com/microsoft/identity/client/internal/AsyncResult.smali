.class public Lcom/microsoft/identity/client/internal/AsyncResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mMsalException:Lcom/microsoft/identity/client/exception/MsalException;

.field public mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public mSuccess:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/microsoft/identity/client/exception/MsalException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/microsoft/identity/client/exception/MsalException;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/microsoft/identity/client/internal/AsyncResult;->mSuccess:Z

    .line 3
    iput-object p1, p0, Lcom/microsoft/identity/client/internal/AsyncResult;->mResult:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/microsoft/identity/client/internal/AsyncResult;->mMsalException:Lcom/microsoft/identity/client/exception/MsalException;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/microsoft/identity/client/internal/AsyncResult;->mSuccess:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getException()Lcom/microsoft/identity/client/exception/MsalException;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/internal/AsyncResult;->mMsalException:Lcom/microsoft/identity/client/exception/MsalException;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/internal/AsyncResult;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public getSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/identity/client/internal/AsyncResult;->mSuccess:Z

    return v0
.end method
