.class public Lcom/microsoft/identity/client/MsalChromeCustomTabManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;
    }
.end annotation


# static fields
.field public static final CUSTOM_TABS_MAX_CONNECTION_TIMEOUT:J = 0x1L

.field public static final TAG:Ljava/lang/String; = "MsalChromeCustomTabManager"


# instance fields
.field public mChromePackageWithCustomTabSupport:Ljava/lang/String;

.field public mCustomTabsIntent:Ld/d/a/c;

.field public mCustomTabsServiceConnection:Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;

.field public mParentActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mParentActivity:Landroid/app/Activity;

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/identity/client/internal/MsalUtils;->getChromePackageWithCustomTabSupport(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mChromePackageWithCustomTabSupport:Ljava/lang/String;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Activity parameter cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private waitForServiceConnectionToEstablish(Ljava/util/concurrent/CountDownLatch;)Z
    .locals 4

    const-wide/16 v0, 0x1

    const/4 v2, 0x0

    .line 1
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->TAG:Ljava/lang/String;

    const-string v0, "Connection to CustomTabs timed out. Skipping warmup."

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed to connect to CustomTabs. Skipping warmup."

    invoke-static {v0, v1, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v2
.end method


# virtual methods
.method public declared-synchronized bindCustomTabsService()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mChromePackageWithCustomTabSupport:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3
    new-instance v2, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;

    invoke-direct {v2, v0}, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    iput-object v2, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mCustomTabsServiceConnection:Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;

    .line 4
    iget-object v3, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mParentActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mChromePackageWithCustomTabSupport:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Ld/d/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ld/d/a/d;)Z

    .line 5
    invoke-direct {p0, v0}, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->waitForServiceConnectionToEstablish(Ljava/util/concurrent/CountDownLatch;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Ld/d/a/c$a;

    iget-object v2, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mCustomTabsServiceConnection:Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;

    .line 7
    invoke-virtual {v2}, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;->getCustomTabsSession()Ld/d/a/e;

    move-result-object v2

    invoke-direct {v0, v2}, Ld/d/a/c$a;-><init>(Ld/d/a/e;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ld/d/a/c$a;

    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, v2}, Ld/d/a/c$a;-><init>(Ld/d/a/e;)V

    .line 9
    :goto_0
    iget-object v2, v0, Ld/d/a/c$a;->a:Landroid/content/Intent;

    const-string v3, "android.support.customtabs.extra.TITLE_VISIBILITY"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10
    invoke-virtual {v0}, Ld/d/a/c$a;->a()Ld/d/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mCustomTabsIntent:Ld/d/a/c;

    .line 11
    iget-object v0, v0, Ld/d/a/c;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mChromePackageWithCustomTabSupport:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public launchChromeTabOrBrowserForUrl(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mChromePackageWithCustomTabSupport:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mCustomTabsIntent:Ld/d/a/c;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->TAG:Ljava/lang/String;

    const-string v1, "ChromeCustomTab support is available, launching chrome tab."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mCustomTabsIntent:Ld/d/a/c;

    iget-object v1, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mParentActivity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 4
    iget-object v2, v0, Ld/d/a/c;->a:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5
    iget-object p1, v0, Ld/d/a/c;->a:Landroid/content/Intent;

    iget-object v0, v0, Ld/d/a/c;->b:Landroid/os/Bundle;

    invoke-static {v1, p1, v0}, Ld/i/b/a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->TAG:Ljava/lang/String;

    const-string v1, "Chrome tab support is not available, launching chrome browser."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 8
    iget-object p1, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/identity/client/internal/MsalUtils;->getChromePackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.category.BROWSABLE"

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    iget-object p1, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized unbindCustomTabsService()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mCustomTabsServiceConnection:Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mCustomTabsServiceConnection:Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;

    invoke-virtual {v0}, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;->getCustomTabsServiceIsBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mParentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mCustomTabsServiceConnection:Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3
    iget-object v0, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mCustomTabsServiceConnection:Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;

    invoke-static {v0}, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;->access$000(Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public verifyChromeTabOrBrowser()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mChromePackageWithCustomTabSupport:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->TAG:Ljava/lang/String;

    const-string v1, "Custom tab is not supported by Chrome."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/client/internal/MsalUtils;->getChromePackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 4
    :cond_1
    sget-object v0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager;->TAG:Ljava/lang/String;

    const-string v1, "Chrome is not installed."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string v2, "chrome_not_installed"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method
