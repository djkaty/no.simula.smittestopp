.class public final Lcom/microsoft/azure/storage/core/StreamMd5AndLength;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public currentOperationByteCount:J

.field public intermediateMD5:Ljava/security/MessageDigest;

.field public streamLength:J

.field public streamMd5:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentOperationByteCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->currentOperationByteCount:J

    return-wide v0
.end method

.method public getDigest()Ljava/security/MessageDigest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->intermediateMD5:Ljava/security/MessageDigest;

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->streamLength:J

    return-wide v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->streamMd5:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->intermediateMD5:Ljava/security/MessageDigest;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->streamMd5:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->streamMd5:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrentOperationByteCount(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->currentOperationByteCount:J

    return-void
.end method

.method public setDigest(Ljava/security/MessageDigest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->intermediateMD5:Ljava/security/MessageDigest;

    return-void
.end method

.method public setLength(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->streamLength:J

    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->streamMd5:Ljava/lang/String;

    return-void
.end method
