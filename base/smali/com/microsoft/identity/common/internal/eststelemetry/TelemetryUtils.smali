.class public Lcom/microsoft/identity/common/internal/eststelemetry/TelemetryUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static errorFromAcquireTokenResult(Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "unknown_error"

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->getAuthorizationResult()Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResult;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/internal/eststelemetry/TelemetryUtils;->getErrorFromAuthorizationResult(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResult;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->getTokenResult()Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/identity/common/internal/eststelemetry/TelemetryUtils;->getErrorFromTokenResult(Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getErrorFromAuthorizationResult(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResult;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResult;->getErrorResponse()Lcom/microsoft/identity/common/internal/providers/oauth2/IErrorResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResult;->getErrorResponse()Lcom/microsoft/identity/common/internal/providers/oauth2/IErrorResponse;

    move-result-object p0

    invoke-interface {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/IErrorResponse;->getError()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getErrorFromTokenResult(Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->getErrorResponse()Lcom/microsoft/identity/common/internal/providers/oauth2/TokenErrorResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->getErrorResponse()Lcom/microsoft/identity/common/internal/providers/oauth2/TokenErrorResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenErrorResponse;->getError()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
