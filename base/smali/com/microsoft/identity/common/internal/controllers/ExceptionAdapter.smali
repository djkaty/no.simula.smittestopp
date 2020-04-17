.class public Lcom/microsoft/identity/common/internal/controllers/ExceptionAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "ExceptionAdapter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyCliTelemInfo(Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;Lcom/microsoft/identity/common/exception/BaseException;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->getSpeRing()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/exception/BaseException;->setSpeRing(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->getRefreshTokenAge()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/exception/BaseException;->setRefreshTokenAge(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->getServerErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/exception/BaseException;->setCliTelemErrorCode(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->getServerSubErrorCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/microsoft/identity/common/exception/BaseException;->setCliTelemSubErrorCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static baseExceptionFromException(Ljava/lang/Exception;)Lcom/microsoft/identity/common/exception/BaseException;
    .locals 3

    .line 1
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/microsoft/identity/common/exception/ClientException;

    const-string v1, "An IO error occurred with message: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "io_error"

    invoke-direct {v0, v2, v1, p0}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 4
    :cond_0
    instance-of v0, p0, Lcom/microsoft/identity/common/exception/BaseException;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Lcom/microsoft/identity/common/exception/BaseException;

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Lcom/microsoft/identity/common/exception/ClientException;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknown_error"

    invoke-direct {v0, v2, v1, p0}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static exceptionFromAcquireTokenResult(Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;)Lcom/microsoft/identity/common/exception/BaseException;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->getAuthorizationResult()Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResult;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResult;->getAuthorizationErrorResponse()Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationErrorResponse;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResult;->getSuccess()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->getAuthorizationResult()Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResult;->getAuthorizationStatus()Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    instance-of p0, v1, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationErrorResponse;

    if-eqz p0, :cond_1

    .line 6
    move-object p0, v1

    check-cast p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationErrorResponse;

    .line 7
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationErrorResponse;->getError()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Device needs to be registered to access the resource"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Lcom/microsoft/identity/common/exception/DeviceRegistrationRequiredException;

    .line 9
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationErrorResponse;->getError()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationErrorResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationErrorResponse;->getUserName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/microsoft/identity/common/exception/DeviceRegistrationRequiredException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 12
    :cond_1
    new-instance p0, Lcom/microsoft/identity/common/exception/ServiceException;

    .line 13
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationErrorResponse;->getError()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationErrorResponse;->getError()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationErrorResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/microsoft/identity/common/exception/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    return-object p0

    .line 15
    :cond_2
    new-instance p0, Lcom/microsoft/identity/common/exception/ClientException;

    .line 16
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationErrorResponse;->getError()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationErrorResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 18
    :cond_3
    new-instance p0, Lcom/microsoft/identity/common/exception/UserCancelException;

    invoke-direct {p0}, Lcom/microsoft/identity/common/exception/UserCancelException;-><init>()V

    return-object p0

    .line 19
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/ExceptionAdapter;->TAG:Ljava/lang/String;

    const-string v2, ":exceptionFromAcquireTokenResult"

    const-string v3, "AuthorizationResult was null -- expected for ATS cases."

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->getTokenResult()Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/identity/common/internal/controllers/ExceptionAdapter;->exceptionFromTokenResult(Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;)Lcom/microsoft/identity/common/exception/ServiceException;

    move-result-object p0

    return-object p0
.end method

.method public static exceptionFromTokenResult(Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;)Lcom/microsoft/identity/common/exception/ServiceException;
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->getSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->getErrorResponse()Lcom/microsoft/identity/common/internal/providers/oauth2/TokenErrorResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->getErrorResponse()Lcom/microsoft/identity/common/internal/providers/oauth2/TokenErrorResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenErrorResponse;->getError()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->getErrorResponse()Lcom/microsoft/identity/common/internal/providers/oauth2/TokenErrorResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/internal/controllers/ExceptionAdapter;->getExceptionFromTokenErrorResponse(Lcom/microsoft/identity/common/internal/providers/oauth2/TokenErrorResponse;)Lcom/microsoft/identity/common/exception/ServiceException;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->getCliTelemInfo()Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/microsoft/identity/common/internal/controllers/ExceptionAdapter;->applyCliTelemInfo(Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;Lcom/microsoft/identity/common/exception/BaseException;)V

    goto :goto_1

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/ExceptionAdapter;->TAG:Ljava/lang/String;

    const-string v2, ":exceptionFromTokenResult"

    invoke-static {v0, v1, v2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown error, Token result is null ["

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/microsoft/identity/common/exception/ServiceException;

    const/4 p0, 0x0

    const-string v1, "unknown_error"

    const-string v2, "Request failed, but no error returned back from service."

    invoke-direct {v0, v1, v2, p0}, Lcom/microsoft/identity/common/exception/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method public static getExceptionFromTokenErrorResponse(Lcom/microsoft/identity/common/internal/providers/oauth2/TokenErrorResponse;)Lcom/microsoft/identity/common/exception/ServiceException;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenErrorResponse;->getError()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/internal/controllers/ExceptionAdapter;->shouldBeConvertedToUiRequiredException(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/microsoft/identity/common/exception/UiRequiredException;

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenErrorResponse;->getError()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenErrorResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/common/exception/UiRequiredException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/exception/ServiceException;

    .line 6
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenErrorResponse;->getError()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenErrorResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/identity/common/exception/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenErrorResponse;->getSubError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/exception/ServiceException;->setOauthSubErrorCode(Ljava/lang/String;)V

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenErrorResponse;->getStatusCode()I

    move-result v1

    .line 10
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenErrorResponse;->getResponseHeadersJson()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenErrorResponse;->getResponseBody()Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-static {v1, v2, p0}, Lcom/microsoft/identity/common/internal/controllers/ExceptionAdapter;->synthesizeHttpResponse(ILjava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/net/HttpResponse;

    move-result-object p0

    .line 13
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/exception/ServiceException;->setHttpResponse(Lcom/microsoft/identity/common/internal/net/HttpResponse;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 14
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/ExceptionAdapter;->TAG:Ljava/lang/String;

    const-string v2, ":getExceptionFromTokenErrorResponse"

    const-string v3, "Failed to deserialize error data: status, headers, response body."

    invoke-static {p0, v1, v2, v3}, Le/a/a/a/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method public static shouldBeConvertedToUiRequiredException(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "invalid_grant"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "interaction_required"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthesizeHttpResponse(ILjava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/net/HttpResponse;
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    new-instance v0, Lcom/microsoft/identity/common/internal/net/HttpResponse;

    .line 2
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/util/HeaderSerializationUtil;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-direct {v0, p0, p2, p1}, Lcom/microsoft/identity/common/internal/net/HttpResponse;-><init>(ILjava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Le/c/c/s; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p1, Lcom/microsoft/identity/common/internal/controllers/ExceptionAdapter;->TAG:Ljava/lang/String;

    const-string p2, ":applyHttpErrorResponseData"

    const-string v0, "Failed to deserialize error data: status, headers, response body."

    invoke-static {p0, p1, p2, v0}, Le/a/a/a/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
