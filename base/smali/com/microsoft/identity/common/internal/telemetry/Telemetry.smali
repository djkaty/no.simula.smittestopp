.class public Lcom/microsoft/identity/common/internal/telemetry/Telemetry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Telemetry"

.field public static mObservers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/microsoft/identity/common/internal/telemetry/observers/ITelemetryObserver;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile sTelemetryInstance:Lcom/microsoft/identity/common/internal/telemetry/Telemetry;


# instance fields
.field public mDefaultConfiguration:Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;

.field public mIsDebugging:Z

.field public final mIsTelemetryEnabled:Z

.field public mTelemetryContext:Lcom/microsoft/identity/common/internal/telemetry/TelemetryContext;

.field public mTelemetryRawDataMap:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;->access$000(Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;)Lcom/microsoft/identity/common/internal/telemetry/TelemetryContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;->access$100(Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;)Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->mIsTelemetryEnabled:Z

    .line 5
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;->access$100(Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;)Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->mDefaultConfiguration:Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;

    .line 6
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;->access$000(Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;)Lcom/microsoft/identity/common/internal/telemetry/TelemetryContext;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->mTelemetryContext:Lcom/microsoft/identity/common/internal/telemetry/TelemetryContext;

    .line 7
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;->access$200(Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->mIsDebugging:Z

    .line 8
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->mTelemetryRawDataMap:Ljava/util/Queue;

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    sget-object p1, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->TAG:Ljava/lang/String;

    const-string v0, "Telemetry is disabled because the Telemetry context or configuration is null"

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->mIsTelemetryEnabled:Z

    :goto_1
    return-void
.end method

.method public static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$400(Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;)Lcom/microsoft/identity/common/internal/telemetry/Telemetry;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->prepareInstance(Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;)Lcom/microsoft/identity/common/internal/telemetry/Telemetry;

    move-result-object p0

    return-object p0
.end method

.method private applyPiiOiiRule(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->mDefaultConfiguration:Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;->isPiiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->TAG:Ljava/lang/String;

    const-string v1, "Telemetry PII/OII is enabled by the developer."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-static {}, Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryPiiOiiRules;->getInstance()Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryPiiOiiRules;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryPiiOiiRules;->isPiiOrOii(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->getInstance()Lcom/microsoft/identity/common/internal/telemetry/Telemetry;

    move-result-object v0

    iget-boolean v0, v0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->mIsTelemetryEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->getInstance()Lcom/microsoft/identity/common/internal/telemetry/Telemetry;

    move-result-object v0

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->getRequestMap()Ljava/util/Queue;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/telemetry/Properties;->getProperties()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/microsoft/identity/common/internal/telemetry/Telemetry;
    .locals 2

    const-class v0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->sTelemetryInstance:Lcom/microsoft/identity/common/internal/telemetry/Telemetry;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;

    invoke-direct {v1}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;->build()Lcom/microsoft/identity/common/internal/telemetry/Telemetry;

    .line 3
    :cond_0
    sget-object v1, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->sTelemetryInstance:Lcom/microsoft/identity/common/internal/telemetry/Telemetry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getRequestMap()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->mTelemetryRawDataMap:Ljava/util/Queue;

    return-object v0
.end method

.method public static declared-synchronized prepareInstance(Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;)Lcom/microsoft/identity/common/internal/telemetry/Telemetry;
    .locals 2

    const-class v0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;

    invoke-direct {v1, p0}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;-><init>(Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;)V

    sput-object v1, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->sTelemetryInstance:Lcom/microsoft/identity/common/internal/telemetry/Telemetry;

    .line 2
    sget-object p0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->sTelemetryInstance:Lcom/microsoft/identity/common/internal/telemetry/Telemetry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addObserver(Lcom/microsoft/identity/common/internal/telemetry/observers/ITelemetryObserver;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->mObservers:Ljava/util/Queue;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->mObservers:Ljava/util/Queue;

    .line 3
    :cond_0
    sget-object v0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->mObservers:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Telemetry Observer instance cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public flush()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->getInstance()Lcom/microsoft/identity/common/internal/telemetry/Telemetry;

    move-result-object v0

    iget-boolean v0, v0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->mIsTelemetryEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/internal/logging/IRequestContext;

    move-result-object v0

    const-string v1, "correlation_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->flush(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public flush(Ljava/lang/String;)V
    .locals 4

    .line 3
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->mIsTelemetryEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->mObservers:Ljava/util/Queue;

    if-nez v0, :cond_1

    .line 5
    sget-object p1, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->TAG:Ljava/lang/String;

    const-string v0, "No telemetry observer set."

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    sget-object p1, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->TAG:Ljava/lang/String;

    const-string v0, "No correlation id set."

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->mDefaultConfiguration:Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->mIsDebugging:Z

    if-eqz v0, :cond_3

    return-void

    .line 9
    :cond_3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 10
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->mTelemetryRawDataMap:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "Microsoft.MSAL.correlation_id"

    .line 12
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 13
    invoke-direct {p0, v2}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->applyPiiOiiRule(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 15
    :cond_5
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->mTelemetryContext:Lcom/microsoft/identity/common/internal/telemetry/TelemetryContext;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/telemetry/Properties;->getProperties()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->applyPiiOiiRule(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object p1, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->mObservers:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/identity/common/internal/telemetry/observers/ITelemetryObserver;

    .line 17
    instance-of v2, v1, Lcom/microsoft/identity/common/internal/telemetry/observers/ITelemetryAggregatedObserver;

    if-eqz v2, :cond_6

    .line 18
    new-instance v2, Lcom/microsoft/identity/common/internal/telemetry/adapter/TelemetryAggregationAdapter;

    check-cast v1, Lcom/microsoft/identity/common/internal/telemetry/observers/ITelemetryAggregatedObserver;

    invoke-direct {v2, v1}, Lcom/microsoft/identity/common/internal/telemetry/adapter/TelemetryAggregationAdapter;-><init>(Lcom/microsoft/identity/common/internal/telemetry/observers/ITelemetryAggregatedObserver;)V

    invoke-virtual {v2, v0}, Lcom/microsoft/identity/common/internal/telemetry/adapter/TelemetryAggregationAdapter;->process(Ljava/util/List;)V

    goto :goto_1

    .line 19
    :cond_6
    instance-of v2, v1, Lcom/microsoft/identity/common/internal/telemetry/observers/ITelemetryDefaultObserver;

    if-eqz v2, :cond_7

    .line 20
    new-instance v2, Lcom/microsoft/identity/common/internal/telemetry/adapter/TelemetryDefaultAdapter;

    check-cast v1, Lcom/microsoft/identity/common/internal/telemetry/observers/ITelemetryDefaultObserver;

    invoke-direct {v2, v1}, Lcom/microsoft/identity/common/internal/telemetry/adapter/TelemetryDefaultAdapter;-><init>(Lcom/microsoft/identity/common/internal/telemetry/observers/ITelemetryDefaultObserver;)V

    invoke-virtual {v2, v0}, Lcom/microsoft/identity/common/internal/telemetry/adapter/TelemetryDefaultAdapter;->process(Ljava/util/List;)V

    goto :goto_1

    .line 21
    :cond_7
    sget-object v2, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->TAG:Ljava/lang/String;

    const-string v3, "Unknown observer type: "

    invoke-static {v3}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    return-void
.end method

.method public getObservers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/telemetry/observers/ITelemetryObserver;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->mObservers:Ljava/util/Queue;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v1, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->mObservers:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 4
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAllObservers()V
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->mObservers:Ljava/util/Queue;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public removeObserver(Lcom/microsoft/identity/common/internal/telemetry/observers/ITelemetryObserver;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 8
    sget-object v0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->mObservers:Ljava/util/Queue;

    if-nez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    return-void

    .line 10
    :cond_1
    :goto_0
    sget-object p1, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->TAG:Ljava/lang/String;

    const-string v0, "Unable to remove the observer. Either the observer is null or the observer list is empty."

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeObserver(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->mObservers:Ljava/util/Queue;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/identity/common/internal/telemetry/observers/ITelemetryObserver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 5
    sget-object v1, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->TAG:Ljava/lang/String;

    const-string v2, "The ["

    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] observer is removed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void

    .line 7
    :cond_3
    :goto_1
    sget-object p1, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->TAG:Ljava/lang/String;

    const-string v0, "Unable to remove the observe. Either the observer is null or the observer list is empty."

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
