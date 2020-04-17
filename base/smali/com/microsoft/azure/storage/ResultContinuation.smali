.class public final Lcom/microsoft/azure/storage/ResultContinuation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public continuationType:Lcom/microsoft/azure/storage/ResultContinuationType;

.field public nextMarker:Ljava/lang/String;

.field public nextPartitionKey:Ljava/lang/String;

.field public nextRowKey:Ljava/lang/String;

.field public nextTableName:Ljava/lang/String;

.field public targetLocation:Lcom/microsoft/azure/storage/StorageLocation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContinuationType()Lcom/microsoft/azure/storage/ResultContinuationType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/ResultContinuation;->continuationType:Lcom/microsoft/azure/storage/ResultContinuationType;

    return-object v0
.end method

.method public getNextMarker()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/ResultContinuation;->nextMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getNextPartitionKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/ResultContinuation;->nextPartitionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getNextRowKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/ResultContinuation;->nextRowKey:Ljava/lang/String;

    return-object v0
.end method

.method public getNextTableName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/ResultContinuation;->nextTableName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetLocation()Lcom/microsoft/azure/storage/StorageLocation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/ResultContinuation;->targetLocation:Lcom/microsoft/azure/storage/StorageLocation;

    return-object v0
.end method

.method public hasContinuation()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/ResultContinuation;->getNextMarker()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/azure/storage/ResultContinuation;->nextPartitionKey:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/azure/storage/ResultContinuation;->nextRowKey:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/azure/storage/ResultContinuation;->nextTableName:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setContinuationType(Lcom/microsoft/azure/storage/ResultContinuationType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/ResultContinuation;->continuationType:Lcom/microsoft/azure/storage/ResultContinuationType;

    return-void
.end method

.method public setNextMarker(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/ResultContinuation;->nextMarker:Ljava/lang/String;

    return-void
.end method

.method public setNextPartitionKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/ResultContinuation;->nextPartitionKey:Ljava/lang/String;

    return-void
.end method

.method public setNextRowKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/ResultContinuation;->nextRowKey:Ljava/lang/String;

    return-void
.end method

.method public setNextTableName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/ResultContinuation;->nextTableName:Ljava/lang/String;

    return-void
.end method

.method public setTargetLocation(Lcom/microsoft/azure/storage/StorageLocation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/ResultContinuation;->targetLocation:Lcom/microsoft/azure/storage/StorageLocation;

    return-void
.end method
