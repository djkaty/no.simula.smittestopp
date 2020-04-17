.class public final Lcom/microsoft/azure/storage/ServiceProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cors:Lcom/microsoft/azure/storage/CorsProperties;

.field public defaultServiceVersion:Ljava/lang/String;

.field public deleteRetentionPolicy:Lcom/microsoft/azure/storage/DeleteRetentionPolicy;

.field public hourMetrics:Lcom/microsoft/azure/storage/MetricsProperties;

.field public logging:Lcom/microsoft/azure/storage/LoggingProperties;

.field public minuteMetrics:Lcom/microsoft/azure/storage/MetricsProperties;

.field public staticWebsiteProperties:Lcom/microsoft/azure/storage/StaticWebsiteProperties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/LoggingProperties;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/LoggingProperties;-><init>()V

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/ServiceProperties;->setLogging(Lcom/microsoft/azure/storage/LoggingProperties;)V

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/MetricsProperties;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/MetricsProperties;-><init>()V

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/ServiceProperties;->setHourMetrics(Lcom/microsoft/azure/storage/MetricsProperties;)V

    .line 4
    new-instance v0, Lcom/microsoft/azure/storage/MetricsProperties;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/MetricsProperties;-><init>()V

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/ServiceProperties;->setMinuteMetrics(Lcom/microsoft/azure/storage/MetricsProperties;)V

    .line 5
    new-instance v0, Lcom/microsoft/azure/storage/CorsProperties;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/CorsProperties;-><init>()V

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/ServiceProperties;->setCors(Lcom/microsoft/azure/storage/CorsProperties;)V

    return-void
.end method


# virtual methods
.method public getCors()Lcom/microsoft/azure/storage/CorsProperties;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/ServiceProperties;->cors:Lcom/microsoft/azure/storage/CorsProperties;

    return-object v0
.end method

.method public getDefaultServiceVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/ServiceProperties;->defaultServiceVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteRetentionPolicy()Lcom/microsoft/azure/storage/DeleteRetentionPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/ServiceProperties;->deleteRetentionPolicy:Lcom/microsoft/azure/storage/DeleteRetentionPolicy;

    return-object v0
.end method

.method public getHourMetrics()Lcom/microsoft/azure/storage/MetricsProperties;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/ServiceProperties;->hourMetrics:Lcom/microsoft/azure/storage/MetricsProperties;

    return-object v0
.end method

.method public getLogging()Lcom/microsoft/azure/storage/LoggingProperties;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/ServiceProperties;->logging:Lcom/microsoft/azure/storage/LoggingProperties;

    return-object v0
.end method

.method public getMinuteMetrics()Lcom/microsoft/azure/storage/MetricsProperties;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/ServiceProperties;->minuteMetrics:Lcom/microsoft/azure/storage/MetricsProperties;

    return-object v0
.end method

.method public getStaticWebsiteProperties()Lcom/microsoft/azure/storage/StaticWebsiteProperties;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/ServiceProperties;->staticWebsiteProperties:Lcom/microsoft/azure/storage/StaticWebsiteProperties;

    return-object v0
.end method

.method public setCors(Lcom/microsoft/azure/storage/CorsProperties;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/ServiceProperties;->cors:Lcom/microsoft/azure/storage/CorsProperties;

    return-void
.end method

.method public setDefaultServiceVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/ServiceProperties;->defaultServiceVersion:Ljava/lang/String;

    return-void
.end method

.method public setDeleteRetentionPolicy(Lcom/microsoft/azure/storage/DeleteRetentionPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/ServiceProperties;->deleteRetentionPolicy:Lcom/microsoft/azure/storage/DeleteRetentionPolicy;

    return-void
.end method

.method public setHourMetrics(Lcom/microsoft/azure/storage/MetricsProperties;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/ServiceProperties;->hourMetrics:Lcom/microsoft/azure/storage/MetricsProperties;

    return-void
.end method

.method public setLogging(Lcom/microsoft/azure/storage/LoggingProperties;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/ServiceProperties;->logging:Lcom/microsoft/azure/storage/LoggingProperties;

    return-void
.end method

.method public setMinuteMetrics(Lcom/microsoft/azure/storage/MetricsProperties;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/ServiceProperties;->minuteMetrics:Lcom/microsoft/azure/storage/MetricsProperties;

    return-void
.end method

.method public setStaticWebsiteProperties(Lcom/microsoft/azure/storage/StaticWebsiteProperties;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/ServiceProperties;->staticWebsiteProperties:Lcom/microsoft/azure/storage/StaticWebsiteProperties;

    return-void
.end method
