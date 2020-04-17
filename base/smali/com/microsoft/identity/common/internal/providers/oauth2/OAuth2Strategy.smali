.class public abstract Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<GenericAccessToken:",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/AccessToken;",
        "GenericAccount:",
        "Lcom/microsoft/identity/common/BaseAccount;",
        "GenericAuthorizationRequest:",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;",
        "GenericAuthorizationRequestBuilder:",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;",
        "GenericAuthorizationStrategy:",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStrategy;",
        "GenericOAuth2Configuration:",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Configuration;",
        "GenericOAuth2StrategyParameters:",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2StrategyParameters;",
        "GenericAuthorizationResponse:",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResponse;",
        "GenericRefreshToken:",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/RefreshToken;",
        "GenericTokenRequest:",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/TokenRequest;",
        "GenericTokenResponse:",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;",
        "GenericTokenResult:",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;",
        "GenericAuthorizationResult:",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResult;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "OAuth2Strategy"

.field public static final TOKEN_REQUEST_CONTENT_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"


# instance fields
.field public mAuthorizationEndpoint:Ljava/lang/String;

.field public final mConfig:Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TGenericOAuth2Configuration;"
        }
    .end annotation
.end field

.field public mIssuer:Landroid/net/Uri;

.field public final mStrategyParameters:Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2StrategyParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TGenericOAuth2StrategyParameters;"
        }
    .end annotation
.end field

.field public mTokenEndpoint:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Configuration;Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2StrategyParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TGenericOAuth2Configuration;TGenericOAuth2StrategyParameters;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;->mConfig:Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Configuration;

    .line 3
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;->mStrategyParameters:Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2StrategyParameters;

    return-void
.end method


# virtual methods
.method public abstract createAccount(Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;)Lcom/microsoft/identity/common/BaseAccount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TGenericTokenResponse;)TGenericAccount;"
        }
    .end annotation
.end method

.method public abstract createAuthorizationRequestBuilder()Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TGenericAuthorizationRequestBuilder;"
        }
    .end annotation
.end method

.method public abstract createAuthorizationRequestBuilder(Lcom/microsoft/identity/common/internal/dto/IAccountRecord;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/dto/IAccountRecord;",
            ")TGenericAuthorizationRequestBuilder;"
        }
    .end annotation
.end method

.method public abstract createRefreshTokenRequest(Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/internal/providers/oauth2/TokenRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;",
            ")TGenericTokenRequest;"
        }
    .end annotation
.end method

.method public abstract createTokenRequest(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResponse;Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/internal/providers/oauth2/TokenRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TGenericAuthorizationRequest;TGenericAuthorizationResponse;",
            "Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;",
            ")TGenericTokenRequest;"
        }
    .end annotation
.end method

.method public abstract getAccessTokenFromResponse(Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;)Lcom/microsoft/identity/common/internal/providers/oauth2/AccessToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TGenericTokenResponse;)TGenericAccessToken;"
        }
    .end annotation
.end method

.method public getAuthorityFromTokenEndpoint()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;->mTokenEndpoint:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oauth2/v2.0/token"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getAuthorizationResultFactory()Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResultFactory;
.end method

.method public getIssuer()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;->mIssuer:Landroid/net/Uri;

    return-object v0
.end method

.method public abstract getIssuerCacheIdentifier(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TGenericAuthorizationRequest;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public getOAuth2Configuration()Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Configuration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TGenericOAuth2Configuration;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;->mConfig:Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Configuration;

    return-object v0
.end method

.method public abstract getRefreshTokenFromResponse(Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;)Lcom/microsoft/identity/common/internal/providers/oauth2/RefreshToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TGenericTokenResponse;)TGenericRefreshToken;"
        }
    .end annotation
.end method

.method public abstract getTokenResultFromHttpResponse(Lcom/microsoft/identity/common/internal/net/HttpResponse;)Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/net/HttpResponse;",
            ")TGenericTokenResult;"
        }
    .end annotation
.end method

.method public performTokenRequest(Lcom/microsoft/identity/common/internal/providers/oauth2/TokenRequest;)Lcom/microsoft/identity/common/internal/net/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TGenericTokenRequest;)",
            "Lcom/microsoft/identity/common/internal/net/HttpResponse;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":performTokenRequest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Performing token request..."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/net/ObjectMapper;->serializeObjectToFormUrlEncoded(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 4
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/internal/logging/IRequestContext;

    move-result-object v2

    const-string v3, "correlation_id"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "client-request-id"

    invoke-virtual {v1, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    instance-of v2, p1, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenRequest;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenRequest;

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenRequest;->getBrokerVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenRequest;->getBrokerVersion()Ljava/lang/String;

    move-result-object p1

    const-string v2, "x-client-brkrver"

    .line 8
    invoke-virtual {v1, v2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    invoke-static {}, Lcom/microsoft/identity/common/internal/platform/Device;->getPlatformIdParameters()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 10
    invoke-static {}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->getInstance()Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->getTelemetryHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 11
    new-instance p1, Ljava/net/URL;

    iget-object v2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;->mTokenEndpoint:Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v2, "UTF-8"

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v2, "application/x-www-form-urlencoded"

    .line 13
    invoke-static {p1, v1, v0, v2}, Lcom/microsoft/identity/common/internal/net/HttpRequest;->sendPost(Ljava/net/URL;Ljava/util/Map;[BLjava/lang/String;)Lcom/microsoft/identity/common/internal/net/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public requestAuthorization(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStrategy;)Ljava/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TGenericAuthorizationRequest;TGenericAuthorizationStrategy;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResult;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;->validateAuthorizationRequest(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;)V

    .line 2
    :try_start_0
    invoke-virtual {p2, p1, p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStrategy;->requestAuthorization(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/microsoft/identity/common/exception/ClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public requestToken(Lcom/microsoft/identity/common/internal/providers/oauth2/TokenRequest;)Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TGenericTokenRequest;)TGenericTokenResult;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":requestToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Requesting token..."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;->validateTokenRequest(Lcom/microsoft/identity/common/internal/providers/oauth2/TokenRequest;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;->performTokenRequest(Lcom/microsoft/identity/common/internal/providers/oauth2/TokenRequest;)Lcom/microsoft/identity/common/internal/net/HttpResponse;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;->getTokenResultFromHttpResponse(Lcom/microsoft/identity/common/internal/net/HttpResponse;)Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->getSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResult;->getSuccessResponse()Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;

    move-result-object v1

    .line 7
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;->validateTokenResponse(Lcom/microsoft/identity/common/internal/providers/oauth2/TokenRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;)V

    :cond_0
    return-object v0
.end method

.method public final setAuthorizationEndpoint(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;->mAuthorizationEndpoint:Ljava/lang/String;

    return-void
.end method

.method public final setIssuer(Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;->mIssuer:Landroid/net/Uri;

    return-void
.end method

.method public final setTokenEndpoint(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;->mTokenEndpoint:Ljava/lang/String;

    return-void
.end method

.method public abstract validateAuthorizationRequest(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TGenericAuthorizationRequest;)V"
        }
    .end annotation
.end method

.method public validateCachedResult(Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;Lcom/microsoft/identity/common/internal/cache/ICacheRecord;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public abstract validateTokenRequest(Lcom/microsoft/identity/common/internal/providers/oauth2/TokenRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TGenericTokenRequest;)V"
        }
    .end annotation
.end method

.method public abstract validateTokenResponse(Lcom/microsoft/identity/common/internal/providers/oauth2/TokenRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TGenericTokenRequest;TGenericTokenResponse;)V"
        }
    .end annotation
.end method
