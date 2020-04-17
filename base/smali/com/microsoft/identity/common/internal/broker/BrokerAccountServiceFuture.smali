.class public Lcom/microsoft/identity/common/internal/broker/BrokerAccountServiceFuture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "Lcom/microsoft/aad/adal/IBrokerAccountService;",
        ">;"
    }
.end annotation


# instance fields
.field public mBrokerAccountService:Lcom/microsoft/aad/adal/IBrokerAccountService;

.field public final mCountDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerAccountServiceFuture;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public get()Lcom/microsoft/aad/adal/IBrokerAccountService;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerAccountServiceFuture;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 4
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerAccountServiceFuture;->mBrokerAccountService:Lcom/microsoft/aad/adal/IBrokerAccountService;

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Lcom/microsoft/aad/adal/IBrokerAccountService;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerAccountServiceFuture;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerAccountServiceFuture;->mBrokerAccountService:Lcom/microsoft/aad/adal/IBrokerAccountService;

    return-object p1

    .line 7
    :cond_0
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/broker/BrokerAccountServiceFuture;->get()Lcom/microsoft/aad/adal/IBrokerAccountService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/broker/BrokerAccountServiceFuture;->get(JLjava/util/concurrent/TimeUnit;)Lcom/microsoft/aad/adal/IBrokerAccountService;

    move-result-object p1

    return-object p1
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerAccountServiceFuture;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBrokerAccountService(Lcom/microsoft/aad/adal/IBrokerAccountService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerAccountServiceFuture;->mBrokerAccountService:Lcom/microsoft/aad/adal/IBrokerAccountService;

    .line 2
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerAccountServiceFuture;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
