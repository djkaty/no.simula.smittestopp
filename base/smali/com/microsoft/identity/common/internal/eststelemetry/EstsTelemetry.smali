.class public Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LAST_REQUEST_TELEMETRY_SHARED_PREFERENCES:Ljava/lang/String; = "com.microsoft.identity.client.last_request_telemetry"

.field public static final TAG:Ljava/lang/String; = "EstsTelemetry"

.field public static volatile sEstsTelemetryInstance:Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;


# instance fields
.field public mLastRequestTelemetryCache:Lcom/microsoft/identity/common/internal/eststelemetry/IRequestTelemetryCache;

.field public mTelemetryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->mTelemetryMap:Ljava/util/Map;

    return-void
.end method

.method private createLastRequestTelemetryCache(Landroid/content/Context;)Lcom/microsoft/identity/common/internal/eststelemetry/IRequestTelemetryCache;
    .locals 3

    const-string v0, ":createLastRequestTelemetryCache"

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->TAG:Ljava/lang/String;

    const-string v2, "Context is NULL. Unable to create last request telemetry cache."

    invoke-static {p1, v1, v0, v2}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Creating Last Request Telemetry Cache"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    const-string v1, "com.microsoft.identity.client.last_request_telemetry"

    invoke-direct {v0, p1, v1}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/microsoft/identity/common/internal/eststelemetry/SharedPreferencesLastRequestTelemetryCache;

    invoke-direct {p1, v0}, Lcom/microsoft/identity/common/internal/eststelemetry/SharedPreferencesLastRequestTelemetryCache;-><init>(Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;)V

    return-object p1
.end method

