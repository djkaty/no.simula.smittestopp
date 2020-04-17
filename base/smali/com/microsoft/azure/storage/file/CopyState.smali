.class public final Lcom/microsoft/azure/storage/file/CopyState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bytesCopied:Ljava/lang/Long;

.field public completionTime:Ljava/util/Date;

.field public copyId:Ljava/lang/String;

.field public source:Ljava/net/URI;

.field public status:Lcom/microsoft/azure/storage/file/CopyStatus;

.field public statusDescription:Ljava/lang/String;

.field public totalBytes:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBytesCopied()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CopyState;->bytesCopied:Ljava/lang/Long;

    return-object v0
.end method

.method public getCompletionTime()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CopyState;->completionTime:Ljava/util/Date;

    return-object v0
.end method

.method public getCopyId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CopyState;->copyId:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CopyState;->source:Ljava/net/URI;

    return-object v0
.end method

.method public getStatus()Lcom/microsoft/azure/storage/file/CopyStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CopyState;->status:Lcom/microsoft/azure/storage/file/CopyStatus;

    return-object v0
.end method

.method public getStatusDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CopyState;->statusDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalBytes()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CopyState;->totalBytes:Ljava/lang/Long;

    return-object v0
.end method

.method public setBytesCopied(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/CopyState;->bytesCopied:Ljava/lang/Long;

    return-void
.end method

.method public setCompletionTime(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/CopyState;->completionTime:Ljava/util/Date;

    return-void
.end method

.method public setCopyId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/CopyState;->copyId:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/net/URI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/CopyState;->source:Ljava/net/URI;

    return-void
.end method

.method public setStatus(Lcom/microsoft/azure/storage/file/CopyStatus;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/CopyState;->status:Lcom/microsoft/azure/storage/file/CopyStatus;

    return-void
.end method

.method public setStatusDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/CopyState;->statusDescription:Ljava/lang/String;

    return-void
.end method

.method public setTotalBytes(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/CopyState;->totalBytes:Ljava/lang/Long;

    return-void
.end method
