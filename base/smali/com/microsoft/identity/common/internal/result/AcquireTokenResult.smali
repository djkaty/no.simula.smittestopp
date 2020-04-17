.class public Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mAuthorizationResult:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResult;

.field public mLocalAuthenticationResult:Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;

.field public mSucceeded:Ljava/lang/Boolean;

.field public mTokenResult:Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->mSucceeded:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getAuthorizationResult()Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->mAuthorizationResult:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResult;

    return-object v0
.end method

.method public getLocalAuthenticationResult()Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->mLocalAuthenticationResult:Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;

    return-object v0
.end method

.method public getSucceeded()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->mSucceeded:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTokenResult()Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->mTokenResult:Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;

    return-object v0
.end method

.method public setAuthorizationResult(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->mAuthorizationResult:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResult;

    return-void
.end method

.method public setLocalAuthenticationResult(Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->mLocalAuthenticationResult:Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;

    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->mSucceeded:Ljava/lang/Boolean;

    return-void
.end method

.method public setTokenResult(Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->mTokenResult:Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;

    return-void
.end method
