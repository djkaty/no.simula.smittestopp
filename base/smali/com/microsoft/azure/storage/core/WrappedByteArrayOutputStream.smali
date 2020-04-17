.class public Lcom/microsoft/azure/storage/core/WrappedByteArrayOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public buffer:[B

.field public offset:I

.field public final startingOffset:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/WrappedByteArrayOutputStream;->buffer:[B

    .line 3
    iput p2, p0, Lcom/microsoft/azure/storage/core/WrappedByteArrayOutputStream;->offset:I

    .line 4
    iput p2, p0, Lcom/microsoft/azure/storage/core/WrappedByteArrayOutputStream;->startingOffset:I

    return-void
.end method


# virtual methods
.method public getPosition()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/microsoft/azure/storage/core/WrappedByteArrayOutputStream;->offset:I

    iget v1, p0, Lcom/microsoft/azure/storage/core/WrappedByteArrayOutputStream;->startingOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public write(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/microsoft/azure/storage/core/WrappedByteArrayOutputStream;->offset:I

    iget-object v1, p0, Lcom/microsoft/azure/storage/core/WrappedByteArrayOutputStream;->buffer:[B

    array-length v2, v1

    if-eq v0, v2, :cond_0

    int-to-byte p1, p1

    .line 2
    aput-byte p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 3
    iput v0, p0, Lcom/microsoft/azure/storage/core/WrappedByteArrayOutputStream;->offset:I

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "An incorrect number of bytes was read from the connection. The connection may have been closed."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
