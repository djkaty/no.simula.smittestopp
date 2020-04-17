.class public Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;
.super Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "ApiStartEvent"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;-><init>()V

    const-string v0, "api_start_event"

    .line 2
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;->names(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;

    const-string v0, "Microsoft.MSAL.api_event"

    .line 3
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;->types(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;

    return-void
.end method

.method public static sanitizeUrlForTelemetry(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    sget-object v1, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->TAG:Ljava/lang/String;

    const-string v2, "Url is invalid"

    invoke-static {v1, v2, p0}, Lcom/microsoft/identity/common/internal/logging/Logger;->errorPII(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->sanitizeUrlForTelemetry(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public static sanitizeUrlForTelemetry(Ljava/net/URL;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "://"

    .line 8
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2f

    .line 10
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    .line 11
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 12
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public authority(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->sanitizeUrlForTelemetry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Microsoft.MSAL.authority"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/Properties;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/microsoft/identity/common/internal/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/Properties;

    return-object p0
.end method

.method public putApiId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;
    .locals 1

    const-string v0, "Microsoft.MSAL.api_id"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    return-object p0
.end method

.method public putAuthorityType(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;
    .locals 1

    const-string v0, "Microsoft.MSAL.authority_type"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    return-object p0
.end method

.method public putExtendedExpiresOnSetting(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;
    .locals 1

    const-string v0, "Microsoft.MSAL.extended_expires_on_setting"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    return-object p0
.end method

.method public putLoginHint(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;
    .locals 1

    :try_start_0
    const-string v0, "Microsoft.MSAL.login_hint"

    .line 1
    invoke-static {p1}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->createHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2
    :goto_0
    sget-object v0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method public putProperties(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Microsoft.MSAL.authority"

    invoke-virtual {p0, v2, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getAuthorityTypeString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Microsoft.MSAL.authority_type"

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getSdkType()Lcom/microsoft/identity/common/internal/request/SdkType;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getSdkType()Lcom/microsoft/identity/common/internal/request/SdkType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Microsoft.MSAL.sdk_name"

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    .line 7
    :cond_3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Microsoft.MSAL.sdk_version"

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getClaimsRequestJson()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "false"

    goto :goto_0

    :cond_4
    const-string v0, "true"

    :goto_0
    const-string v1, "Microsoft.MSAL.claim_request"

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    .line 10
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getRedirectUri()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Microsoft.MSAL.redirect_uri"

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    .line 11
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getClientId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Microsoft.MSAL.client_id"

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    .line 12
    instance-of v0, p1, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;

    if-eqz v0, :cond_7

    .line 13
    move-object v0, p1

    check-cast v0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;

    .line 14
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getAuthorizationAgent()Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 15
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getAuthorizationAgent()Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Microsoft.MSAL.user_agent"

    .line 16
    invoke-virtual {p0, v2, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    .line 17
    :cond_5
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getLoginHint()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Microsoft.MSAL.login_hint"

    .line 18
    invoke-virtual {p0, v2, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    .line 19
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getExtraQueryStringParameters()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 20
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getExtraQueryStringParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Microsoft.MSAL.query_params"

    .line 21
    invoke-virtual {p0, v2, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    .line 22
    :cond_6
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getOpenIdConnectPromptParameter()Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 23
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getOpenIdConnectPromptParameter()Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Microsoft.MSAL.prompt_behavior"

    .line 24
    invoke-virtual {p0, v1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    .line 25
    :cond_7
    instance-of v0, p1, Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;

    if-eqz v0, :cond_9

    .line 26
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAccount()Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 27
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAccount()Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/identity/common/internal/dto/IAccountRecord;->getHomeAccountId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Microsoft.MSAL.user_id"

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    .line 28
    :cond_8
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getForceRefresh()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Microsoft.MSAL.force_refresh"

    .line 29
    invoke-virtual {p0, v1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    .line 30
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getRequiredBrokerProtocolVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Microsoft.MSAL.broker_protocol_version"

    .line 31
    invoke-virtual {p0, v1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    .line 32
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getScopes()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 33
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getScopes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Microsoft.MSAL.scope_size"

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    .line 34
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getScopes()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Microsoft.MSAL.scope_value"

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    .line 35
    :cond_9
    instance-of v0, p1, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;

    .line 36
    instance-of p1, p1, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;

    return-object p0
.end method

.method public putValidationStatus(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;
    .locals 1

    const-string v0, "Microsoft.MSAL.authority_validation_status"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    return-object p0
.end method
