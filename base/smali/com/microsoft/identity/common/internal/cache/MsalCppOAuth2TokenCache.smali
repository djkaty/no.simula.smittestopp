.class public Lcom/microsoft/identity/common/internal/cache/MsalCppOAuth2TokenCache;
.super Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;
.source "SourceFile"


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
        "Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache<",
        "TGenericOAuth2Strategy;TGenericAuthorizationRequest;TGenericTokenResponse;TGenericAccount;TGenericRefreshToken;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "com.microsoft.identity.common.internal.cache.MsalCppOAuth2TokenCache"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;Lcom/microsoft/identity/common/internal/cache/IAccountCredentialAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;-><init>(Landroid/content/Context;Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;Lcom/microsoft/identity/common/internal/cache/IAccountCredentialAdapter;)V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/microsoft/identity/common/internal/cache/MsalCppOAuth2TokenCache;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->create(Landroid/content/Context;)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/microsoft/identity/common/internal/cache/MsalCppOAuth2TokenCache;

    .line 3
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccountCredentialCache()Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    move-result-object v2

    .line 4
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccountCredentialAdapter()Lcom/microsoft/identity/common/internal/cache/IAccountCredentialAdapter;

    move-result-object v0

    invoke-direct {v1, p0, v2, v0}, Lcom/microsoft/identity/common/internal/cache/MsalCppOAuth2TokenCache;-><init>(Landroid/content/Context;Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;Lcom/microsoft/identity/common/internal/cache/IAccountCredentialAdapter;)V

    return-object v1
.end method


# virtual methods
.method public declared-synchronized clearCache()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccountCredentialCache()Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;->clearAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;
    .locals 3

    const-string v0, "homeAccountId"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->validateNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environment"

    .line 2
    invoke-virtual {p0, p2, v0}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->validateNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "realm"

    .line 3
    invoke-virtual {p0, p3, v0}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->validateNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccountCredentialCache()Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;->getAccountsFilteredBy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    return-object p1

    .line 8
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/cache/MsalCppOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v2, ":getAccount"

    invoke-static {v0, v1, v2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No account found for the passing in homeAccountId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " environment: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " realm: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAllAccounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/dto/AccountRecord;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccountCredentialCache()Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;->getAccounts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized removeAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/cache/AccountDeletionRecord;
    .locals 9

    monitor-enter p0

    :try_start_0
    const-string v0, "homeAccountId"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->validateNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "realm"

    .line 2
    invoke-virtual {p0, p3, v0}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->validateNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccountCredentialCache()Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    move-result-object v1

    sget-object v4, Lcom/microsoft/identity/common/internal/dto/CredentialType;->RefreshToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v8, "Bearer"

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v8}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;->getCredentialsFilteredBy(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/common/internal/dto/Credential;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/dto/Credential;->getClientId()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->removeAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/cache/AccountDeletionRecord;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 7
    :cond_0
    :try_start_1
    new-instance p1, Lcom/microsoft/identity/common/internal/cache/AccountDeletionRecord;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/microsoft/identity/common/internal/cache/AccountDeletionRecord;-><init>(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized saveAccountRecord(Lcom/microsoft/identity/common/internal/dto/AccountRecord;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccountCredentialCache()Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;->saveAccount(Lcom/microsoft/identity/common/internal/dto/AccountRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized saveCredentials(Lcom/microsoft/identity/common/internal/dto/AccountRecord;[Lcom/microsoft/identity/common/internal/dto/Credential;)V
    .locals 7

    monitor-enter p0

    if-eqz p2, :cond_4

    .line 1
    :try_start_0
    array-length v0, p2

    if-eqz v0, :cond_4

    .line 2
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v5, p2, v1

    .line 3
    instance-of v6, v5, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    if-eqz v6, :cond_0

    .line 4
    check-cast v5, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    move-object v4, v5

    goto :goto_1

    .line 5
    :cond_0
    instance-of v6, v5, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    if-eqz v6, :cond_1

    .line 6
    check-cast v5, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    move-object v3, v5

    goto :goto_1

    .line 7
    :cond_1
    instance-of v6, v5, Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    if-eqz v6, :cond_2

    .line 8
    check-cast v5, Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    move-object v2, v5

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "AccountRecord"

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->validateNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "RefreshTokenRecord"

    .line 10
    invoke-virtual {p0, v2, v0}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->validateNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "IdTokenRecord"

    .line 11
    invoke-virtual {p0, v3, v0}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->validateNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, p1, v4, v2, v3}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->validateCacheArtifacts(Lcom/microsoft/identity/common/internal/dto/AccountRecord;Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;)V

    .line 13
    invoke-virtual {p0, p1, v2}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->removeRefreshTokenIfNeeded(Lcom/microsoft/identity/common/internal/dto/AccountRecord;Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;)V

    .line 14
    invoke-virtual {p0, p2}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->saveCredentialsInternal([Lcom/microsoft/identity/common/internal/dto/Credential;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    .line 16
    :cond_4
    :try_start_1
    new-instance p1, Lcom/microsoft/identity/common/exception/ClientException;

    const-string p2, "Credential array passed in is null or empty"

    invoke-direct {p1, p2}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
