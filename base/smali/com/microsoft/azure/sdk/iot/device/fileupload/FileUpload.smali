.class public final Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload$FileUploadStatusCallBack;
    }
.end annotation


# static fields
.field public static final MAX_UPLOAD_PARALLEL:I = 0xa

.field public static fileUploadInProgressesSet:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadInProgress;",
            ">;"
        }
    .end annotation
.end field

.field public static final log:Lk/f/b;


# instance fields
.field public fileUploadStatusCallBack:Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload$FileUploadStatusCallBack;

.field public httpsTransportManager:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;

.field public taskScheduler:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;->log:Lk/f/b;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;-><init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;->httpsTransportManager:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;

    const/16 p1, 0xa

    .line 3
    :try_start_0
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;->taskScheduler:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    new-instance p1, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    sput-object p1, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;->fileUploadInProgressesSet:Ljava/util/Queue;

    .line 5
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload$FileUploadStatusCallBack;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload$FileUploadStatusCallBack;-><init>(Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload$1;)V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;->fileUploadStatusCallBack:Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload$FileUploadStatusCallBack;

    .line 6
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;->log:Lk/f/b;

    const-string v0, "FileUpload object is created successfully"

    invoke-interface {p1, v0}, Lk/f/b;->c(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 7
    :goto_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create a pool of threads to manager uploads: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "config is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$100()Ljava/util/Queue;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;->fileUploadInProgressesSet:Ljava/util/Queue;

    return-object v0
.end method

.method public static synthetic access$200()Lk/f/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;->log:Lk/f/b;

    return-object v0
.end method


# virtual methods
.method public closeNow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;->taskScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 2
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;->fileUploadInProgressesSet:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadInProgress;

    .line 3
    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadInProgress;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->ERROR:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    invoke-virtual {v1, v2}, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadInProgress;->triggerCallback(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized uploadToBlobAsync(Ljava/lang/String;Ljava/io/InputStream;JLcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;)V
    .locals 11

    move-object v1, p0

    move-object/from16 v0, p5

    monitor-enter p0

    if-eqz p1, :cond_3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    if-ltz v4, :cond_1

    if-eqz v0, :cond_0

    .line 2
    new-instance v10, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadInProgress;

    move-object/from16 v2, p6

    invoke-direct {v10, v0, v2}, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadInProgress;-><init>(Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;->fileUploadInProgressesSet:Ljava/util/Queue;

    invoke-interface {v0, v10}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;

    iget-object v7, v1, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;->httpsTransportManager:Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;

    iget-object v8, v1, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;->fileUploadStatusCallBack:Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload$FileUploadStatusCallBack;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-object v9, v10

    invoke-direct/range {v2 .. v9}, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadTask;-><init>(Ljava/lang/String;Ljava/io/InputStream;JLcom/microsoft/azure/sdk/iot/device/transport/https/HttpsTransportManager;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;)V

    .line 5
    iget-object v2, v1, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;->taskScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadInProgress;->setTask(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "statusCallback is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "streamLength is negative"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "inputStream is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "blobName is null or empty"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
