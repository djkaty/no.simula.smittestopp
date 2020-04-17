.class public final Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadInProgress;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public statusCallback:Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;

.field public statusCallbackContext:Ljava/lang/Object;

.field public task:Ljava/util/concurrent/Future;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadInProgress;->statusCallback:Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;

    .line 3
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadInProgress;->statusCallbackContext:Ljava/lang/Object;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "status callback is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public isCancelled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadInProgress;->task:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "future task is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTask(Ljava/util/concurrent/Future;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadInProgress;->task:Ljava/util/concurrent/Future;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "future task is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public triggerCallback(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadInProgress;->statusCallback:Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadInProgress;->statusCallbackContext:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;->execute(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;Ljava/lang/Object;)V

    return-void
.end method
