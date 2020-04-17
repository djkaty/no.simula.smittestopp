.class public final Lcom/microsoft/azure/storage/MetricsProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public metricsLevel:Lcom/microsoft/azure/storage/MetricsLevel;

.field public retentionIntervalInDays:Ljava/lang/Integer;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1.0"

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/storage/MetricsProperties;->version:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/microsoft/azure/storage/MetricsLevel;->DISABLED:Lcom/microsoft/azure/storage/MetricsLevel;

    iput-object v0, p0, Lcom/microsoft/azure/storage/MetricsProperties;->metricsLevel:Lcom/microsoft/azure/storage/MetricsLevel;

    return-void
.end method


# virtual methods
.method public getMetricsLevel()Lcom/microsoft/azure/storage/MetricsLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/MetricsProperties;->metricsLevel:Lcom/microsoft/azure/storage/MetricsLevel;

    return-object v0
.end method

.method public getRetentionIntervalInDays()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/MetricsProperties;->retentionIntervalInDays:Ljava/lang/Integer;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/MetricsProperties;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setMetricsLevel(Lcom/microsoft/azure/storage/MetricsLevel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/MetricsProperties;->metricsLevel:Lcom/microsoft/azure/storage/MetricsLevel;

    return-void
.end method

.method public setRetentionIntervalInDays(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/MetricsProperties;->retentionIntervalInDays:Ljava/lang/Integer;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/MetricsProperties;->version:Ljava/lang/String;

    return-void
.end method
