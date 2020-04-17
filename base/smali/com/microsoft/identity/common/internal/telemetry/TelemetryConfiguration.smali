.class public Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration$SerializedNames;
    }
.end annotation


# instance fields
.field public mDebugEnabled:Z
    .annotation runtime Le/c/c/v/c;
        value = "debug_enabled"
    .end annotation
.end field

.field public mNotifyOnFailureOnly:Z
    .annotation runtime Le/c/c/v/c;
        value = "notify_on_failure_only"
    .end annotation
.end field

.field public mPiiEnabled:Z
    .annotation runtime Le/c/c/v/c;
        value = "pii_enabled"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;->mPiiEnabled:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;->mNotifyOnFailureOnly:Z

    .line 4
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;->mDebugEnabled:Z

    return-void
.end method


# virtual methods
.method public isDebugEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;->mDebugEnabled:Z

    return v0
.end method

.method public isPiiEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;->mPiiEnabled:Z

    return v0
.end method

.method public setDebugEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;->mDebugEnabled:Z

    return-void
.end method

.method public setNotifyOnFailureOnly(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;->mNotifyOnFailureOnly:Z

    return-void
.end method

.method public setPiiEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;->mPiiEnabled:Z

    return-void
.end method

.method public shouldNotifyOnFailureOnly()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;->mNotifyOnFailureOnly:Z

    return v0
.end method
