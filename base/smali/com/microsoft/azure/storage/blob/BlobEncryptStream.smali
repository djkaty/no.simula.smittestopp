.class public final Lcom/microsoft/azure/storage/blob/BlobEncryptStream;
.super Lcom/microsoft/azure/storage/blob/BlobOutputStream;
.source "SourceFile"


# instance fields
.field public cipherStream:Ljavax/crypto/CipherOutputStream;

.field public opContext:Lcom/microsoft/azure/storage/OperationContext;

.field public options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/blob/CloudAppendBlob;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Ljavax/crypto/Cipher;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 13
    invoke-direct {p0}, Lcom/microsoft/azure/storage/blob/BlobOutputStream;-><init>()V

    .line 14
    iput-object p4, p0, Lcom/microsoft/azure/storage/blob/BlobEncryptStream;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    .line 15
    iput-object p3, p0, Lcom/microsoft/azure/storage/blob/BlobEncryptStream;->options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p3, v0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->setValidateEncryptionPolicy(Z)V

    .line 17
    new-instance v0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;-><init>(Lcom/microsoft/azure/storage/blob/CloudAppendBlob;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    .line 18
    new-instance p1, Ljavax/crypto/CipherOutputStream;

    invoke-direct {p1, v0, p5}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobEncryptStream;->cipherStream:Ljavax/crypto/CipherOutputStream;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/blob/CloudBlockBlob;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Ljavax/crypto/Cipher;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/storage/blob/BlobOutputStream;-><init>()V

    .line 2
    iput-object p4, p0, Lcom/microsoft/azure/storage/blob/BlobEncryptStream;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    .line 3
    iput-object p3, p0, Lcom/microsoft/azure/storage/blob/BlobEncryptStream;->options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p3, v0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->setValidateEncryptionPolicy(Z)V

    .line 5
    new-instance v0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlockBlob;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    .line 6
    new-instance p1, Ljavax/crypto/CipherOutputStream;

    invoke-direct {p1, v0, p5}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobEncryptStream;->cipherStream:Ljavax/crypto/CipherOutputStream;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/blob/CloudPageBlob;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Ljavax/crypto/Cipher;)V
    .locals 8
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 7
    invoke-direct {p0}, Lcom/microsoft/azure/storage/blob/BlobOutputStream;-><init>()V

    .line 8
    iput-object p6, p0, Lcom/microsoft/azure/storage/blob/BlobEncryptStream;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    .line 9
    iput-object p5, p0, Lcom/microsoft/azure/storage/blob/BlobEncryptStream;->options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p5, v0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->setValidateEncryptionPolicy(Z)V

    .line 11
    new-instance v0, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;

    move-object v1, v0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/microsoft/azure/storage/blob/BlobOutputStreamInternal;-><init>(Lcom/microsoft/azure/storage/blob/CloudPageBlob;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    .line 12
    new-instance p1, Ljavax/crypto/CipherOutputStream;

    invoke-direct {p1, v0, p7}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobEncryptStream;->cipherStream:Ljavax/crypto/CipherOutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobEncryptStream;->cipherStream:Ljavax/crypto/CipherOutputStream;

    invoke-virtual {v0}, Ljavax/crypto/CipherOutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobEncryptStream;->cipherStream:Ljavax/crypto/CipherOutputStream;

    invoke-virtual {v0}, Ljavax/crypto/CipherOutputStream;->flush()V

    return-void
.end method

.method public write(Ljava/io/InputStream;J)V
    .locals 9

    .line 2
    iget-object v6, p0, Lcom/microsoft/azure/storage/blob/BlobEncryptStream;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    iget-object v7, p0, Lcom/microsoft/azure/storage/blob/BlobEncryptStream;->options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v8}, Lcom/microsoft/azure/storage/core/Utility;->writeToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;JZZLcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/RequestOptions;Ljava/lang/Boolean;)Lcom/microsoft/azure/storage/core/StreamMd5AndLength;

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobEncryptStream;->cipherStream:Ljavax/crypto/CipherOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    return-void
.end method
