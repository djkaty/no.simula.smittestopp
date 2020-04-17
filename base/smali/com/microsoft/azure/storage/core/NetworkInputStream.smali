.class public Lcom/microsoft/azure/storage/core/NetworkInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public bytesRead:J

.field public final expectedLength:J

.field public final inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/microsoft/azure/storage/core/NetworkInputStream;->bytesRead:J

    .line 3
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/NetworkInputStream;->inputStream:Ljava/io/InputStream;

    .line 4
    iput-wide p2, p0, Lcom/microsoft/azure/storage/core/NetworkInputStream;->expectedLength:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/NetworkInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public read([BII)I
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/NetworkInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-le p1, p2, :cond_0

    .line 3
    iget-wide p2, p0, Lcom/microsoft/azure/storage/core/NetworkInputStream;->bytesRead:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/microsoft/azure/storage/core/NetworkInputStream;->bytesRead:J

    goto :goto_0

    .line 4
    :cond_0
    iget-wide p2, p0, Lcom/microsoft/azure/storage/core/NetworkInputStream;->bytesRead:J

    iget-wide v0, p0, Lcom/microsoft/azure/storage/core/NetworkInputStream;->expectedLength:J

    cmp-long v2, p2, v0

    if-nez v2, :cond_1

    :goto_0
    return p1

    .line 5
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "An incorrect number of bytes was read from the connection. The connection may have been closed."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
