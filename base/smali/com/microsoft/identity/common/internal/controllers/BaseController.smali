.class public abstract Lcom/microsoft/identity/common/internal/controllers/BaseController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_SCOPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "BaseController"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/microsoft/identity/common/internal/controllers/BaseController;->DEFAULT_SCOPES:Ljava/util/Set;

    const-string v1, "openid"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lcom/microsoft/identity/common/internal/controllers/BaseController;->DEFAULT_SCOPES:Ljava/util/Set;

    const-string v1, "offline_access"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Lcom/microsoft/identity/common/internal/controllers/BaseController;->DEFAULT_SCOPES:Ljava/util/Set;

    const-string v1, "profile"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logExposedFieldsOfObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, ":"

    .line 1
    invoke-static {p0, v0}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/net/ObjectMapper;->serializeExposedFieldsOfObjectToJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logResult(Ljava/lang/String;Lcom/microsoft/identity/common/internal/providers/oauth2/IResult;)V
    .locals 2

    const-string v0, ":"

    .line 1
    invoke-static {p0, v0}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/IResult;->getSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Success Result"

    .line 3
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/IResult;->getSuccessResponse()Lcom/microsoft/identity/common/internal/providers/oauth2/ISuccessResponse;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/microsoft/identity/common/internal/controllers/BaseController;->logExposedFieldsOfObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "Failure Result"

    .line 5
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/IResult;->getErrorResponse()Lcom/microsoft/identity/common/internal/providers/oauth2/IErrorResponse;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/IResult;->getErrorResponse()Lcom/microsoft/identity/common/internal/providers/oauth2/IErrorResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/IErrorResponse;->getError()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "Error: "

    .line 8
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/IResult;->getErrorResponse()Lcom/microsoft/identity/common/internal/providers/oauth2/IErrorResponse;

    move-result-object v1

    invoke-interface {v1}, Lcom/microsoft/identity/common/internal/providers/oauth2/IErrorResponse;->getError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_1
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/IResult;->getErrorResponse()Lcom/microsoft/identity/common/internal/providers/oauth2/IErrorResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/IErrorResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "Description: "

    .line 12
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 13
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/IResult;->getErrorResponse()Lcom/microsoft/identity/common/internal/providers/oauth2/IErrorResponse;

    move-result-object v1

    invoke-interface {v1}, Lcom/microsoft/identity/common/internal/providers/oauth2/IErrorResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {p0, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->warnPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_2
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/IResult;->getErrorResponse()Lcom/microsoft/identity/common/internal/providers/oauth2/IErrorResponse;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/microsoft/identity/common/internal/controllers/BaseController;->logExposedFieldsOfObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    :cond_3
    :goto_0
    instance-of v0, p1, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResult;

    if-eqz v0, :cond_4

    .line 17
    check-cast p1, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResult;

    .line 18
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResult;->getAuthorizationStatus()Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "Authorization Status: "

    .line 19
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 20
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResult;->getAuthorizationStatus()Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public accessTokenIsNull(Lcom/microsoft/identity/common/internal/cache/ICacheRecord;)Z
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getAccessToken()Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract acquireToken(Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;)Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;
.end method

.method public abstract acquireTokenSilent(Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;)Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;
.end method

.method public addDefaultScopes(Lcom/microsoft/identity/common/internal/request/OperationParameters;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getScopes()Ljava/util/Set;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/BaseController;->DEFAULT_SCOPES:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v1, ""

    const/4 v2, 0x0

    .line 3
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 4
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setScopes(Ljava/util/Set;)V

    return-void
.end method

.method public abstract completeAcquireToken(IILandroid/content/Intent;)V
.end method

.method public finalizeCacheRecordForResult(Lcom/microsoft/identity/common/internal/cache/ICacheRecord;Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;
    .locals 2

    .line 1
    instance-of v0, p2, Lcom/microsoft/identity/common/internal/authscheme/ITokenAuthenticationSchemeInternal;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lcom/microsoft/identity/common/internal/authscheme/ITokenAuthenticationSchemeInternal;

    .line 3
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getAccessToken()Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getAccessToken()Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getSecret()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-interface {p2, v1}, Lcom/microsoft/identity/common/internal/authscheme/ITokenAuthenticationSchemeInternal;->getAccessTokenForScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-virtual {v0, p2}, Lcom/microsoft/identity/common/internal/dto/Credential;->setSecret(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public abstract getAccounts(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Ljava/util/List;
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
.end method

.method public getAuthorizationRequest(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/request/OperationParameters;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAccount()Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;->createAuthorizationRequestBuilder(Lcom/microsoft/identity/common/internal/dto/IAccountRecord;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/internal/controllers/BaseController;->initializeAuthorizationRequestBuilder(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;Lcom/microsoft/identity/common/internal/request/OperationParameters;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->build()Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;

    move-result-object p1

    return-object p1
.end method

.method public getCachedAccountRecord(Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAccount()Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    move-result-object v0

    const-string v1, "no_account_found"

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getAuthorityTypeString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "B2C"

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getClientId()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAccount()Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    move-result-object v3

    invoke-interface {v3}, Lcom/microsoft/identity/common/internal/dto/IAccountRecord;->getHomeAccountId()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAccount()Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    move-result-object v4

    invoke-interface {v4}, Lcom/microsoft/identity/common/internal/dto/IAccountRecord;->getLocalAccountId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getTokenCache()Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v5, v2, v3}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;->getAccountByHomeAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getTokenCache()Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v5, v2, v4}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;->getAccountByLocalAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    return-object p1

    .line 12
    :cond_1
    sget-object p1, Lcom/microsoft/identity/common/internal/controllers/BaseController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No accounts found for clientId ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v5}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object p1, Lcom/microsoft/identity/common/internal/controllers/BaseController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No accounts found for clientId, homeAccountId: ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v5}, Lcom/microsoft/identity/common/internal/logging/Logger;->errorPII(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    new-instance p1, Lcom/microsoft/identity/common/exception/ClientException;

    const-string v0, "No cached accounts found for the supplied homeAccountId"

    invoke-direct {p1, v1, v0}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_2
    new-instance p1, Lcom/microsoft/identity/common/exception/ClientException;

    const-string v0, "No cached accounts found for the supplied homeAccountId and clientId"

    invoke-direct {p1, v1, v0}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public abstract getCurrentAccount(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Ljava/util/List;
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
.end method

.method public abstract getDeviceMode(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Z
.end method

.method public idTokenIsNull(Lcom/microsoft/identity/common/internal/cache/ICacheRecord;Lcom/microsoft/identity/common/internal/request/SdkType;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/request/SdkType;->ADAL:Lcom/microsoft/identity/common/internal/request/SdkType;

    if-ne p2, v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getV1IdToken()Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getIdToken()Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final initializeAuthorizationRequestBuilder(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;Lcom/microsoft/identity/common/internal/request/OperationParameters;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/internal/logging/IRequestContext;

    move-result-object v1

    const-string v2, "correlation_id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2
    sget-object v2, Lcom/microsoft/identity/common/internal/controllers/BaseController;->TAG:Ljava/lang/String;

    const-string v3, "correlation id from diagnostic context is not a UUID"

    invoke-static {v2, v3, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    .line 3
    :goto_0
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->setClientId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;

    move-result-object v2

    .line 4
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getRedirectUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->setRedirectUri(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;

    move-result-object v2

    .line 5
    invoke-virtual {v2, v1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->setCorrelationId(Ljava/util/UUID;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;

    .line 6
    instance-of v1, p2, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;

    const-string v2, " "

    if-eqz v1, :cond_3

    .line 7
    move-object v1, p2

    check-cast v1, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;

    .line 8
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v3

    instance-of v3, v3, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v3

    check-cast v3, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;

    .line 10
    move-object v4, p1

    check-cast v4, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest$Builder;

    .line 11
    invoke-virtual {v3}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;->getAuthorityURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest$Builder;->setAuthority(Ljava/net/URL;)Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest$Builder;

    move-result-object v4

    iget-boolean v5, v3, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;->mMultipleCloudsSupported:Z

    .line 12
    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest$Builder;->setMultipleCloudAware(Z)Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest$Builder;

    move-result-object v4

    iget-object v3, v3, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;->mSlice:Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

    .line 13
    invoke-virtual {v4, v3}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest$Builder;->setSlice(Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;)Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest$Builder;

    .line 14
    :cond_0
    instance-of v3, p1, Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;

    if-eqz v3, :cond_1

    .line 15
    move-object v3, p1

    check-cast v3, Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;

    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getScopes()Ljava/util/Set;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;->setTokenScope(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest$Builder;

    .line 16
    :cond_1
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getExtraScopesToConsent()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 17
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getScopes()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getExtraScopesToConsent()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 18
    :cond_2
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getLoginHint()Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-virtual {p1, v3}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->setLoginHint(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;

    move-result-object v3

    .line 20
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getExtraQueryStringParameters()Ljava/util/List;

    move-result-object v4

    .line 21
    invoke-virtual {v3, v4}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->setExtraQueryParams(Ljava/util/List;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;

    move-result-object v3

    .line 22
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getOpenIdConnectPromptParameter()Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 23
    invoke-virtual {v3, v4}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->setPrompt(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;

    move-result-object v3

    .line 24
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getClaimsRequestJson()Ljava/lang/String;

    move-result-object v4

    .line 25
    invoke-virtual {v3, v4}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->setClaims(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;

    move-result-object v3

    .line 26
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getRequestHeaders()Ljava/util/HashMap;

    move-result-object v4

    .line 27
    invoke-virtual {v3, v4}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->setRequestHeaders(Ljava/util/HashMap;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;

    move-result-object v3

    .line 28
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->isWebViewZoomEnabled()Z

    move-result v4

    .line 29
    invoke-virtual {v3, v4}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->setWebViewZoomEnabled(Z)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;

    move-result-object v3

    .line 30
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->isWebViewZoomControlsEnabled()Z

    move-result v4

    .line 31
    invoke-virtual {v3, v4}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->setWebViewZoomControlsEnabled(Z)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;

    .line 32
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getLoginHint()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->isNullOrBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 33
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getOpenIdConnectPromptParameter()Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    move-result-object v1

    sget-object v3, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;->SELECT_ACCOUNT:Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    if-ne v1, v3, :cond_3

    .line 34
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->setPrompt(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;

    .line 35
    :cond_3
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getScopes()Ljava/util/Set;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->setScope(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;

    return-object p1
.end method

.method public isMsaAccount(Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->getClientInfo()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;->getIdToken()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {v0, p1}, Lcom/microsoft/identity/common/internal/cache/SchemaUtil;->getTenantId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "9188040d-6c67-4c5b-b112-36a304b66dad"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isRequestAuthorityRealmSameAsATRealm(Lcom/microsoft/identity/common/internal/authorities/Authority;Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;->getAudience()Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;->getTenantId()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;->isHomeTenantAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/dto/Credential;->getHomeAccountId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v1

    .line 6
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->getRealm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;->getAudience()Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;->getTenantUuidForAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->getRealm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public logParameters(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, ":"

    .line 1
    invoke-static {p1, v0}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->getAllowPii()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p2}, Lcom/microsoft/identity/common/internal/net/ObjectMapper;->serializeObjectToJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/microsoft/identity/common/internal/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2}, Lcom/microsoft/identity/common/internal/net/ObjectMapper;->serializeExposedFieldsOfObjectToJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public performSilentTokenRequest(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;)Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/BaseController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":performSilentTokenRequest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Requesting tokens..."

    invoke-static {v0, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/adal/internal/net/HttpWebRequest;->throwIfNetworkNotAvailable(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getKnownAuthorityResult(Lcom/microsoft/identity/common/internal/authorities/Authority;)Lcom/microsoft/identity/common/internal/authorities/Authority$KnownAuthorityResult;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/authorities/Authority$KnownAuthorityResult;->getKnown()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthenticationScheme()Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;->createRefreshTokenRequest(Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/internal/providers/oauth2/TokenRequest;

    move-result-object v0

    .line 6
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenRequest;->setClientId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getScopes()Ljava/util/Set;

    move-result-object v2

    const-string v3, " "

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenRequest;->setScope(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;->getRefreshToken()Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/dto/Credential;->getSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenRequest;->setRefreshToken(Ljava/lang/String;)V

    .line 9
    instance-of v2, v0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenRequest;

    if-eqz v2, :cond_0

    .line 10
    move-object v2, v0

    check-cast v2, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenRequest;

    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getClaimsRequestJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenRequest;->setClaims(Ljava/lang/String;)V

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getSdkType()Lcom/microsoft/identity/common/internal/request/SdkType;

    move-result-object v2

    sget-object v3, Lcom/microsoft/identity/common/internal/request/SdkType;->ADAL:Lcom/microsoft/identity/common/internal/request/SdkType;

    if-ne v2, v3, :cond_1

    .line 12
    move-object v2, v0

    check-cast v2, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenRequest;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenRequest;->setIdTokenVersion(Ljava/lang/String;)V

    .line 13
    :cond_1
    instance-of v2, p2, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;

    if-eqz v2, :cond_2

    .line 14
    move-object v2, v0

    check-cast v2, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenRequest;

    check-cast p2, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;

    .line 15
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->getBrokerVersion()Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-virtual {v2, p2}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenRequest;->setBrokerVersion(Ljava/lang/String;)V

    .line 17
    :cond_2
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenRequest;->getScope()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->isNullOrBlank(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/internal/controllers/BaseController;->TAG:Ljava/lang/String;

    invoke-static {p2, v2, v1}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Scopes: ["

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 19
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenRequest;->getScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-static {p2, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_3
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;->requestToken(Lcom/microsoft/identity/common/internal/providers/oauth2/TokenRequest;)Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;

    move-result-object p1

    return-object p1

    .line 22
    :cond_4
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/authorities/Authority$KnownAuthorityResult;->getClientException()Lcom/microsoft/identity/common/exception/ClientException;

    move-result-object p1

    throw p1
.end method

.method public performTokenRequest(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResponse;Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;)Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;
    .locals 1

    .line 1
    invoke-virtual {p4}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/adal/internal/net/HttpWebRequest;->throwIfNetworkNotAvailable(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p4}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthenticationScheme()Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;

    move-result-object p4

    .line 3
    invoke-virtual {p1, p2, p3, p4}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;->createTokenRequest(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResponse;Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/internal/providers/oauth2/TokenRequest;

    move-result-object p2

    .line 4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p4, Lcom/microsoft/identity/common/internal/controllers/BaseController;->TAG:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ":performTokenRequest"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/microsoft/identity/common/internal/controllers/BaseController;->logExposedFieldsOfObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1, p2}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;->requestToken(Lcom/microsoft/identity/common/internal/providers/oauth2/TokenRequest;)Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;

    move-result-object p1

    .line 6
    sget-object p2, Lcom/microsoft/identity/common/internal/controllers/BaseController;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/microsoft/identity/common/internal/controllers/BaseController;->logResult(Ljava/lang/String;Lcom/microsoft/identity/common/internal/providers/oauth2/IResult;)V

    return-object p1
.end method

.method public refreshTokenIsNull(Lcom/microsoft/identity/common/internal/cache/ICacheRecord;)Z
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract removeAccount(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Z
.end method

.method public abstract removeCurrentAccount(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Z
.end method

.method public renewAccessToken(Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/cache/ICacheRecord;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/BaseController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":renewAccessToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Renewing access token..."

    invoke-static {v0, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-interface {p5}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;->setRefreshToken(Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;)V

    .line 3
    sget-object p5, Lcom/microsoft/identity/common/internal/controllers/BaseController;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p5, p1}, Lcom/microsoft/identity/common/internal/controllers/BaseController;->logParameters(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0, p4, p1}, Lcom/microsoft/identity/common/internal/controllers/BaseController;->performSilentTokenRequest(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;)Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;

    move-result-object p5

    .line 5
    invoke-virtual {p2, p5}, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->setTokenResult(Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/internal/controllers/BaseController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p5}, Lcom/microsoft/identity/common/internal/controllers/BaseController;->logResult(Ljava/lang/String;Lcom/microsoft/identity/common/internal/providers/oauth2/IResult;)V

    .line 7
    invoke-virtual {p5}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->getSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/internal/controllers/BaseController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Token request was successful"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p4, p1}, Lcom/microsoft/identity/common/internal/controllers/BaseController;->getAuthorizationRequest(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/request/OperationParameters;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;

    move-result-object v0

    .line 10
    invoke-virtual {p5}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->getTokenResponse()Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;

    move-result-object v1

    .line 11
    invoke-virtual {p3, p4, v0, v1}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;->saveAndLoadAggregatedAccountData(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;)Ljava/util/List;

    move-result-object p3

    const/4 p4, 0x0

    .line 12
    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    .line 13
    new-instance v0, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;

    .line 14
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthenticationScheme()Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Lcom/microsoft/identity/common/internal/controllers/BaseController;->finalizeCacheRecordForResult(Lcom/microsoft/identity/common/internal/cache/ICacheRecord;Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    move-result-object p1

    sget-object p4, Lcom/microsoft/identity/common/internal/request/SdkType;->MSAL:Lcom/microsoft/identity/common/internal/request/SdkType;

    invoke-direct {v0, p1, p3, p4}, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;-><init>(Lcom/microsoft/identity/common/internal/cache/ICacheRecord;Ljava/util/List;Lcom/microsoft/identity/common/internal/request/SdkType;)V

    .line 15
    invoke-virtual {p5}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->getCliTelemInfo()Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p5}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->getCliTelemInfo()Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->getSpeRing()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;->setSpeRing(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->getRefreshTokenAge()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;->setRefreshTokenAge(Ljava/lang/String;)V

    .line 19
    new-instance p1, Lcom/microsoft/identity/common/internal/telemetry/events/CacheEndEvent;

    invoke-direct {p1}, Lcom/microsoft/identity/common/internal/telemetry/events/CacheEndEvent;-><init>()V

    invoke-virtual {p5}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->getCliTelemInfo()Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->getSpeRing()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/microsoft/identity/common/internal/telemetry/events/CacheEndEvent;->putSpeInfo(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/CacheEndEvent;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Lcom/microsoft/identity/common/internal/telemetry/events/CacheEndEvent;

    invoke-direct {p1}, Lcom/microsoft/identity/common/internal/telemetry/events/CacheEndEvent;-><init>()V

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    .line 21
    :goto_0
    invoke-virtual {p2, v0}, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;->setLocalAuthenticationResult(Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;)V

    :cond_1
    return-void
.end method

.method public saveTokens(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;",
            "Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;",
            "Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;",
            "Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/BaseController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":saveTokens"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Saving tokens..."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p4, p1, p2, p3}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;->saveAndLoadAggregatedAccountData(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
