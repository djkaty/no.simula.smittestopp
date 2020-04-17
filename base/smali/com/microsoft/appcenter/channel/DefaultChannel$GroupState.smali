.class public Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/channel/DefaultChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupState"
.end annotation


# instance fields
.field public final mBatchTimeInterval:J

.field public final mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

.field public final mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

.field public final mMaxLogsPerBatch:I

.field public final mMaxParallelBatches:I

.field public final mName:Ljava/lang/String;

.field public mPaused:Z

.field public final mPausedTargetKeys:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPendingLogCount:I

.field public final mRunnable:Ljava/lang/Runnable;

.field public mScheduled:Z

.field public final mSendingBatches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/microsoft/appcenter/ingestion/models/Log;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/microsoft/appcenter/channel/DefaultChannel;


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/channel/DefaultChannel;Ljava/lang/String;IJILcom/microsoft/appcenter/ingestion/Ingestion;Lcom/microsoft/appcenter/channel/Channel$GroupListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->this$0:Lcom/microsoft/appcenter/channel/DefaultChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mSendingBatches:Ljava/util/Map;

    .line 3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPausedTargetKeys:Ljava/util/Collection;

    .line 4
    new-instance p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState$1;

    invoke-direct {p1, p0}, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState$1;-><init>(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    iput-object p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mRunnable:Ljava/lang/Runnable;

    .line 5
    iput-object p2, p0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    .line 6
    iput p3, p0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mMaxLogsPerBatch:I

    .line 7
    iput-wide p4, p0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mBatchTimeInterval:J

    .line 8
    iput p6, p0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mMaxParallelBatches:I

    .line 9
    iput-object p7, p0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    .line 10
    iput-object p8, p0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    return-void
.end method
