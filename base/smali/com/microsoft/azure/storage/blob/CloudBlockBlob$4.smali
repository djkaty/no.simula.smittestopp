.class public Lcom/microsoft/azure/storage/blob/CloudBlockBlob$4;
.super Lcom/microsoft/azure/storage/core/StorageRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->uploadFullBlobImpl(Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/azure/storage/core/StorageRequest<",
        "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
        "Lcom/microsoft/azure/storage/blob/CloudBlob;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/azure/storage/blob/CloudBlockBlob;

.field public final synthetic val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

.field public final synthetic val$length:J

.field public final synthetic val$opContext:Lcom/microsoft/azure/storage/OperationContext;

.field public final synthetic val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

.field public final synthetic val$sourceStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/blob/CloudBlockBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Ljava/io/InputStream;JLcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$4;->this$0:Lcom/microsoft/azure/storage/blob/CloudBlockBlob;

    iput-object p4, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$4;->val$sourceStream:Ljava/io/InputStream;

    iput-wide p5, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$4;->val$length:J

    iput-object p7, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$4;->val$opContext:Lcom/microsoft/azure/storage/OperationContext;

    iput-object p8, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$4;->val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iput-object p9, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$4;->val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    invoke-direct {p0, p2, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;-><init>(Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method


# virtual methods
.method public buildRequest(Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 8

    .line 2
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$4;->val$sourceStream:Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setSendStream(Ljava/io/InputStream;)V

    .line 3
    iget-wide v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$4;->val$length:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setLength(Ljava/lang/Long;)V

    .line 4
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$4;->val$opContext:Lcom/microsoft/azure/storage/OperationContext;

    invoke-virtual {p2, p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getTransformedAddress(Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/microsoft/azure/storage/StorageUri;->getUri(Lcom/microsoft/azure/storage/StorageLocation;)Ljava/net/URI;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$4;->val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iget-object v2, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$4;->val$opContext:Lcom/microsoft/azure/storage/OperationContext;

    iget-object v3, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$4;->val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    iget-object v4, p2, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    .line 5
    invoke-virtual {v4}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v5

    .line 6
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getLength()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 7
    invoke-static/range {v0 .. v7}, Lcom/microsoft/azure/storage/blob/BlobRequest;->putBlob(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobProperties;Lcom/microsoft/azure/storage/blob/BlobType;J)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildRequest(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlob;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$4;->buildRequest(Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic preProcessResponse(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/blob/CloudBlob;

    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$4;->preProcessResponse(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public preProcessResponse(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Void;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result p2

    const/4 p3, 0x0

    const/16 v0, 0xc9

    if-eq p2, v0, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setNonExceptionedRetryableFailure(Z)V

    return-object p3

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/CloudBlob;->updateEtagAndLastModifiedFromResponse(Ljava/net/HttpURLConnection;)V

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/azure/storage/core/BaseResponse;->isServerRequestEncrypted(Ljava/net/HttpURLConnection;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/RequestResult;->setRequestServiceEncrypted(Z)V

    return-object p3
.end method

.method public recoveryAction(Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$4;->val$sourceStream:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 2
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$4;->val$sourceStream:Ljava/io/InputStream;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public setHeaders(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 2
    iget-object p2, p2, Lcom/microsoft/azure/storage/blob/CloudBlob;->metadata:Ljava/util/HashMap;

    iget-object p3, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$4;->val$opContext:Lcom/microsoft/azure/storage/OperationContext;

    invoke-static {p1, p2, p3}, Lcom/microsoft/azure/storage/blob/BlobRequest;->addMetadata(Ljava/net/HttpURLConnection;Ljava/util/HashMap;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public bridge synthetic setHeaders(Ljava/net/HttpURLConnection;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlob;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$4;->setHeaders(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$4;->val$length:J

    invoke-static {p1, p2, v0, v1, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;->signBlobQueueAndFileRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/ServiceClient;JLcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public bridge synthetic signRequest(Ljava/net/HttpURLConnection;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$4;->signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public validateStreamWrite(Lcom/microsoft/azure/storage/core/StreamMd5AndLength;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getLength()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getLength()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    iget-wide v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$4;->val$length:J

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getLength()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/microsoft/azure/storage/StorageException;

    const/16 v3, 0x193

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, "InvalidInput"

    const-string v2, "An incorrect stream length was specified, resulting in an authentication failure. Please specify correct length, or -1."

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
