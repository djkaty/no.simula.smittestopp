.class public Lcom/microsoft/azure/storage/file/FileOutputStream$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/storage/file/FileOutputStream;->dispatchWrite(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/azure/storage/file/FileOutputStream;

.field public final synthetic val$bufferRef:Ljava/io/ByteArrayInputStream;

.field public final synthetic val$fileRef:Lcom/microsoft/azure/storage/file/CloudFile;

.field public final synthetic val$opOffset:J

.field public final synthetic val$opWriteLength:J


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/file/FileOutputStream;Lcom/microsoft/azure/storage/file/CloudFile;Ljava/io/ByteArrayInputStream;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileOutputStream$1;->this$0:Lcom/microsoft/azure/storage/file/FileOutputStream;

    iput-object p2, p0, Lcom/microsoft/azure/storage/file/FileOutputStream$1;->val$fileRef:Lcom/microsoft/azure/storage/file/CloudFile;

    iput-object p3, p0, Lcom/microsoft/azure/storage/file/FileOutputStream$1;->val$bufferRef:Ljava/io/ByteArrayInputStream;

    iput-wide p4, p0, Lcom/microsoft/azure/storage/file/FileOutputStream$1;->val$opOffset:J

    iput-wide p6, p0, Lcom/microsoft/azure/storage/file/FileOutputStream$1;->val$opWriteLength:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/FileOutputStream$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 10

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/azure/storage/file/FileOutputStream$1;->val$fileRef:Lcom/microsoft/azure/storage/file/CloudFile;

    iget-object v2, p0, Lcom/microsoft/azure/storage/file/FileOutputStream$1;->val$bufferRef:Ljava/io/ByteArrayInputStream;

    iget-wide v3, p0, Lcom/microsoft/azure/storage/file/FileOutputStream$1;->val$opOffset:J

    iget-wide v5, p0, Lcom/microsoft/azure/storage/file/FileOutputStream$1;->val$opWriteLength:J

    iget-object v7, p0, Lcom/microsoft/azure/storage/file/FileOutputStream$1;->this$0:Lcom/microsoft/azure/storage/file/FileOutputStream;

    iget-object v7, v7, Lcom/microsoft/azure/storage/file/FileOutputStream;->accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    iget-object v8, p0, Lcom/microsoft/azure/storage/file/FileOutputStream$1;->this$0:Lcom/microsoft/azure/storage/file/FileOutputStream;

    iget-object v8, v8, Lcom/microsoft/azure/storage/file/FileOutputStream;->options:Lcom/microsoft/azure/storage/file/FileRequestOptions;

    iget-object v9, p0, Lcom/microsoft/azure/storage/file/FileOutputStream$1;->this$0:Lcom/microsoft/azure/storage/file/FileOutputStream;

    iget-object v9, v9, Lcom/microsoft/azure/storage/file/FileOutputStream;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    invoke-virtual/range {v1 .. v9}, Lcom/microsoft/azure/storage/file/CloudFile;->uploadRange(Ljava/io/InputStream;JJLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    iget-object v2, p0, Lcom/microsoft/azure/storage/file/FileOutputStream$1;->this$0:Lcom/microsoft/azure/storage/file/FileOutputStream;

    iget-object v2, v2, Lcom/microsoft/azure/storage/file/FileOutputStream;->lastErrorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4
    :try_start_1
    iget-object v3, p0, Lcom/microsoft/azure/storage/file/FileOutputStream$1;->this$0:Lcom/microsoft/azure/storage/file/FileOutputStream;

    iput-boolean v0, v3, Lcom/microsoft/azure/storage/file/FileOutputStream;->streamFaulted:Z

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileOutputStream$1;->this$0:Lcom/microsoft/azure/storage/file/FileOutputStream;

    invoke-static {v1}, Lcom/microsoft/azure/storage/core/Utility;->initIOException(Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/azure/storage/file/FileOutputStream;->lastError:Ljava/io/IOException;

    .line 6
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_1
    move-exception v1

    .line 7
    iget-object v2, p0, Lcom/microsoft/azure/storage/file/FileOutputStream$1;->this$0:Lcom/microsoft/azure/storage/file/FileOutputStream;

    iget-object v2, v2, Lcom/microsoft/azure/storage/file/FileOutputStream;->lastErrorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 8
    :try_start_2
    iget-object v3, p0, Lcom/microsoft/azure/storage/file/FileOutputStream$1;->this$0:Lcom/microsoft/azure/storage/file/FileOutputStream;

    iput-boolean v0, v3, Lcom/microsoft/azure/storage/file/FileOutputStream;->streamFaulted:Z

    .line 9
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileOutputStream$1;->this$0:Lcom/microsoft/azure/storage/file/FileOutputStream;

    iput-object v1, v0, Lcom/microsoft/azure/storage/file/FileOutputStream;->lastError:Ljava/io/IOException;

    .line 10
    monitor-exit v2

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
