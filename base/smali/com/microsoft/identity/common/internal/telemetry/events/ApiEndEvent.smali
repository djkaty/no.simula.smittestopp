.class public Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;
.super Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;-><init>()V

    const-string v0, "api_end_event"

    .line 2
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;->names(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;

    const-string v0, "Microsoft.MSAL.api_event"

    .line 3
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;->types(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;

    return-void
.end method


# virtual methods
.method public isApiCallSuccessful(Ljava/lang/Boolean;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_is_successful"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/Properties;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/microsoft/identity/common/internal/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/Properties;

    return-object p0
.end method

.method public putApiErrorCode(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;
    .locals 1

    const-string v0, "Microsoft.MSAL.api_error_code"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    return-object p0
.end method

.method public putApiId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;
    .locals 1

    const-string v0, "Microsoft.MSAL.api_id"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    return-object p0
.end method

.method public putException(Ljava/lang/Exception;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/controllers/ExceptionAdapter;->baseExceptionFromException(Ljava/lang/Exception;)Lcom/microsoft/identity/common/exception/BaseException;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lcom/microsoft/identity/common/exception/UserCancelException;

    if-eqz v0, :cond_1

    const-string v0, "Microsoft.MSAL.user_cancel"

    const-string v1, "true"

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/BaseException;->getCliTelemErrorCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Microsoft.MSAL.server_error_code"

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/BaseException;->getCliTelemSubErrorCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Microsoft.MSAL.server_sub_error_code"

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/BaseException;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Microsoft.MSAL.api_error_code"

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/BaseException;->getSpeRing()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Microsoft.MSAL.spe_ring"

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Microsoft.MSAL.error_description"

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/BaseException;->getRefreshTokenAge()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Microsoft.MSAL.rt_age"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    const-string p1, "_is_successful"

    const-string v0, "false"

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    return-object p0
.end method

.method public putResult(Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->getSucceeded()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->getSucceeded()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_is_successful"

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->getLocalAuthenticationResult()Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->getLocalAuthenticationResult()Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Microsoft.MSAL.user_id"

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->getLocalAuthenticationResult()Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getTenantId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Microsoft.MSAL.tenant_id"

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->getLocalAuthenticationResult()Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getSpeRing()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Microsoft.MSAL.spe_ring"

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->getLocalAuthenticationResult()Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;

    move-result-object p1

    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getRefreshTokenAge()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Microsoft.MSAL.rt_age"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    :cond_2
    return-object p0
.end method
