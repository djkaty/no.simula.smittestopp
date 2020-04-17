.class public final Lj/b/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/sdk/iot/device/transport/RetryPolicy;


# static fields
.field public static final a:Lj/b/a/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj/b/a/j;

    invoke-direct {v0}, Lj/b/a/j;-><init>()V

    sput-object v0, Lj/b/a/j;->a:Lj/b/a/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRetryDecision(ILcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;)Lcom/microsoft/azure/sdk/iot/device/transport/RetryDecision;
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/microsoft/appcenter/crashes/Crashes;->trackError(Ljava/lang/Throwable;)V

    .line 2
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/transport/RetryDecision;

    const/4 p2, 0x0

    const-wide/16 v0, 0x2710

    invoke-direct {p1, p2, v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/RetryDecision;-><init>(ZJ)V

    return-object p1
.end method
