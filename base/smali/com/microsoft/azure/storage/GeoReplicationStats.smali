.class public Lcom/microsoft/azure/storage/GeoReplicationStats;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public lastSyncTime:Ljava/util/Date;

.field public status:Lcom/microsoft/azure/storage/GeoReplicationStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastSyncTime()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/GeoReplicationStats;->lastSyncTime:Ljava/util/Date;

    return-object v0
.end method

.method public getStatus()Lcom/microsoft/azure/storage/GeoReplicationStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/GeoReplicationStats;->status:Lcom/microsoft/azure/storage/GeoReplicationStatus;

    return-object v0
.end method

.method public setLastSyncTime(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/GeoReplicationStats;->lastSyncTime:Ljava/util/Date;

    return-void
.end method

.method public setStatus(Lcom/microsoft/azure/storage/GeoReplicationStatus;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/GeoReplicationStats;->status:Lcom/microsoft/azure/storage/GeoReplicationStatus;

    return-void
.end method
