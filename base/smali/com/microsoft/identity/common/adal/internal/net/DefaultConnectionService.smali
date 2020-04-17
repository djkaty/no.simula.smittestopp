.class public Lcom/microsoft/identity/common/adal/internal/net/DefaultConnectionService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/adal/internal/net/IConnectionService;


# instance fields
.field public final mConnectionContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/net/DefaultConnectionService;->mConnectionContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isConnectionAvailable()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/net/DefaultConnectionService;->mConnectionContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/adal/internal/net/DefaultConnectionService;->isNetworkDisabledFromOptimizations()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    new-instance v1, Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;

    invoke-direct {v1}, Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Microsoft.MSAL.network_connection"

    invoke-virtual {v1, v3, v2}, Lcom/microsoft/identity/common/internal/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/Properties;

    move-result-object v1

    check-cast v1, Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;

    invoke-static {v1}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    return v0
.end method

.method public isNetworkDisabledFromOptimizations()Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "Microsoft.MSAL.power_optimization"

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 2
    invoke-static {}, Lcom/microsoft/identity/common/adal/internal/UsageStatsManagerWrapper;->getInstance()Lcom/microsoft/identity/common/adal/internal/UsageStatsManagerWrapper;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/microsoft/identity/common/adal/internal/net/DefaultConnectionService;->mConnectionContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/adal/internal/UsageStatsManagerWrapper;->isAppInactive(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/microsoft/identity/common/internal/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/Properties;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;

    invoke-static {v0}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    return v2

    .line 5
    :cond_0
    invoke-static {}, Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;->getInstance()Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;

    move-result-object v0

    .line 6
    iget-object v3, p0, Lcom/microsoft/identity/common/adal/internal/net/DefaultConnectionService;->mConnectionContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;->isDeviceIdleMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/microsoft/identity/common/adal/internal/net/DefaultConnectionService;->mConnectionContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/microsoft/identity/common/adal/internal/PowerManagerWrapper;->isIgnoringBatteryOptimizations(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/microsoft/identity/common/internal/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/Properties;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;

    invoke-static {v0}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    return v2

    .line 8
    :cond_1
    new-instance v0, Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;-><init>()V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/microsoft/identity/common/internal/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/Properties;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;

    invoke-static {v0}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    return v2
.end method
