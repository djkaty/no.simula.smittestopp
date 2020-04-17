.class public Lcom/microsoft/identity/common/internal/ui/AuthorizationStrategyFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<GenericAuthorizationStrategy:",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStrategy;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AuthorizationStrategyFactory"

.field public static sInstance:Lcom/microsoft/identity/common/internal/ui/AuthorizationStrategyFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/microsoft/identity/common/internal/ui/AuthorizationStrategyFactory;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/ui/AuthorizationStrategyFactory;->sInstance:Lcom/microsoft/identity/common/internal/ui/AuthorizationStrategyFactory;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/AuthorizationStrategyFactory;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/ui/AuthorizationStrategyFactory;-><init>()V

    sput-object v0, Lcom/microsoft/identity/common/internal/ui/AuthorizationStrategyFactory;->sInstance:Lcom/microsoft/identity/common/internal/ui/AuthorizationStrategyFactory;

    .line 3
    :cond_0
    sget-object v0, Lcom/microsoft/identity/common/internal/ui/AuthorizationStrategyFactory;->sInstance:Lcom/microsoft/identity/common/internal/ui/AuthorizationStrategyFactory;

    return-object v0
.end method

.method private validAuthorizationAgent(Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;Landroid/content/Context;)Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;->WEBVIEW:Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    if-eq p1, v0, :cond_0

    .line 2
    invoke-static {p2}, Lcom/microsoft/identity/common/internal/ui/browser/BrowserSelector;->getAllBrowsers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    sget-object p1, Lcom/microsoft/identity/common/internal/ui/AuthorizationStrategyFactory;->TAG:Ljava/lang/String;

    const-string p2, "Unable to use browser to do the authorization because No available browser installed on the device. Use embedded webView instead."

    invoke-static {p1, p2}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object p1, Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;->WEBVIEW:Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    :cond_0
    return-object p1
.end method


# virtual methods
.method public getAuthorizationStrategy(Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStrategy;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;",
            ")TGenericAuthorizationStrategy;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getAuthorizationAgent()Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/common/internal/ui/AuthorizationStrategyFactory;->validAuthorizationAgent(Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;Landroid/content/Context;)Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    move-result-object v0

    .line 4
    instance-of v1, p1, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;

    .line 5
    sget-object v2, Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;->WEBVIEW:Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    if-ne v0, v2, :cond_0

    .line 6
    sget-object v0, Lcom/microsoft/identity/common/internal/ui/AuthorizationStrategyFactory;->TAG:Ljava/lang/String;

    const-string v1, "Use webView for authorization."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/EmbeddedWebViewAuthorizationStrategy;

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 10
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/microsoft/identity/common/internal/ui/webview/EmbeddedWebViewAuthorizationStrategy;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    return-object v0

    .line 11
    :cond_0
    sget-object v2, Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;->DEFAULT:Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    const-string v3, "Use browser for authorization."

    if-ne v0, v2, :cond_2

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getBrowserSafeList()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/microsoft/identity/common/internal/ui/browser/BrowserSelector;->select(Landroid/content/Context;Ljava/util/List;)Lcom/microsoft/identity/common/internal/ui/browser/Browser;
    :try_end_0
    .catch Lcom/microsoft/identity/common/exception/ClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    sget-object v2, Lcom/microsoft/identity/common/internal/ui/AuthorizationStrategyFactory;->TAG:Ljava/lang/String;

    const-string v4, "No supported browser available found. Fallback to the webView authorization agent."

    invoke-static {v2, v4}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Lcom/microsoft/identity/common/exception/BaseException;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "No available browser installed on the device."

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/EmbeddedWebViewAuthorizationStrategy;

    .line 16
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 18
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/microsoft/identity/common/internal/ui/webview/EmbeddedWebViewAuthorizationStrategy;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    return-object v0

    .line 19
    :cond_1
    :goto_0
    sget-object v0, Lcom/microsoft/identity/common/internal/ui/AuthorizationStrategyFactory;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;

    .line 21
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 22
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 23
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/Fragment;Z)V

    .line 24
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getBrowserSafeList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->setBrowserSafeList(Ljava/util/List;)V

    return-object v0

    .line 25
    :cond_2
    sget-object v0, Lcom/microsoft/identity/common/internal/ui/AuthorizationStrategyFactory;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;

    .line 27
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 28
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 29
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/Fragment;Z)V

    .line 30
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getBrowserSafeList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->setBrowserSafeList(Ljava/util/List;)V

    return-object v0
.end method
