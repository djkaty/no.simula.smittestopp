.class public final Lcom/microsoft/azure/storage/RetryLinearRetry;
.super Lcom/microsoft/azure/storage/RetryPolicy;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/storage/RetryPolicyFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x7530

    const/4 v1, 0x3

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/microsoft/azure/storage/RetryLinearRetry;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/RetryPolicy;-><init>(II)V

    return-void
.end method


# virtual methods
.method public createInstance(Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/RetryPolicy;
    .locals 2

    .line 1
    new-instance p1, Lcom/microsoft/azure/storage/RetryLinearRetry;

    iget v0, p0, Lcom/microsoft/azure/storage/RetryPolicy;->deltaBackoffIntervalInMs:I

    iget v1, p0, Lcom/microsoft/azure/storage/RetryPolicy;->maximumAttempts:I

    invoke-direct {p1, v0, v1}, Lcom/microsoft/azure/storage/RetryLinearRetry;-><init>(II)V

    return-object p1
.end method

.method public evaluate(Lcom/microsoft/azure/storage/RetryContext;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/RetryInfo;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/RetryPolicy;->evaluateLastAttemptAndSecondaryNotFound(Lcom/microsoft/azure/storage/RetryContext;)Z

    move-result p2

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RetryContext;->getCurrentRetryCount()I

    move-result v0

    iget v1, p0, Lcom/microsoft/azure/storage/RetryPolicy;->maximumAttempts:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RetryContext;->getLastRequestResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result v0

    if-nez p2, :cond_0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    const/16 v1, 0x198

    if-ne v0, v1, :cond_2

    :cond_0
    const/16 v1, 0x1f5

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1f9

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Lcom/microsoft/azure/storage/RetryPolicy;->deltaBackoffIntervalInMs:I

    const v1, 0x15f90

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0xbb8

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    .line 7
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/microsoft/azure/storage/RetryPolicy;->evaluateRetryInfo(Lcom/microsoft/azure/storage/RetryContext;ZJ)Lcom/microsoft/azure/storage/RetryInfo;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v2
.end method
