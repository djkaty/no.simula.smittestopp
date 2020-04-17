.class public final Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload$FileUploadStatusCallBack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FileUploadStatusCallBack"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload$FileUploadStatusCallBack;->this$0:Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload$FileUploadStatusCallBack;-><init>(Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    instance-of v0, p2, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadInProgress;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p2

    check-cast v0, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadInProgress;

    .line 3
    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUploadInProgress;->triggerCallback(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-static {}, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;->access$100()Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 5
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;->access$200()Lk/f/b;

    move-result-object p2

    const-string v0, "FileUploadStatusCallBack received callback for unknown FileUpload"

    invoke-interface {p2, v0, p1}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 6
    :cond_0
    invoke-static {}, Lcom/microsoft/azure/sdk/iot/device/fileupload/FileUpload;->access$200()Lk/f/b;

    move-result-object p1

    const-string p2, "FileUploadStatusCallBack received callback for unknown FileUpload"

    invoke-interface {p1, p2}, Lk/f/b;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
