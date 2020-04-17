.class public Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryAggregationRules;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static sInstance:Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryAggregationRules;


# instance fields
.field public final aggregatedArray:[Ljava/lang/String;

.field public aggregatedPropertiesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Microsoft.MSAL.event_name"

    const-string v1, "Microsoft.MSAL.occur_time"

    const-string v2, "Microsoft.MSAL.event_type"

    const-string v3, "_is_successful"

    .line 2
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryAggregationRules;->aggregatedArray:[Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryAggregationRules;->aggregatedArray:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryAggregationRules;->aggregatedPropertiesSet:Ljava/util/Set;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryAggregationRules;
    .locals 2

    const-class v0, Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryAggregationRules;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryAggregationRules;->sInstance:Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryAggregationRules;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryAggregationRules;

    invoke-direct {v1}, Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryAggregationRules;-><init>()V

    sput-object v1, Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryAggregationRules;->sInstance:Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryAggregationRules;

    .line 3
    :cond_0
    sget-object v1, Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryAggregationRules;->sInstance:Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryAggregationRules;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public isRedundant(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryAggregationRules;->aggregatedPropertiesSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
