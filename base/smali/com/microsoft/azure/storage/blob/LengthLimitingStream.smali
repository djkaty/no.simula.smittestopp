.class public Lcom/microsoft/azure/storage/blob/LengthLimitingStream;
.super Lcom/microsoft/azure/storage/blob/BlobOutputStream;
.source "SourceFile"


# instance fields
.field public endOffset:Ljava/lang/Long;

.field public length:Ljava/lang/Long;

.field public position:J

.field public startOffset:J

.field public final wrappedStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;JLjava/lang/Long;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/storage/blob/BlobOutputStream;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/LengthLimitingStream;->wrappedStream:Ljava/io/OutputStream;

    .line 3
    iput-wide p2, p0, Lcom/microsoft/azure/storage/blob/LengthLimitingStream;->startOffset:J

    .line 4
    iput-object p4, p0, Lcom/microsoft/azure/storage/blob/LengthLimitingStream;->length:Ljava/lang/Long;

    if-eqz p4, :cond_0

    .line 5
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    add-long/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/LengthLimitingStream;->endOffset:Ljava/lang/Long;

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/LengthLimitingStream;->wrappedStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(Ljava/io/InputStream;J)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p0

    move-wide v2, p2

    .line 8
    invoke-static/range {v0 .. v7}, Lcom/microsoft/azure/storage/core/Utility;->writeToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;JZZLcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/RequestOptions;)Lcom/microsoft/azure/storage/core/StreamMd5AndLength;

    return-void
.end method

.method public write([BII)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/storage/blob/LengthLimitingStream;->position:J

    iget-wide v2, p0, Lcom/microsoft/azure/storage/blob/LengthLimitingStream;->startOffset:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    sub-long/2addr v2, v0

    int-to-long v0, p3

    .line 2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 3
    iget-wide v2, p0, Lcom/microsoft/azure/storage/blob/LengthLimitingStream;->position:J

    int-to-long v0, v1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/microsoft/azure/storage/blob/LengthLimitingStream;->position:J

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/LengthLimitingStream;->endOffset:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/microsoft/azure/storage/blob/LengthLimitingStream;->position:J

    sub-long/2addr v0, v2

    int-to-long v2, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :cond_1
    if-lez p3, :cond_2

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/LengthLimitingStream;->wrappedStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 7
    iget-wide p1, p0, Lcom/microsoft/azure/storage/blob/LengthLimitingStream;->position:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/microsoft/azure/storage/blob/LengthLimitingStream;->position:J

    :cond_2
    return-void
.end method
