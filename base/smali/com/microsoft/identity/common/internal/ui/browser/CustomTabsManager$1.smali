.class public Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager$1;
.super Ld/d/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager$1;->this$0:Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;

    invoke-direct {p0}, Ld/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Ld/d/a/b;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CustomTabsService is connected"

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    :try_start_0
    iget-object p1, p2, Ld/d/a/b;->a:Lc/a/a/b;

    const-wide/16 v0, 0x0

    invoke-interface {p1, v0, v1}, Lc/a/a/b;->a(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager$1;->this$0:Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->access$102(Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;Z)Z

    .line 4
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager$1;->this$0:Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->access$200(Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager$1;->this$0:Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->access$300(Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CustomTabsService is disconnected"

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager$1;->this$0:Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->access$102(Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;Z)Z

    .line 3
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager$1;->this$0:Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->access$200(Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager$1;->this$0:Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;->access$300(Lcom/microsoft/identity/common/internal/ui/browser/CustomTabsManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
