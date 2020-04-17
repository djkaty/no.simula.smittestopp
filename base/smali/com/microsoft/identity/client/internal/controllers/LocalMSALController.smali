.class public Lcom/microsoft/identity/client/internal/controllers/LocalMSALController;
.super Lcom/microsoft/identity/common/internal/controllers/BaseController;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "LocalMSALController"


# instance fields
.field public mAuthorizationRequest:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;

.field public mAuthorizationStrategy:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStrategy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/controllers/BaseController;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/identity/client/internal/controllers/LocalMSALController;->mAuthorizationStrategy:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStrategy;

    .line 3
    iput-object v0, p0, Lcom/microsoft/identity/client/internal/controllers/LocalMSALController;->mAuthorizationRequest:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;

    return-void
.end method

.method private performAuthorizationRequest(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResult;
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/adal/internal/net/HttpWebRequest;->throwIfNetworkNotAvailable(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/microsoft/identity/common/internal/ui/AuthorizationStrategyFactory;->getInstance()Lcom/microsoft/identity/common/internal/ui/AuthorizationStrategyFactory;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p2}, Lcom/microsoft/identity/common/internal/ui/AuthorizationStrategyFactory;->getAuthorizationStrategy(Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/client/internal/controllers/LocalMSALController;->mAuthorizationStrategy:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStrategy;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/internal/controllers/BaseController;->getAuthorizationRequest(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/request/OperationParameters;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/identity/client/internal/controllers/LocalMSALController;->mAuthorizationRequest:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;

    .line 5
    iget-object v0, p0, Lcom/microsoft/identity/client/internal/controllers/LocalMSALController;->mAuthorizationStrategy:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStrategy;

    invoke-virtual {p1, p2, v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;->requestAuthorization(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStrategy;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResult;

    return-object p1
.end method


# virtual methods
.method public acquireToken(Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;)Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/client/internal/controllers/LocalMSALController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":acquireToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Acquiring token..."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->putProperties(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    move-result-object v0

    const-string v1, "101"

    .line 4
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->putApiId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    .line 6
    new-instance v0, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;-><init>()V

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->validate()V

    .line 8
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/controllers/BaseController;->addDefaultScopes(Lcom/microsoft/identity/common/internal/request/OperationParameters;)V

    .line 9
    sget-object v2, Lcom/microsoft/identity/client/internal/controllers/LocalMSALController;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lcom/microsoft/identity/common/internal/controllers/BaseController;->logParameters(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/identity/common/adal/internal/net/HttpWebRequest;->throwIfNetworkNotAvailable(Landroid/content/Context;)V

    .line 11
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getKnownAuthorityResult(Lcom/microsoft/identity/common/internal/authorities/Authority;)Lcom/microsoft/identity/common/internal/authorities/Authority$KnownAuthorityResult;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/authorities/Authority$KnownAuthorityResult;->getKnown()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 13
    new-instance v2, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2StrategyParameters;

    invoke-direct {v2}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2StrategyParameters;-><init>()V

    .line 14
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2StrategyParameters;->setContext(Landroid/content/Context;)V

    .line 15
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v3

    .line 16
    invoke-virtual {v3, v2}, Lcom/microsoft/identity/common/internal/authorities/Authority;->createOAuth2Strategy(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2StrategyParameters;)Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;

    move-result-object v2

    .line 17
    invoke-direct {p0, v2, p1}, Lcom/microsoft/identity/client/internal/controllers/LocalMSALController;->performAuthorizationRequest(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResult;

    move-result-object v3

    .line 18
    invoke-virtual {v0, v3}, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->setAuthorizationResult(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResult;)V

    .line 19
    sget-object v4, Lcom/microsoft/identity/client/internal/controllers/LocalMSALController;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/microsoft/identity/common/internal/controllers/BaseController;->logResult(Ljava/lang/String;Lcom/microsoft/identity/common/internal/providers/oauth2/IResult;)V

    .line 20
    invoke-virtual {v3}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResult;->getAuthorizationStatus()Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;

    move-result-object v4

    sget-object v5, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;->SUCCESS:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 21
    iget-object v4, p0, Lcom/microsoft/identity/client/internal/controllers/LocalMSALController;->mAuthorizationRequest:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;

    .line 22
    invoke-virtual {v3}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResult;->getAuthorizationResponse()Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResponse;

    move-result-object v3

    .line 23
    invoke-virtual {p0, v2, v4, v3, p1}, Lcom/microsoft/identity/common/internal/controllers/BaseController;->performTokenRequest(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResponse;Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;)Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;

    move-result-object v3

    .line 24
    invoke-virtual {v0, v3}, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->setTokenResult(Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;)V

    if-eqz v3, :cond_0

    .line 25
    invoke-virtual {v3}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->getSuccess()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 26
    iget-object v4, p0, Lcom/microsoft/identity/client/internal/controllers/LocalMSALController;->mAuthorizationRequest:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;

    .line 27
    invoke-virtual {v3}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->getTokenResponse()Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;

    move-result-object v3

    .line 28
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getTokenCache()Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;

    move-result-object v5

    .line 29
    invoke-virtual {p0, v2, v4, v3, v5}, Lcom/microsoft/identity/common/internal/controllers/BaseController;->saveTokens(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 30
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    .line 31
    new-instance v4, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;

    .line 32
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthenticationScheme()Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;

    move-result-object p1

    .line 33
    invoke-virtual {p0, v3, p1}, Lcom/microsoft/identity/common/internal/controllers/BaseController;->finalizeCacheRecordForResult(Lcom/microsoft/identity/common/internal/cache/ICacheRecord;Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    move-result-object p1

    sget-object v3, Lcom/microsoft/identity/common/internal/request/SdkType;->MSAL:Lcom/microsoft/identity/common/internal/request/SdkType;

    invoke-direct {v4, p1, v2, v3}, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;-><init>(Lcom/microsoft/identity/common/internal/cache/ICacheRecord;Ljava/util/List;Lcom/microsoft/identity/common/internal/request/SdkType;)V

    .line 34
    invoke-virtual {v0, v4}, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->setLocalAuthenticationResult(Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;)V

    .line 35
    :cond_0
    new-instance p1, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    invoke-direct {p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;-><init>()V

    .line 36
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putResult(Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    move-result-object p1

    .line 37
    invoke-virtual {p1, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putApiId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    move-result-object p1

    .line 38
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    return-object v0

    .line 39
    :cond_1
    new-instance p1, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    invoke-direct {p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;-><init>()V

    .line 40
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/authorities/Authority$KnownAuthorityResult;->getClientException()Lcom/microsoft/identity/common/exception/ClientException;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putException(Ljava/lang/Exception;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    move-result-object p1

    .line 41
    invoke-virtual {p1, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putApiId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    move-result-object p1

    .line 42
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    .line 43
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/authorities/Authority$KnownAuthorityResult;->getClientException()Lcom/microsoft/identity/common/exception/ClientException;

    move-result-object p1

    throw p1
.end method

.method public acquireTokenSilent(Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;)Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/client/internal/controllers/LocalMSALController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":acquireTokenSilent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Acquiring token silently..."

    invoke-static {v0, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->putProperties(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    move-result-object v0

    const-string v2, "103"

    .line 4
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->putApiId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    .line 6
    new-instance v0, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;-><init>()V

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;->validate()V

    .line 8
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/controllers/BaseController;->addDefaultScopes(Lcom/microsoft/identity/common/internal/request/OperationParameters;)V

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getTokenCache()Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;

    move-result-object v6

    .line 10
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/controllers/BaseController;->getCachedAccountRecord(Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object v3

    .line 11
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthenticationScheme()Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;

    move-result-object v4

    .line 12
    new-instance v5, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2StrategyParameters;

    invoke-direct {v5}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2StrategyParameters;-><init>()V

    .line 13
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2StrategyParameters;->setContext(Landroid/content/Context;)V

    .line 14
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/microsoft/identity/common/internal/authorities/Authority;->createOAuth2Strategy(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2StrategyParameters;)Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;

    move-result-object v7

    .line 15
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getClientId()Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getScopes()Ljava/util/Set;

    move-result-object v8

    const-string v9, " "

    invoke-static {v9, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    .line 17
    invoke-virtual {v6, v5, v8, v3, v4}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;->loadWithAggregatedAccountData(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/AccountRecord;Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    .line 18
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    .line 19
    invoke-virtual {p0, v8}, Lcom/microsoft/identity/common/internal/controllers/BaseController;->accessTokenIsNull(Lcom/microsoft/identity/common/internal/cache/ICacheRecord;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 20
    invoke-virtual {p0, v8}, Lcom/microsoft/identity/common/internal/controllers/BaseController;->refreshTokenIsNull(Lcom/microsoft/identity/common/internal/cache/ICacheRecord;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 21
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getForceRefresh()Z

    move-result v5

    if-nez v5, :cond_2

    .line 22
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v5

    invoke-interface {v8}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getAccessToken()Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    move-result-object v9

    invoke-virtual {p0, v5, v9}, Lcom/microsoft/identity/common/internal/controllers/BaseController;->isRequestAuthorityRealmSameAsATRealm(Lcom/microsoft/identity/common/internal/authorities/Authority;Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 23
    invoke-virtual {v7, v4, v8}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;->validateCachedResult(Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;Lcom/microsoft/identity/common/internal/cache/ICacheRecord;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {v8}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getAccessToken()Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->isExpired()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/microsoft/identity/client/internal/controllers/LocalMSALController;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Access token is expired. Removing from cache..."

    invoke-static {v3, v4}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-interface {v8}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getAccessToken()Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;->removeCredential(Lcom/microsoft/identity/common/internal/dto/Credential;)Z

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/microsoft/identity/client/internal/controllers/LocalMSALController;->TAG:Ljava/lang/String;

    const-string v5, "Renewing access token..."

    invoke-static {v3, v4, v1, v5}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, p0

    move-object v4, p1

    move-object v5, v0

    .line 28
    invoke-virtual/range {v3 .. v8}, Lcom/microsoft/identity/common/internal/controllers/BaseController;->renewAccessToken(Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/cache/ICacheRecord;)V

    goto :goto_1

    .line 29
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/microsoft/identity/client/internal/controllers/LocalMSALController;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Returning silent result"

    invoke-static {v1, v4}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v1, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;

    .line 31
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthenticationScheme()Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;

    move-result-object p1

    .line 32
    invoke-virtual {p0, v8, p1}, Lcom/microsoft/identity/common/internal/controllers/BaseController;->finalizeCacheRecordForResult(Lcom/microsoft/identity/common/internal/cache/ICacheRecord;Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    move-result-object p1

    sget-object v4, Lcom/microsoft/identity/common/internal/request/SdkType;->MSAL:Lcom/microsoft/identity/common/internal/request/SdkType;

    invoke-direct {v1, p1, v3, v4}, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;-><init>(Lcom/microsoft/identity/common/internal/cache/ICacheRecord;Ljava/util/List;Lcom/microsoft/identity/common/internal/request/SdkType;)V

    .line 33
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->setLocalAuthenticationResult(Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;)V

    goto :goto_1

    .line 34
    :cond_2
    :goto_0
    invoke-virtual {p0, v8}, Lcom/microsoft/identity/common/internal/controllers/BaseController;->refreshTokenIsNull(Lcom/microsoft/identity/common/internal/cache/ICacheRecord;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/microsoft/identity/client/internal/controllers/LocalMSALController;->TAG:Ljava/lang/String;

    const-string v5, "No access token found, but RT is available."

    invoke-static {v3, v4, v1, v5}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, p0

    move-object v4, p1

    move-object v5, v0

    .line 36
    invoke-virtual/range {v3 .. v8}, Lcom/microsoft/identity/common/internal/controllers/BaseController;->renewAccessToken(Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/cache/ICacheRecord;)V

    .line 37
    :goto_1
    new-instance p1, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    invoke-direct {p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;-><init>()V

    .line 38
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putResult(Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    move-result-object p1

    .line 39
    invoke-virtual {p1, v2}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putApiId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    move-result-object p1

    .line 40
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    return-object v0

    .line 41
    :cond_3
    new-instance p1, Lcom/microsoft/identity/common/exception/ClientException;

    const-string v0, "no_tokens_found"

    const-string v1, "No refresh token was found. "

    invoke-direct {p1, v0, v1}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;-><init>()V

    .line 43
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putException(Ljava/lang/Exception;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    move-result-object v0

    .line 44
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putApiId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    .line 46
    throw p1
.end method

.method public completeAcquireToken(IILandroid/content/Intent;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/client/internal/controllers/LocalMSALController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":completeAcquireToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Completing acquire token..."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;-><init>()V

    const-string v1, "1032"

    .line 3
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->putApiId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    move-result-object v0

    .line 4
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Microsoft.MSAL.result_code"

    invoke-virtual {v0, v3, v2}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    move-result-object v0

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Microsoft.MSAL.request_code"

    invoke-virtual {v0, v3, v2}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    .line 7
    iget-object v0, p0, Lcom/microsoft/identity/client/internal/controllers/LocalMSALController;->mAuthorizationStrategy:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStrategy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStrategy;->completeAuthorization(IILandroid/content/Intent;)V

    .line 8
    new-instance p1, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    invoke-direct {p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;-><init>()V

    .line 9
    invoke-virtual {p1, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putApiId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    return-void
.end method

.method public getAccounts(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/request/OperationParameters;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->putProperties(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    move-result-object v0

    const-string v1, "106"

    .line 3
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->putApiId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getTokenCache()Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getClientId()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v2, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;->getAccountsWithAggregatedAccountData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;-><init>()V

    .line 9
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putApiId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    move-result-object v0

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Microsoft.MSAL.accounts_number"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    move-result-object v0

    const-string v1, "_is_successful"

    const-string v2, "true"

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    return-object p1
.end method

.method public getCurrentAccount(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/request/OperationParameters;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/internal/controllers/LocalMSALController;->getAccounts(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDeviceMode(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Z
    .locals 3

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/microsoft/identity/client/internal/controllers/LocalMSALController;->TAG:Ljava/lang/String;

    const-string v1, ":getDeviceMode"

    const-string v2, "LocalMSALController is not eligible to use the broker. Do not check sharedDevice mode and return false immediately."

    invoke-static {p1, v0, v1, v2}, Le/a/a/a/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public removeAccount(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Z
    .locals 7

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->putProperties(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    move-result-object v0

    const-string v1, "107"

    .line 3
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->putApiId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAccount()Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAccount()Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/identity/common/internal/dto/IAccountRecord;->getRealm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 7
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getTokenCache()Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;

    move-result-object v3

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAccount()Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAccount()Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    move-result-object v4

    invoke-interface {v4}, Lcom/microsoft/identity/common/internal/dto/IAccountRecord;->getEnvironment()Ljava/lang/String;

    move-result-object v4

    .line 9
    :goto_1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getClientId()Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAccount()Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAccount()Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    move-result-object p1

    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/dto/IAccountRecord;->getHomeAccountId()Ljava/lang/String;

    move-result-object v2

    .line 11
    :goto_2
    invoke-virtual {v3, v4, v5, v2, v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;->removeAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/cache/AccountDeletionRecord;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/cache/AccountDeletionRecord;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 13
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;-><init>()V

    .line 14
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_is_successful"

    invoke-virtual {v0, v3, v2}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    move-result-object v0

    .line 15
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putApiId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    return p1
.end method

.method public removeCurrentAccount(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/internal/controllers/LocalMSALController;->removeAccount(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Z

    move-result p1

    return p1
.end method
