.class public final Lcom/microsoft/azure/storage/OperationContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final defaultLoggerName:Ljava/lang/String; = "ROOT"

.field public static enableLoggingByDefault:Z = false

.field public static globalErrorReceivingResponseEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/azure/storage/StorageEventMultiCaster<",
            "Lcom/microsoft/azure/storage/ErrorReceivingResponseEvent;",
            "Lcom/microsoft/azure/storage/StorageEvent<",
            "Lcom/microsoft/azure/storage/ErrorReceivingResponseEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field public static globalRequestCompletedEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/azure/storage/StorageEventMultiCaster<",
            "Lcom/microsoft/azure/storage/RequestCompletedEvent;",
            "Lcom/microsoft/azure/storage/StorageEvent<",
            "Lcom/microsoft/azure/storage/RequestCompletedEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field public static globalResponseReceivedEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/azure/storage/StorageEventMultiCaster<",
            "Lcom/microsoft/azure/storage/ResponseReceivedEvent;",
            "Lcom/microsoft/azure/storage/StorageEvent<",
            "Lcom/microsoft/azure/storage/ResponseReceivedEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field public static globalRetryingEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/azure/storage/StorageEventMultiCaster<",
            "Lcom/microsoft/azure/storage/RetryingEvent;",
            "Lcom/microsoft/azure/storage/StorageEvent<",
            "Lcom/microsoft/azure/storage/RetryingEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field public static globalSendingRequestEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/azure/storage/StorageEventMultiCaster<",
            "Lcom/microsoft/azure/storage/SendingRequestEvent;",
            "Lcom/microsoft/azure/storage/StorageEvent<",
            "Lcom/microsoft/azure/storage/SendingRequestEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field public static proxyDefault:Ljava/net/Proxy;


# instance fields
.field public clientRequestID:Ljava/lang/String;

.field public clientTimeInMs:J

.field public enableLogging:Ljava/lang/Boolean;

.field public errorReceivingResponseEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/azure/storage/StorageEventMultiCaster<",
            "Lcom/microsoft/azure/storage/ErrorReceivingResponseEvent;",
            "Lcom/microsoft/azure/storage/StorageEvent<",
            "Lcom/microsoft/azure/storage/ErrorReceivingResponseEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field public logger:Lk/f/b;

.field public proxy:Ljava/net/Proxy;

.field public requestCompletedEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/azure/storage/StorageEventMultiCaster<",
            "Lcom/microsoft/azure/storage/RequestCompletedEvent;",
            "Lcom/microsoft/azure/storage/StorageEvent<",
            "Lcom/microsoft/azure/storage/RequestCompletedEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field public final requestResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/azure/storage/RequestResult;",
            ">;"
        }
    .end annotation
.end field

.field public responseReceivedEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/azure/storage/StorageEventMultiCaster<",
            "Lcom/microsoft/azure/storage/ResponseReceivedEvent;",
            "Lcom/microsoft/azure/storage/StorageEvent<",
            "Lcom/microsoft/azure/storage/ResponseReceivedEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field public retryingEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/azure/storage/StorageEventMultiCaster<",
            "Lcom/microsoft/azure/storage/RetryingEvent;",
            "Lcom/microsoft/azure/storage/StorageEvent<",
            "Lcom/microsoft/azure/storage/RetryingEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field public sendingRequestEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/azure/storage/StorageEventMultiCaster<",
            "Lcom/microsoft/azure/storage/SendingRequestEvent;",
            "Lcom/microsoft/azure/storage/StorageEvent<",
            "Lcom/microsoft/azure/storage/SendingRequestEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field public userHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/StorageEventMultiCaster;-><init>()V

    sput-object v0, Lcom/microsoft/azure/storage/OperationContext;->globalSendingRequestEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/StorageEventMultiCaster;-><init>()V

    sput-object v0, Lcom/microsoft/azure/storage/OperationContext;->globalResponseReceivedEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/StorageEventMultiCaster;-><init>()V

    sput-object v0, Lcom/microsoft/azure/storage/OperationContext;->globalErrorReceivingResponseEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    .line 4
    new-instance v0, Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/StorageEventMultiCaster;-><init>()V

    sput-object v0, Lcom/microsoft/azure/storage/OperationContext;->globalRequestCompletedEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    .line 5
    new-instance v0, Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/StorageEventMultiCaster;-><init>()V

    sput-object v0, Lcom/microsoft/azure/storage/OperationContext;->globalRetryingEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/StorageEventMultiCaster;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/OperationContext;->sendingRequestEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/StorageEventMultiCaster;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/OperationContext;->responseReceivedEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    .line 4
    new-instance v0, Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/StorageEventMultiCaster;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/OperationContext;->errorReceivingResponseEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    .line 5
    new-instance v0, Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/StorageEventMultiCaster;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/OperationContext;->requestCompletedEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    .line 6
    new-instance v0, Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/StorageEventMultiCaster;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/OperationContext;->retryingEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    .line 7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/OperationContext;->clientRequestID:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/OperationContext;->requestResults:Ljava/util/ArrayList;

    return-void
