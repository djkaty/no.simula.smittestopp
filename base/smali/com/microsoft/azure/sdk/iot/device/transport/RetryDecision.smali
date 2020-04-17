.class public Lcom/microsoft/azure/sdk/iot/device/transport/RetryDecision;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final duration:J

.field public final shouldRetry:Z


# direct methods
.method public constructor <init>(ZJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/RetryDecision;->duration:J

    .line 3
    iput-boolean p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/RetryDecision;->shouldRetry:Z

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/RetryDecision;->duration:J

    return-wide v0
.end method

.method public shouldRetry()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/RetryDecision;->shouldRetry:Z

    return v0
.end method
