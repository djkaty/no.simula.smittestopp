.class public Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/providers/oauth2/IResult;


# instance fields
.field public mCliTelemInfo:Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;

.field public mSuccess:Z

.field public mTokenErrorResponse:Lcom/microsoft/identity/common/internal/providers/oauth2/TokenErrorResponse;

.field public mTokenResponse:Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->mSuccess:Z

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/internal/providers/oauth2/TokenErrorResponse;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;-><init>(Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;Lcom/microsoft/identity/common/internal/providers/oauth2/TokenErrorResponse;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;-><init>(Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;Lcom/microsoft/identity/common/internal/providers/oauth2/TokenErrorResponse;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;Lcom/microsoft/identity/common/internal/providers/oauth2/TokenErrorResponse;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->mSuccess:Z

    .line 7
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->mTokenResponse:Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;

    .line 8
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->mTokenErrorResponse:Lcom/microsoft/identity/common/internal/providers/oauth2/TokenErrorResponse;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->mSuccess:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getCliTelemInfo()Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->mCliTelemInfo:Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;

    return-object v0
.end method

.method public bridge synthetic getErrorResponse()Lcom/microsoft/identity/common/internal/providers/oauth2/IErrorResponse;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->getErrorResponse()Lcom/microsoft/identity/common/internal/providers/oauth2/TokenErrorResponse;

    move-result-object v0

    return-object v0
.end method

.method public getErrorResponse()Lcom/microsoft/identity/common/internal/providers/oauth2/TokenErrorResponse;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->mTokenErrorResponse:Lcom/microsoft/identity/common/internal/providers/oauth2/TokenErrorResponse;

    return-object v0
.end method

.method public getSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->mSuccess:Z

    return v0
.end method

.method public bridge synthetic getSuccessResponse()Lcom/microsoft/identity/common/internal/providers/oauth2/ISuccessResponse;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->getSuccessResponse()Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public getSuccessResponse()Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->mTokenResponse:Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;

    return-object v0
.end method

.method public getTokenResponse()Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->mTokenResponse:Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;

    return-object v0
.end method

.method public setCliTelemInfo(Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->mCliTelemInfo:Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->mSuccess:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "TokenResult{mTokenResponse="

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->mTokenResponse:Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTokenErrorResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->mTokenErrorResponse:Lcom/microsoft/identity/common/internal/providers/oauth2/TokenErrorResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->mSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
