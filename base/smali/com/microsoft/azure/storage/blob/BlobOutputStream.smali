.class public abstract Lcom/microsoft/azure/storage/blob/BlobOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract close()V
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation
.end method

.method public abstract flush()V
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation
.end method

.method public write(I)V
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 1
    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/blob/BlobOutputStream;->write([B)V

    return-void
.end method

.method public abstract write(Ljava/io/InputStream;J)V
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation
.end method

.method public write([B)V
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/microsoft/azure/storage/blob/BlobOutputStream;->write([BII)V

    return-void
.end method

.method public abstract write([BII)V
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation
.end method
