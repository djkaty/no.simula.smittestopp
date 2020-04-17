.class public Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;
.super Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<GenericOAuth2Strategy:",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;",
        "GenericAuthorizationRequest:",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;",
        ">",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStrategy<",
        "TGenericOAuth2Strategy;TGenericAuthorizationRequest;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BrowserAuthorizationStrategy"


# instance fields
.field public mAuthorizationRequest:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TGenericAuthorizationRequest;"
        }
    .end annotation
.end field

.field public mAuthorizationResultFuture:Lcom/microsoft/identity/common/internal/result/ResultFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/internal/result/ResultFuture<",
            "Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResult;",
            ">;"
        }
    .end annotation
.end field

.field public mBrowserSafeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/ui/browser/BrowserDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public mCustomTabManager:Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;

.field public mDisposed:Z

.field public mIsRequestFromBroker:Z

.field public mOAuth2Strategy:Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TGenericOAuth2Strategy;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/Fragment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStrategy;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 2
    iput-boolean p4, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mIsRequestFromBroker:Z

    return-void
.end method

.method private checkNotDisposed()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mDisposed:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service has been disposed and rendered inoperable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public completeAuthorization(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->dispose()V

    .line 2
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mOAuth2Strategy:Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;->getAuthorizationResultFactory()Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResultFactory;

    move-result-object p1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mAuthorizationRequest:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;

    invoke-virtual {p1, p2, p3, v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResultFactory;->createAuthorizationResult(ILandroid/content/Intent;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResult;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mAuthorizationResultFuture:Lcom/microsoft/identity/common/internal/result/ResultFuture;

    invoke-virtual {p2, p1}, Lcom/microsoft/identity/common/internal/result/ResultFuture;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object p2, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown request code "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->warnPII(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mDisposed:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mCustomTabManager:Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->unbind()V

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mDisposed:Z

    return-void
.end method

.method public requestAuthorization(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;)Ljava/util/concurrent/Future;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TGenericAuthorizationRequest;TGenericOAuth2Strategy;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationResult;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->checkNotDisposed()V

    .line 2
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mOAuth2Strategy:Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;

    .line 3
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mAuthorizationRequest:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;

    .line 4
    new-instance p2, Lcom/microsoft/identity/common/internal/result/ResultFuture;

    invoke-direct {p2}, Lcom/microsoft/identity/common/internal/result/ResultFuture;-><init>()V

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mAuthorizationResultFuture:Lcom/microsoft/identity/common/internal/result/ResultFuture;

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStrategy;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mBrowserSafeList:Ljava/util/List;

    invoke-static {p2, v0}, Lcom/microsoft/identity/common/internal/ui/browser/BrowserSelector;->select(Landroid/content/Context;Ljava/util/List;)Lcom/microsoft/identity/common/internal/ui/browser/Browser;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/ui/browser/Browser;->isCustomTabsServiceSupported()Z

    move-result v0

    const-string v1, ":requestAuthorization"

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomTabsService is supported."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStrategy;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mCustomTabManager:Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;

    .line 9
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/ui/browser/Browser;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->bind(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mCustomTabManager:Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->getCustomTabsIntent()Ld/d/a/c;

    move-result-object v0

    iget-object v0, v0, Ld/d/a/c;->a:Landroid/content/Intent;

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomTabsService is NOT supported"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v3, v0

    .line 13
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/ui/browser/Browser;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;->getAuthorizationRequestAsHttpRequest()Landroid/net/Uri;

    move-result-object p1

    .line 15
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 16
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStrategy;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 17
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mAuthorizationRequest:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;

    .line 18
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;->getRedirectUri()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mAuthorizationRequest:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;

    .line 19
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;->getRequestHeaders()Ljava/util/HashMap;

    move-result-object v6

    sget-object v7, Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;->BROWSER:Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 20
    invoke-static/range {v2 .. v9}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;->createStartIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;ZZ)Landroid/content/Intent;

    move-result-object p1

    .line 21
    iget-boolean p2, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mIsRequestFromBroker:Z

    if-eqz p2, :cond_1

    const p2, 0x10008000

    .line 22
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    const/high16 p2, 0x10000000

    .line 23
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 24
    :goto_1
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStrategy;->launchIntent(Landroid/content/Intent;)V

    .line 25
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mAuthorizationResultFuture:Lcom/microsoft/identity/common/internal/result/ResultFuture;

    return-object p1
.end method

.method public setBrowserSafeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/ui/browser/BrowserDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserAuthorizationStrategy;->mBrowserSafeList:Ljava/util/List;

    return-void
.end method
