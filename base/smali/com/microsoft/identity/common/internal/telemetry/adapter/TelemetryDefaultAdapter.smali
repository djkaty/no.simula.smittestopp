.class public final Lcom/microsoft/identity/common/internal/telemetry/adapter/TelemetryDefaultAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/telemetry/adapter/ITelemetryAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/internal/telemetry/adapter/ITelemetryAdapter<",
        "Ljava/util/List<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public mObserver:Lcom/microsoft/identity/common/internal/telemetry/observers/ITelemetryDefaultObserver;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/telemetry/observers/ITelemetryDefaultObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/telemetry/adapter/TelemetryDefaultAdapter;->mObserver:Lcom/microsoft/identity/common/internal/telemetry/observers/ITelemetryDefaultObserver;

    return-void
.end method


# virtual methods
.method public getObserver()Lcom/microsoft/identity/common/internal/telemetry/observers/ITelemetryDefaultObserver;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/telemetry/adapter/TelemetryDefaultAdapter;->mObserver:Lcom/microsoft/identity/common/internal/telemetry/observers/ITelemetryDefaultObserver;

    return-object v0
.end method

.method public bridge synthetic process(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/telemetry/adapter/TelemetryDefaultAdapter;->process(Ljava/util/List;)V

    return-void
.end method

.method public process(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/telemetry/adapter/TelemetryDefaultAdapter;->mObserver:Lcom/microsoft/identity/common/internal/telemetry/observers/ITelemetryDefaultObserver;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/observers/ITelemetryDefaultObserver;->onReceived(Ljava/util/List;)V

    return-void
.end method