.end method

.method public static getDefaultProxy()Ljava/net/Proxy;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/OperationContext;->proxyDefault:Ljava/net/Proxy;

    return-object v0
.end method

.method public static getGlobalErrorReceivingResponseEventHandler()Lcom/microsoft/azure/storage/StorageEventMultiCaster;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/azure/storage/StorageEventMultiCaster<",
            "Lcom/microsoft/azure/storage/ErrorReceivingResponseEvent;",
            "Lcom/microsoft/azure/storage/StorageEvent<",
            "Lcom/microsoft/azure/storage/ErrorReceivingResponseEvent;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/OperationContext;->globalErrorReceivingResponseEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    return-object v0
.end method

.method public static getGlobalRequestCompletedEventHandler()Lcom/microsoft/azure/storage/StorageEventMultiCaster;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/azure/storage/StorageEventMultiCaster<",
            "Lcom/microsoft/azure/storage/RequestCompletedEvent;",
            "Lcom/microsoft/azure/storage/StorageEvent<",
            "Lcom/microsoft/azure/storage/RequestCompletedEvent;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/OperationContext;->globalRequestCompletedEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    return-object v0
.end method

.method public static getGlobalResponseReceivedEventHandler()Lcom/microsoft/azure/storage/StorageEventMultiCaster;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/azure/storage/StorageEventMultiCaster<",
            "Lcom/microsoft/azure/storage/ResponseReceivedEvent;",
            "Lcom/microsoft/azure/storage/StorageEvent<",
            "Lcom/microsoft/azure/storage/ResponseReceivedEvent;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/OperationContext;->globalResponseReceivedEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    return-object v0
.end method

.method public static getGlobalRetryingEventHandler()Lcom/microsoft/azure/storage/StorageEventMultiCaster;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/azure/storage/StorageEventMultiCaster<",
            "Lcom/microsoft/azure/storage/RetryingEvent;",
            "Lcom/microsoft/azure/storage/StorageEvent<",
            "Lcom/microsoft/azure/storage/RetryingEvent;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/OperationContext;->globalRetryingEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    return-object v0
.end method

.method public static getGlobalSendingRequestEventHandler()Lcom/microsoft/azure/storage/StorageEventMultiCaster;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/azure/storage/StorageEventMultiCaster<",
            "Lcom/microsoft/azure/storage/SendingRequestEvent;",
            "Lcom/microsoft/azure/storage/StorageEvent<",
            "Lcom/microsoft/azure/storage/SendingRequestEvent;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/OperationContext;->globalSendingRequestEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    return-object v0
.end method

.method public static isLoggingEnabledByDefault()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/microsoft/azure/storage/OperationContext;->enableLoggingByDefault:Z

    return v0
.end method

