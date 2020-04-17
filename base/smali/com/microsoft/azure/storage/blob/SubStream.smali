.class public Lcom/microsoft/azure/storage/blob/SubStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final lock:Ljava/lang/Object;

.field public markIndex:J

.field public readBuffer:[B

.field public readBufferLength:I

.field public readBufferStream:Ljava/io/ByteArrayInputStream;

.field public streamBeginIndex:J

.field public streamLength:J

.field public substreamCurrentIndex:J

.field public wrappedStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JJLjava/lang/Object;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    const-wide/16 v2, 0x1

    cmp-long v4, p4, v2

    if-ltz v4, :cond_2

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/SubStream;->wrappedStream:Ljava/io/InputStream;

    .line 4
    iput-wide p2, p0, Lcom/microsoft/azure/storage/blob/SubStream;->streamBeginIndex:J

    .line 5
    iput-wide v0, p0, Lcom/microsoft/azure/storage/blob/SubStream;->substreamCurrentIndex:J

    .line 6
    iput-wide p4, p0, Lcom/microsoft/azure/storage/blob/SubStream;->streamLength:J

    .line 7
    iput-object p6, p0, Lcom/microsoft/azure/storage/blob/SubStream;->lock:Ljava/lang/Object;

    const/high16 p1, 0x400000

    new-array p1, p1, [B

    .line 8
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/SubStream;->readBuffer:[B

    .line 9
    new-instance p1, Ljava/io/ByteArrayInputStream;

    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/SubStream;->readBuffer:[B

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/SubStream;->readBufferStream:Ljava/io/ByteArrayInputStream;

    const/4 p2, 0x0

    .line 10
    iput p2, p0, Lcom/microsoft/azure/storage/blob/SubStream;->readBufferLength:I

    .line 11
    iput-wide v0, p0, Lcom/microsoft/azure/storage/blob/SubStream;->markIndex:J

    const p2, 0x7fffffff

    .line 12
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The source stream to be wrapped must be markable."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Source stream is null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method private readHelper([BII)I
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/SubStream;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/SubStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 3
    iget-wide v1, p0, Lcom/microsoft/azure/storage/blob/SubStream;->streamBeginIndex:J

    iget-wide v3, p0, Lcom/microsoft/azure/storage/blob/SubStream;->substreamCurrentIndex:J

    add-long/2addr v1, v3

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-wide v7, v4

    const/4 v6, 0x0

    :cond_0
    const/4 v9, 0x7

    if-gt v6, v9, :cond_2

    .line 4
    iget-object v9, p0, Lcom/microsoft/azure/storage/blob/SubStream;->wrappedStream:Ljava/io/InputStream;

    sub-long v10, v1, v7

    invoke-virtual {v9, v10, v11}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v9

    cmp-long v11, v9, v4

    if-nez v11, :cond_1

    add-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    goto :goto_0

    :cond_1
    add-long/2addr v7, v9

    const/4 v6, 0x0

    :goto_0
    cmp-long v9, v7, v1

    if-nez v9, :cond_0

    .line 5
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/SubStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    monitor-exit v0

    return p1

    .line 6
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The supplied stream has failed to skip to the correct position after successive attempts. Please ensure there are bytes available and try your upload again."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/SubStream;->wrappedStream:Ljava/io/InputStream;

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/SubStream;->readBuffer:[B

    .line 3
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/SubStream;->readBufferStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 4
    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/SubStream;->readBufferStream:Ljava/io/ByteArrayInputStream;

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/SubStream;->wrappedStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/storage/blob/SubStream;->streamLength:J

    return-wide v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/microsoft/azure/storage/blob/SubStream;->substreamCurrentIndex:J

    iput-wide v0, p0, Lcom/microsoft/azure/storage/blob/SubStream;->markIndex:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 1

    .line 1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public declared-synchronized read([B)I
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/microsoft/azure/storage/blob/SubStream;->read([BII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized read([BII)I
    .locals 6

    monitor-enter p0

    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    .line 3
    :try_start_0
    array-length v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_5

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 4
    monitor-exit p0

    return v0

    .line 5
    :cond_0
    :try_start_1
    iget-wide v1, p0, Lcom/microsoft/azure/storage/blob/SubStream;->substreamCurrentIndex:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iget-wide v3, p0, Lcom/microsoft/azure/storage/blob/SubStream;->streamLength:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 6
    iget-wide v1, p0, Lcom/microsoft/azure/storage/blob/SubStream;->streamLength:J

    iget-wide v3, p0, Lcom/microsoft/azure/storage/blob/SubStream;->substreamCurrentIndex:J

    sub-long/2addr v1, v3

    long-to-int p3, v1

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/SubStream;->readBufferStream:Ljava/io/ByteArrayInputStream;

    iget v2, p0, Lcom/microsoft/azure/storage/blob/SubStream;->readBufferLength:I

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 9
    iget v3, p0, Lcom/microsoft/azure/storage/blob/SubStream;->readBufferLength:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/microsoft/azure/storage/blob/SubStream;->readBufferLength:I

    if-ne v1, p3, :cond_2

    .line 10
    iget-wide p1, p0, Lcom/microsoft/azure/storage/blob/SubStream;->substreamCurrentIndex:J

    int-to-long v0, v2

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/microsoft/azure/storage/blob/SubStream;->substreamCurrentIndex:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit p0

    return v2

    :cond_2
    const/4 v3, -0x1

    if-ge v1, p3, :cond_3

    .line 12
    :try_start_2
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/SubStream;->readBufferStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 13
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/SubStream;->readBuffer:[B

    iget-object v4, p0, Lcom/microsoft/azure/storage/blob/SubStream;->readBuffer:[B

    array-length v4, v4

    invoke-direct {p0, v1, v0, v4}, Lcom/microsoft/azure/storage/blob/SubStream;->readHelper([BII)I

    move-result v1

    iput v1, p0, Lcom/microsoft/azure/storage/blob/SubStream;->readBufferLength:I

    if-ne v1, v3, :cond_3

    .line 14
    iput v0, p0, Lcom/microsoft/azure/storage/blob/SubStream;->readBufferLength:I

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/SubStream;->readBufferStream:Ljava/io/ByteArrayInputStream;

    add-int/2addr p2, v2

    iget v1, p0, Lcom/microsoft/azure/storage/blob/SubStream;->readBufferLength:I

    sub-int/2addr p3, v2

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result p1

    if-eq p1, v3, :cond_4

    add-int/2addr v2, p1

    .line 16
    iget p2, p0, Lcom/microsoft/azure/storage/blob/SubStream;->readBufferLength:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/microsoft/azure/storage/blob/SubStream;->readBufferLength:I

    .line 17
    :cond_4
    iget-wide p1, p0, Lcom/microsoft/azure/storage/blob/SubStream;->substreamCurrentIndex:J

    int-to-long v0, v2

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/microsoft/azure/storage/blob/SubStream;->substreamCurrentIndex:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    monitor-exit p0

    return v2

    .line 19
    :cond_5
    :try_start_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/microsoft/azure/storage/blob/SubStream;->markIndex:J

    iput-wide v0, p0, Lcom/microsoft/azure/storage/blob/SubStream;->substreamCurrentIndex:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/storage/blob/SubStream;->substreamCurrentIndex:J

    add-long v2, v0, p1

    iget-wide v4, p0, Lcom/microsoft/azure/storage/blob/SubStream;->streamLength:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    sub-long p1, v4, v0

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/microsoft/azure/storage/blob/SubStream;->substreamCurrentIndex:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/microsoft/azure/storage/blob/SubStream;->substreamCurrentIndex:J

    const-wide/16 v0, 0x0

    .line 3
    iget v2, p0, Lcom/microsoft/azure/storage/blob/SubStream;->readBufferLength:I

    int-to-long v2, v2

    sub-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lcom/microsoft/azure/storage/blob/SubStream;->readBufferLength:I

    return-wide p1
.end method
