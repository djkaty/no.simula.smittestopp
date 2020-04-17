.class public Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;
.super Lcom/microsoft/identity/client/PublicClientApplication;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;


# static fields
.field public static final TAG:Ljava/lang/String; = "MultipleAccountPublicClientApplication"


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplication;-><init>(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getAccountInternal(Ljava/lang/String;Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$GetAccountCallback;Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;->TAG:Ljava/lang/String;

    const-string v2, ":getAccount"

    const-string v3, "Get account with the identifier."

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getOAuth2TokenCache()Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/identity/client/internal/controllers/OperationParametersAdapter;->createOperationParameters(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;)Lcom/microsoft/identity/common/internal/request/OperationParameters;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/microsoft/identity/common/internal/controllers/LoadAccountCommand;

    iget-object v3, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 4
    invoke-virtual {v3}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v3

    .line 5
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v4

    iget-object v5, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 6
    invoke-static {v3, v4, v5}, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->getAllControllers(Landroid/content/Context;Lcom/microsoft/identity/common/internal/authorities/Authority;Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$4;

    invoke-direct {v4, p0, p2, p1}, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$4;-><init>(Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$GetAccountCallback;Ljava/lang/String;)V

    invoke-direct {v1, v0, v3, v4}, Lcom/microsoft/identity/common/internal/controllers/LoadAccountCommand;-><init>(Lcom/microsoft/identity/common/internal/request/OperationParameters;Ljava/util/List;Lcom/microsoft/identity/common/internal/controllers/CommandCallback;)V

    .line 7
    invoke-virtual {v1, p3}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->setPublicApiId(Ljava/lang/String;)V

    .line 8
    invoke-static {v1}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->submitSilent(Lcom/microsoft/identity/common/internal/controllers/BaseCommand;)V
    :try_end_0
    .catch Lcom/microsoft/identity/client/exception/MsalClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;->TAG:Ljava/lang/String;

    invoke-static {p3, v0, v2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 10
    invoke-virtual {p1}, Lcom/microsoft/identity/client/exception/MsalException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {p3, v0, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    invoke-interface {p2, p1}, Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$GetAccountCallback;->onError(Lcom/microsoft/identity/client/exception/MsalException;)V

    :goto_0
    return-void
.end method

.method private getAccountsInternal(Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 2
    invoke-virtual {v0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getOAuth2TokenCache()Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 3
    invoke-virtual {v1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getClientId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;->getAccountsWithAggregatedAccountData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v1, v3, :cond_0

    .line 6
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 9
    new-instance v0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;

    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v2}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;-><init>(Landroid/content/Context;)V

    .line 10
    new-instance v2, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    iget-object v4, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 11
    invoke-virtual {v4}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.microsoft.aad.adal.cache"

    invoke-direct {v2, v4, v5, v0}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/identity/common/adal/internal/cache/IStorageHelper;)V

    .line 12
    invoke-interface {v2}, Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 13
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 14
    iget-object v4, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 15
    invoke-virtual {v4}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getClientId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 16
    invoke-virtual {v5}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getRedirectUri()Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v4, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility;

    invoke-direct {v4}, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility;-><init>()V

    new-instance v5, Lcom/microsoft/identity/common/internal/migration/AdalMigrationAdapter;

    iget-object v6, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 19
    invoke-virtual {v6}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v2, v3}, Lcom/microsoft/identity/common/internal/migration/AdalMigrationAdapter;-><init>(Landroid/content/Context;Ljava/util/Map;Z)V

    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 20
    invoke-virtual {v2}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getOAuth2TokenCache()Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/common/internal/cache/IShareSingleSignOnState;

    new-instance v3, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$1;

    invoke-direct {v3, p0}, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$1;-><init>(Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;)V

    .line 21
    invoke-virtual {v4, v5, v0, v2, v3}, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility;->_import(Lcom/microsoft/identity/common/internal/migration/IMigrationAdapter;Ljava/util/Map;Lcom/microsoft/identity/common/internal/cache/IShareSingleSignOnState;Lcom/microsoft/identity/common/internal/migration/TokenMigrationCallback;)V

    goto :goto_1

    .line 22
    :cond_1
    new-instance v0, Lcom/microsoft/identity/common/internal/migration/AdalMigrationAdapter;

    iget-object v4, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 23
    invoke-virtual {v4}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4, v2, v3}, Lcom/microsoft/identity/common/internal/migration/AdalMigrationAdapter;-><init>(Landroid/content/Context;Ljava/util/Map;Z)V

    const/4 v2, 0x1

    .line 24
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/migration/AdalMigrationAdapter;->setMigrationStatus(Z)V

    .line 25
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v2}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getOAuth2TokenCache()Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/microsoft/identity/client/internal/controllers/OperationParametersAdapter;->createOperationParameters(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;)Lcom/microsoft/identity/common/internal/request/OperationParameters;

    move-result-object v0

    .line 26
    new-instance v2, Lcom/microsoft/identity/common/internal/controllers/LoadAccountCommand;

    iget-object v3, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 27
    invoke-virtual {v3}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v3

    .line 28
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v4

    iget-object v5, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 29
    invoke-static {v3, v4, v5}, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->getAllControllers(Landroid/content/Context;Lcom/microsoft/identity/common/internal/authorities/Authority;Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Ljava/util/List;

    move-result-object v3

    .line 30
    invoke-static {p1}, Lcom/microsoft/identity/client/PublicClientApplication;->getLoadAccountsCallback(Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;)Lcom/microsoft/identity/common/internal/controllers/CommandCallback;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/microsoft/identity/common/internal/controllers/LoadAccountCommand;-><init>(Lcom/microsoft/identity/common/internal/request/OperationParameters;Ljava/util/List;Lcom/microsoft/identity/common/internal/controllers/CommandCallback;)V

    .line 31
    invoke-virtual {v2, p2}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->setPublicApiId(Ljava/lang/String;)V

    .line 32
    invoke-static {v2}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->submitSilent(Lcom/microsoft/identity/common/internal/controllers/BaseCommand;)V
    :try_end_0
    .catch Lcom/microsoft/identity/client/exception/MsalClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 33
    new-instance v0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$2;-><init>(Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;Lcom/microsoft/identity/client/exception/MsalClientException;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    return-void
.end method

.method private removeAccountInternal(Lcom/microsoft/identity/client/IAccount;Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$RemoveAccountCallback;Ljava/lang/String;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/microsoft/identity/client/MultiTenantAccount;

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;->TAG:Ljava/lang/String;

    const-string p3, "Requisite IAccount or IAccount fields were null. Insufficient criteria to remove IAccount."

    invoke-static {p1, p3}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string p3, "invalid_parameter"

    invoke-direct {p1, p3}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$RemoveAccountCallback;->onError(Lcom/microsoft/identity/client/exception/MsalException;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getOAuth2TokenCache()Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/identity/client/internal/controllers/OperationParametersAdapter;->createOperationParameters(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;)Lcom/microsoft/identity/common/internal/request/OperationParameters;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    invoke-direct {v1}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/client/Account;->getEnvironment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->setEnvironment(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/identity/client/Account;->getHomeAccountId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->setHomeAccountId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setAccount(Lcom/microsoft/identity/common/internal/dto/IAccountRecord;)V

    .line 9
    :try_start_0
    new-instance p1, Lcom/microsoft/identity/common/internal/controllers/RemoveAccountCommand;

    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 10
    invoke-virtual {v1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 11
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 12
    invoke-static {v1, v2, v3}, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->getAllControllers(Landroid/content/Context;Lcom/microsoft/identity/common/internal/authorities/Authority;Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$6;

    invoke-direct {v2, p0, p2}, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$6;-><init>(Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$RemoveAccountCallback;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/microsoft/identity/common/internal/controllers/RemoveAccountCommand;-><init>(Lcom/microsoft/identity/common/internal/request/OperationParameters;Ljava/util/List;Lcom/microsoft/identity/common/internal/controllers/CommandCallback;)V

    .line 13
    invoke-virtual {p1, p3}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->setPublicApiId(Ljava/lang/String;)V

    .line 14
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->submitSilent(Lcom/microsoft/identity/common/internal/controllers/BaseCommand;)V
    :try_end_0
    .catch Lcom/microsoft/identity/client/exception/MsalClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-interface {p2, p1}, Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$RemoveAccountCallback;->onError(Lcom/microsoft/identity/client/exception/MsalException;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public acquireToken(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/AuthenticationCallback;)V
    .locals 12

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v9, p4

    move-object v10, p3

    .line 1
    invoke-virtual/range {v0 .. v11}, Lcom/microsoft/identity/client/PublicClientApplication;->buildAcquireTokenParameters(Landroid/app/Activity;Landroidx/fragment/app/Fragment;[Ljava/lang/String;Lcom/microsoft/identity/client/IAccount;Lcom/microsoft/identity/client/Prompt;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/AuthenticationCallback;Ljava/lang/String;Lcom/microsoft/identity/client/claims/ClaimsRequest;)Lcom/microsoft/identity/client/AcquireTokenParameters;

    move-result-object v0

    const-string v1, "126"

    move-object v2, p0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/microsoft/identity/client/PublicClientApplication;->acquireTokenInternal(Lcom/microsoft/identity/client/AcquireTokenParameters;Ljava/lang/String;)V

    return-void
.end method

.method public acquireTokenSilent([Ljava/lang/String;Lcom/microsoft/identity/client/IAccount;Ljava/lang/String;)Lcom/microsoft/identity/client/IAuthenticationResult;
    .locals 6

    const/4 v4, 0x0

    const-string v5, "27"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/identity/client/PublicClientApplication;->acquireTokenSilentSyncInternal([Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/IAccount;ZLjava/lang/String;)Lcom/microsoft/identity/client/IAuthenticationResult;

    move-result-object p1

    return-object p1
.end method

.method public acquireTokenSilentAsync([Ljava/lang/String;Lcom/microsoft/identity/client/IAccount;Ljava/lang/String;Lcom/microsoft/identity/client/SilentAuthenticationCallback;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/identity/client/PublicClientApplication;->buildAcquireTokenSilentParameters([Ljava/lang/String;Lcom/microsoft/identity/client/IAccount;Ljava/lang/String;ZLcom/microsoft/identity/client/claims/ClaimsRequest;Lcom/microsoft/identity/client/SilentAuthenticationCallback;)Lcom/microsoft/identity/client/AcquireTokenSilentParameters;

    move-result-object p1

    const-string p2, "28"

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/client/PublicClientApplication;->acquireTokenSilentAsyncInternal(Lcom/microsoft/identity/client/AcquireTokenSilentParameters;Ljava/lang/String;)V

    return-void
.end method

.method public getAccount(Ljava/lang/String;)Lcom/microsoft/identity/client/IAccount;
    .locals 3

    const-string v0, "getAccount"

    .line 2
    invoke-static {v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->throwOnMainThread(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/microsoft/identity/common/internal/result/ResultFuture;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/result/ResultFuture;-><init>()V

    .line 4
    new-instance v1, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$5;

    invoke-direct {v1, p0, v0}, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$5;-><init>(Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;Lcom/microsoft/identity/common/internal/result/ResultFuture;)V

    const-string v2, "925"

    invoke-direct {p0, p1, v1, v2}, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;->getAccountInternal(Ljava/lang/String;Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$GetAccountCallback;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/result/ResultFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/internal/AsyncResult;

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/client/internal/AsyncResult;->getSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/identity/client/internal/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/IAccount;

    return-object p1

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/client/internal/AsyncResult;->getException()Lcom/microsoft/identity/client/exception/MsalException;

    move-result-object p1

    throw p1
.end method

.method public getAccount(Ljava/lang/String;Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$GetAccountCallback;)V
    .locals 1

    const-string v0, "926"

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;->getAccountInternal(Ljava/lang/String;Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$GetAccountCallback;Ljava/lang/String;)V

    return-void
.end method

.method public getAccounts()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/client/IAccount;",
            ">;"
        }
    .end annotation

    const-string v0, "getAccounts"

    .line 2
    invoke-static {v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->throwOnMainThread(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/microsoft/identity/common/internal/result/ResultFuture;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/result/ResultFuture;-><init>()V

    .line 4
    new-instance v1, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;

    invoke-direct {v1, p0, v0}, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;-><init>(Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;Lcom/microsoft/identity/common/internal/result/ResultFuture;)V

    const-string v2, "923"

    invoke-direct {p0, v1, v2}, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;->getAccountsInternal(Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/result/ResultFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/client/internal/AsyncResult;

    .line 6
    invoke-virtual {v0}, Lcom/microsoft/identity/client/internal/AsyncResult;->getSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/microsoft/identity/client/internal/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/microsoft/identity/client/internal/AsyncResult;->getException()Lcom/microsoft/identity/client/exception/MsalException;

    move-result-object v0

    throw v0
.end method

.method public getAccounts(Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;)V
    .locals 1

    const-string v0, "924"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;->getAccountsInternal(Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;Ljava/lang/String;)V

    return-void
.end method

.method public removeAccount(Lcom/microsoft/identity/client/IAccount;Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$RemoveAccountCallback;)V
    .locals 1

    const-string v0, "930"

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;->removeAccountInternal(Lcom/microsoft/identity/client/IAccount;Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$RemoveAccountCallback;Ljava/lang/String;)V

    return-void
.end method

.method public removeAccount(Lcom/microsoft/identity/client/IAccount;)Z
    .locals 3

    .line 2
    new-instance v0, Lcom/microsoft/identity/common/internal/result/ResultFuture;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/result/ResultFuture;-><init>()V

    .line 3
    new-instance v1, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$7;

    invoke-direct {v1, p0, v0}, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$7;-><init>(Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;Lcom/microsoft/identity/common/internal/result/ResultFuture;)V

    const-string v2, "929"

    invoke-direct {p0, p1, v1, v2}, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;->removeAccountInternal(Lcom/microsoft/identity/client/IAccount;Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$RemoveAccountCallback;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/result/ResultFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/internal/AsyncResult;

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/client/internal/AsyncResult;->getSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/client/internal/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/client/internal/AsyncResult;->getException()Lcom/microsoft/identity/client/exception/MsalException;

    move-result-object p1

    throw p1
.end method
