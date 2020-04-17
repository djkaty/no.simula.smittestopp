.class public Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CUSTOM_TABS_MAX_CONNECTION_TIMEOUT:J = 0x1L

.field public static final TAG:Ljava/lang/String; = "CustomTabsManager"


# instance fields
.field public final mClientLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final mCustomTabsClient:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ld/d/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public mCustomTabsIntent:Ld/d/a/c;

.field public mCustomTabsServiceConnection:Ld/d/a/d;

.field public mCustomTabsServiceIsBound:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager$1;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager$1;-><init>(Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;)V

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mCustomTabsServiceConnection:Ld/d/a/d;

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mCustomTabsClient:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mClientLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$102(Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mCustomTabsServiceIsBound:Z

    return p1
.end method

.method public static synthetic access$200(Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mCustomTabsClient:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mClientLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private createSession(Ld/d/a/a;)Ld/d/a/e;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->getClient()Ld/d/a/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed to create custom tabs session with null CustomTabClient."

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Ld/d/a/b;->a(Ld/d/a/a;)Ld/d/a/e;

    move-result-object p1

    if-nez p1, :cond_1

    .line 4
    sget-object v0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed to create custom tabs session through custom tabs client."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method


# virtual methods
.method public declared-synchronized bind(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mCustomTabsServiceConnection:Ld/d/a/d;

    invoke-static {v0, p1, v1}, Ld/d/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ld/d/a/d;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    sget-object v0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->TAG:Ljava/lang/String;

    const-string v1, "Unable to bind custom tabs service"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mClientLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->createSession(Ld/d/a/a;)Ld/d/a/e;

    move-result-object v1

    .line 6
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 7
    iget-object v3, v1, Ld/d/a/e;->b:Landroid/content/ComponentName;

    .line 8
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    :cond_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    if-nez v1, :cond_3

    move-object v1, v0

    goto :goto_0

    .line 10
    :cond_3
    iget-object v1, v1, Ld/d/a/e;->a:Lc/a/a/a;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    const-string v4, "android.support.customtabs.extra.SESSION"

    .line 11
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 12
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "android.support.customtabs.extra.TITLE_VISIBILITY"

    const/4 v3, 0x1

    .line 13
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    .line 14
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 15
    new-instance v1, Ld/d/a/c;

    invoke-direct {v1, v2, v0}, Ld/d/a/c;-><init>(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 16
    iput-object v1, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mCustomTabsIntent:Ld/d/a/c;

    .line 17
    iget-object v0, v1, Ld/d/a/c;->a:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getClient()Ld/d/a/b;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mClientLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    sget-object v0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->TAG:Ljava/lang/String;

    const-string v1, "Interrupted while waiting for browser connection"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mClientLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mCustomTabsClient:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/d/a/b;

    return-object v0
.end method

.method public getCustomTabsIntent()Ld/d/a/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mCustomTabsIntent:Ld/d/a/c;

    return-object v0
.end method

.method public declared-synchronized unbind()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mCustomTabsServiceIsBound:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mCustomTabsServiceConnection:Ld/d/a/d;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mCustomTabsServiceIsBound:Z

    .line 4
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->mCustomTabsClient:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5
    sget-object v0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->TAG:Ljava/lang/String;

    const-string v1, "CustomTabsService is unbound."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
