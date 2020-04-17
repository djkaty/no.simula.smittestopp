.class public Lcom/microsoft/azure/storage/blob/BlobDecryptStream;
.super Lcom/microsoft/azure/storage/blob/BlobOutputStream;
.source "SourceFile"


# instance fields
.field public bufferIV:Z

.field public cryptoStream:Ljava/io/OutputStream;

.field public discardFirst:I

.field public encryptionPolicy:Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;

.field public iv:[B

.field public final metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public noPadding:Z

.field public position:J

.field public requireEncryption:Ljava/lang/Boolean;

.field public userProvidedLength:Ljava/lang/Long;

.field public final userStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/Map;Ljava/lang/Long;IZZLcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "IZZ",
            "Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/storage/blob/BlobOutputStream;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;->iv:[B

    .line 3
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;->userStream:Ljava/io/OutputStream;

    .line 4
    iput-object p2, p0, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;->metadata:Ljava/util/Map;

    .line 5
    iput-object p3, p0, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;->userProvidedLength:Ljava/lang/Long;

    .line 6
    iput p4, p0, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;->discardFirst:I

    .line 7
    iput-object p7, p0, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;->encryptionPolicy:Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;

    .line 8
    iput-boolean p5, p0, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;->bufferIV:Z

    .line 9
    iput-boolean p6, p0, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;->noPadding:Z

    .line 10
    iput-object p8, p0, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;->requireEncryption:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;->cryptoStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;->userStream:Ljava/io/OutputStream;

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

    .line 10
    invoke-static/range {v0 .. v7}, Lcom/microsoft/azure/storage/core/Utility;->writeToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;JZZLcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/RequestOptions;)Lcom/microsoft/azure/storage/core/StreamMd5AndLength;

    return-void
.end method

.method public write([BII)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;->bufferIV:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;->position:J

    const-wide/16 v2, 0x10

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    long-to-int v1, v0

    rsub-int/lit8 v0, v1, 0x10

    if-le p3, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p3

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;->iv:[B

    iget-wide v2, p0, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;->position:J

    long-to-int v3, v2

    invoke-static {p1, p2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget-wide v1, p0, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;->position:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;->position:J

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;->cryptoStream:Ljava/io/OutputStream;

    if-nez v0, :cond_3

    .line 5
    new-instance v2, Lcom/microsoft/azure/storage/blob/LengthLimitingStream;

    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;->userStream:Ljava/io/OutputStream;

    iget v1, p0, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;->discardFirst:I

    int-to-long v3, v1

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;->userProvidedLength:Ljava/lang/Long;

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/microsoft/azure/storage/blob/LengthLimitingStream;-><init>(Ljava/io/OutputStream;JLjava/lang/Long;)V

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;->encryptionPolicy:Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;

    iget-object v3, p0, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;->metadata:Ljava/util/Map;

    iget-object v4, p0, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;->requireEncryption:Ljava/lang/Boolean;

    iget-boolean v0, p0, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;->bufferIV:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;->iv:[B

    :goto_1
    move-object v5, v0

    iget-boolean v6, p0, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;->noPadding:Z

    invoke-virtual/range {v1 .. v6}, Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;->decryptBlob(Ljava/io/OutputStream;Ljava/util/Map;Ljava/lang/Boolean;[BZ)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;->cryptoStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Utility;->initIOException(Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_2
    if-lez p3, :cond_4

    .line 8
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;->cryptoStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 9
    iget-wide p1, p0, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;->position:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/microsoft/azure/storage/blob/BlobDecryptStream;->position:J

    :cond_4
    return-void
.end method
