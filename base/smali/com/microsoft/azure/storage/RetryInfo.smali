.class public Lcom/microsoft/azure/storage/RetryInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public retryInterval:I

.field public targetLocation:Lcom/microsoft/azure/storage/StorageLocation;

.field public updatedLocationMode:Lcom/microsoft/azure/storage/LocationMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbb8

    .line 2
    iput v0, p0, Lcom/microsoft/azure/storage/RetryInfo;->retryInterval:I

    .line 3
    sget-object v0, Lcom/microsoft/azure/storage/StorageLocation;->PRIMARY:Lcom/microsoft/azure/storage/StorageLocation;

    iput-object v0, p0, Lcom/microsoft/azure/storage/RetryInfo;->targetLocation:Lcom/microsoft/azure/storage/StorageLocation;

    .line 4
    sget-object v0, Lcom/microsoft/azure/storage/LocationMode;->PRIMARY_ONLY:Lcom/microsoft/azure/storage/LocationMode;

    iput-object v0, p0, Lcom/microsoft/azure/storage/RetryInfo;->updatedLocationMode:Lcom/microsoft/azure/storage/LocationMode;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/RetryContext;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbb8

    .line 6
    iput v0, p0, Lcom/microsoft/azure/storage/RetryInfo;->retryInterval:I

    const-string v0, "retryContext"

    .line 7
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RetryContext;->getNextLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/RetryInfo;->targetLocation:Lcom/microsoft/azure/storage/StorageLocation;

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RetryContext;->getLocationMode()Lcom/microsoft/azure/storage/LocationMode;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/RetryInfo;->updatedLocationMode:Lcom/microsoft/azure/storage/LocationMode;

    return-void
.end method


# virtual methods
.method public getRetryInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/azure/storage/RetryInfo;->retryInterval:I

    return v0
.end method

.method public final getTargetLocation()Lcom/microsoft/azure/storage/StorageLocation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/RetryInfo;->targetLocation:Lcom/microsoft/azure/storage/StorageLocation;

    return-object v0
.end method

.method public getUpdatedLocationMode()Lcom/microsoft/azure/storage/LocationMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/RetryInfo;->updatedLocationMode:Lcom/microsoft/azure/storage/LocationMode;

    return-object v0
.end method

.method public setRetryInterval(I)V
    .locals 0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    iput p1, p0, Lcom/microsoft/azure/storage/RetryInfo;->retryInterval:I

    return-void
.end method

.method public setTargetLocation(Lcom/microsoft/azure/storage/StorageLocation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/RetryInfo;->targetLocation:Lcom/microsoft/azure/storage/StorageLocation;

    return-void
.end method

.method public setUpdatedLocationMode(Lcom/microsoft/azure/storage/LocationMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/RetryInfo;->updatedLocationMode:Lcom/microsoft/azure/storage/LocationMode;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/core/Utility;->LOCALE_US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/microsoft/azure/storage/RetryInfo;->targetLocation:Lcom/microsoft/azure/storage/StorageLocation;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/microsoft/azure/storage/RetryInfo;->retryInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "(%s,%s)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
