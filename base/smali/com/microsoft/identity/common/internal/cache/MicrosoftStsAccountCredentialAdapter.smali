.class public Lcom/microsoft/identity/common/internal/cache/MicrosoftStsAccountCredentialAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/cache/IAccountCredentialAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/internal/cache/IAccountCredentialAdapter<",
        "Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;",
        "Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;",
        "Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;",
        "Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAccount;",
        "Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MicrosoftStsAccountCredentialAdapter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCachedAt()J
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getCredentialType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/dto/CredentialType;->AccessToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    const-string v0, "PoP"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/microsoft/identity/common/internal/dto/CredentialType;->AccessToken_With_AuthScheme:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    const-string p1, "AccessToken_With_AuthScheme"

    return-object p1

    :cond_0
    const-string p1, "AccessToken"

    return-object p1
.end method

.method private getExpiresOn(Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)J
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;->getExpiresIn()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method private getExtendedExpiresOn(Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->getExtExpiresIn()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->getExtExpiresIn()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    add-long/2addr v0, v2

    .line 4
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getRealm(Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->createAccount(Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsAccount;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAccount;->getRealm()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTarget(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "\\s+"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p2, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    sget-object p1, Lcom/microsoft/identity/common/internal/controllers/BaseController;->DEFAULT_SCOPES:Ljava/util/Set;

    invoke-virtual {p2, p1}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    .line 5
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string p2, ""

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, " "

    .line 6
    invoke-static {p2, v0, v1}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :cond_1
    return-object p2
.end method


# virtual methods
.method public bridge synthetic asAccount(Lcom/microsoft/identity/common/BaseAccount;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAccount;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/cache/MicrosoftStsAccountCredentialAdapter;->asAccount(Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAccount;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object p1

    return-object p1
.end method

.method public asAccount(Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAccount;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;
    .locals 1

    .line 2
    new-instance v0, Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    invoke-direct {v0, p1}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;-><init>(Lcom/microsoft/identity/common/internal/dto/IAccountRecord;)V

    return-object v0
.end method

.method public bridge synthetic asIdToken(Lcom/microsoft/identity/common/BaseAccount;Lcom/microsoft/identity/common/internal/providers/oauth2/RefreshToken;)Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAccount;

    check-cast p2, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/internal/cache/MicrosoftStsAccountCredentialAdapter;->asIdToken(Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAccount;Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;)Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    move-result-object p1

    return-object p1
.end method

.method public asIdToken(Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAccount;Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;)Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;
    .locals 5

    .line 2
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/cache/MicrosoftStsAccountCredentialAdapter;->getCachedAt()J

    move-result-wide v0

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAccount;->getIDToken()Lcom/microsoft/identity/common/internal/providers/oauth2/IDToken;

    move-result-object v2

    .line 4
    new-instance v3, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    invoke-direct {v3}, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;-><init>()V

    .line 5
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;->getHomeAccountId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/identity/common/internal/dto/Credential;->setHomeAccountId(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;->getEnvironment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/identity/common/internal/dto/Credential;->setEnvironment(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAccount;->getRealm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;->setRealm(Ljava/lang/String;)V

    .line 8
    sget-object p1, Lcom/microsoft/identity/common/internal/dto/CredentialType;->IdToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    const-string p1, "IdToken"

    invoke-virtual {v3, p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->setCredentialType(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;->getClientId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->setClientId(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/providers/oauth2/IDToken;->getRawIDToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->setSecret(Ljava/lang/String;)V

    .line 11
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->setCachedAt(Ljava/lang/String;)V

    .line 12
    invoke-static {v2}, Lcom/microsoft/identity/common/internal/cache/SchemaUtil;->getAuthority(Lcom/microsoft/identity/common/internal/providers/oauth2/IDToken;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;->setAuthority(Ljava/lang/String;)V

    return-object v3
.end method

.method public asRefreshToken(Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;)Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;
    .locals 4

    .line 2
    new-instance v0, Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;->getHomeAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/dto/Credential;->setHomeAccountId(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;->getEnvironment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/dto/Credential;->setEnvironment(Ljava/lang/String;)V

    .line 5
    sget-object v1, Lcom/microsoft/identity/common/internal/dto/CredentialType;->RefreshToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    const-string v1, "RefreshToken"

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/dto/Credential;->setCredentialType(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/dto/Credential;->setClientId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;->getSecret()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/dto/Credential;->setSecret(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;->setTarget(Ljava/lang/String;)V

    .line 9
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/dto/Credential;->setCachedAt(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;->getFamilyId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;->setFamilyId(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic asRefreshToken(Lcom/microsoft/identity/common/internal/providers/oauth2/RefreshToken;)Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/cache/MicrosoftStsAccountCredentialAdapter;->asRefreshToken(Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;)Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    move-result-object p1

    return-object p1
.end method

.method public createAccessToken(Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;
    .locals 7

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/cache/MicrosoftStsAccountCredentialAdapter;->getCachedAt()J

    move-result-wide v0

    .line 3
    invoke-direct {p0, p3}, Lcom/microsoft/identity/common/internal/cache/MicrosoftStsAccountCredentialAdapter;->getExpiresOn(Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)J

    move-result-wide v2

    .line 4
    new-instance v4, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/ClientInfo;

    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->getClientInfo()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/ClientInfo;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v5, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    invoke-direct {v5}, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;-><init>()V

    .line 6
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;->getTokenType()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/microsoft/identity/common/internal/cache/MicrosoftStsAccountCredentialAdapter;->getCredentialType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/microsoft/identity/common/internal/dto/Credential;->setCredentialType(Ljava/lang/String;)V

    .line 7
    invoke-static {v4}, Lcom/microsoft/identity/common/internal/cache/SchemaUtil;->getHomeAccountId(Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/ClientInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/microsoft/identity/common/internal/dto/Credential;->setHomeAccountId(Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1, p3}, Lcom/microsoft/identity/common/internal/cache/MicrosoftStsAccountCredentialAdapter;->getRealm(Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->setRealm(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->getIssuerCacheIdentifierFromTokenEndpoint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/microsoft/identity/common/internal/dto/Credential;->setEnvironment(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/microsoft/identity/common/internal/dto/Credential;->setClientId(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;->getScope()Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;->getScope()Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-direct {p0, p2, v4}, Lcom/microsoft/identity/common/internal/cache/MicrosoftStsAccountCredentialAdapter;->getTarget(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 14
    invoke-virtual {v5, p2}, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->setTarget(Ljava/lang/String;)V

    .line 15
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Lcom/microsoft/identity/common/internal/dto/Credential;->setCachedAt(Ljava/lang/String;)V

    .line 16
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->setExpiresOn(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;->getAccessToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Lcom/microsoft/identity/common/internal/dto/Credential;->setSecret(Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p3}, Lcom/microsoft/identity/common/internal/cache/MicrosoftStsAccountCredentialAdapter;->getExtendedExpiresOn(Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->setExtendedExpiresOn(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;->getAuthorityFromTokenEndpoint()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->setAuthority(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;->getTokenType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->setAccessTokenType(Ljava/lang/String;)V

    const-string p2, "PoP"

    .line 21
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;->getTokenType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 22
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->getDeviceAtPopThumbprint()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->setKid(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/exception/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v5

    :catch_0
    move-exception p1

    .line 23
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public bridge synthetic createAccessToken(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;)Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;

    check-cast p2, Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    check-cast p3, Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/cache/MicrosoftStsAccountCredentialAdapter;->createAccessToken(Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    move-result-object p1

    return-object p1
.end method

.method public createAccount(Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;
    .locals 1

    .line 2
    sget-object p2, Lcom/microsoft/identity/common/internal/cache/MicrosoftStsAccountCredentialAdapter;->TAG:Ljava/lang/String;

    const-string v0, "Creating Account"

    invoke-static {p2, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p2, Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    invoke-virtual {p1, p3}, Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->createAccount(Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsAccount;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;-><init>(Lcom/microsoft/identity/common/internal/dto/IAccountRecord;)V

    return-object p2
.end method

.method public bridge synthetic createAccount(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;

    check-cast p2, Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    check-cast p3, Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/cache/MicrosoftStsAccountCredentialAdapter;->createAccount(Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object p1

    return-object p1
.end method

.method public createIdToken(Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;
    .locals 2

    .line 2
    :try_start_0
    new-instance v0, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/ClientInfo;

    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->getClientInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/ClientInfo;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    invoke-direct {v1}, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/cache/SchemaUtil;->getHomeAccountId(Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/ClientInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/dto/Credential;->setHomeAccountId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->getIssuerCacheIdentifierFromTokenEndpoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/dto/Credential;->setEnvironment(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, p3}, Lcom/microsoft/identity/common/internal/cache/MicrosoftStsAccountCredentialAdapter;->getRealm(Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;->setRealm(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;->getIdToken()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/cache/SchemaUtil;->getCredentialTypeFromVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/dto/Credential;->setCredentialType(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;->getClientId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/microsoft/identity/common/internal/dto/Credential;->setClientId(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;->getIdToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/microsoft/identity/common/internal/dto/Credential;->setSecret(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;->getAuthorityFromTokenEndpoint()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;->setAuthority(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/exception/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 13
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public bridge synthetic createIdToken(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;)Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;

    check-cast p2, Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    check-cast p3, Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/cache/MicrosoftStsAccountCredentialAdapter;->createIdToken(Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    move-result-object p1

    return-object p1
.end method

.method public createRefreshToken(Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;
    .locals 5

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/cache/MicrosoftStsAccountCredentialAdapter;->getCachedAt()J

    move-result-wide v0

    .line 3
    new-instance v2, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/ClientInfo;

    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->getClientInfo()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/ClientInfo;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v3, Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    invoke-direct {v3}, Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;-><init>()V

    .line 5
    sget-object v4, Lcom/microsoft/identity/common/internal/dto/CredentialType;->RefreshToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    const-string v4, "RefreshToken"

    invoke-virtual {v3, v4}, Lcom/microsoft/identity/common/internal/dto/Credential;->setCredentialType(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;->getIssuerCacheIdentifierFromTokenEndpoint()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->setEnvironment(Ljava/lang/String;)V

    .line 7
    invoke-static {v2}, Lcom/microsoft/identity/common/internal/cache/SchemaUtil;->getHomeAccountId(Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/ClientInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->setHomeAccountId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;->getClientId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->setClientId(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->setSecret(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->getFamilyId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;->setFamilyId(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;->getScope()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;->getScope()Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/internal/cache/MicrosoftStsAccountCredentialAdapter;->getTarget(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {v3, p1}, Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;->setTarget(Ljava/lang/String;)V

    .line 15
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->setCachedAt(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/exception/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p1

    .line 16
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public bridge synthetic createRefreshToken(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;)Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;

    check-cast p2, Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;

    check-cast p3, Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/cache/MicrosoftStsAccountCredentialAdapter;->createRefreshToken(Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    move-result-object p1

    return-object p1
.end method
