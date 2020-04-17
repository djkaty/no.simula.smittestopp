.class public Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;
.super Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/cache/IShareSingleSignOnState;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<GenericOAuth2Strategy:",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;",
        "GenericAuthorizationRequest:",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;",
        "GenericTokenResponse:",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;",
        "GenericAccount:",
        "Lcom/microsoft/identity/common/BaseAccount;",
        "GenericRefreshToken:",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/RefreshToken;",
        ">",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache<",
        "TGenericOAuth2Strategy;TGenericAuthorizationRequest;TGenericTokenResponse;>;",
        "Lcom/microsoft/identity/common/internal/cache/IShareSingleSignOnState<",
        "TGenericAccount;TGenericRefreshToken;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MsalOAuth2TokenCache"


# instance fields
.field public final mAccountCredentialAdapter:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/internal/cache/IAccountCredentialAdapter<",
            "TGenericOAuth2Strategy;TGenericAuthorizationRequest;TGenericTokenResponse;TGenericAccount;TGenericRefreshToken;>;"
        }
    .end annotation
.end field

.field public mAccountCredentialCache:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;Lcom/microsoft/identity/common/internal/cache/IAccountCredentialAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;",
            "Lcom/microsoft/identity/common/internal/cache/IAccountCredentialAdapter<",
            "TGenericOAuth2Strategy;TGenericAuthorizationRequest;TGenericTokenResponse;TGenericAccount;TGenericRefreshToken;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object p1, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v0, "Init: "

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    .line 4
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialAdapter:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialAdapter;

    return-void
.end method

.method private accountHasCredential(Lcom/microsoft/identity/common/internal/dto/AccountRecord;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/dto/AccountRecord;",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/dto/Credential;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v3, ":accountHasCredential"

    invoke-static {v1, v2, v3}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HomeAccountId: ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]\nEnvironment: ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/identity/common/internal/dto/Credential;

    .line 5
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getHomeAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getEnvironment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Credentials located for account."

    invoke-static {p1, p2}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public static create(Landroid/content/Context;)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache<",
            "Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsOAuth2Strategy;",
            "Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationRequest;",
            "Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;",
            "Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAccount;",
            "Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":create"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Creating MsalOAuth2TokenCache"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/microsoft/identity/common/internal/cache/CacheKeyValueDelegate;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/cache/CacheKeyValueDelegate;-><init>()V

    .line 3
    new-instance v1, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;

    invoke-direct {v1, p0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v2, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    const-string v3, "com.microsoft.identity.client.account_credential_cache"

    invoke-direct {v2, p0, v3, v1}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/identity/common/adal/internal/cache/IStorageHelper;)V

    .line 5
    new-instance v1, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;

    invoke-direct {v1, v0, v2}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;-><init>(Lcom/microsoft/identity/common/internal/cache/ICacheKeyValueDelegate;Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;)V

    .line 6
    new-instance v0, Lcom/microsoft/identity/common/internal/cache/MicrosoftStsAccountCredentialAdapter;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/cache/MicrosoftStsAccountCredentialAdapter;-><init>()V

    .line 7
    new-instance v2, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    invoke-direct {v2, p0, v1, v0}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;-><init>(Landroid/content/Context;Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;Lcom/microsoft/identity/common/internal/cache/IAccountCredentialAdapter;)V

    return-object v2
.end method

