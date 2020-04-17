.class public Lcom/microsoft/identity/common/internal/eststelemetry/SharedPreferencesLastRequestTelemetryCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/eststelemetry/IRequestTelemetryCache;


# static fields
.field public static final TAG:Ljava/lang/String; = "SharedPreferencesLastRequestTelemetryCache"


# instance fields
.field public final mSharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/microsoft/identity/common/internal/eststelemetry/SharedPreferencesLastRequestTelemetryCache;->TAG:Ljava/lang/String;

    const-string v1, "Init: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/microsoft/identity/common/internal/eststelemetry/SharedPreferencesLastRequestTelemetryCache;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/eststelemetry/SharedPreferencesLastRequestTelemetryCache;->mSharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;

    return-void
.end method

.method private declared-synchronized saveTelemetryDataToCache(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
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

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/eststelemetry/SharedPreferencesLastRequestTelemetryCache;->mSharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;

    invoke-interface {v2, v1, v0}, Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized clearAll()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/microsoft/identity/common/internal/eststelemetry/SharedPreferencesLastRequestTelemetryCache;->TAG:Ljava/lang/String;

    const-string v1, "Clearing all SharedPreferences entries..."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/eststelemetry/SharedPreferencesLastRequestTelemetryCache;->mSharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;

    invoke-interface {v0}, Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;->clear()V

    .line 3
    sget-object v0, Lcom/microsoft/identity/common/internal/eststelemetry/SharedPreferencesLastRequestTelemetryCache;->TAG:Ljava/lang/String;

    const-string v1, "SharedPreferences cleared."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequestTelemetryFromCache()Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/eststelemetry/SharedPreferencesLastRequestTelemetryCache;->mSharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;

    invoke-interface {v0}, Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;->getAll()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "schema_version"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    new-instance v2, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;-><init>(Ljava/lang/String;Z)V

    .line 5
    invoke-static {v3}, Lcom/microsoft/identity/common/internal/eststelemetry/Schema;->getCommonFields(Z)[Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v3}, Lcom/microsoft/identity/common/internal/eststelemetry/Schema;->getPlatformFields(Z)[Ljava/lang/String;

    move-result-object v4

    .line 7
    array-length v5, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v1, v6

    .line 8
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->putTelemetry(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 9
    :cond_1
    array-length v1, v4

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v5, v4, v3

    .line 10
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->putTelemetry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 11
    :cond_2
    monitor-exit p0

    return-object v2

    .line 12
    :cond_3
    :goto_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/eststelemetry/SharedPreferencesLastRequestTelemetryCache;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":getRequestTelemetryFromCache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Last Request telemetry not found in cache. "

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 13
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSharedPreferencesFileManager()Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/eststelemetry/SharedPreferencesLastRequestTelemetryCache;->mSharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;

    return-object v0
.end method

.method public declared-synchronized saveRequestTelemetryToCache(Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/microsoft/identity/common/internal/eststelemetry/SharedPreferencesLastRequestTelemetryCache;->TAG:Ljava/lang/String;

    const-string v1, "Saving Request Telemetry to cache..."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/eststelemetry/SharedPreferencesLastRequestTelemetryCache;->mSharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;

    const-string v1, "schema_version"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->getCommonTelemetry()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/internal/eststelemetry/SharedPreferencesLastRequestTelemetryCache;->saveTelemetryDataToCache(Ljava/util/Map;)V

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->getPlatformTelemetry()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/eststelemetry/SharedPreferencesLastRequestTelemetryCache;->saveTelemetryDataToCache(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