.method private declared-synchronized setDefaultLoggerSynchronized()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/OperationContext;->logger:Lk/f/b;

    if-nez v0, :cond_0

    const-string v0, "ROOT"

    .line 2
    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/String;)Lk/f/b;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/OperationContext;->logger:Lk/f/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static setDefaultProxy(Ljava/net/Proxy;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/microsoft/azure/storage/OperationContext;->proxyDefault:Ljava/net/Proxy;

    return-void
.end method

.method public static setGlobalErrorReceivingResponseEventHandler(Lcom/microsoft/azure/storage/StorageEventMultiCaster;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/StorageEventMultiCaster<",
            "Lcom/microsoft/azure/storage/ErrorReceivingResponseEvent;",
            "Lcom/microsoft/azure/storage/StorageEvent<",
            "Lcom/microsoft/azure/storage/ErrorReceivingResponseEvent;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    sput-object p0, Lcom/microsoft/azure/storage/OperationContext;->globalErrorReceivingResponseEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    return-void
.end method

.method public static setGlobalRequestCompletedEventHandler(Lcom/microsoft/azure/storage/StorageEventMultiCaster;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/StorageEventMultiCaster<",
            "Lcom/microsoft/azure/storage/RequestCompletedEvent;",
            "Lcom/microsoft/azure/storage/StorageEvent<",
            "Lcom/microsoft/azure/storage/RequestCompletedEvent;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    sput-object p0, Lcom/microsoft/azure/storage/OperationContext;->globalRequestCompletedEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    return-void
.end method

.method public static setGlobalResponseReceivedEventHandler(Lcom/microsoft/azure/storage/StorageEventMultiCaster;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/StorageEventMultiCaster<",
            "Lcom/microsoft/azure/storage/ResponseReceivedEvent;",
            "Lcom/microsoft/azure/storage/StorageEvent<",
            "Lcom/microsoft/azure/storage/ResponseReceivedEvent;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    sput-object p0, Lcom/microsoft/azure/storage/OperationContext;->globalResponseReceivedEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    return-void
.end method

.method public static setGlobalRetryingEventHandler(Lcom/microsoft/azure/storage/StorageEventMultiCaster;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/StorageEventMultiCaster<",
            "Lcom/microsoft/azure/storage/RetryingEvent;",
            "Lcom/microsoft/azure/storage/StorageEvent<",
            "Lcom/microsoft/azure/storage/RetryingEvent;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    sput-object p0, Lcom/microsoft/azure/storage/OperationContext;->globalRetryingEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    return-void
.end method

.method public static setGlobalSendingRequestEventHandler(Lcom/microsoft/azure/storage/StorageEventMultiCaster;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/StorageEventMultiCaster<",
            "Lcom/microsoft/azure/storage/SendingRequestEvent;",
            "Lcom/microsoft/azure/storage/StorageEvent<",
            "Lcom/microsoft/azure/storage/SendingRequestEvent;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    sput-object p0, Lcom/microsoft/azure/storage/OperationContext;->globalSendingRequestEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    return-void
.end method

.method public static setLoggingEnabledByDefault(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/microsoft/azure/storage/OperationContext;->enableLoggingByDefault:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized appendRequestResult(Lcom/microsoft/azure/storage/RequestResult;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/OperationContext;->requestResults:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getClientRequestID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/OperationContext;->clientRequestID:Ljava/lang/String;

    return-object v0
.end method

.method public getClientTimeInMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/storage/OperationContext;->clientTimeInMs:J

    return-wide v0
.end method

.method public getErrorReceivingResponseEventHandler()Lcom/microsoft/azure/storage/StorageEventMultiCaster;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/azure/storage/StorageEventMultiCaster<",
            "Lcom/microsoft/azure/storage/ErrorReceivingResponseEvent;",
            "Lcom/microsoft/azure/storage/StorageEvent<",
            "Lcom/microsoft/azure/storage/ErrorReceivingResponseEvent;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/OperationContext;->errorReceivingResponseEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    return-object v0
.end method

.method public declared-synchronized getLastResult()Lcom/microsoft/azure/storage/RequestResult;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/OperationContext;->requestResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/azure/storage/OperationContext;->requestResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/OperationContext;->requestResults:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/microsoft/azure/storage/OperationContext;->requestResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/storage/RequestResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLogger()Lk/f/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/OperationContext;->logger:Lk/f/b;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/microsoft/azure/storage/OperationContext;->setDefaultLoggerSynchronized()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/OperationContext;->logger:Lk/f/b;

    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/OperationContext;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getRequestCompletedEventHandler()Lcom/microsoft/azure/storage/StorageEventMultiCaster;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/azure/storage/StorageEventMultiCaster<",
            "Lcom/microsoft/azure/storage/RequestCompletedEvent;",
            "Lcom/microsoft/azure/storage/StorageEvent<",
            "Lcom/microsoft/azure/storage/RequestCompletedEvent;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/OperationContext;->requestCompletedEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    return-object v0
.end method

.method public getRequestResults()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/azure/storage/RequestResult;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/OperationContext;->requestResults:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getResponseReceivedEventHandler()Lcom/microsoft/azure/storage/StorageEventMultiCaster;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/azure/storage/StorageEventMultiCaster<",
            "Lcom/microsoft/azure/storage/ResponseReceivedEvent;",
            "Lcom/microsoft/azure/storage/StorageEvent<",
            "Lcom/microsoft/azure/storage/ResponseReceivedEvent;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/OperationContext;->responseReceivedEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    return-object v0
.end method

.method public getRetryingEventHandler()Lcom/microsoft/azure/storage/StorageEventMultiCaster;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/azure/storage/StorageEventMultiCaster<",
            "Lcom/microsoft/azure/storage/RetryingEvent;",
            "Lcom/microsoft/azure/storage/StorageEvent<",
            "Lcom/microsoft/azure/storage/RetryingEvent;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/OperationContext;->retryingEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    return-object v0
.end method

.method public getSendingRequestEventHandler()Lcom/microsoft/azure/storage/StorageEventMultiCaster;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/azure/storage/StorageEventMultiCaster<",
            "Lcom/microsoft/azure/storage/SendingRequestEvent;",
            "Lcom/microsoft/azure/storage/StorageEvent<",
            "Lcom/microsoft/azure/storage/SendingRequestEvent;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/OperationContext;->sendingRequestEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    return-object v0
.end method

.method public getUserHeaders()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/OperationContext;->userHeaders:Ljava/util/HashMap;

    return-object v0
.end method

.method public initialize()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/microsoft/azure/storage/OperationContext;->setClientTimeInMs(J)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/OperationContext;->requestResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public isLoggingEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/OperationContext;->enableLogging:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2
    sget-boolean v0, Lcom/microsoft/azure/storage/OperationContext;->enableLoggingByDefault:Z

    return v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setClientRequestID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/OperationContext;->clientRequestID:Ljava/lang/String;

    return-void
.end method

.method public setClientTimeInMs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/microsoft/azure/storage/OperationContext;->clientTimeInMs:J

    return-void
.end method

.method public setErrorReceivingResponseEventHandler(Lcom/microsoft/azure/storage/StorageEventMultiCaster;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/StorageEventMultiCaster<",
            "Lcom/microsoft/azure/storage/ErrorReceivingResponseEvent;",
            "Lcom/microsoft/azure/storage/StorageEvent<",
            "Lcom/microsoft/azure/storage/ErrorReceivingResponseEvent;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/OperationContext;->errorReceivingResponseEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    return-void
.end method

.method public setLogger(Lk/f/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/OperationContext;->logger:Lk/f/b;

    return-void
.end method

.method public setLoggingEnabled(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/OperationContext;->enableLogging:Ljava/lang/Boolean;

    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/OperationContext;->proxy:Ljava/net/Proxy;

    return-void
.end method

.method public setRequestCompletedEventHandler(Lcom/microsoft/azure/storage/StorageEventMultiCaster;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/StorageEventMultiCaster<",
            "Lcom/microsoft/azure/storage/RequestCompletedEvent;",
            "Lcom/microsoft/azure/storage/StorageEvent<",
            "Lcom/microsoft/azure/storage/RequestCompletedEvent;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/OperationContext;->requestCompletedEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    return-void
.end method

.method public setResponseReceivedEventHandler(Lcom/microsoft/azure/storage/StorageEventMultiCaster;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/StorageEventMultiCaster<",
            "Lcom/microsoft/azure/storage/ResponseReceivedEvent;",
            "Lcom/microsoft/azure/storage/StorageEvent<",
            "Lcom/microsoft/azure/storage/ResponseReceivedEvent;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/OperationContext;->responseReceivedEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    return-void
.end method

.method public setRetryingEventHandler(Lcom/microsoft/azure/storage/StorageEventMultiCaster;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/StorageEventMultiCaster<",
            "Lcom/microsoft/azure/storage/RetryingEvent;",
            "Lcom/microsoft/azure/storage/StorageEvent<",
            "Lcom/microsoft/azure/storage/RetryingEvent;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/OperationContext;->retryingEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    return-void
.end method

.method public setSendingRequestEventHandler(Lcom/microsoft/azure/storage/StorageEventMultiCaster;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/StorageEventMultiCaster<",
            "Lcom/microsoft/azure/storage/SendingRequestEvent;",
            "Lcom/microsoft/azure/storage/StorageEvent<",
            "Lcom/microsoft/azure/storage/SendingRequestEvent;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/OperationContext;->sendingRequestEventHandler:Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    return-void
.end method

.method public setUserHeaders(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/OperationContext;->userHeaders:Ljava/util/HashMap;

    return-void
.end method
