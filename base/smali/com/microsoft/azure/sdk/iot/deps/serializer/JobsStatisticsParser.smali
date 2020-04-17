.class public Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsStatisticsParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEVICECOUNT_TAG:Ljava/lang/String; = "deviceCount"

.field public static final FAILEDCOUNT_TAG:Ljava/lang/String; = "failedCount"

.field public static final PENDINGCOUNT_TAG:Ljava/lang/String; = "pendingCount"

.field public static final RUNNINGCOUNT_TAG:Ljava/lang/String; = "runningCount"

.field public static final SUCCEEDEDCOUNT_TAG:Ljava/lang/String; = "succeededCount"


# instance fields
.field public deviceCount:I
    .annotation runtime Le/c/c/v/c;
        value = "deviceCount"
    .end annotation
.end field

.field public failedCount:I
    .annotation runtime Le/c/c/v/c;
        value = "failedCount"
    .end annotation
.end field

.field public pendingCount:I
    .annotation runtime Le/c/c/v/c;
        value = "pendingCount"
    .end annotation
.end field

.field public runningCount:I
    .annotation runtime Le/c/c/v/c;
        value = "runningCount"
    .end annotation
.end field

.field public succeededCount:I
    .annotation runtime Le/c/c/v/c;
        value = "succeededCount"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsStatisticsParser;->deviceCount:I

    return v0
.end method

.method public getFailedCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsStatisticsParser;->failedCount:I

    return v0
.end method

.method public getPendingCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsStatisticsParser;->pendingCount:I

    return v0
.end method

.method public getRunningCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsStatisticsParser;->runningCount:I

    return v0
.end method

.method public getSucceededCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/JobsStatisticsParser;->succeededCount:I

    return v0
.end method
