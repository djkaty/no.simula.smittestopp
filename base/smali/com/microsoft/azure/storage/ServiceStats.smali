.class public Lcom/microsoft/azure/storage/ServiceStats;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public geoReplication:Lcom/microsoft/azure/storage/GeoReplicationStats;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGeoReplication()Lcom/microsoft/azure/storage/GeoReplicationStats;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/ServiceStats;->geoReplication:Lcom/microsoft/azure/storage/GeoReplicationStats;

    return-object v0
.end method

.method public setGeoReplication(Lcom/microsoft/azure/storage/GeoReplicationStats;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/ServiceStats;->geoReplication:Lcom/microsoft/azure/storage/GeoReplicationStats;

    return-void
.end method
