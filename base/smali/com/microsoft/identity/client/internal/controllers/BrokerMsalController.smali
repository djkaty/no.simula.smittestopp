.class public Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;
.super Lcom/microsoft/identity/common/internal/controllers/BaseController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$BrokerOperationInfo;
    }
.end annotation


# static fields
.field public static final MANIFEST_PERMISSION_MANAGE_ACCOUNTS:Ljava/lang/String; = "android.permission.MANAGE_ACCOUNTS"

.field public static final TAG:Ljava/lang/String; = "BrokerMsalController"


# instance fields
.field public mBrokerResultFuture:Lcom/microsoft/identity/common/internal/broker/BrokerResultFuture;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/controllers/BaseController;-><init>()V

    return-void
.end method

.method private getBrokerAuthorizationIntent(Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;)Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$1;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$1;-><init>(Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;)V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;->invokeBrokerOperation(Lcom/microsoft/identity/common/internal/request/OperationParameters;Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$BrokerOperationInfo;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    return-object p1
.end method

.method private getStrategies()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/client/internal/controllers/BrokerBaseStrategy;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;

    invoke-direct {v1}, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;

    invoke-direct {v1}, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private invokeBrokerOperation(Lcom/microsoft/identity/common/internal/request/OperationParameters;Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$BrokerOperationInfo;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/microsoft/identity/common/internal/request/OperationParameters;",
            "U:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$BrokerOperationInfo<",
            "TT;TU;>;)TU;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$BrokerOperationInfo;->getTelemetryApiId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->putProperties(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    move-result-object v0

    .line 4
    invoke-interface {p2}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$BrokerOperationInfo;->getTelemetryApiId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->putApiId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;->getStrategies()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/identity/client/internal/controllers/BrokerBaseStrategy;

    .line 9
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-interface {p2}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$BrokerOperationInfo;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Executing with strategy: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 12
    invoke-static {v5, v6}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v4, p1}, Lcom/microsoft/identity/client/internal/controllers/BrokerBaseStrategy;->hello(Lcom/microsoft/identity/common/internal/request/OperationParameters;)V

    .line 14
    invoke-interface {p2, v4, p1}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$BrokerOperationInfo;->perform(Lcom/microsoft/identity/client/internal/controllers/BrokerBaseStrategy;Lcom/microsoft/identity/common/internal/request/OperationParameters;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Lcom/microsoft/identity/client/exception/BrokerCommunicationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/microsoft/identity/common/exception/BaseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception p1

    .line 15
    invoke-interface {p2}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$BrokerOperationInfo;->getTelemetryApiId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 16
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;-><init>()V

    .line 17
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putException(Ljava/lang/Exception;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    move-result-object v0

    .line 18
    invoke-interface {p2}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$BrokerOperationInfo;->getTelemetryApiId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putApiId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    move-result-object p2

    .line 19
    invoke-static {p2}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    .line 20
    :cond_1
    throw p1

    :catch_2
    move-exception v3

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-nez v2, :cond_5

    .line 21
    new-instance p1, Lcom/microsoft/identity/client/exception/BrokerCommunicationException;

    const-string v0, "MSAL failed to communicate to Broker."

    invoke-direct {p1, v0, v3}, Lcom/microsoft/identity/client/exception/BrokerCommunicationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    invoke-interface {p2}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$BrokerOperationInfo;->getTelemetryApiId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 23
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;-><init>()V

    .line 24
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putException(Ljava/lang/Exception;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    move-result-object v0

    .line 25
    invoke-interface {p2}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$BrokerOperationInfo;->getTelemetryApiId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putApiId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    move-result-object p2

    .line 26
    invoke-static {p2}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    .line 27
    :cond_4
    throw p1

    .line 28
    :cond_5
    invoke-interface {p2}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$BrokerOperationInfo;->getTelemetryApiId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 29
    new-instance p1, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    invoke-direct {p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;-><init>()V

    .line 30
    invoke-interface {p2}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$BrokerOperationInfo;->getTelemetryApiId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putApiId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 31
    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->isApiCallSuccessful(Ljava/lang/Boolean;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    move-result-object p1

    .line 32
    invoke-interface {p2, p1, v2}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$BrokerOperationInfo;->putValueInSuccessEvent(Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;Ljava/lang/Object;)V

    .line 33
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    :cond_6
    return-object v2
.end method

.method public static isAccountManagerPermissionsGranted(Landroid/content/Context;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "android.permission.MANAGE_ACCOUNTS"

    .line 2
    invoke-static {p0, v0}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isMicrosoftAuthServiceSupported(Landroid/content/Context;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->getIntentForAuthService(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;->TAG:Ljava/lang/String;

    const-string v2, ":isPermissionGranted"

    invoke-static {v0, v1, v2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " granted? ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private saveMsaAccountToCache(Landroid/os/Bundle;Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;)V
    .locals 10

    .line 1
    new-instance v0, Le/c/c/e;

    invoke-direct {v0}, Le/c/c/e;-><init>()V

    const-class v1, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    new-instance v2, Lcom/microsoft/identity/common/internal/util/ICacheRecordGsonAdapter;

    invoke-direct {v2}, Lcom/microsoft/identity/common/internal/util/ICacheRecordGsonAdapter;-><init>()V

    .line 2
    invoke-virtual {v0, v1, v2}, Le/c/c/e;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Le/c/c/e;

    .line 3
    invoke-virtual {v0}, Le/c/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-string v1, "broker_result_v2"

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/microsoft/identity/common/internal/broker/BrokerResult;

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;

    const-string v1, "broker_request_v2_success"

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getTenantId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "9188040d-6c67-4c5b-b112-36a304b66dad"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":saveMsaAccountToCache"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Result returned for MSA Account, saving to cache"

    invoke-static {p1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :try_start_0
    new-instance v5, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/ClientInfo;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getClientInfo()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/ClientInfo;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance p1, Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsAccount;

    new-instance v2, Lcom/microsoft/identity/common/internal/providers/oauth2/IDToken;

    .line 11
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getIdToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/microsoft/identity/common/internal/providers/oauth2/IDToken;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v2, v5}, Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsAccount;-><init>(Lcom/microsoft/identity/common/internal/providers/oauth2/IDToken;Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/ClientInfo;)V

    .line 12
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getEnvironment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAccount;->setEnvironment(Ljava/lang/String;)V

    .line 13
    new-instance v2, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;

    .line 14
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getRefreshToken()Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getScope()Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getClientId()Ljava/lang/String;

    move-result-object v7

    .line 17
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getEnvironment()Ljava/lang/String;

    move-result-object v8

    .line 18
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->getFamilyId()Ljava/lang/String;

    move-result-object v9

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;-><init>(Ljava/lang/String;Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/ClientInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2, p1, v2}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->setSingleSignOnState(Lcom/microsoft/identity/common/BaseAccount;Lcom/microsoft/identity/common/internal/providers/oauth2/RefreshToken;)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/exception/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Exception while creating Idtoken or ClientInfo, cannot save MSA account tokens"

    invoke-static {p2, v0, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->errorPII(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    new-instance p2, Lcom/microsoft/identity/common/exception/ClientException;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "invalid_jwt"

    invoke-direct {p2, v1, v0, p1}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public acquireToken(Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;)Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;
    .locals 5

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->putProperties(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    move-result-object v0

    const-string v1, "201"

    .line 3
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->putApiId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    .line 5
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/BrokerResultFuture;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerResultFuture;-><init>()V

    iput-object v0, p0, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;->mBrokerResultFuture:Lcom/microsoft/identity/common/internal/broker/BrokerResultFuture;

    .line 6
    invoke-direct {p0, p1}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;->getBrokerAuthorizationIntent(Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;)Landroid/content/Intent;

    move-result-object v0

    .line 7
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/microsoft/identity/client/internal/controllers/BrokerActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "broker_intent"

    .line 8
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 9
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/BrokerResultFuture;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerResultFuture;-><init>()V

    iput-object v0, p0, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;->mBrokerResultFuture:Lcom/microsoft/identity/common/internal/broker/BrokerResultFuture;

    .line 10
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 11
    iget-object v0, p0, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;->mBrokerResultFuture:Lcom/microsoft/identity/common/internal/broker/BrokerResultFuture;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerResultFuture;->get()Landroid/os/Bundle;

    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getTokenCache()Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    invoke-direct {p0, v0, p1}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;->saveMsaAccountToCache(Landroid/os/Bundle;Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;)V

    .line 13
    :try_start_0
    new-instance p1, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;

    invoke-direct {p1}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;-><init>()V

    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->getAcquireTokenResultFromResultBundle(Landroid/os/Bundle;)Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;

    move-result-object p1
    :try_end_0
    .catch Lcom/microsoft/identity/common/exception/BaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;-><init>()V

    .line 15
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putResult(Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    move-result-object v0

    .line 16
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putApiId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 18
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;-><init>()V

    .line 19
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putException(Ljava/lang/Exception;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    move-result-object v0

    .line 20
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putApiId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    .line 22
    throw p1
.end method

.method public acquireTokenSilent(Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;)Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$2;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$2;-><init>(Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;)V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;->invokeBrokerOperation(Lcom/microsoft/identity/common/internal/request/OperationParameters;Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$BrokerOperationInfo;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;

    return-object p1
.end method

.method public completeAcquireToken(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;-><init>()V

    const-string v1, "202"

    .line 2
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->putApiId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    move-result-object v0

    .line 3
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "Microsoft.MSAL.result_code"

    invoke-virtual {v0, v2, p2}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    move-result-object p2

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Microsoft.MSAL.request_code"

    invoke-virtual {p2, v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiStartEvent;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    .line 6
    iget-object p1, p0, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;->mBrokerResultFuture:Lcom/microsoft/identity/common/internal/broker/BrokerResultFuture;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/identity/common/internal/broker/BrokerResultFuture;->setResultBundle(Landroid/os/Bundle;)V

    .line 7
    new-instance p1, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    invoke-direct {p1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;-><init>()V

    .line 8
    invoke-virtual {p1, v1}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->putApiId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    return-void
.end method

.method public getAccounts(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Ljava/util/List;
    .locals 1
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
    new-instance v0, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$3;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$3;-><init>(Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;)V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;->invokeBrokerOperation(Lcom/microsoft/identity/common/internal/request/OperationParameters;Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$BrokerOperationInfo;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getCurrentAccount(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Ljava/util/List;
    .locals 2
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
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getIsSharedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":getCurrentAccount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not a shared device, invoke getAccounts() instead of getCurrentAccount()"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;->getAccounts(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$6;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$6;-><init>(Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;)V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;->invokeBrokerOperation(Lcom/microsoft/identity/common/internal/request/OperationParameters;Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$BrokerOperationInfo;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getDeviceMode(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$5;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$5;-><init>(Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;)V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;->invokeBrokerOperation(Lcom/microsoft/identity/common/internal/request/OperationParameters;Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$BrokerOperationInfo;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public removeAccount(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$4;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$4;-><init>(Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;)V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;->invokeBrokerOperation(Lcom/microsoft/identity/common/internal/request/OperationParameters;Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$BrokerOperationInfo;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public removeCurrentAccount(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getIsSharedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":removeCurrentAccount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not a shared device, invoke removeAccount() instead of removeCurrentAccount()"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;->removeAccount(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    new-instance v0, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$7;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$7;-><init>(Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;)V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;->invokeBrokerOperation(Lcom/microsoft/identity/common/internal/request/OperationParameters;Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$BrokerOperationInfo;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
