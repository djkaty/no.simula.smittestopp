.class public Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;
.super Ld/d/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/client/MsalChromeCustomTabManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MsalCustomTabsServiceConnection"
.end annotation


# instance fields
.field public mCustomTabsClient:Ld/d/a/b;

.field public mCustomTabsServiceIsBound:Z

.field public mCustomTabsSession:Ld/d/a/e;

.field public final mLatchWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ld/d/a/d;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;->mLatchWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;->unbindCustomTabsService()V

    return-void
.end method

.method private unbindCustomTabsService()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;->mCustomTabsClient:Ld/d/a/b;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;->mCustomTabsServiceIsBound:Z

    return-void
.end method


# virtual methods
.method public getCustomTabsServiceIsBound()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;->mCustomTabsServiceIsBound:Z

    return v0
.end method

.method public getCustomTabsSession()Ld/d/a/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;->mCustomTabsSession:Ld/d/a/e;

    return-object v0
.end method

.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Ld/d/a/b;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;->mLatchWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;->mCustomTabsServiceIsBound:Z

    .line 3
    iput-object p2, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;->mCustomTabsClient:Ld/d/a/b;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 4
    :try_start_0
    iget-object p2, p2, Ld/d/a/b;->a:Lc/a/a/b;

    const-wide/16 v1, 0x0

    invoke-interface {p2, v1, v2}, Lc/a/a/b;->a(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 5
    :goto_0
    iget-object p2, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;->mCustomTabsClient:Ld/d/a/b;

    invoke-virtual {p2, v0}, Ld/d/a/b;->a(Ld/d/a/a;)Ld/d/a/e;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;->mCustomTabsSession:Ld/d/a/e;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void

    .line 7
    :cond_1
    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;->unbindCustomTabsService()V

    return-void
.end method
