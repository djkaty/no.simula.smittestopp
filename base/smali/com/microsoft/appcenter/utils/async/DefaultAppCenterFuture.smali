.class public Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/appcenter/utils/async/AppCenterFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/microsoft/appcenter/utils/async/AppCenterFuture<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public mConsumers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/microsoft/appcenter/utils/async/AppCenterConsumer<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final mLatch:Ljava/util/concurrent/CountDownLatch;

.field public mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->mResult:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;)Ljava/util/Collection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->mConsumers:Ljava/util/Collection;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->mConsumers:Ljava/util/Collection;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized complete(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->mResult:Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->mConsumers:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture$2;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture$2;-><init>(Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/microsoft/appcenter/utils/HandlerUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    :catch_0
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public isDone()Z
    .locals 4

    .line 1
    :catch_0
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->mLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0
.end method

.method public declared-synchronized thenAccept(Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/utils/async/AppCenterConsumer<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture$1;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture$1;-><init>(Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;)V

    invoke-static {v0}, Lcom/microsoft/appcenter/utils/HandlerUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->mConsumers:Ljava/util/Collection;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->mConsumers:Ljava/util/Collection;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->mConsumers:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
