.class public abstract Lcom/microsoft/azure/storage/RequestOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public locationMode:Lcom/microsoft/azure/storage/LocationMode;

.field public maximumExecutionTimeInMs:Ljava/lang/Integer;

.field public operationExpiryTime:Ljava/lang/Long;

.field public requireEncryption:Ljava/lang/Boolean;

.field public retryPolicyFactory:Lcom/microsoft/azure/storage/RetryPolicyFactory;

.field public timeoutIntervalInMs:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/RequestOptions;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/RequestOptions;->setRetryPolicyFactory(Lcom/microsoft/azure/storage/RetryPolicyFactory;)V

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestOptions;->getTimeoutIntervalInMs()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/RequestOptions;->setTimeoutIntervalInMs(Ljava/lang/Integer;)V

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestOptions;->getLocationMode()Lcom/microsoft/azure/storage/LocationMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/RequestOptions;->setLocationMode(Lcom/microsoft/azure/storage/LocationMode;)V

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestOptions;->getMaximumExecutionTimeInMs()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/RequestOptions;->setMaximumExecutionTimeInMs(Ljava/lang/Integer;)V

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestOptions;->getOperationExpiryTimeInMs()Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/RequestOptions;->setOperationExpiryTimeInMs(Ljava/lang/Long;)V

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestOptions;->requireEncryption()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/RequestOptions;->setRequireEncryption(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public static applyBaseDefaultsInternal(Lcom/microsoft/azure/storage/RequestOptions;)V
    .locals 1

    const-string v0, "modifiedOptions"

    .line 1
    invoke-static {v0, p0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/RetryExponentialRetry;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/RetryExponentialRetry;-><init>()V

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/RequestOptions;->setRetryPolicyFactory(Lcom/microsoft/azure/storage/RetryPolicyFactory;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/RequestOptions;->getLocationMode()Lcom/microsoft/azure/storage/LocationMode;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lcom/microsoft/azure/storage/LocationMode;->PRIMARY_ONLY:Lcom/microsoft/azure/storage/LocationMode;

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/RequestOptions;->setLocationMode(Lcom/microsoft/azure/storage/LocationMode;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/RequestOptions;->requireEncryption()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/RequestOptions;->setRequireEncryption(Ljava/lang/Boolean;)V

    :cond_2
    return-void
.end method

.method public static populateRequestOptions(Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/RequestOptions;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/RequestOptions;->setRetryPolicyFactory(Lcom/microsoft/azure/storage/RetryPolicyFactory;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/RequestOptions;->getLocationMode()Lcom/microsoft/azure/storage/LocationMode;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestOptions;->getLocationMode()Lcom/microsoft/azure/storage/LocationMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/RequestOptions;->setLocationMode(Lcom/microsoft/azure/storage/LocationMode;)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/RequestOptions;->getTimeoutIntervalInMs()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestOptions;->getTimeoutIntervalInMs()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/RequestOptions;->setTimeoutIntervalInMs(Ljava/lang/Integer;)V

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/RequestOptions;->requireEncryption()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestOptions;->requireEncryption()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/RequestOptions;->setRequireEncryption(Ljava/lang/Boolean;)V

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/RequestOptions;->getMaximumExecutionTimeInMs()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_4

    .line 10
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestOptions;->getMaximumExecutionTimeInMs()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/RequestOptions;->setMaximumExecutionTimeInMs(Ljava/lang/Integer;)V

    .line 11
    :cond_4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/RequestOptions;->getMaximumExecutionTimeInMs()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 12
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/RequestOptions;->getOperationExpiryTimeInMs()Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_5

    if-eqz p2, :cond_5

    .line 13
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    .line 14
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/RequestOptions;->getMaximumExecutionTimeInMs()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    .line 15
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/RequestOptions;->setOperationExpiryTimeInMs(Ljava/lang/Long;)V

    :cond_5
    return-void
.end method

.method private setOperationExpiryTimeInMs(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/RequestOptions;->operationExpiryTime:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final getLocationMode()Lcom/microsoft/azure/storage/LocationMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/RequestOptions;->locationMode:Lcom/microsoft/azure/storage/LocationMode;

    return-object v0
.end method

.method public getMaximumExecutionTimeInMs()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/RequestOptions;->maximumExecutionTimeInMs:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOperationExpiryTimeInMs()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/RequestOptions;->operationExpiryTime:Ljava/lang/Long;

    return-object v0
.end method

.method public final getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/RequestOptions;->retryPolicyFactory:Lcom/microsoft/azure/storage/RetryPolicyFactory;

    return-object v0
.end method

.method public final getTimeoutIntervalInMs()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/RequestOptions;->timeoutIntervalInMs:Ljava/lang/Integer;

    return-object v0
.end method

.method public requireEncryption()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/RequestOptions;->requireEncryption:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setLocationMode(Lcom/microsoft/azure/storage/LocationMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/RequestOptions;->locationMode:Lcom/microsoft/azure/storage/LocationMode;

    return-void
.end method

.method public setMaximumExecutionTimeInMs(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/RequestOptions;->maximumExecutionTimeInMs:Ljava/lang/Integer;

    return-void
.end method

.method public setRequireEncryption(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/RequestOptions;->requireEncryption:Ljava/lang/Boolean;

    return-void
.end method

.method public final setRetryPolicyFactory(Lcom/microsoft/azure/storage/RetryPolicyFactory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/RequestOptions;->retryPolicyFactory:Lcom/microsoft/azure/storage/RetryPolicyFactory;

    return-void
.end method

.method public final setTimeoutIntervalInMs(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/RequestOptions;->timeoutIntervalInMs:Ljava/lang/Integer;

    return-void
.end method
