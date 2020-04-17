.class public abstract Lcom/microsoft/azure/storage/RetryPolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/storage/RetryPolicyFactory;


# static fields
.field public static final DEFAULT_CLIENT_BACKOFF:I = 0x7530

.field public static final DEFAULT_CLIENT_RETRY_COUNT:I = 0x3

.field public static final DEFAULT_MAX_BACKOFF:I = 0x15f90

.field public static final DEFAULT_MIN_BACKOFF:I = 0xbb8


# instance fields
.field public deltaBackoffIntervalInMs:I

.field public lastPrimaryAttempt:Ljava/util/Date;

.field public lastSecondaryAttempt:Ljava/util/Date;

.field public maximumAttempts:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/storage/RetryPolicy;->lastPrimaryAttempt:Ljava/util/Date;

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/storage/RetryPolicy;->lastSecondaryAttempt:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/microsoft/azure/storage/RetryPolicy;->lastPrimaryAttempt:Ljava/util/Date;

    .line 6
    iput-object v0, p0, Lcom/microsoft/azure/storage/RetryPolicy;->lastSecondaryAttempt:Ljava/util/Date;

    .line 7
    iput p1, p0, Lcom/microsoft/azure/storage/RetryPolicy;->deltaBackoffIntervalInMs:I

    .line 8
    iput p2, p0, Lcom/microsoft/azure/storage/RetryPolicy;->maximumAttempts:I

    return-void
.end method


# virtual methods
.method public abstract evaluate(Lcom/microsoft/azure/storage/RetryContext;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/RetryInfo;
.end method

.method public evaluateLastAttemptAndSecondaryNotFound(Lcom/microsoft/azure/storage/RetryContext;)Z
    .locals 2

    const-string v0, "retryContext"

    .line 1
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RetryContext;->getLastRequestResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/RequestResult;->getTargetLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/storage/StorageLocation;->PRIMARY:Lcom/microsoft/azure/storage/StorageLocation;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RetryContext;->getLastRequestResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/RequestResult;->getStopDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/RetryPolicy;->lastPrimaryAttempt:Ljava/util/Date;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RetryContext;->getLastRequestResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/RequestResult;->getStopDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/RetryPolicy;->lastSecondaryAttempt:Ljava/util/Date;

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RetryContext;->getLastRequestResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/RequestResult;->getTargetLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/storage/StorageLocation;->SECONDARY:Lcom/microsoft/azure/storage/StorageLocation;

    if-ne v0, v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RetryContext;->getLastRequestResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result p1

    const/16 v0, 0x194

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public evaluateRetryInfo(Lcom/microsoft/azure/storage/RetryContext;ZJ)Lcom/microsoft/azure/storage/RetryInfo;
    .locals 5

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/RetryInfo;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/storage/RetryInfo;-><init>(Lcom/microsoft/azure/storage/RetryContext;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RetryContext;->getLocationMode()Lcom/microsoft/azure/storage/LocationMode;

    move-result-object p1

    sget-object p2, Lcom/microsoft/azure/storage/LocationMode;->SECONDARY_ONLY:Lcom/microsoft/azure/storage/LocationMode;

    if-eq p1, p2, :cond_0

    .line 3
    sget-object p1, Lcom/microsoft/azure/storage/LocationMode;->PRIMARY_ONLY:Lcom/microsoft/azure/storage/LocationMode;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/storage/RetryInfo;->setUpdatedLocationMode(Lcom/microsoft/azure/storage/LocationMode;)V

    .line 4
    sget-object p1, Lcom/microsoft/azure/storage/StorageLocation;->PRIMARY:Lcom/microsoft/azure/storage/StorageLocation;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/storage/RetryInfo;->setTargetLocation(Lcom/microsoft/azure/storage/StorageLocation;)V

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/RetryInfo;->getTargetLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object p1

    sget-object p2, Lcom/microsoft/azure/storage/StorageLocation;->PRIMARY:Lcom/microsoft/azure/storage/StorageLocation;

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/microsoft/azure/storage/RetryPolicy;->lastPrimaryAttempt:Ljava/util/Date;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/microsoft/azure/storage/RetryPolicy;->lastSecondaryAttempt:Ljava/util/Date;

    :goto_0
    if-eqz p1, :cond_3

    .line 6
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_2

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 7
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    sub-long v3, v1, p1

    :cond_2
    sub-long/2addr p3, v3

    long-to-int p1, p3

    .line 8
    invoke-virtual {v0, p1}, Lcom/microsoft/azure/storage/RetryInfo;->setRetryInterval(I)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 9
    invoke-virtual {v0, p1}, Lcom/microsoft/azure/storage/RetryInfo;->setRetryInterval(I)V

    :goto_1
    return-object v0
.end method