.method private deleteAccessTokensWithIntersectingScopes(Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getHomeAccountId()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getEnvironment()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getCredentialType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/identity/common/internal/dto/CredentialType;->fromString(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/CredentialType;

    move-result-object v3

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getClientId()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->getRealm()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->getAccessTokenType()Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    .line 8
    invoke-interface/range {v0 .. v7}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;->getCredentialsFilteredBy(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v3, ":"

    const-string v4, "deleteAccessTokensWithIntersectingScopes"

    invoke-static {v1, v2, v3, v4}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Inspecting "

    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " accessToken[s]."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/identity/common/internal/dto/Credential;

    .line 13
    move-object v2, v1

    check-cast v2, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    const/4 v5, 0x1

    invoke-direct {p0, p1, v2, v5}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->scopesIntersect(Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-static {v2, v5, v3, v4}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing credential: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/microsoft/identity/common/internal/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    invoke-interface {v2, v1}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;->removeCredential(Lcom/microsoft/identity/common/internal/dto/Credential;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getAccessTokenCredentialTypeForAuthenticationScheme(Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/internal/dto/CredentialType;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Bearer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/microsoft/identity/common/internal/dto/CredentialType;->AccessToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    return-object p1

    .line 3
    :cond_0
    sget-object p1, Lcom/microsoft/identity/common/internal/dto/CredentialType;->AccessToken_With_AuthScheme:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    return-object p1
.end method

.method private isAccessTokenSchemaCompliant(Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;)Z
    .locals 6

    const/16 v0, 0x8

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "credential_type"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getCredentialType()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "home_account_id"

    aput-object v3, v2, v4

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getHomeAccountId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "environment"

    aput-object v3, v2, v4

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getEnvironment()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "client_id"

    aput-object v3, v2, v4

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getClientId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "target"

    aput-object v3, v2, v4

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->getTarget()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "cached_at"

    aput-object v3, v2, v4

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getCachedAt()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "expires_on"

    aput-object v3, v2, v4

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->getExpiresOn()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "secret"

    aput-object v2, v1, v4

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getSecret()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    const/4 p1, 0x7

    aput-object v1, v0, p1

    .line 9
    const-class p1, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->isSchemaCompliant(Ljava/lang/Class;[[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isAccountSchemaCompliant(Lcom/microsoft/identity/common/internal/dto/AccountRecord;)Z
    .locals 6

    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "home_account_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "environment"

    aput-object v3, v2, v4

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "local_account_id"

    aput-object v3, v2, v4

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getLocalAccountId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "username"

    aput-object v3, v2, v4

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getUsername()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "authority_type"

    aput-object v2, v1, v4

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getAuthorityType()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    const/4 p1, 0x4

    aput-object v1, v0, p1

    .line 6
    const-class p1, Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->isSchemaCompliant(Ljava/lang/Class;[[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isIdTokenSchemaCompliant(Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;)Z
    .locals 6

    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "home_account_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getHomeAccountId()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "environment"

    aput-object v3, v2, v4

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getEnvironment()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "credential_type"

    aput-object v3, v2, v4

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getCredentialType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "client_id"

    aput-object v3, v2, v4

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getClientId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "secret"

    aput-object v2, v1, v4

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getSecret()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    const/4 p1, 0x4

    aput-object v1, v0, p1

    .line 6
    const-class p1, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->isSchemaCompliant(Ljava/lang/Class;[[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isRefreshTokenSchemaCompliant(Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;)Z
    .locals 6

    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "credential_type"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getCredentialType()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "environment"

    aput-object v3, v2, v4

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getEnvironment()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "home_account_id"

    aput-object v3, v2, v4

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getHomeAccountId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "client_id"

    aput-object v3, v2, v4

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getClientId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "secret"

    aput-object v2, v1, v4

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getSecret()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    const/4 p1, 0x4

    aput-object v1, v0, p1

    .line 6
    const-class p1, Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->isSchemaCompliant(Ljava/lang/Class;[[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public static isSchemaCompliant(Ljava/lang/Class;[[Ljava/lang/String;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v5, p1, v3

    if-eqz v4, :cond_0

    .line 2
    aget-object v4, v5, v2

    invoke-static {v4}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->isNullOrBlank(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v5, ":"

    const-string v6, "isSchemaCompliant"

    invoke-static {v0, v3, v5, v6}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not contain all required fields."

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    array-length p0, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p0, :cond_2

    aget-object v3, p1, v0

    .line 7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-static {v7, v8, v5, v6}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v3, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is null? ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v3, v2

    .line 8
    invoke-static {v3}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->isNullOrBlank(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {v7, v3}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return v4
.end method

.method private mergeCacheRecordWithOtherTenantCacheRecords(Lcom/microsoft/identity/common/internal/cache/ICacheRecord;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/dto/Credential;->getClientId()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object v3

    .line 7
    invoke-virtual {p0, v2, v3}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAllTenantAccountsForAccountByClientId(Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/AccountRecord;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    .line 11
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/identity/common/internal/dto/Credential;->getClientId()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-virtual {p0, v3, v2}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getSparseCacheRecordForAccount(Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/AccountRecord;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    move-result-object v2

    .line 13
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private removeCredentialsOfTypeForAccount(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/CredentialType;Lcom/microsoft/identity/common/internal/dto/AccountRecord;Z)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    .line 2
    invoke-virtual {p4}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    move-result-object v1

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p4}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getRealm()Ljava/lang/String;

    move-result-object p4

    :goto_0
    move-object v5, p4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    .line 4
    invoke-interface/range {v0 .. v7}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;->getCredentialsFilteredBy(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/microsoft/identity/common/internal/dto/Credential;

    .line 6
    iget-object p4, p0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    invoke-interface {p4, p3}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;->removeCredential(Lcom/microsoft/identity/common/internal/dto/Credential;)Z

    move-result p3

    if-eqz p3, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return p2
.end method

.method private removeRefreshTokensForAccount(Lcom/microsoft/identity/common/internal/dto/AccountRecord;ZLjava/lang/String;Ljava/lang/String;)I
    .locals 6

    if-eqz p2, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v2, p4

    .line 1
    sget-object v3, Lcom/microsoft/identity/common/internal/dto/CredentialType;->RefreshToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p3

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->removeCredentialsOfTypeForAccount(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/CredentialType;Lcom/microsoft/identity/common/internal/dto/AccountRecord;Z)I

    move-result p1

    return p1
.end method

.method private varargs saveAccounts([Lcom/microsoft/identity/common/internal/dto/AccountRecord;)V
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    invoke-interface {v3, v2}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;->saveAccount(Lcom/microsoft/identity/common/internal/dto/AccountRecord;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private scopesAsSet(Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->getTarget()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->isNullOrBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\\s+"

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method private scopesIntersect(Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;Z)Z
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->scopesAsSet(Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;)Ljava/util/Set;

    move-result-object p1

    .line 2
    invoke-direct {p0, p2}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->scopesAsSet(Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;)Ljava/util/Set;

    move-result-object p2

    if-eqz p3, :cond_0

    .line 3
    sget-object p3, Lcom/microsoft/identity/common/internal/controllers/BaseController;->DEFAULT_SCOPES:Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 4
    sget-object p3, Lcom/microsoft/identity/common/internal/controllers/BaseController;->DEFAULT_SCOPES:Ljava/util/Set;

    invoke-interface {p2, p3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 p3, 0x0

    .line 5
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "scopesIntersect"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "Scopes intersect."

    invoke-static {p2, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-static {p2, v2, p3, v1}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " contains ["

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p2, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    :cond_2
    return p3
.end method

.method private setToCacheRecord(Lcom/microsoft/identity/common/internal/cache/CacheRecord;Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/dto/Credential;->getCredentialType()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/dto/CredentialType;->fromString(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/CredentialType;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    sget-object v1, Lcom/microsoft/identity/common/internal/dto/CredentialType;->V1IdToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    if-ne v1, v0, :cond_0

    .line 4
    invoke-virtual {p1, p2}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->setV1IdToken(Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcom/microsoft/identity/common/internal/dto/CredentialType;->IdToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    if-ne v1, v0, :cond_1

    .line 6
    invoke-virtual {p1, p2}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->setIdToken(Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v1, ":setToCacheRecord"

    invoke-static {p1, v0, v1}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unrecognized IdToken type: "

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/dto/Credential;->getCredentialType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-static {p1, p2}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v2, ":clearAll"

    const-string v3, "Clearing cache."

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    invoke-interface {v0}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;->clearAll()V

    return-void
.end method

.method public getAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v2, ":getAccount"

    invoke-static {v0, v1, v2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Environment: ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]\nClientId: ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]\nHomeAccountId: ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]\nRealm: ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccounts(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-static {p2, v0, v2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Found "

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " accounts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {p2, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    .line 7
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_1

    .line 8
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getRealm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-object p2

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string p3, "No matching account found."

    invoke-static {p1, p2, v2, p3}, Le/a/a/a/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAccountByHomeAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccounts(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v1, ":getAccountByHomeAccountId"

    invoke-static {p2, v0, v1}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "homeAccountId: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    .line 4
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAccountByLocalAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccounts(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v1, ":getAccountByLocalAccountId"

    invoke-static {p2, v0, v1}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalAccountId: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    .line 4
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getLocalAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAccountCredentialAdapter()Lcom/microsoft/identity/common/internal/cache/IAccountCredentialAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/internal/cache/IAccountCredentialAdapter<",
            "TGenericOAuth2Strategy;TGenericAuthorizationRequest;TGenericTokenResponse;TGenericAccount;TGenericRefreshToken;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialAdapter:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialAdapter;

    return-object v0
.end method

.method public getAccountCredentialCache()Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    return-object v0
.end method

.method public getAccountWithAggregatedAccountDataByLocalAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccountByLocalAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p2, p1}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getIdTokensForAccountRecord(Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/AccountRecord;)Ljava/util/List;

    move-result-object p2

    .line 3
    new-instance p3, Lcom/microsoft/identity/common/internal/cache/CacheRecord;

    invoke-direct {p3}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;-><init>()V

    .line 4
    invoke-virtual {p3, p1}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->setAccount(Lcom/microsoft/identity/common/internal/dto/AccountRecord;)V

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    .line 6
    invoke-direct {p0, p3, p2}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->setToCacheRecord(Lcom/microsoft/identity/common/internal/cache/CacheRecord;Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :cond_1
    return-object p3
.end method

.method public getAccounts(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/dto/AccountRecord;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v10, ":getAccounts"

    invoke-static {v1, v2, v10}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Environment: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]\nClientId: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, v0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    const/4 v2, 0x0

    .line 4
    invoke-interface {v1, v2, v9, v2}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;->getAccountsFilteredBy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v10}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v14, "Found "

    invoke-static {v14}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 6
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " accounts for this environment"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, v0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    sget-object v4, Lcom/microsoft/identity/common/internal/dto/CredentialType;->IdToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v2, v15

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    .line 9
    invoke-interface/range {v1 .. v8}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;->getCredentialsFilteredBy(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 10
    iget-object v1, v0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    sget-object v4, Lcom/microsoft/identity/common/internal/dto/CredentialType;->V1IdToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    move-object v9, v8

    move-object/from16 v8, v18

    .line 11
    invoke-interface/range {v1 .. v8}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;->getCredentialsFilteredBy(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 12
    invoke-interface {v9, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    .line 14
    invoke-direct {v0, v2, v9}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->accountHasCredential(Lcom/microsoft/identity/common/internal/dto/AccountRecord;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 15
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v10}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v14}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 17
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " accounts for this clientId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {v12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getAccountsByUsername(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/dto/AccountRecord;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccounts(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    .line 4
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v1, ":getAccountsByUsername"

    invoke-static {p2, p3, v1}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Found "

    invoke-static {p3}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " accounts matching username."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p2, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAccountsWithAggregatedAccountData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccounts(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    .line 11
    invoke-virtual {p0, p2, v1}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getIdTokensForAccountRecord(Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/AccountRecord;)Ljava/util/List;

    move-result-object v2

    .line 12
    new-instance v3, Lcom/microsoft/identity/common/internal/cache/CacheRecord;

    invoke-direct {v3}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;-><init>()V

    .line 13
    invoke-virtual {v3, v1}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->setAccount(Lcom/microsoft/identity/common/internal/dto/AccountRecord;)V

    .line 14
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    .line 15
    invoke-direct {p0, v3, v2}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->setToCacheRecord(Lcom/microsoft/identity/common/internal/cache/CacheRecord;Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;)V

    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v1, ":getAccountsWithAggregatedAccountData"

    invoke-static {p1, p2, v1}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Found "

    invoke-static {p2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " accounts with IdTokens"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-static {p1, p2}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAccountsWithAggregatedAccountData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, p2, p1}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAllTenantAccountsForAccountByClientId(Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/AccountRecord;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    .line 5
    invoke-virtual {p0, p2, p3}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getSparseCacheRecordForAccount(Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/AccountRecord;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    move-result-object p3

    .line 6
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAllClientIds()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    invoke-interface {v1}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;->getCredentials()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/common/internal/dto/Credential;

    .line 3
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/dto/Credential;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v3, ":getAllClientIds"

    invoke-static {v1, v2, v3}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Found ["

    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] clientIds/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAllTenantAccountsForAccountByClientId(Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/AccountRecord;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/internal/dto/AccountRecord;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/dto/AccountRecord;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    .line 4
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 6
    invoke-interface {v1, v2, v3, v4}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;->getAccountsFilteredBy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {p0, v2, p1}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccounts(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    .line 10
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, v2}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getIdTokensForAccountRecord(Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/AccountRecord;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/internal/dto/AccountRecord;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    .line 3
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/microsoft/identity/common/internal/dto/CredentialType;->IdToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    .line 5
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getRealm()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    .line 6
    invoke-interface/range {v1 .. v8}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;->getCredentialsFilteredBy(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    .line 8
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/microsoft/identity/common/internal/dto/CredentialType;->V1IdToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    .line 10
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getRealm()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object v6, p1

    .line 11
    invoke-interface/range {v2 .. v9}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;->getCredentialsFilteredBy(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 12
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/identity/common/internal/dto/Credential;

    .line 14
    instance-of v1, p2, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    if-eqz v1, :cond_0

    .line 15
    check-cast p2, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSingleSignOnState(Lcom/microsoft/identity/common/BaseAccount;)Lcom/microsoft/identity/common/internal/providers/oauth2/RefreshToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TGenericAccount;)TGenericRefreshToken;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unimplemented!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSparseCacheRecordForAccount(Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/AccountRecord;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getIdTokensForAccountRecord(Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/AccountRecord;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Lcom/microsoft/identity/common/internal/dto/CredentialType;->ID_TOKEN_TYPES:[Lcom/microsoft/identity/common/internal/dto/CredentialType;

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v2, ":getSparseCacheRecordForAccount"

    invoke-static {v0, v1, v2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Found more IdTokens than expected.\nFound: ["

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/internal/cache/CacheRecord;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;-><init>()V

    .line 7
    invoke-virtual {v0, p2}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->setAccount(Lcom/microsoft/identity/common/internal/dto/AccountRecord;)V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    .line 9
    invoke-direct {p0, v0, p2}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->setToCacheRecord(Lcom/microsoft/identity/common/internal/cache/CacheRecord;Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/AccountRecord;Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;
    .locals 10

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/CacheStartEvent;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/CacheStartEvent;-><init>()V

    invoke-static {v0}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    .line 2
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getAuthorityType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSSTS"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    .line 5
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-direct {p0, p4}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccessTokenCredentialTypeForAuthenticationScheme(Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/internal/dto/CredentialType;

    move-result-object v4

    .line 8
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getRealm()Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-virtual {p4}, Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v5, p1

    move-object v7, p2

    .line 10
    invoke-interface/range {v1 .. v8}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;->getCredentialsFilteredBy(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p4

    .line 11
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    .line 12
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/microsoft/identity/common/internal/dto/CredentialType;->RefreshToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    move-object v6, v9

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getRealm()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    :goto_0
    if-eqz v0, :cond_1

    move-object v7, v9

    goto :goto_1

    :cond_1
    move-object v7, p2

    :goto_1
    const/4 v8, 0x0

    move-object v5, p1

    .line 15
    invoke-interface/range {v1 .. v8}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;->getCredentialsFilteredBy(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 16
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    .line 17
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/microsoft/identity/common/internal/dto/CredentialType;->IdToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    .line 19
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getRealm()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    .line 20
    invoke-interface/range {v0 .. v7}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;->getCredentialsFilteredBy(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    .line 22
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/microsoft/identity/common/internal/dto/CredentialType;->V1IdToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    .line 24
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getRealm()Ljava/lang/String;

    move-result-object v6

    move-object v5, p1

    .line 25
    invoke-interface/range {v1 .. v8}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;->getCredentialsFilteredBy(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 26
    new-instance v1, Lcom/microsoft/identity/common/internal/cache/CacheRecord;

    invoke-direct {v1}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;-><init>()V

    .line 27
    invoke-virtual {v1, p3}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->setAccount(Lcom/microsoft/identity/common/internal/dto/AccountRecord;)V

    .line 28
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p3

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    move-object p3, v9

    goto :goto_2

    :cond_2
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    :goto_2
    invoke-virtual {v1, p3}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->setAccessToken(Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;)V

    .line 29
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    move-object p2, v9

    goto :goto_3

    :cond_3
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    :goto_3
    invoke-virtual {v1, p2}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->setRefreshToken(Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;)V

    .line 30
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    move-object p2, v9

    goto :goto_4

    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    :goto_4
    invoke-virtual {v1, p2}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->setIdToken(Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;)V

    .line 31
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_5

    :cond_5
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    :goto_5
    invoke-virtual {v1, v9}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->setV1IdToken(Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;)V

    .line 32
    new-instance p1, Lcom/microsoft/identity/common/internal/telemetry/events/CacheEndEvent;

    invoke-direct {p1}, Lcom/microsoft/identity/common/internal/telemetry/events/CacheEndEvent;-><init>()V

    invoke-virtual {p1, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/CacheEndEvent;->putCacheRecordStatus(Lcom/microsoft/identity/common/internal/cache/CacheRecord;)Lcom/microsoft/identity/common/internal/telemetry/events/CacheEndEvent;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    return-object v1
.end method

.method public loadWithAggregatedAccountData(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/AccountRecord;Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/internal/dto/AccountRecord;",
            "Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->load(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/AccountRecord;Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    move-result-object p2

    .line 4
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    move-result-object p4

    .line 7
    invoke-virtual {p0, p2, p1, p4}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccountsWithAggregatedAccountData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    .line 9
    invoke-interface {p2}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 10
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/cache/AccountDeletionRecord;
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v0, p4

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v10, ":removeAccount"

    invoke-static {v1, v2, v10}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Environment: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]\nClientId: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]\nHomeAccountId: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]\nRealm: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "]"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    if-eqz v7, :cond_6

    if-eqz v8, :cond_6

    if-eqz v9, :cond_6

    .line 2
    invoke-virtual/range {p0 .. p4}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object v13

    if-nez v13, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v14, 0x1

    const/4 v15, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, v10}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsRealmAgnostic? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v3, Lcom/microsoft/identity/common/internal/dto/CredentialType;->AccessToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v4, v13

    move/from16 v16, v5

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->removeCredentialsOfTypeForAccount(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/CredentialType;Lcom/microsoft/identity/common/internal/dto/AccountRecord;Z)I

    move-result v17

    .line 5
    sget-object v3, Lcom/microsoft/identity/common/internal/dto/CredentialType;->AccessToken_With_AuthScheme:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->removeCredentialsOfTypeForAccount(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/CredentialType;Lcom/microsoft/identity/common/internal/dto/AccountRecord;Z)I

    move-result v18

    .line 6
    sget-object v3, Lcom/microsoft/identity/common/internal/dto/CredentialType;->RefreshToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->removeCredentialsOfTypeForAccount(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/CredentialType;Lcom/microsoft/identity/common/internal/dto/AccountRecord;Z)I

    move-result v19

    .line 7
    sget-object v3, Lcom/microsoft/identity/common/internal/dto/CredentialType;->IdToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->removeCredentialsOfTypeForAccount(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/CredentialType;Lcom/microsoft/identity/common/internal/dto/AccountRecord;Z)I

    move-result v20

    .line 8
    sget-object v3, Lcom/microsoft/identity/common/internal/dto/CredentialType;->V1IdToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->removeCredentialsOfTypeForAccount(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/CredentialType;Lcom/microsoft/identity/common/internal/dto/AccountRecord;Z)I

    move-result v0

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v16, :cond_3

    .line 10
    iget-object v2, v6, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    invoke-interface {v2, v9, v7, v12}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;->getAccountsFilteredBy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 11
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    .line 12
    iget-object v4, v6, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    invoke-interface {v4, v3}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;->removeAccount(Lcom/microsoft/identity/common/internal/dto/AccountRecord;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 13
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_3
    iget-object v2, v6, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    invoke-interface {v2, v13}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;->removeAccount(Lcom/microsoft/identity/common/internal/dto/AccountRecord;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 15
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v2, 0x6

    new-array v3, v2, [[Ljava/lang/String;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    const-string v7, "Access tokens"

    aput-object v7, v5, v15

    .line 16
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v14

    aput-object v5, v3, v15

    new-array v5, v4, [Ljava/lang/String;

    const-string v7, "Access tokens (with authscheme)"

    aput-object v7, v5, v15

    .line 17
    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v14

    aput-object v5, v3, v14

    new-array v5, v4, [Ljava/lang/String;

    const-string v7, "Refresh tokens"

    aput-object v7, v5, v15

    .line 18
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v14

    aput-object v5, v3, v4

    const/4 v5, 0x3

    new-array v7, v4, [Ljava/lang/String;

    const-string v8, "Id tokens (v1)"

    aput-object v8, v7, v15

    .line 19
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v14

    aput-object v7, v3, v5

    const/4 v0, 0x4

    new-array v5, v4, [Ljava/lang/String;

    const-string v7, "Id tokens (v2)"

    aput-object v7, v5, v15

    .line 20
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v14

    aput-object v5, v3, v0

    const/4 v0, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "Accounts"

    aput-object v5, v4, v15

    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v14

    aput-object v4, v3, v0

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_5

    .line 22
    aget-object v4, v3, v0

    .line 23
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-static {v5, v7, v10}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v4, v15

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " removed: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v4, v14

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 24
    :cond_5
    new-instance v0, Lcom/microsoft/identity/common/internal/cache/AccountDeletionRecord;

    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/internal/cache/AccountDeletionRecord;-><init>(Ljava/util/List;)V

    return-object v0

    .line 25
    :cond_6
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Insufficient filtering provided for account removal - preserving Account."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/microsoft/identity/common/internal/cache/AccountDeletionRecord;

    invoke-direct {v0, v12}, Lcom/microsoft/identity/common/internal/cache/AccountDeletionRecord;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public removeCredential(Lcom/microsoft/identity/common/internal/dto/Credential;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":removeCredential"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Removing credential..."

    invoke-static {v0, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClientId: ["

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\nCredentialType: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getCredentialType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\nCachedAt: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getCachedAt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\nEnvironment: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getEnvironment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\nHomeAccountId: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getHomeAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\nIsExpired?: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->isExpired()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    invoke-interface {v0, p1}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;->removeCredential(Lcom/microsoft/identity/common/internal/dto/Credential;)Z

    move-result p1

    return p1
.end method

.method public removeRefreshTokenIfNeeded(Lcom/microsoft/identity/common/internal/dto/AccountRecord;Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;->getFamilyId()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->isNullOrBlank(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v4, ":removeRefreshTokenIfNeeded"

    invoke-static {v2, v3, v4}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFamilyRefreshToken? ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getAuthorityType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSSTS"

    .line 5
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-static {v3, v6, v4}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isMultiResourceCapable? ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/dto/Credential;->getClientId()Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-direct {p0, p1, v0, v2, p2}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->removeRefreshTokensForAccount(Lcom/microsoft/identity/common/internal/dto/AccountRecord;ZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-static {p2, v0, v4}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refresh tokens removed: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-le p1, v1, :cond_1

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v0, "Multiple refresh tokens found for Account."

    invoke-static {p1, p2, v4, v0}, Le/a/a/a/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public save(Lcom/microsoft/identity/common/internal/dto/AccountRecord;Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;
    .locals 4

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v2, ":save"

    const-string v3, "Importing AccountRecord, IdTokenRecord (direct)"

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->isAccountSchemaCompliant(Lcom/microsoft/identity/common/internal/dto/AccountRecord;)Z

    move-result v0

    .line 35
    invoke-direct {p0, p2}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->isIdTokenSchemaCompliant(Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;)Z

    move-result v1

    .line 36
    new-instance v3, Lcom/microsoft/identity/common/internal/cache/CacheRecord;

    invoke-direct {v3}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;-><init>()V

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 37
    invoke-direct {p0, v1}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->saveAccounts([Lcom/microsoft/identity/common/internal/dto/AccountRecord;)V

    new-array v0, v0, [Lcom/microsoft/identity/common/internal/dto/Credential;

    aput-object p2, v0, v2

    .line 38
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->saveCredentialsInternal([Lcom/microsoft/identity/common/internal/dto/Credential;)V

    .line 39
    invoke-virtual {v3, p1}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->setAccount(Lcom/microsoft/identity/common/internal/dto/AccountRecord;)V

    .line 40
    sget-object p1, Lcom/microsoft/identity/common/internal/dto/CredentialType;->V1IdToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/dto/Credential;->getCredentialType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "V1IdToken"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {v3, p2}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->setV1IdToken(Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;)V

    goto :goto_2

    .line 42
    :cond_1
    invoke-virtual {v3, p2}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->setIdToken(Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;)V

    goto :goto_2

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    const-string p1, "[(Account)"

    goto :goto_1

    :cond_3
    const-string p1, "["

    :goto_1
    if-nez v1, :cond_4

    const-string p2, "(ID)"

    .line 43
    invoke-static {p1, p2}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    const-string p2, "]"

    .line 44
    invoke-static {p1, p2}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-static {p2, v0, v2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping persistence of non-compliant credentials: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v3
.end method

.method public save(Lcom/microsoft/identity/common/internal/dto/AccountRecord;Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->isAccountSchemaCompliant(Lcom/microsoft/identity/common/internal/dto/AccountRecord;)Z

    move-result v0

    .line 2
    invoke-direct {p0, p2}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->isIdTokenSchemaCompliant(Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;)Z

    move-result v1

    .line 3
    invoke-direct {p0, p3}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->isAccessTokenSchemaCompliant(Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;)Z

    move-result v2

    if-eqz v0, :cond_3

    const-string v0, "Credential is missing schema-required fields."

    if-eqz v1, :cond_2

    if-eqz v2, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v2, ":save (broker 3 arg)"

    const-string v3, "Accounts/Credentials are valid.... proceeding"

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 5
    invoke-direct {p0, v1}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->saveAccounts([Lcom/microsoft/identity/common/internal/dto/AccountRecord;)V

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/microsoft/identity/common/internal/dto/Credential;

    aput-object p2, v1, v2

    aput-object p3, v1, v0

    .line 6
    invoke-virtual {p0, v1}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->saveCredentialsInternal([Lcom/microsoft/identity/common/internal/dto/Credential;)V

    .line 7
    new-instance v0, Lcom/microsoft/identity/common/internal/cache/CacheRecord;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;-><init>()V

    .line 8
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->setAccount(Lcom/microsoft/identity/common/internal/dto/AccountRecord;)V

    .line 9
    invoke-virtual {v0, p3}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->setAccessToken(Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;)V

    .line 10
    sget-object p1, Lcom/microsoft/identity/common/internal/dto/CredentialType;->V1IdToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/dto/Credential;->getCredentialType()Ljava/lang/String;

    move-result-object p1

    const-string p3, "V1IdToken"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {v0, p2}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->setV1IdToken(Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, p2}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->setIdToken(Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;)V

    :goto_0
    return-object v0

    .line 13
    :cond_1
    new-instance p1, Lcom/microsoft/identity/common/exception/ClientException;

    const-string p2, "[(AT)]"

    invoke-direct {p1, v0, p2}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    new-instance p1, Lcom/microsoft/identity/common/exception/ClientException;

    const-string p2, "[(ID)]"

    invoke-direct {p1, v0, p2}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_3
    new-instance p1, Lcom/microsoft/identity/common/exception/ClientException;

    const-string p2, "Account is missing schema-required fields."

    invoke-direct {p1, p2}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public save(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TGenericOAuth2Strategy;TGenericAuthorizationRequest;TGenericTokenResponse;)",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialAdapter:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialAdapter;

    .line 17
    invoke-interface {v0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialAdapter;->createAccount(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialAdapter:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialAdapter;

    .line 19
    invoke-interface {v1, p1, p2, p3}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialAdapter;->createAccessToken(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;)Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialAdapter:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialAdapter;

    .line 21
    invoke-interface {v2, p1, p2, p3}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialAdapter;->createRefreshToken(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;)Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    move-result-object v2

    .line 22
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialAdapter:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialAdapter;

    .line 23
    invoke-interface {v3, p1, p2, p3}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialAdapter;->createIdToken(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;)Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    move-result-object p1

    .line 24
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->validateCacheArtifacts(Lcom/microsoft/identity/common/internal/dto/AccountRecord;Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;)V

    .line 25
    invoke-virtual {p0, v0, v2}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->removeRefreshTokenIfNeeded(Lcom/microsoft/identity/common/internal/dto/AccountRecord;Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;)V

    const/4 p2, 0x1

    new-array p3, p2, [Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    const/4 v3, 0x0

    aput-object v0, p3, v3

    .line 26
    invoke-direct {p0, p3}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->saveAccounts([Lcom/microsoft/identity/common/internal/dto/AccountRecord;)V

    const/4 p3, 0x3

    new-array p3, p3, [Lcom/microsoft/identity/common/internal/dto/Credential;

    aput-object v1, p3, v3

    aput-object v2, p3, p2

    const/4 p2, 0x2

    aput-object p1, p3, p2

    .line 27
    invoke-virtual {p0, p3}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->saveCredentialsInternal([Lcom/microsoft/identity/common/internal/dto/Credential;)V

    .line 28
    new-instance p2, Lcom/microsoft/identity/common/internal/cache/CacheRecord;

    invoke-direct {p2}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;-><init>()V

    .line 29
    invoke-virtual {p2, v0}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->setAccount(Lcom/microsoft/identity/common/internal/dto/AccountRecord;)V

    .line 30
    invoke-virtual {p2, v1}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->setAccessToken(Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;)V

    .line 31
    invoke-virtual {p2, v2}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->setRefreshToken(Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;)V

    .line 32
    invoke-direct {p0, p2, p1}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->setToCacheRecord(Lcom/microsoft/identity/common/internal/cache/CacheRecord;Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;)V

    return-object p2
.end method

.method public saveAndLoadAggregatedAccountData(Lcom/microsoft/identity/common/internal/dto/AccountRecord;Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/dto/AccountRecord;",
            "Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;",
            "Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->save(Lcom/microsoft/identity/common/internal/dto/AccountRecord;Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mergeCacheRecordWithOtherTenantCacheRecords(Lcom/microsoft/identity/common/internal/cache/ICacheRecord;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public saveAndLoadAggregatedAccountData(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TGenericOAuth2Strategy;TGenericAuthorizationRequest;TGenericTokenResponse;)",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->save(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mergeCacheRecordWithOtherTenantCacheRecords(Lcom/microsoft/identity/common/internal/cache/ICacheRecord;)Ljava/util/List;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public varargs saveCredentialsInternal([Lcom/microsoft/identity/common/internal/dto/Credential;)V
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 2
    instance-of v3, v2, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    if-eqz v3, :cond_0

    .line 3
    move-object v3, v2

    check-cast v3, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    invoke-direct {p0, v3}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->deleteAccessTokensWithIntersectingScopes(Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;)V

    .line 4
    :cond_0
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialCache:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    invoke-interface {v3, v2}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;->saveCredential(Lcom/microsoft/identity/common/internal/dto/Credential;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSingleSignOnState(Lcom/microsoft/identity/common/BaseAccount;Lcom/microsoft/identity/common/internal/providers/oauth2/RefreshToken;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TGenericAccount;TGenericRefreshToken;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialAdapter:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialAdapter;

    invoke-interface {v0, p1}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialAdapter;->asAccount(Lcom/microsoft/identity/common/BaseAccount;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialAdapter:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialAdapter;

    invoke-interface {v1, p2}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialAdapter;->asRefreshToken(Lcom/microsoft/identity/common/internal/providers/oauth2/RefreshToken;)Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->mAccountCredentialAdapter:Lcom/microsoft/identity/common/internal/cache/IAccountCredentialAdapter;

    invoke-interface {v2, p1, p2}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialAdapter;->asIdToken(Lcom/microsoft/identity/common/BaseAccount;Lcom/microsoft/identity/common/internal/providers/oauth2/RefreshToken;)Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    move-result-object p1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v0, v2, v1, p1}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->validateCacheArtifacts(Lcom/microsoft/identity/common/internal/dto/AccountRecord;Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;)V

    .line 5
    invoke-interface {p2}, Lcom/microsoft/identity/common/internal/dto/IRefreshTokenRecord;->getFamilyId()Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {p2}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->isNullOrBlank(Ljava/lang/String;)Z

    move-result p2

    const/4 v2, 0x1

    xor-int/2addr p2, v2

    .line 7
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getAuthorityType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MSSTS"

    .line 8
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez p2, :cond_0

    if-eqz v3, :cond_1

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getClientId()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-direct {p0, v0, p2, v3, v4}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->removeRefreshTokensForAccount(Lcom/microsoft/identity/common/internal/dto/AccountRecord;ZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v5, "setSingleSignOnState"

    invoke-static {v3, v4, v5}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Refresh tokens removed: ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-le p2, v2, :cond_1

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v4, "Multiple refresh tokens found for Account."

    invoke-static {p2, v3, v5, v4}, Le/a/a/a/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-array p2, v2, [Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    const/4 v3, 0x0

    aput-object v0, p2, v3

    .line 14
    invoke-direct {p0, p2}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->saveAccounts([Lcom/microsoft/identity/common/internal/dto/AccountRecord;)V

    const/4 p2, 0x2

    new-array p2, p2, [Lcom/microsoft/identity/common/internal/dto/Credential;

    aput-object p1, p2, v3

    aput-object v1, p2, v2

    .line 15
    invoke-virtual {p0, p2}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->saveCredentialsInternal([Lcom/microsoft/identity/common/internal/dto/Credential;)V

    return-void
.end method

.method public validateCacheArtifacts(Lcom/microsoft/identity/common/internal/dto/AccountRecord;Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v2, ":validateCacheArtifacts"

    const-string v3, "Validating cache artifacts..."

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->isAccountSchemaCompliant(Lcom/microsoft/identity/common/internal/dto/AccountRecord;)Z

    move-result p1

    if-eqz p2, :cond_1

    .line 3
    invoke-direct {p0, p2}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->isAccessTokenSchemaCompliant(Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 4
    :goto_1
    invoke-direct {p0, p3}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->isRefreshTokenSchemaCompliant(Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;)Z

    move-result p3

    .line 5
    invoke-direct {p0, p4}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->isIdTokenSchemaCompliant(Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;)Z

    move-result p4

    if-eqz p1, :cond_7

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    if-nez p4, :cond_2

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    :goto_2
    if-nez p2, :cond_4

    const-string p1, "[(AT)"

    goto :goto_3

    :cond_4
    const-string p1, "["

    :goto_3
    if-nez p3, :cond_5

    const-string p2, "(RT)"

    .line 6
    invoke-static {p1, p2}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    if-nez p4, :cond_6

    const-string p2, "(ID)"

    .line 7
    invoke-static {p1, p2}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_6
    const-string p2, "]"

    .line 8
    invoke-static {p1, p2}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance p2, Lcom/microsoft/identity/common/exception/ClientException;

    const-string p3, "Credential is missing schema-required fields."

    invoke-direct {p2, p3, p1}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_7
    new-instance p1, Lcom/microsoft/identity/common/exception/ClientException;

    const-string p2, "Account is missing schema-required fields."

    invoke-direct {p1, p2}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public validateNonNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const-string v0, " passed in is Null"

    .line 1
    invoke-static {p2, v0}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object p1, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/microsoft/identity/common/exception/ClientException;

    invoke-direct {p1, p2}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
