.class public Lcom/microsoft/azure/storage/file/FileServiceProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public serviceProperties:Lcom/microsoft/azure/storage/ServiceProperties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/ServiceProperties;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/ServiceProperties;-><init>()V

    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/file/FileServiceProperties;-><init>(Lcom/microsoft/azure/storage/ServiceProperties;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/ServiceProperties;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileServiceProperties;->serviceProperties:Lcom/microsoft/azure/storage/ServiceProperties;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/microsoft/azure/storage/ServiceProperties;->setLogging(Lcom/microsoft/azure/storage/LoggingProperties;)V

    .line 5
    iget-object p1, p0, Lcom/microsoft/azure/storage/file/FileServiceProperties;->serviceProperties:Lcom/microsoft/azure/storage/ServiceProperties;

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/storage/ServiceProperties;->setDefaultServiceVersion(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCors()Lcom/microsoft/azure/storage/CorsProperties;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileServiceProperties;->serviceProperties:Lcom/microsoft/azure/storage/ServiceProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/ServiceProperties;->getCors()Lcom/microsoft/azure/storage/CorsProperties;

    move-result-object v0

    return-object v0
.end method

.method public getHourMetrics()Lcom/microsoft/azure/storage/MetricsProperties;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileServiceProperties;->serviceProperties:Lcom/microsoft/azure/storage/ServiceProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/ServiceProperties;->getHourMetrics()Lcom/microsoft/azure/storage/MetricsProperties;

    move-result-object v0

    return-object v0
.end method

.method public getMinuteMetrics()Lcom/microsoft/azure/storage/MetricsProperties;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileServiceProperties;->serviceProperties:Lcom/microsoft/azure/storage/ServiceProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/ServiceProperties;->getMinuteMetrics()Lcom/microsoft/azure/storage/MetricsProperties;

    move-result-object v0

    return-object v0
.end method

.method public getServiceProperties()Lcom/microsoft/azure/storage/ServiceProperties;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileServiceProperties;->serviceProperties:Lcom/microsoft/azure/storage/ServiceProperties;

    return-object v0
.end method

.method public setCors(Lcom/microsoft/azure/storage/CorsProperties;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileServiceProperties;->serviceProperties:Lcom/microsoft/azure/storage/ServiceProperties;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/storage/ServiceProperties;->setCors(Lcom/microsoft/azure/storage/CorsProperties;)V

    return-void
.end method

.method public setHourMetrics(Lcom/microsoft/azure/storage/MetricsProperties;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileServiceProperties;->serviceProperties:Lcom/microsoft/azure/storage/ServiceProperties;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/storage/ServiceProperties;->setHourMetrics(Lcom/microsoft/azure/storage/MetricsProperties;)V

    return-void
.end method

.method public setMinuteMetrics(Lcom/microsoft/azure/storage/MetricsProperties;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileServiceProperties;->serviceProperties:Lcom/microsoft/azure/storage/ServiceProperties;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/storage/ServiceProperties;->setMinuteMetrics(Lcom/microsoft/azure/storage/MetricsProperties;)V

    return-void
.end method
