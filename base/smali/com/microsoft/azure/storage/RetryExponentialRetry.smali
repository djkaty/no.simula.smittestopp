.class public final Lcom/microsoft/azure/storage/RetryExponentialRetry;
.super Lcom/microsoft/azure/storage/RetryPolicy;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/storage/RetryPolicyFactory;


# instance fields
.field public final randRef:Ljava/util/Random;

.field public resolvedMaxBackoff:I

.field public resolvedMinBackoff:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x7530

    const/4 v1, 0x3

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/microsoft/azure/storage/RetryExponentialRetry;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/RetryPolicy;-><init>(II)V

    .line 3
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/storage/RetryExponentialRetry;->randRef:Ljava/util/Random;

    const p1, 0x15f90

    .line 4
    iput p1, p0, Lcom/microsoft/azure/storage/RetryExponentialRetry;->resolvedMaxBackoff:I

    const/16 p1, 0xbb8

    .line 5
    iput p1, p0, Lcom/microsoft/azure/storage/RetryExponentialRetry;->resolvedMinBackoff:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 6
    invoke-direct {p0, p2, p4}, Lcom/microsoft/azure/storage/RetryPolicy;-><init>(II)V

    .line 7
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    iput-object p2, p0, Lcom/microsoft/azure/storage/RetryExponentialRetry;->randRef:Ljava/util/Random;

    const p2, 0x15f90

    .line 8
    iput p2, p0, Lcom/microsoft/azure/storage/RetryExponentialRetry;->resolvedMaxBackoff:I

    const/16 p2, 0xbb8

    .line 9
    iput p2, p0, Lcom/microsoft/azure/storage/RetryExponentialRetry;->resolvedMinBackoff:I

    .line 10
    iput p1, p0, Lcom/microsoft/azure/storage/RetryExponentialRetry;->resolvedMinBackoff:I

    .line 11
    iput p3, p0, Lcom/microsoft/azure/storage/RetryExponentialRetry;->resolvedMaxBackoff:I

    return-void
.end method


# virtual methods
.method public createInstance(Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/RetryPolicy;
    .locals 4

    .line 1
    new-instance p1, Lcom/microsoft/azure/storage/RetryExponentialRetry;

    iget v0, p0, Lcom/microsoft/azure/storage/RetryExponentialRetry;->resolvedMinBackoff:I

    iget v1, p0, Lcom/microsoft/azure/storage/RetryPolicy;->deltaBackoffIntervalInMs:I

    iget v2, p0, Lcom/microsoft/azure/storage/RetryExponentialRetry;->resolvedMaxBackoff:I

    iget v3, p0, Lcom/microsoft/azure/storage/RetryPolicy;->maximumAttempts:I

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/microsoft/azure/storage/RetryExponentialRetry;-><init>(IIII)V

    return-object p1
.end method

.method public evaluate(Lcom/microsoft/azure/storage/RetryContext;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/RetryInfo;
    .locals 11

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

    :cond_1
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RetryContext;->getCurrentRetryCount()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    .line 5
    iget v2, p0, Lcom/microsoft/azure/storage/RetryPolicy;->deltaBackoffIntervalInMs:I

    int-to-double v3, v2

    const-wide v5, 0x3fe999999999999aL    # 0.8

    mul-double v3, v3, v5

    double-to-int v3, v3

    iget-object v4, p0, Lcom/microsoft/azure/storage/RetryExponentialRetry;->randRef:Ljava/util/Random;

    int-to-double v7, v2

    const-wide v9, 0x3ff3333333333333L    # 1.2

    mul-double v7, v7, v9

    double-to-int v7, v7

    int-to-double v8, v2

    mul-double v8, v8, v5

    double-to-int v2, v8

    sub-int/2addr v7, v2

    .line 6
    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v3

    int-to-double v2, v2

    mul-double v0, v0, v2

    .line 7
    iget v2, p0, Lcom/microsoft/azure/storage/RetryExponentialRetry;->resolvedMinBackoff:I

    int-to-double v2, v2

    add-double/2addr v2, v0

    iget v0, p0, Lcom/microsoft/azure/storage/RetryExponentialRetry;->resolvedMaxBackoff:I

    int-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    int-to-long v0, v1

    .line 8
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/microsoft/azure/storage/RetryPolicy;->evaluateRetryInfo(Lcom/microsoft/azure/storage/RetryContext;ZJ)Lcom/microsoft/azure/storage/RetryInfo;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v2
.end method
