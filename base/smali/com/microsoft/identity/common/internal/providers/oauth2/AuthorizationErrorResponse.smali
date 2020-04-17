.class public Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationErrorResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/providers/oauth2/IErrorResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationErrorResponse$Fields;
    }
.end annotation


# instance fields
.field public mError:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
    .end annotation
.end field

.field public mErrorDescription:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationErrorResponse;->mError:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationErrorResponse;->mErrorDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationErrorResponse;->mError:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationErrorResponse;->mErrorDescription:Ljava/lang/String;

    return-object v0
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationErrorResponse;->mError:Ljava/lang/String;

    return-void
.end method

.method public setErrorDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationErrorResponse;->mErrorDescription:Ljava/lang/String;

    return-void
.end method
