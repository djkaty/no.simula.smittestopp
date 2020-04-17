.class public Lcom/microsoft/identity/common/internal/telemetry/events/CacheEndEvent;
.super Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;-><init>()V

    const-string v0, "cache_end_event"

    .line 2
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;->names(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;

    const-string v0, "Microsoft.MSAL.cache_event"

    .line 3
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;->types(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;

    return-void
.end method


# virtual methods
.method public putAtStatus(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/CacheEndEvent;
    .locals 1

    const-string v0, "Microsoft.MSAL.at_status"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/Properties;

    return-object p0
.end method

.method public putCacheRecordStatus(Lcom/microsoft/identity/common/internal/cache/CacheRecord;)Lcom/microsoft/identity/common/internal/telemetry/events/CacheEndEvent;
    .locals 4

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->getAccessToken()Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    move-result-object v0

    const-string v1, "false"

    const-string v2, "true"

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    const-string v3, "Microsoft.MSAL.at_status"

    invoke-virtual {p0, v3, v0}, Lcom/microsoft/identity/common/internal/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/Properties;

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    move-result-object v0

    const-string v3, "Microsoft.MSAL.rt_status"

    if-eqz v0, :cond_3

    const-string v0, "Microsoft.MSAL.mrrt_status"

    .line 3
    invoke-virtual {p0, v0, v2}, Lcom/microsoft/identity/common/internal/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/Properties;

    .line 4
    invoke-virtual {p0, v3, v2}, Lcom/microsoft/identity/common/internal/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/Properties;

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;->getFamilyId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    const-string v3, "Microsoft.MSAL.frt_status"

    invoke-virtual {p0, v3, v0}, Lcom/microsoft/identity/common/internal/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/Properties;

    goto :goto_2

    .line 6
    :cond_3
    invoke-virtual {p0, v3, v1}, Lcom/microsoft/identity/common/internal/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/Properties;

    .line 7
    :goto_2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->getIdToken()Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_3

    :cond_4
    move-object v0, v2

    :goto_3
    const-string v3, "Microsoft.MSAL.id_token_status"

    invoke-virtual {p0, v3, v0}, Lcom/microsoft/identity/common/internal/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/Properties;

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->getV1IdToken()Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    move-result-object v0

    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_4

    :cond_5
    move-object v0, v2

    :goto_4
    const-string v3, "Microsoft.MSAL.v1_id_token_status"

    invoke-virtual {p0, v3, v0}, Lcom/microsoft/identity/common/internal/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/Properties;

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->getAccount()Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    move-object v1, v2

    :goto_5
    const-string p1, "Microsoft.MSAL.account_status"

    invoke-virtual {p0, p1, v1}, Lcom/microsoft/identity/common/internal/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/Properties;

    .line 10
    invoke-static {}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->getInstance()Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/telemetry/Properties;->getProperties()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/internal/eststelemetry/EstsTelemetry;->emit(Ljava/util/Map;)V

    return-object p0
.end method

.method public putFrtStatus(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/CacheEndEvent;
    .locals 1

    const-string v0, "Microsoft.MSAL.frt_status"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/Properties;

    return-object p0
.end method

.method public putRtStatus(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/CacheEndEvent;
    .locals 1

    const-string v0, "Microsoft.MSAL.rt_status"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/Properties;

    return-object p0
.end method

.method public putSpeInfo(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/CacheEndEvent;
    .locals 1

    const-string v0, "Microsoft.MSAL.spe_info"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/Properties;

    return-object p0
.end method
