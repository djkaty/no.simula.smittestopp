.class public Lcom/microsoft/azure/sdk/iot/device/transport/NoRetry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/sdk/iot/device/transport/RetryPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRetryDecision(ILcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;)Lcom/microsoft/azure/sdk/iot/device/transport/RetryDecision;
    .locals 2

    .line 1
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/transport/RetryDecision;

    const/4 p2, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p1, p2, v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/RetryDecision;-><init>(ZJ)V

    return-object p1
.end method