.method private eligibleToCache(Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->getSchemaVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->getCommonTelemetry()Ljava/util/Map;

    move-result-object p1

    const-string v0, "Microsoft.MSAL.api_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private emit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->getCurrentTelemetryInstance(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1, p2, p3}, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->putTelemetry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getCurrentTelemetryInstance(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->mTelemetryMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const-string v0, "UNSET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->mTelemetryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;

    if-eqz v0, :cond_1

    return-object v0

    .line 3
    :cond_1
    new-instance v0, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;-><init>(Z)V

    .line 4
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->mTelemetryMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;
    .locals 2

    const-class v0, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->sEstsTelemetryInstance:Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;

    invoke-direct {v1}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;-><init>()V

    sput-object v1, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->sEstsTelemetryInstance:Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;

    .line 3
    :cond_0
    sget-object v1, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->sEstsTelemetryInstance:Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private loadLastRequestTelemetryFromCache()Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->mLastRequestTelemetryCache:Lcom/microsoft/identity/common/internal/eststelemetry/IRequestTelemetryCache;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->TAG:Ljava/lang/String;

    const-string v2, ":loadLastRequestTelemetry"

    const-string v3, "Last Request Telemetry Cache has not been initialized. Cannot load Last Request Telemetry data from cache."

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-interface {v0}, Lcom/microsoft/identity/common/internal/eststelemetry/IRequestTelemetryCache;->getRequestTelemetryFromCache()Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;

    move-result-object v0

    return-object v0
.end method

.method private setupLastFromCurrent(Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;)Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;

    const-string v1, "1"

    invoke-direct {p1, v1, v0}, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;-><init>(Ljava/lang/String;Z)V

    return-object p1

    .line 2
    :cond_0
    new-instance v1, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->getSchemaVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;-><init>(Ljava/lang/String;Z)V

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->getCommonTelemetry()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->putTelemetry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->getPlatformTelemetry()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->putTelemetry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-object v1
.end method


# virtual methods
.method public emit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/internal/logging/IRequestContext;

    move-result-object v0

    const-string v1, "correlation_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-direct {p0, v0, p1, p2}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->emit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public emit(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->emit(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public emitApiId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Microsoft.MSAL.api_id"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->emit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public emitForceRefresh(Z)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/eststelemetry/Schema;->getSchemaCompliantStringFromBoolean(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Microsoft.MSAL.force_refresh"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->emit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public flush()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/internal/logging/IRequestContext;

    move-result-object v0

    const-string v1, "correlation_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->flush(Ljava/lang/String;)V

    return-void
.end method

.method public flush(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->flush(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public flush(Ljava/lang/String;Lcom/microsoft/identity/common/exception/BaseException;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/microsoft/identity/common/exception/BaseException;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->flush(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public flush(Ljava/lang/String;Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;)V
    .locals 0

    .line 5
    invoke-static {p2}, Lcom/microsoft/identity/common/internal/eststelemetry/TelemetryUtils;->errorFromAcquireTokenResult(Lcom/microsoft/identity/common/internal/result/AcquireTokenResult;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->flush(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public flush(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->mTelemetryMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;

    if-nez v0, :cond_1

    return-void

    .line 9
    :cond_1
    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->setupLastFromCurrent(Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;)Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;

    move-result-object v1

    const-string v2, "Microsoft.MSAL.correlation_id"

    .line 10
    invoke-virtual {v1, v2, p1}, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->putTelemetry(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Microsoft.MSAL.api_error_code"

    .line 11
    invoke-virtual {v1, v2, p2}, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->putTelemetry(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->clearTelemetry()V

    .line 13
    iget-object p2, p0, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->mTelemetryMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->mLastRequestTelemetryCache:Lcom/microsoft/identity/common/internal/eststelemetry/IRequestTelemetryCache;

    if-nez p1, :cond_2

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->TAG:Ljava/lang/String;

    const-string v0, ":flush"

    const-string v1, "Last Request Telemetry Cache object was null. Unable to save request telemetry to cache."

    invoke-static {p1, p2, v0, v1}, Le/a/a/a/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_2
    invoke-direct {p0, v1}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->eligibleToCache(Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 17
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->mLastRequestTelemetryCache:Lcom/microsoft/identity/common/internal/eststelemetry/IRequestTelemetryCache;

    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/eststelemetry/IRequestTelemetryCache;->clearAll()V

    .line 18
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->mLastRequestTelemetryCache:Lcom/microsoft/identity/common/internal/eststelemetry/IRequestTelemetryCache;

    invoke-interface {p1, v1}, Lcom/microsoft/identity/common/internal/eststelemetry/IRequestTelemetryCache;->saveRequestTelemetryToCache(Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getCurrentTelemetryHeaderString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/internal/logging/IRequestContext;

    move-result-object v0

    const-string v1, "correlation_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->mTelemetryMap:Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;

    if-nez v0, :cond_1

    return-object v2

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->getCompleteTelemetryHeaderString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    return-object v2
.end method

.method public getLastTelemetryHeaderString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->loadLastRequestTelemetryFromCache()Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->getCompleteTelemetryHeaderString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTelemetryHeaders()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->getCurrentTelemetryHeaderString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->getLastTelemetryHeaderString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":getTelemetryHeaders"

    if-eqz v1, :cond_0

    const-string v4, "x-client-current-telemetry"

    .line 4
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->TAG:Ljava/lang/String;

    const-string v5, "Current Request Telemetry Header is null"

    invoke-static {v1, v4, v3, v5}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v2, :cond_1

    const-string v1, "x-client-last-telemetry"

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 7
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->TAG:Ljava/lang/String;

    const-string v4, "Last Request Telemetry Header is null"

    invoke-static {v1, v2, v3, v4}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method public setupLastRequestTelemetryCache(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->createLastRequestTelemetryCache(Landroid/content/Context;)Lcom/microsoft/identity/common/internal/eststelemetry/IRequestTelemetryCache;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->mLastRequestTelemetryCache:Lcom/microsoft/identity/common/internal/eststelemetry/IRequestTelemetryCache;

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->TAG:Ljava/lang/String;

    const-string v0, "Ests Telemetry cache has been initialized properly."

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
