.class public final Lcom/microsoft/azure/storage/RetryContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final currentRetryCount:I

.field public final lastRequestResult:Lcom/microsoft/azure/storage/RequestResult;

.field public final locationMode:Lcom/microsoft/azure/storage/LocationMode;

.field public final nextLocation:Lcom/microsoft/azure/storage/StorageLocation;


# direct methods
.method public constructor <init>(ILcom/microsoft/azure/storage/RequestResult;Lcom/microsoft/azure/storage/StorageLocation;Lcom/microsoft/azure/storage/LocationMode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/microsoft/azure/storage/RetryContext;->currentRetryCount:I

    .line 3
    iput-object p2, p0, Lcom/microsoft/azure/storage/RetryContext;->lastRequestResult:Lcom/microsoft/azure/storage/RequestResult;

    .line 4
    iput-object p3, p0, Lcom/microsoft/azure/storage/RetryContext;->nextLocation:Lcom/microsoft/azure/storage/StorageLocation;

    .line 5
    iput-object p4, p0, Lcom/microsoft/azure/storage/RetryContext;->locationMode:Lcom/microsoft/azure/storage/LocationMode;

    return-void
.end method


# virtual methods
.method public getCurrentRetryCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/azure/storage/RetryContext;->currentRetryCount:I

    return v0
.end method

.method public getLastRequestResult()Lcom/microsoft/azure/storage/RequestResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/RetryContext;->lastRequestResult:Lcom/microsoft/azure/storage/RequestResult;

    return-object v0
.end method

.method public getLocationMode()Lcom/microsoft/azure/storage/LocationMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/RetryContext;->locationMode:Lcom/microsoft/azure/storage/LocationMode;

    return-object v0
.end method

.method public getNextLocation()Lcom/microsoft/azure/storage/StorageLocation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/RetryContext;->nextLocation:Lcom/microsoft/azure/storage/StorageLocation;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/core/Utility;->LOCALE_US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/microsoft/azure/storage/RetryContext;->currentRetryCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/microsoft/azure/storage/RetryContext;->locationMode:Lcom/microsoft/azure/storage/LocationMode;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "(%s,%s)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
