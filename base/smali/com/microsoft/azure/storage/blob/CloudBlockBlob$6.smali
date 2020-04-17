.class public Lcom/microsoft/azure/storage/blob/CloudBlockBlob$6;
.super Lcom/microsoft/azure/storage/core/StorageRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/storage/blob/CloudBlockBlob;->createBlockFromURIImpl(Ljava/lang/String;Ljava/net/URI;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;
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

.field public final synthetic val$blockId:Ljava/lang/String;

.field public final synthetic val$copySource:Ljava/net/URI;

.field public final synthetic val$length:Ljava/lang/Long;

.field public final synthetic val$md5:Ljava/lang/String;

.field public final synthetic val$offset:Ljava/lang/Long;

.field public final synthetic val$opContext:Lcom/microsoft/azure/storage/OperationContext;

.field public final synthetic val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/blob/CloudBlockBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/OperationContext;Ljava/net/URI;Ljava/lang/Long;Ljava/lang/Long;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$6;->this$0:Lcom/microsoft/azure/storage/blob/CloudBlockBlob;

    iput-object p4, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$6;->val$opContext:Lcom/microsoft/azure/storage/OperationContext;

    iput-object p5, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$6;->val$copySource:Ljava/net/URI;

    iput-object p6, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$6;->val$offset:Ljava/lang/Long;

    iput-object p7, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$6;->val$length:Ljava/lang/Long;

    iput-object p8, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$6;->val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iput-object p9, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$6;->val$md5:Ljava/lang/String;

    iput-object p10, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$6;->val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    iput-object p11, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$6;->val$blockId:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;-><init>(Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method


# virtual methods
.method public buildRequest(Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 10

    .line 2
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$6;->val$opContext:Lcom/microsoft/azure/storage/OperationContext;

    invoke-virtual {p2, p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getTransformedAddress(Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/StorageUri;->getUri(Lcom/microsoft/azure/storage/StorageLocation;)Ljava/net/URI;

    move-result-object v0

    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$6;->val$copySource:Ljava/net/URI;

    .line 3
    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$6;->val$offset:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$6;->val$length:Ljava/lang/Long;

    iget-object v5, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$6;->val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iget-object v6, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$6;->val$md5:Ljava/lang/String;

    iget-object v7, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$6;->val$opContext:Lcom/microsoft/azure/storage/OperationContext;

    iget-object v8, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$6;->val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    iget-object v9, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$6;->val$blockId:Ljava/lang/String;

    .line 4
    invoke-static/range {v0 .. v9}, Lcom/microsoft/azure/storage/blob/BlobRequest;->putBlock(Ljava/net/URI;Ljava/lang/String;JLjava/lang/Long;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Ljava/lang/String;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildRequest(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlob;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$6;->buildRequest(Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic preProcessResponse(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/blob/CloudBlob;

    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$6;->preProcessResponse(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public preProcessResponse(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Void;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result p1

    const/4 p2, 0x0

    const/16 p3, 0xc9

    if-eq p1, p3, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setNonExceptionedRetryableFailure(Z)V

    return-object p2

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p3

    invoke-static {p3}, Lcom/microsoft/azure/storage/core/BaseResponse;->isServerRequestEncrypted(Ljava/net/HttpURLConnection;)Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/microsoft/azure/storage/RequestResult;->setRequestServiceEncrypted(Z)V

    return-object p2
.end method

.method public signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2
    invoke-static {p1, p2, v0, v1, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;->signBlobQueueAndFileRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/ServiceClient;JLcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public bridge synthetic signRequest(Ljava/net/HttpURLConnection;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob$6;->signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method
