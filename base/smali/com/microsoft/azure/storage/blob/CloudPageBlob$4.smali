.class public Lcom/microsoft/azure/storage/blob/CloudPageBlob$4;
.super Lcom/microsoft/azure/storage/core/StorageRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/storage/blob/CloudPageBlob;->putPagesImpl(Lcom/microsoft/azure/storage/blob/PageRange;Lcom/microsoft/azure/storage/blob/PageOperationType;[BJLjava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/azure/storage/core/StorageRequest<",
        "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
        "Lcom/microsoft/azure/storage/blob/CloudPageBlob;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/azure/storage/blob/CloudPageBlob;

.field public final synthetic val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

.field public final synthetic val$data:[B

.field public final synthetic val$length:J

.field public final synthetic val$md5:Ljava/lang/String;

.field public final synthetic val$opContext:Lcom/microsoft/azure/storage/OperationContext;

.field public final synthetic val$operationType:Lcom/microsoft/azure/storage/blob/PageOperationType;

.field public final synthetic val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

.field public final synthetic val$pageRange:Lcom/microsoft/azure/storage/blob/PageRange;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/blob/CloudPageBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/PageOperationType;[BJLcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/PageRange;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$4;->this$0:Lcom/microsoft/azure/storage/blob/CloudPageBlob;

    iput-object p4, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$4;->val$operationType:Lcom/microsoft/azure/storage/blob/PageOperationType;

    iput-object p5, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$4;->val$data:[B

    iput-wide p6, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$4;->val$length:J

    iput-object p8, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$4;->val$opContext:Lcom/microsoft/azure/storage/OperationContext;

    iput-object p9, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$4;->val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iput-object p10, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$4;->val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    iput-object p11, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$4;->val$pageRange:Lcom/microsoft/azure/storage/blob/PageRange;

    iput-object p12, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$4;->val$md5:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;-><init>(Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method


# virtual methods
.method public buildRequest(Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/blob/CloudPageBlob;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 6

    .line 2
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$4;->val$operationType:Lcom/microsoft/azure/storage/blob/PageOperationType;

    sget-object p3, Lcom/microsoft/azure/storage/blob/PageOperationType;->UPDATE:Lcom/microsoft/azure/storage/blob/PageOperationType;

    if-ne p1, p3, :cond_0

    .line 3
    new-instance p1, Ljava/io/ByteArrayInputStream;

    iget-object p3, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$4;->val$data:[B

    invoke-direct {p1, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setSendStream(Ljava/io/InputStream;)V

    .line 4
    iget-wide v0, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$4;->val$length:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setLength(Ljava/lang/Long;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$4;->val$opContext:Lcom/microsoft/azure/storage/OperationContext;

    invoke-virtual {p2, p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getTransformedAddress(Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/StorageUri;->getUri(Lcom/microsoft/azure/storage/StorageLocation;)Ljava/net/URI;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$4;->val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iget-object v2, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$4;->val$opContext:Lcom/microsoft/azure/storage/OperationContext;

    iget-object v3, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$4;->val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    iget-object v4, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$4;->val$pageRange:Lcom/microsoft/azure/storage/blob/PageRange;

    iget-object v5, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$4;->val$operationType:Lcom/microsoft/azure/storage/blob/PageOperationType;

    invoke-static/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/BlobRequest;->putPage(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/PageRange;Lcom/microsoft/azure/storage/blob/PageOperationType;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildRequest(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudPageBlob;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudPageBlob$4;->buildRequest(Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/blob/CloudPageBlob;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic preProcessResponse(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/blob/CloudPageBlob;

    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudPageBlob$4;->preProcessResponse(Lcom/microsoft/azure/storage/blob/CloudPageBlob;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public preProcessResponse(Lcom/microsoft/azure/storage/blob/CloudPageBlob;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Void;
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
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;->updateSequenceNumberFromResponse(Ljava/net/HttpURLConnection;)V

    .line 6
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/azure/storage/core/BaseResponse;->isServerRequestEncrypted(Ljava/net/HttpURLConnection;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/RequestResult;->setRequestServiceEncrypted(Z)V

    return-object p3
.end method

.method public setHeaders(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/CloudPageBlob;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 2
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$4;->val$operationType:Lcom/microsoft/azure/storage/blob/PageOperationType;

    sget-object p3, Lcom/microsoft/azure/storage/blob/PageOperationType;->UPDATE:Lcom/microsoft/azure/storage/blob/PageOperationType;

    if-ne p2, p3, :cond_0

    .line 3
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$4;->val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getUseTransactionalContentMD5()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$4;->val$md5:Ljava/lang/String;

    const-string p3, "Content-MD5"

    invoke-virtual {p1, p3, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setHeaders(Ljava/net/HttpURLConnection;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudPageBlob;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudPageBlob$4;->setHeaders(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/CloudPageBlob;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$4;->val$operationType:Lcom/microsoft/azure/storage/blob/PageOperationType;

    sget-object v1, Lcom/microsoft/azure/storage/blob/PageOperationType;->UPDATE:Lcom/microsoft/azure/storage/blob/PageOperationType;

    if-ne v0, v1, :cond_0

    .line 3
    iget-wide v0, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$4;->val$length:J

    invoke-static {p1, p2, v0, v1, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;->signBlobQueueAndFileRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/ServiceClient;JLcom/microsoft/azure/storage/OperationContext;)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 4
    invoke-static {p1, p2, v0, v1, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;->signBlobQueueAndFileRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/ServiceClient;JLcom/microsoft/azure/storage/OperationContext;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic signRequest(Ljava/net/HttpURLConnection;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudPageBlob$4;->signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method
