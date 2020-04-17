.class public Lcom/microsoft/identity/client/PublicClientApplication;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/client/IPublicClientApplication;
.implements Lcom/microsoft/identity/client/ITokenShare;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;,
        Lcom/microsoft/identity/client/PublicClientApplication$BrokerDeviceModeCallback;,
        Lcom/microsoft/identity/client/PublicClientApplication$NONNULL_CONSTANTS;
    }
.end annotation


# static fields
.field public static final ACCESS_NETWORK_STATE_PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_NETWORK_STATE"

.field public static final INTERNET_PERMISSION:Ljava/lang/String; = "android.permission.INTERNET"

.field public static final TAG:Ljava/lang/String; = "PublicClientApplication"

.field public static final TSL_MSG_FAILED_TO_SAVE:Ljava/lang/String; = "Failed to save FRT - see getCause() for additional Exception info"

.field public static final TSM_MSG_FAILED_TO_RETRIEVE:Ljava/lang/String; = "Failed to retrieve FRT - see getCause() for additional Exception info"

.field public static final sBackgroundExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public homeAccountMatcher:Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;

.field public localAccountMatcher:Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;

.field public mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

.field public mTokenShareUtility:Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;

.field public usernameMatcher:Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/client/PublicClientApplication;->sBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/microsoft/identity/client/PublicClientApplication$10;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/client/PublicClientApplication$10;-><init>(Lcom/microsoft/identity/client/PublicClientApplication;)V

    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->homeAccountMatcher:Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;

    .line 3
    new-instance v0, Lcom/microsoft/identity/client/PublicClientApplication$11;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/client/PublicClientApplication$11;-><init>(Lcom/microsoft/identity/client/PublicClientApplication;)V

    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->localAccountMatcher:Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;

    .line 4
    new-instance v0, Lcom/microsoft/identity/client/PublicClientApplication$12;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/client/PublicClientApplication$12;-><init>(Lcom/microsoft/identity/client/PublicClientApplication;)V

    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->usernameMatcher:Lcom/microsoft/identity/client/PublicClientApplication$AccountMatcher;

    .line 5
    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 6
    invoke-direct {p0}, Lcom/microsoft/identity/client/PublicClientApplication;->initializeApplication()V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/client/PublicClientApplication;Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/client/TokenParameters;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/client/PublicClientApplication;->selectAccountRecordForTokenRequest(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/client/TokenParameters;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object p0

    return-object p0
.end method

.method private checkInternetPermission()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 3
    invoke-virtual {v1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "android.permission.Internet or android.permission.ACCESS_NETWORK_STATE is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Landroid/content/Context;I)Lcom/microsoft/identity/client/IPublicClientApplication;
    .locals 1

    const-string v0, "context"

    .line 15
    invoke-static {p0, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfigurationFactory;->initializeConfiguration(Landroid/content/Context;I)Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/identity/client/PublicClientApplication;->create(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Lcom/microsoft/identity/client/IPublicClientApplication;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Lcom/microsoft/identity/client/IPublicClientApplication;
    .locals 3

    const-string v0, "configuration"

    .line 17
    invoke-static {p0, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createPublicClientApplication"

    .line 18
    invoke-static {v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->throwOnMainThread(Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/microsoft/identity/common/internal/result/ResultFuture;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/result/ResultFuture;-><init>()V

    .line 20
    new-instance v1, Lcom/microsoft/identity/client/PublicClientApplication$1;

    invoke-direct {v1, v0}, Lcom/microsoft/identity/client/PublicClientApplication$1;-><init>(Lcom/microsoft/identity/common/internal/result/ResultFuture;)V

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, v2, v1}, Lcom/microsoft/identity/client/PublicClientApplication;->create(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;)V

    .line 21
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/result/ResultFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/client/internal/AsyncResult;

    .line 22
    invoke-virtual {p0}, Lcom/microsoft/identity/client/internal/AsyncResult;->getSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/microsoft/identity/client/internal/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/client/IPublicClientApplication;

    return-object p0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/identity/client/internal/AsyncResult;->getException()Lcom/microsoft/identity/client/exception/MsalException;

    move-result-object p0

    .line 25
    throw p0
.end method

.method public static create(Landroid/content/Context;ILcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;)V
    .locals 1

    const-string v0, "context"

    .line 1
    invoke-static {p0, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    .line 2
    invoke-static {p2, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfigurationFactory;->initializeConfiguration(Landroid/content/Context;I)Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    move-result-object p0

    const/4 p1, 0x0

    .line 4
    invoke-static {p0, p1, p1, p1, p2}, Lcom/microsoft/identity/client/PublicClientApplication;->create(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/io/File;Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;)V
    .locals 1

    const-string v0, "context"

    .line 5
    invoke-static {p0, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    .line 6
    invoke-static {p2, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfigurationFactory;->initializeConfiguration(Landroid/content/Context;Ljava/io/File;)Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    move-result-object p0

    const/4 p1, 0x0

    .line 8
    invoke-static {p0, p1, p1, p1, p2}, Lcom/microsoft/identity/client/PublicClientApplication;->create(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;)V
    .locals 1

    const-string v0, "context"

    .line 9
    invoke-static {p0, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "client_id"

    .line 10
    invoke-static {p1, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "redirect_uri"

    .line 11
    invoke-static {p3, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    .line 12
    invoke-static {p4, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfigurationFactory;->initializeConfiguration(Landroid/content/Context;)Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    move-result-object p0

    .line 14
    invoke-static {p0, p1, p2, p3, p4}, Lcom/microsoft/identity/client/PublicClientApplication;->create(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;)V

    return-void
.end method

.method public static create(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->setClientId(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 27
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAuthorities()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 28
    invoke-static {p2}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getAuthorityFromAuthorityUrl(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object p1

    const/4 p2, 0x1

    .line 29
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/identity/common/internal/authorities/Authority;->setDefault(Ljava/lang/Boolean;)V

    .line 30
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAuthorities()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p3, :cond_2

    .line 31
    invoke-virtual {p0, p3}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->setRedirectUri(Ljava/lang/String;)V

    .line 32
    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getOAuth2TokenCache()Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/microsoft/identity/client/internal/controllers/OperationParametersAdapter;->createOperationParameters(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;)Lcom/microsoft/identity/common/internal/request/OperationParameters;

    move-result-object p1

    .line 33
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object p2

    .line 34
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object p3

    .line 35
    invoke-static {p2, p3, p0}, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->getDefaultController(Landroid/content/Context;Lcom/microsoft/identity/common/internal/authorities/Authority;Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Lcom/microsoft/identity/common/internal/controllers/BaseController;

    move-result-object p2
    :try_end_0
    .catch Lcom/microsoft/identity/client/exception/MsalClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    new-instance p3, Lcom/microsoft/identity/common/internal/controllers/GetDeviceModeCommand;

    new-instance v0, Lcom/microsoft/identity/client/PublicClientApplication$2;

    invoke-direct {v0, p4, p0}, Lcom/microsoft/identity/client/PublicClientApplication$2;-><init>(Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V

    invoke-direct {p3, p1, p2, v0}, Lcom/microsoft/identity/common/internal/controllers/GetDeviceModeCommand;-><init>(Lcom/microsoft/identity/common/internal/request/OperationParameters;Lcom/microsoft/identity/common/internal/controllers/BaseController;Lcom/microsoft/identity/common/internal/controllers/CommandCallback;)V

    .line 37
    invoke-static {p3}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->submitSilent(Lcom/microsoft/identity/common/internal/controllers/BaseCommand;)V

    return-void

    :catch_0
    move-exception p0

    .line 38
    invoke-interface {p4, p0}, Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;->onError(Lcom/microsoft/identity/client/exception/MsalException;)V

    return-void
.end method

.method public static createMultipleAccountPublicClientApplication(Landroid/content/Context;I)Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;
    .locals 1

    const-string v0, "context"

    .line 9
    invoke-static {p0, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfigurationFactory;->initializeConfiguration(Landroid/content/Context;I)Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    move-result-object p0

    .line 11
    invoke-static {p0}, Lcom/microsoft/identity/client/PublicClientApplication;->createMultipleAccountPublicClientApplication(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;

    move-result-object p0

    return-object p0
.end method

.method public static createMultipleAccountPublicClientApplication(Landroid/content/Context;Ljava/io/File;)Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;
    .locals 1

    const-string v0, "context"

    .line 12
    invoke-static {p0, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configFile"

    .line 13
    invoke-static {p1, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfigurationFactory;->initializeConfiguration(Landroid/content/Context;Ljava/io/File;)Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    move-result-object p0

    .line 15
    invoke-static {p0}, Lcom/microsoft/identity/client/PublicClientApplication;->createMultipleAccountPublicClientApplication(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;

    move-result-object p0

    return-object p0
.end method

.method public static createMultipleAccountPublicClientApplication(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;
    .locals 2

    .line 16
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAccountMode()Lcom/microsoft/identity/client/configuration/AccountMode;

    move-result-object v0

    sget-object v1, Lcom/microsoft/identity/client/configuration/AccountMode;->MULTIPLE:Lcom/microsoft/identity/client/configuration/AccountMode;

    if-ne v0, v1, :cond_2

    .line 17
    invoke-static {p0}, Lcom/microsoft/identity/client/PublicClientApplication;->create(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Lcom/microsoft/identity/client/IPublicClientApplication;

    move-result-object v0

    .line 18
    instance-of v1, v0, Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;

    if-eqz v1, :cond_0

    .line 19
    check-cast v0, Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;

    return-object v0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAccountMode()Lcom/microsoft/identity/client/configuration/AccountMode;

    move-result-object p0

    sget-object v1, Lcom/microsoft/identity/client/configuration/AccountMode;->MULTIPLE:Lcom/microsoft/identity/client/configuration/AccountMode;

    if-ne p0, v1, :cond_1

    invoke-interface {v0}, Lcom/microsoft/identity/client/IPublicClientApplication;->isSharedDevice()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 21
    new-instance p0, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string v0, "multiple_account_pca_init_fail_on_shared_device"

    const-string v1, "AccountMode in configuration is set to multiple. However, the device is marked as shared (which requires single account mode)."

    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_1
    new-instance p0, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string v0, "multiple_account_pca_init_fail_unknown_reason"

    const-string v1, "Multiple account PublicClientApplication could not be created for unknown reasons"

    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_2
    new-instance p0, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string v0, "multiple_account_pca_init_fail_account_mode"

    const-string v1, "AccountMode in configuration is not set to multiple. Cannot initialize multiple account PublicClientApplication."

    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public static createMultipleAccountPublicClientApplication(Landroid/content/Context;ILcom/microsoft/identity/client/IPublicClientApplication$IMultipleAccountApplicationCreatedListener;)V
    .locals 1

    const-string v0, "context"

    .line 1
    invoke-static {p0, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    .line 2
    invoke-static {p2, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfigurationFactory;->initializeConfiguration(Landroid/content/Context;I)Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    move-result-object p0

    .line 4
    invoke-static {p0, p2}, Lcom/microsoft/identity/client/PublicClientApplication;->createMultipleAccountPublicClientApplication(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/client/IPublicClientApplication$IMultipleAccountApplicationCreatedListener;)V

    return-void
.end method

.method public static createMultipleAccountPublicClientApplication(Landroid/content/Context;Ljava/io/File;Lcom/microsoft/identity/client/IPublicClientApplication$IMultipleAccountApplicationCreatedListener;)V
    .locals 1

    const-string v0, "context"

    .line 5
    invoke-static {p0, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    .line 6
    invoke-static {p2, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfigurationFactory;->initializeConfiguration(Landroid/content/Context;Ljava/io/File;)Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    move-result-object p0

    .line 8
    invoke-static {p0, p2}, Lcom/microsoft/identity/client/PublicClientApplication;->createMultipleAccountPublicClientApplication(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/client/IPublicClientApplication$IMultipleAccountApplicationCreatedListener;)V

    return-void
.end method

.method public static createMultipleAccountPublicClientApplication(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/client/IPublicClientApplication$IMultipleAccountApplicationCreatedListener;)V
    .locals 1

    .line 24
    new-instance v0, Lcom/microsoft/identity/client/PublicClientApplication$3;

    invoke-direct {v0, p1}, Lcom/microsoft/identity/client/PublicClientApplication$3;-><init>(Lcom/microsoft/identity/client/IPublicClientApplication$IMultipleAccountApplicationCreatedListener;)V

    const/4 p1, 0x0

    invoke-static {p0, p1, p1, p1, v0}, Lcom/microsoft/identity/client/PublicClientApplication;->create(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;)V

    return-void
.end method

.method public static createSingleAccountPublicClientApplication(Landroid/content/Context;I)Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication;
    .locals 1

    const-string v0, "context"

    .line 10
    invoke-static {p0, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfigurationFactory;->initializeConfiguration(Landroid/content/Context;I)Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    move-result-object p0

    .line 12
    invoke-static {p0}, Lcom/microsoft/identity/client/PublicClientApplication;->createSingleAccountPublicClientApplication(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication;

    move-result-object p0

    return-object p0
.end method

.method public static createSingleAccountPublicClientApplication(Landroid/content/Context;Ljava/io/File;)Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication;
    .locals 1

    const-string v0, "context"

    .line 13
    invoke-static {p0, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfigurationFactory;->initializeConfiguration(Landroid/content/Context;Ljava/io/File;)Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    move-result-object p0

    .line 15
    invoke-static {p0}, Lcom/microsoft/identity/client/PublicClientApplication;->createSingleAccountPublicClientApplication(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication;

    move-result-object p0

    return-object p0
.end method

.method public static createSingleAccountPublicClientApplication(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication;
    .locals 2

    .line 16
    invoke-static {p0}, Lcom/microsoft/identity/client/PublicClientApplication;->create(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Lcom/microsoft/identity/client/IPublicClientApplication;

    move-result-object v0

    .line 17
    instance-of v1, v0, Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication;

    if-eqz v1, :cond_0

    .line 18
    check-cast v0, Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication;

    return-object v0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAccountMode()Lcom/microsoft/identity/client/configuration/AccountMode;

    move-result-object p0

    sget-object v0, Lcom/microsoft/identity/client/configuration/AccountMode;->SINGLE:Lcom/microsoft/identity/client/configuration/AccountMode;

    if-eq p0, v0, :cond_1

    .line 20
    new-instance p0, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string v0, "single_account_pca_init_fail_account_mode"

    const-string v1, "AccountMode in configuration is not set to single. Cannot initialize single account PublicClientApplication."

    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_1
    new-instance p0, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string v0, "single_account_pca_init_fail_unknown_reason"

    const-string v1, "A single account public client application could not be created for unknown reasons."

    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public static createSingleAccountPublicClientApplication(Landroid/content/Context;ILcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;)V
    .locals 1

    const-string v0, "context"

    .line 1
    invoke-static {p0, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    .line 2
    invoke-static {p2, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfigurationFactory;->initializeConfiguration(Landroid/content/Context;I)Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    move-result-object p0

    .line 4
    invoke-static {p0, p2}, Lcom/microsoft/identity/client/PublicClientApplication;->createSingleAccountPublicClientApplication(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;)V

    return-void
.end method

.method public static createSingleAccountPublicClientApplication(Landroid/content/Context;Ljava/io/File;Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;)V
    .locals 1

    const-string v0, "context"

    .line 5
    invoke-static {p0, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config_file"

    .line 6
    invoke-static {p1, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    .line 7
    invoke-static {p2, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfigurationFactory;->initializeConfiguration(Landroid/content/Context;Ljava/io/File;)Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    move-result-object p0

    .line 9
    invoke-static {p0, p2}, Lcom/microsoft/identity/client/PublicClientApplication;->createSingleAccountPublicClientApplication(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;)V

    return-void
.end method

.method public static createSingleAccountPublicClientApplication(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;)V
    .locals 1

    .line 22
    new-instance v0, Lcom/microsoft/identity/client/PublicClientApplication$4;

    invoke-direct {v0, p1}, Lcom/microsoft/identity/client/PublicClientApplication$4;-><init>(Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;)V

    const/4 p1, 0x0

    invoke-static {p0, p1, p1, p1, v0}, Lcom/microsoft/identity/client/PublicClientApplication;->create(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;)V

    return-void
.end method

.method public static getLoadAccountsCallback(Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;)Lcom/microsoft/identity/common/internal/controllers/CommandCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;",
            ")",
            "Lcom/microsoft/identity/common/internal/controllers/CommandCallback<",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;",
            "Lcom/microsoft/identity/common/exception/BaseException;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/identity/client/PublicClientApplication$8;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/client/PublicClientApplication$8;-><init>(Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;)V

    return-object v0
.end method

.method private getOAuth2TokenCache()Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache<",
            "***>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->create(Landroid/content/Context;)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    move-result-object v0

    return-object v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.4.0"

    return-object v0
.end method

.method private initializeApplication()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->getInstance()Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->setupLastRequestTelemetryCache(Landroid/content/Context;)V

    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/client/PublicClientApplication;->setupTelemetry(Landroid/content/Context;Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V

    .line 4
    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getEnvironment()Lcom/microsoft/identity/common/internal/authorities/Environment;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->setEnvironment(Lcom/microsoft/identity/common/internal/authorities/Environment;)V

    .line 5
    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAuthorities()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/identity/common/internal/authorities/Authority;->addKnownAuthorities(Ljava/util/List;)V

    .line 6
    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getHttpConfiguration()Lcom/microsoft/identity/client/configuration/HttpConfiguration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/microsoft/identity/client/PublicClientApplication;->initializeHttpSettings(Lcom/microsoft/identity/client/configuration/HttpConfiguration;)V

    .line 7
    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getLoggerConfiguration()Lcom/microsoft/identity/client/configuration/LoggerConfiguration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/microsoft/identity/client/PublicClientApplication;->initializeLoggerSettings(Lcom/microsoft/identity/client/configuration/LoggerConfiguration;)V

    .line 8
    invoke-direct {p0}, Lcom/microsoft/identity/client/PublicClientApplication;->initializeTokenSharingLibrary()V

    .line 9
    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->checkIntentFilterAddedToAppManifestForBrokerFlow()V

    .line 10
    invoke-direct {p0}, Lcom/microsoft/identity/client/PublicClientApplication;->checkInternetPermission()V

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/internal/net/cache/HttpCache;->initialize(Ljava/io/File;)Z

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/client/PublicClientApplication;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":initializeApplication"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Create new public client application."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initializeHttpSettings(Lcom/microsoft/identity/client/configuration/HttpConfiguration;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/microsoft/identity/client/PublicClientApplication;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":initializeHttpSettings"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HttpConfiguration not provided - using defaults."

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/client/configuration/HttpConfiguration;->getReadTimeout()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/client/configuration/HttpConfiguration;->getConnectTimeout()I

    move-result p1

    if-ltz v0, :cond_1

    .line 4
    sput v0, Lcom/microsoft/identity/common/internal/net/HttpRequest;->READ_TIMEOUT:I

    :cond_1
    if-ltz p1, :cond_2

    .line 5
    sput p1, Lcom/microsoft/identity/common/internal/net/HttpRequest;->CONNECT_TIMEOUT:I

    :cond_2
    return-void
.end method

.method private initializeLoggerSettings(Lcom/microsoft/identity/client/configuration/LoggerConfiguration;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/client/configuration/LoggerConfiguration;->getLogLevel()Lcom/microsoft/identity/client/Logger$LogLevel;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/client/configuration/LoggerConfiguration;->isPiiEnabled()Z

    move-result v1

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/client/configuration/LoggerConfiguration;->isLogcatEnabled()Z

    move-result p1

    .line 4
    invoke-static {}, Lcom/microsoft/identity/client/Logger;->getInstance()Lcom/microsoft/identity/client/Logger;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v2, v0}, Lcom/microsoft/identity/client/Logger;->setLogLevel(Lcom/microsoft/identity/client/Logger$LogLevel;)V

    .line 6
    :cond_0
    invoke-virtual {v2, v1}, Lcom/microsoft/identity/client/Logger;->setEnablePII(Z)V

    .line 7
    invoke-virtual {v2, p1}, Lcom/microsoft/identity/client/Logger;->setEnableLogcatLog(Z)V

    :cond_1
    return-void
.end method

.method private initializeTokenSharingLibrary()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getOAuth2TokenCache()Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;

    move-result-object v0

    instance-of v0, v0, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;

    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 3
    invoke-virtual {v1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getClientId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 4
    invoke-virtual {v2}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getRedirectUri()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 5
    invoke-virtual {v3}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getDefaultAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 6
    invoke-virtual {v4}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getOAuth2TokenCache()Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;

    move-result-object v4

    check-cast v4, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;)V

    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mTokenShareUtility:Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TSL support mandates use of the MsalOAuth2TokenCache"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private selectAccountRecordForTokenRequest(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/client/TokenParameters;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;
    .locals 7

    .line 1
    invoke-virtual {p2}, Lcom/microsoft/identity/client/TokenParameters;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getDefaultAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getAuthorityUri()Landroid/net/Uri;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p2, p1}, Lcom/microsoft/identity/client/TokenParameters;->setAuthority(Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/microsoft/identity/client/TokenParameters;->getAccount()Lcom/microsoft/identity/client/IAccount;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return-object v0

    .line 7
    :cond_1
    invoke-virtual {p2}, Lcom/microsoft/identity/client/TokenParameters;->getAccount()Lcom/microsoft/identity/client/IAccount;

    move-result-object p1

    .line 8
    move-object v1, p1

    check-cast v1, Lcom/microsoft/identity/client/MultiTenantAccount;

    .line 9
    invoke-virtual {p2}, Lcom/microsoft/identity/client/TokenParameters;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {v2}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getAuthorityFromAuthorityUrl(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v2

    .line 11
    instance-of v3, v2, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryB2CAuthority;

    if-eqz v3, :cond_2

    .line 12
    iget-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 13
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getClientId()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 14
    invoke-virtual {p2}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getOAuth2TokenCache()Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;

    move-result-object p2

    .line 15
    invoke-virtual {v1}, Lcom/microsoft/identity/client/Account;->getHomeAccountId()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {v1}, Lcom/microsoft/identity/client/Account;->getTenantId()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {p1, p2, v0, v1}, Lcom/microsoft/identity/client/AccountAdapter;->getAccountInternal(Ljava/lang/String;Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object p1

    return-object p1

    .line 18
    :cond_2
    instance-of v3, v2, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;

    if-eqz v3, :cond_b

    .line 19
    move-object v3, v2

    check-cast v3, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;

    .line 20
    invoke-virtual {v3}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;->getAudience()Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;->getTenantId()Ljava/lang/String;

    move-result-object v4

    .line 21
    new-instance v5, Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    invoke-direct {v5}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;-><init>()V

    .line 22
    invoke-virtual {v1}, Lcom/microsoft/identity/client/Account;->getEnvironment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->setEnvironment(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1}, Lcom/microsoft/identity/client/Account;->getHomeAccountId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->setHomeAccountId(Ljava/lang/String;)V

    .line 24
    invoke-static {v4}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isUuid(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 25
    invoke-static {v4}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;->isHomeTenantAlias(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 26
    invoke-virtual {v3}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;->getAudience()Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;

    move-result-object v3

    .line 27
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-virtual {v3, v2}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;->getTenantUuidForAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 29
    :cond_3
    invoke-static {v4}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;->isHomeTenantAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 30
    invoke-virtual {v1}, Lcom/microsoft/identity/client/Account;->getClaims()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/microsoft/identity/client/internal/controllers/OperationParametersAdapter;->isAccountHomeTenant(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 31
    :cond_4
    invoke-virtual {v1}, Lcom/microsoft/identity/client/MultiTenantAccount;->getTenantProfiles()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/client/IAccount;

    goto :goto_1

    .line 32
    :cond_5
    :goto_0
    invoke-virtual {v1}, Lcom/microsoft/identity/client/Account;->getClaims()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_6

    move-object v0, v1

    :cond_6
    :goto_1
    if-nez v0, :cond_9

    .line 33
    instance-of p2, p2, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;

    if-eqz p2, :cond_9

    .line 34
    invoke-interface {p1}, Lcom/microsoft/identity/client/IClaimable;->getClaims()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_7

    goto :goto_2

    .line 35
    :cond_7
    invoke-virtual {v1}, Lcom/microsoft/identity/client/MultiTenantAccount;->getTenantProfiles()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/identity/client/ITenantProfile;

    .line 36
    invoke-interface {p2}, Lcom/microsoft/identity/client/IClaimable;->getClaims()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_8

    move-object p1, p2

    goto :goto_2

    :cond_9
    move-object p1, v0

    :goto_2
    if-eqz p1, :cond_a

    .line 37
    invoke-interface {p1}, Lcom/microsoft/identity/client/IAccount;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->setLocalAccountId(Ljava/lang/String;)V

    .line 38
    invoke-interface {p1}, Lcom/microsoft/identity/client/IClaimable;->getUsername()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->setUsername(Ljava/lang/String;)V

    return-object v5

    .line 39
    :cond_a
    sget-object p1, Lcom/microsoft/identity/client/PublicClientApplication;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No account record found for IAccount with request tenantId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/microsoft/identity/common/internal/logging/Logger;->warnPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance p1, Lcom/microsoft/identity/common/exception/ClientException;

    const-string p2, "no_account_found"

    const-string v0, "No account record found for IAccount"

    invoke-direct {p1, p2, v0}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Unsupported Authority type: "

    invoke-static {p2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 42
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setupTelemetry(Landroid/content/Context;Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getTelemetryConfiguration()Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/microsoft/identity/client/PublicClientApplication;->TAG:Ljava/lang/String;

    const-string v1, "Telemetry configuration is set. Telemetry is enabled."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/microsoft/identity/client/PublicClientApplication;->TAG:Ljava/lang/String;

    const-string v1, "Telemetry configuration is null. Telemetry is disabled."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :goto_0
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;->withContext(Landroid/content/Context;)Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p2}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getTelemetryConfiguration()Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;->defaultConfiguration(Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;)Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;->build()Lcom/microsoft/identity/common/internal/telemetry/Telemetry;

    return-void
.end method

.method private validateBrokerNotInUse()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 2
    invoke-virtual {v0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 3
    invoke-virtual {v1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getDefaultAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 4
    invoke-static {v0, v1, v2}, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->brokerEligible(Landroid/content/Context;Lcom/microsoft/identity/common/internal/authorities/Authority;Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string v1, "Cannot perform this action - broker is enabled."

    invoke-direct {v0, v1}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public acquireToken(Landroid/app/Activity;[Ljava/lang/String;Lcom/microsoft/identity/client/AuthenticationCallback;)V
    .locals 12

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v9, p3

    .line 1
    invoke-virtual/range {v0 .. v11}, Lcom/microsoft/identity/client/PublicClientApplication;->buildAcquireTokenParameters(Landroid/app/Activity;Landroidx/fragment/app/Fragment;[Ljava/lang/String;Lcom/microsoft/identity/client/IAccount;Lcom/microsoft/identity/client/Prompt;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/AuthenticationCallback;Ljava/lang/String;Lcom/microsoft/identity/client/claims/ClaimsRequest;)Lcom/microsoft/identity/client/AcquireTokenParameters;

    move-result-object p1

    const-string p2, "122"

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/client/PublicClientApplication;->acquireTokenInternal(Lcom/microsoft/identity/client/AcquireTokenParameters;Ljava/lang/String;)V

    return-void
.end method

.method public acquireToken(Lcom/microsoft/identity/client/AcquireTokenParameters;)V
    .locals 1

    const-string v0, "121"

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/identity/client/PublicClientApplication;->acquireTokenInternal(Lcom/microsoft/identity/client/AcquireTokenParameters;Ljava/lang/String;)V

    return-void
.end method

.method public acquireTokenInternal(Lcom/microsoft/identity/client/AcquireTokenParameters;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/microsoft/identity/client/PublicClientApplication;->sBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/microsoft/identity/client/PublicClientApplication$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/microsoft/identity/client/PublicClientApplication$5;-><init>(Lcom/microsoft/identity/client/PublicClientApplication;Lcom/microsoft/identity/client/AcquireTokenParameters;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public acquireTokenSilent(Lcom/microsoft/identity/client/AcquireTokenSilentParameters;)Lcom/microsoft/identity/client/IAuthenticationResult;
    .locals 1

    const-string v0, "21"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/identity/client/PublicClientApplication;->acquireTokenSilentInternal(Lcom/microsoft/identity/client/AcquireTokenSilentParameters;Ljava/lang/String;)Lcom/microsoft/identity/client/IAuthenticationResult;

    move-result-object p1

    return-object p1
.end method

.method public acquireTokenSilentAsync(Lcom/microsoft/identity/client/AcquireTokenSilentParameters;)V
    .locals 1

    const-string v0, "22"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/identity/client/PublicClientApplication;->acquireTokenSilentAsyncInternal(Lcom/microsoft/identity/client/AcquireTokenSilentParameters;Ljava/lang/String;)V

    return-void
.end method

.method public acquireTokenSilentAsyncInternal(Lcom/microsoft/identity/client/AcquireTokenSilentParameters;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/microsoft/identity/client/PublicClientApplication;->sBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/microsoft/identity/client/PublicClientApplication$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/microsoft/identity/client/PublicClientApplication$6;-><init>(Lcom/microsoft/identity/client/PublicClientApplication;Lcom/microsoft/identity/client/AcquireTokenSilentParameters;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public acquireTokenSilentInternal(Lcom/microsoft/identity/client/AcquireTokenSilentParameters;Ljava/lang/String;)Lcom/microsoft/identity/client/IAuthenticationResult;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;->getCallback()Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/microsoft/identity/common/internal/result/ResultFuture;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/result/ResultFuture;-><init>()V

    .line 3
    new-instance v1, Lcom/microsoft/identity/client/PublicClientApplication$7;

    invoke-direct {v1, p0, v0}, Lcom/microsoft/identity/client/PublicClientApplication$7;-><init>(Lcom/microsoft/identity/client/PublicClientApplication;Lcom/microsoft/identity/common/internal/result/ResultFuture;)V

    invoke-virtual {p1, v1}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;->setCallback(Lcom/microsoft/identity/client/SilentAuthenticationCallback;)V

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/client/PublicClientApplication;->acquireTokenSilentAsyncInternal(Lcom/microsoft/identity/client/AcquireTokenSilentParameters;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/result/ResultFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/internal/AsyncResult;

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/client/internal/AsyncResult;->getSuccess()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/identity/client/internal/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/IAuthenticationResult;

    return-object p1

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/client/internal/AsyncResult;->getException()Lcom/microsoft/identity/client/exception/MsalException;

    move-result-object p1

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Do not provide callback for synchronous methods"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public acquireTokenSilentSyncInternal([Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/IAccount;ZLjava/lang/String;)Lcom/microsoft/identity/client/IAuthenticationResult;
    .locals 8

    const-string v0, "acquireTokenSilent"

    .line 1
    invoke-static {v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->throwOnMainThread(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/microsoft/identity/common/internal/result/ResultFuture;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/result/ResultFuture;-><init>()V

    .line 3
    new-instance v7, Lcom/microsoft/identity/client/PublicClientApplication$13;

    invoke-direct {v7, p0, v0}, Lcom/microsoft/identity/client/PublicClientApplication$13;-><init>(Lcom/microsoft/identity/client/PublicClientApplication;Lcom/microsoft/identity/common/internal/result/ResultFuture;)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/microsoft/identity/client/PublicClientApplication;->buildAcquireTokenSilentParameters([Ljava/lang/String;Lcom/microsoft/identity/client/IAccount;Ljava/lang/String;ZLcom/microsoft/identity/client/claims/ClaimsRequest;Lcom/microsoft/identity/client/SilentAuthenticationCallback;)Lcom/microsoft/identity/client/AcquireTokenSilentParameters;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1, p5}, Lcom/microsoft/identity/client/PublicClientApplication;->acquireTokenSilentAsyncInternal(Lcom/microsoft/identity/client/AcquireTokenSilentParameters;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/result/ResultFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/internal/AsyncResult;

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/client/internal/AsyncResult;->getSuccess()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/identity/client/internal/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/IAuthenticationResult;

    return-object p1

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/client/internal/AsyncResult;->getException()Lcom/microsoft/identity/client/exception/MsalException;

    move-result-object p1

    throw p1
.end method

.method public buildAcquireTokenParameters(Landroid/app/Activity;Landroidx/fragment/app/Fragment;[Ljava/lang/String;Lcom/microsoft/identity/client/IAccount;Lcom/microsoft/identity/client/Prompt;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/AuthenticationCallback;Ljava/lang/String;Lcom/microsoft/identity/client/claims/ClaimsRequest;)Lcom/microsoft/identity/client/AcquireTokenParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroidx/fragment/app/Fragment;",
            "[",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/client/IAccount;",
            "Lcom/microsoft/identity/client/Prompt;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/client/AuthenticationCallback;",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/client/claims/ClaimsRequest;",
            ")",
            "Lcom/microsoft/identity/client/AcquireTokenParameters;"
        }
    .end annotation

    const-string v0, "activity"

    .line 1
    invoke-static {p1, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopes"

    .line 2
    invoke-static {p3, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    .line 3
    invoke-static {p9, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    invoke-direct {v0}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->startAuthorizationFromActivity(Landroid/app/Activity;)Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p2}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->withFragment(Landroidx/fragment/app/Fragment;)Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p4}, Lcom/microsoft/identity/client/TokenParameters$Builder;->forAccount(Lcom/microsoft/identity/client/IAccount;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    .line 8
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/identity/client/TokenParameters$Builder;->withScopes(Ljava/util/List;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    .line 9
    invoke-virtual {p1, p5}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->withPrompt(Lcom/microsoft/identity/client/Prompt;)Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1, p6}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->withAuthorizationQueryStringParameters(Ljava/util/List;)Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    move-result-object p1

    if-nez p7, :cond_0

    const/4 p2, 0x0

    new-array p7, p2, [Ljava/lang/String;

    .line 11
    :cond_0
    invoke-static {p7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 12
    invoke-virtual {p1, p2}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->withOtherScopesToAuthorize(Ljava/util/List;)Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    move-result-object p1

    .line 13
    invoke-virtual {p1, p8}, Lcom/microsoft/identity/client/TokenParameters$Builder;->fromAuthority(Ljava/lang/String;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    .line 14
    invoke-virtual {p1, p9}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->withCallback(Lcom/microsoft/identity/client/AuthenticationCallback;)Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    move-result-object p1

    .line 15
    invoke-virtual {p1, p10}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->withLoginHint(Ljava/lang/String;)Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    move-result-object p1

    .line 16
    invoke-virtual {p1, p11}, Lcom/microsoft/identity/client/TokenParameters$Builder;->withClaims(Lcom/microsoft/identity/client/claims/ClaimsRequest;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;

    .line 17
    invoke-virtual {p1}, Lcom/microsoft/identity/client/AcquireTokenParameters$Builder;->build()Lcom/microsoft/identity/client/AcquireTokenParameters;

    move-result-object p1

    return-object p1
.end method

.method public buildAcquireTokenSilentParameters([Ljava/lang/String;Lcom/microsoft/identity/client/IAccount;Ljava/lang/String;ZLcom/microsoft/identity/client/claims/ClaimsRequest;Lcom/microsoft/identity/client/SilentAuthenticationCallback;)Lcom/microsoft/identity/client/AcquireTokenSilentParameters;
    .locals 1

    const-string v0, "account"

    .line 1
    invoke-static {p2, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    .line 2
    invoke-static {p6, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;

    invoke-direct {v0}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;-><init>()V

    .line 4
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/client/TokenParameters$Builder;->withScopes(Ljava/util/List;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;

    .line 5
    invoke-virtual {p1, p2}, Lcom/microsoft/identity/client/TokenParameters$Builder;->forAccount(Lcom/microsoft/identity/client/IAccount;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;

    .line 6
    invoke-virtual {p1, p3}, Lcom/microsoft/identity/client/TokenParameters$Builder;->fromAuthority(Ljava/lang/String;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;

    .line 7
    invoke-virtual {p1, p4}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;->forceRefresh(Z)Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p5}, Lcom/microsoft/identity/client/TokenParameters$Builder;->withClaims(Lcom/microsoft/identity/client/claims/ClaimsRequest;)Lcom/microsoft/identity/client/TokenParameters$Builder;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;

    .line 9
    invoke-virtual {p1, p6}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;->withCallback(Lcom/microsoft/identity/client/SilentAuthenticationCallback;)Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters$Builder;->build()Lcom/microsoft/identity/client/AcquireTokenSilentParameters;

    move-result-object p1

    return-object p1
.end method

.method public getCommandCallback(Lcom/microsoft/identity/client/SilentAuthenticationCallback;Lcom/microsoft/identity/client/TokenParameters;)Lcom/microsoft/identity/common/internal/controllers/CommandCallback;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/client/PublicClientApplication$9;

    invoke-direct {v0, p0, p2, p1}, Lcom/microsoft/identity/client/PublicClientApplication$9;-><init>(Lcom/microsoft/identity/client/PublicClientApplication;Lcom/microsoft/identity/client/TokenParameters;Lcom/microsoft/identity/client/SilentAuthenticationCallback;)V

    return-object v0
.end method

.method public getConfiguration()Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    return-object v0
.end method

.method public getMsaFamilyRefreshToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "identifier"

    .line 1
    invoke-static {p1, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/microsoft/identity/client/PublicClientApplication;->validateBrokerNotInUse()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mTokenShareUtility:Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->getMsaFamilyRefreshToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string v1, "token_cache_item_not_found"

    const-string v2, "Failed to retrieve FRT - see getCause() for additional Exception info"

    invoke-direct {v0, v1, v2, p1}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getOrgIdFamilyRefreshToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "identifier"

    .line 1
    invoke-static {p1, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/microsoft/identity/client/PublicClientApplication;->validateBrokerNotInUse()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mTokenShareUtility:Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->getOrgIdFamilyRefreshToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string v1, "token_cache_item_not_found"

    const-string v2, "Failed to retrieve FRT - see getCause() for additional Exception info"

    invoke-direct {v0, v1, v2, p1}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isSharedDevice()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getIsSharedDevice()Z

    move-result v0

    return v0
.end method

.method public postAuthResult(Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;Lcom/microsoft/identity/client/TokenParameters;Lcom/microsoft/identity/client/SilentAuthenticationCallback;)V
    .locals 2

    if-eqz p3, :cond_1

    .line 1
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getScope()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/microsoft/identity/client/TokenParameters;->getScopes()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/microsoft/identity/client/AuthenticationResultAdapter;->getDeclinedScopes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {p1, v0, p2}, Lcom/microsoft/identity/client/AuthenticationResultAdapter;->declinedScopeExceptionFromResult(Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;Ljava/util/List;Lcom/microsoft/identity/client/TokenParameters;)Lcom/microsoft/identity/client/exception/MsalDeclinedScopeException;

    move-result-object p1

    .line 6
    invoke-interface {p3, p1}, Lcom/microsoft/identity/client/SilentAuthenticationCallback;->onError(Lcom/microsoft/identity/client/exception/MsalException;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/microsoft/identity/client/AuthenticationResultAdapter;->adapt(Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;)Lcom/microsoft/identity/client/IAuthenticationResult;

    move-result-object p1

    .line 8
    invoke-interface {p3, p1}, Lcom/microsoft/identity/client/SilentAuthenticationCallback;->onSuccess(Lcom/microsoft/identity/client/IAuthenticationResult;)V

    :goto_0
    return-void

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "callback cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveMsaFamilyRefreshToken(Ljava/lang/String;)V
    .locals 3

    const-string v0, "refreshToken"

    .line 1
    invoke-static {p1, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/microsoft/identity/client/PublicClientApplication;->validateBrokerNotInUse()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mTokenShareUtility:Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->saveMsaFamilyRefreshToken(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string v1, "failed_to_persist_msa_credential"

    const-string v2, "Failed to save FRT - see getCause() for additional Exception info"

    invoke-direct {v0, v1, v2, p1}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public saveOrgIdFamilyRefreshToken(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SsoStateSerializerBlob"

    .line 1
    invoke-static {p1, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArgument(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/microsoft/identity/client/PublicClientApplication;->validateBrokerNotInUse()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication;->mTokenShareUtility:Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->saveOrgIdFamilyRefreshToken(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string v1, "token_sharing_deserialization_error"

    const-string v2, "Failed to save FRT - see getCause() for additional Exception info"

    invoke-direct {v0, v1, v2, p1}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public validateAcquireTokenParameters(Lcom/microsoft/identity/client/AcquireTokenParameters;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/client/AcquireTokenParameters;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/client/TokenParameters;->getScopes()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/client/AcquireTokenParameters;->getCallback()Lcom/microsoft/identity/client/AuthenticationCallback;

    move-result-object p1

    const-string v2, "activity"

    .line 4
    invoke-static {v0, v2}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArg(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopes"

    .line 5
    invoke-static {v1, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArg(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    .line 6
    invoke-static {p1, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArg(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public validateAcquireTokenSilentParameters(Lcom/microsoft/identity/client/AcquireTokenSilentParameters;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/client/TokenParameters;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/client/TokenParameters;->getAccount()Lcom/microsoft/identity/client/IAccount;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/client/TokenParameters;->getScopes()Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;->getCallback()Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    move-result-object p1

    const-string v3, "authority"

    .line 5
    invoke-static {v0, v3}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArg(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "account"

    .line 6
    invoke-static {v1, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArg(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    .line 7
    invoke-static {p1, v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArg(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "scopes"

    .line 8
    invoke-static {v2, p1}, Lcom/microsoft/identity/client/internal/MsalUtils;->validateNonNullArg(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
