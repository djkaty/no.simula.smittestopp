.class public final Lcom/microsoft/azure/storage/blob/CopyState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bytesCopied:Ljava/lang/Long;

.field public completionTime:Ljava/util/Date;

.field public copyDestinationSnapshotID:Ljava/lang/String;

.field public copyId:Ljava/lang/String;

.field public source:Ljava/net/URI;

.field public status:Lcom/microsoft/azure/storage/blob/CopyStatus;

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
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CopyState;->bytesCopied:Ljava/lang/Long;

    return-object v0
.end method

.method public getCompletionTime()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CopyState;->completionTime:Ljava/util/Date;

    return-object v0
.end method

.method public getCopyDestinationSnapshotID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CopyState;->copyDestinationSnapshotID:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CopyState;->copyId:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CopyState;->source:Ljava/net/URI;

    return-object v0
.end method

.method public getStatus()Lcom/microsoft/azure/storage/blob/CopyStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CopyState;->status:Lcom/microsoft/azure/storage/blob/CopyStatus;

    return-object v0
.end method

.method public getStatusDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CopyState;->statusDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalBytes()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CopyState;->totalBytes:Ljava/lang/Long;

    return-object v0
.end method

.method public setBytesCopied(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CopyState;->bytesCopied:Ljava/lang/Long;

    return-void
.end method

.method public setCompletionTime(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CopyState;->completionTime:Ljava/util/Date;

    return-void
.end method

.method public setCopyDestinationSnapshotID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CopyState;->copyDestinationSnapshotID:Ljava/lang/String;

    return-void
.end method

.method public setCopyId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CopyState;->copyId:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/net/URI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CopyState;->source:Ljava/net/URI;

    return-void
.end method

.method public setStatus(Lcom/microsoft/azure/storage/blob/CopyStatus;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CopyState;->status:Lcom/microsoft/azure/storage/blob/CopyStatus;

    return-void
.end method

.method public setStatusDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CopyState;->statusDescription:Ljava/lang/String;

    return-void
.end method

.method public setTotalBytes(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CopyState;->totalBytes:Ljava/lang/Long;

    return-void
.end method
