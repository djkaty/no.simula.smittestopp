.class public final Lcom/microsoft/azure/storage/file/FileRange;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public endOffset:J

.field public startOffset:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/azure/storage/file/FileRange;->setStartOffset(J)V

    .line 3
    invoke-virtual {p0, p3, p4}, Lcom/microsoft/azure/storage/file/FileRange;->setEndOffset(J)V

    return-void
.end method


# virtual methods
.method public getEndOffset()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/storage/file/FileRange;->endOffset:J

    return-wide v0
.end method

.method public getStartOffset()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/storage/file/FileRange;->startOffset:J

    return-wide v0
.end method

.method public setEndOffset(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/microsoft/azure/storage/file/FileRange;->endOffset:J

    return-void
.end method

.method public setStartOffset(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/microsoft/azure/storage/file/FileRange;->startOffset:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/FileRange;->getStartOffset()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/FileRange;->getEndOffset()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "bytes=%d-%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
