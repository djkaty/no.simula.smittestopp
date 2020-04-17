.class public final Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryPiiOiiRules;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static sInstance:Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryPiiOiiRules;


# instance fields
.field public final oiiArray:[Ljava/lang/String;

.field public oiiPropertiesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final piiArray:[Ljava/lang/String;

.field public piiPropertiesSet:Ljava/util/Set;
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
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Microsoft.MSAL.user_id"

    const-string v1, "Microsoft.MSAL.device_id"

    const-string v2, "Microsoft.MSAL.login_hint"

    const-string v3, "Microsoft.MSAL.error_description"

    const-string v4, "Microsoft.MSAL.query_params"

    const-string v5, "Microsoft.MSAL.redirect_uri"

    const-string v6, "Microsoft.MSAL.scope_value"

    const-string v7, "Microsoft.MSAL.claim_request"

    .line 2
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryPiiOiiRules;->piiArray:[Ljava/lang/String;

    const-string v1, "Microsoft.MSAL.tenant_id"

    const-string v2, "Microsoft.MSAL.client_id"

    const-string v3, "Microsoft.MSAL.redirect_uri"

    const-string v4, "Microsoft.MSAL.http_path"

    const-string v5, "Microsoft.MSAL.authority"

    const-string v6, "Microsoft.MSAL.idp"

    .line 3
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryPiiOiiRules;->oiiArray:[Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryPiiOiiRules;->piiArray:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryPiiOiiRules;->piiPropertiesSet:Ljava/util/Set;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryPiiOiiRules;->oiiArray:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryPiiOiiRules;->oiiPropertiesSet:Ljava/util/Set;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryPiiOiiRules;
    .locals 2

    const-class v0, Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryPiiOiiRules;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryPiiOiiRules;->sInstance:Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryPiiOiiRules;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryPiiOiiRules;

    invoke-direct {v1}, Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryPiiOiiRules;-><init>()V

    sput-object v1, Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryPiiOiiRules;->sInstance:Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryPiiOiiRules;

    .line 3
    :cond_0
    sget-object v1, Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryPiiOiiRules;->sInstance:Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryPiiOiiRules;
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
.method public isOii(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryPiiOiiRules;->oiiPropertiesSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isPii(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryPiiOiiRules;->piiPropertiesSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isPiiOrOii(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryPiiOiiRules;->isPii(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/telemetry/rules/TelemetryPiiOiiRules;->isOii(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
