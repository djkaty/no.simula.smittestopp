.class public Lcom/microsoft/identity/common/internal/telemetry/events/CacheStartEvent;
.super Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;-><init>()V

    const-string v0, "cache_start_event"

    .line 2
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;->names(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;

    const-string v0, "Microsoft.MSAL.cache_event"

    .line 3
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;->types(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;

    return-void
.end method


# virtual methods
.method public isAt(Z)Lcom/microsoft/identity/common/internal/telemetry/events/CacheStartEvent;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Microsoft.MSAL.is_at"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/Properties;

    return-object p0
.end method

.method public isFrt(Z)Lcom/microsoft/identity/common/internal/telemetry/events/CacheStartEvent;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Microsoft.MSAL.is_frt"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/Properties;

    return-object p0
.end method

.method public isMrrt(Z)Lcom/microsoft/identity/common/internal/telemetry/events/CacheStartEvent;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Microsoft.MSAL.is_mrrt"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/Properties;

    return-object p0
.end method

.method public isRt(Z)Lcom/microsoft/identity/common/internal/telemetry/events/CacheStartEvent;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Microsoft.MSAL.is_rt"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/Properties;

    return-object p0
.end method

.method public putTokenType(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/CacheStartEvent;
    .locals 1

    const-string v0, "Microsoft.MSAL.token_type"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/Properties;

    return-object p0
.end method

.method public putWipeApp(Z)Lcom/microsoft/identity/common/internal/telemetry/events/CacheStartEvent;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Microsoft.MSAL.wipe_app"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/Properties;

    return-object p0
.end method
