.class public Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/sdk/iot/device/transport/RetryPolicy;


# instance fields
.field public deltaBackoff:J

.field public firstFastRetry:Z

.field public maxBackoff:J

.field public minBackoff:J

.field public random:Ljava/security/SecureRandom;

.field public retryCount:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;->retryCount:I

    const-wide/16 v0, 0x64

    .line 3
    iput-wide v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;->minBackoff:J

    const-wide/16 v2, 0x2710

    .line 4
    iput-wide v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;->maxBackoff:J

    .line 5
    iput-wide v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;->deltaBackoff:J

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;->firstFastRetry:Z

    .line 7
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>(IJJJZ)V
    .locals 4

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 9
    iput v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;->retryCount:I

    const-wide/16 v0, 0x64

    .line 10
    iput-wide v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;->minBackoff:J

    const-wide/16 v2, 0x2710

    .line 11
    iput-wide v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;->maxBackoff:J

    .line 12
    iput-wide v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;->deltaBackoff:J

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;->firstFastRetry:Z

    .line 14
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;->random:Ljava/security/SecureRandom;

    if-lez p1, :cond_0

    .line 15
    iput p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;->retryCount:I

    .line 16
    iput-wide p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;->minBackoff:J

    .line 17
    iput-wide p4, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;->maxBackoff:J

    .line 18
    iput-wide p6, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;->deltaBackoff:J

    .line 19
    iput-boolean p8, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;->firstFastRetry:Z

    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "retryCount cannot be less than or equal to 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getRetryDecision(ILcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;)Lcom/microsoft/azure/sdk/iot/device/transport/RetryDecision;
    .locals 7

    const/4 p2, 0x1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    iget-boolean v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;->firstFastRetry:Z

    if-eqz v2, :cond_0

    .line 2
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/transport/RetryDecision;

    invoke-direct {p1, p2, v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/RetryDecision;-><init>(ZJ)V

    return-object p1

    .line 3
    :cond_0
    iget v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;->retryCount:I

    if-ge p1, v2, :cond_1

    .line 4
    iget-wide v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;->deltaBackoff:J

    long-to-double v2, v0

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double v2, v2, v4

    double-to-int v2, v2

    long-to-double v0, v0

    const-wide v3, 0x3ff3333333333333L    # 1.2

    mul-double v0, v0, v3

    double-to-int v0, v0

    .line 5
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;->random:Ljava/security/SecureRandom;

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    int-to-double v5, p1

    .line 6
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    int-to-long v5, v2

    add-long/2addr v0, v5

    long-to-double v0, v0

    mul-double v3, v3, v0

    double-to-int p1, v3

    int-to-long v0, p1

    .line 7
    iget-wide v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;->minBackoff:J

    long-to-double v2, v2

    long-to-double v0, v0

    add-double/2addr v2, v0

    iget-wide v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/ExponentialBackoffWithJitter;->maxBackoff:J

    long-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int p1, v0

    int-to-long v0, p1

    .line 8
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/transport/RetryDecision;

    invoke-direct {p1, p2, v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/RetryDecision;-><init>(ZJ)V

    return-object p1

    .line 9
    :cond_1
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/transport/RetryDecision;

    const/4 p2, 0x0

    invoke-direct {p1, p2, v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/RetryDecision;-><init>(ZJ)V

    return-object p1
.end method
