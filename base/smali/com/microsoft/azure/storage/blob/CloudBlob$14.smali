.class public Lcom/microsoft/azure/storage/blob/CloudBlob$14;
.super Lcom/microsoft/azure/storage/core/StorageRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/storage/blob/CloudBlob;->uploadBlobTierImpl(Ljava/lang/String;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
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
.field public final synthetic this$0:Lcom/microsoft/azure/storage/blob/CloudBlob;

.field public final synthetic val$blobTierString:Ljava/lang/String;

.field public final synthetic val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$14;->this$0:Lcom/microsoft/azure/storage/blob/CloudBlob;

    iput-object p4, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$14;->val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iput-object p5, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$14;->val$blobTierString:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;-><init>(Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method


# virtual methods
.method public buildRequest(Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 2
    invoke-virtual {p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getTransformedAddress(Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/StorageUri;->getUri(Lcom/microsoft/azure/storage/StorageLocation;)Ljava/net/URI;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$14;->val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$14;->val$blobTierString:Ljava/lang/String;

    invoke-static {p1, p2, p3, v0}, Lcom/microsoft/azure/storage/blob/BlobRequest;->setBlobTier(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildRequest(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlob;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlob$14;->buildRequest(Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic preProcessResponse(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/blob/CloudBlob;

    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlob$14;->preProcessResponse(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public preProcessResponse(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Void;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result p2

    const/16 p3, 0xc8

    const/4 v0, 0x0

    if-eq p2, p3, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result p2

    const/16 v1, 0xca

    if-eq p2, v1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setNonExceptionedRetryableFailure(Z)V

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/CloudBlob;->updateEtagAndLastModifiedFromResponse(Ljava/net/HttpURLConnection;)V

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p2

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/azure/storage/core/BaseResponse;->isServerRequestEncrypted(Ljava/net/HttpURLConnection;)Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/microsoft/azure/storage/RequestResult;->setRequestServiceEncrypted(Z)V

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getProperties()Lcom/microsoft/azure/storage/blob/BlobProperties;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setBlobTierInferred(Ljava/lang/Boolean;)V

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getProperties()Lcom/microsoft/azure/storage/blob/BlobProperties;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object p2

    sget-object v1, Lcom/microsoft/azure/storage/blob/BlobType;->BLOCK_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    if-ne p2, v1, :cond_3

    .line 8
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$14;->val$blobTierString:Ljava/lang/String;

    invoke-static {p2}, Lcom/microsoft/azure/storage/blob/StandardBlobTier;->parse(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    move-result-object p2

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getProperties()Lcom/microsoft/azure/storage/blob/BlobProperties;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setRehydrationStatus(Lcom/microsoft/azure/storage/blob/RehydrationStatus;)V

    .line 10
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result v1

    if-ne v1, p3, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getProperties()Lcom/microsoft/azure/storage/blob/BlobProperties;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setStandardBlobTier(Lcom/microsoft/azure/storage/blob/StandardBlobTier;)V

    goto :goto_0

    .line 12
    :cond_1
    sget-object p3, Lcom/microsoft/azure/storage/blob/StandardBlobTier;->COOL:Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    invoke-virtual {p2, p3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getProperties()Lcom/microsoft/azure/storage/blob/BlobProperties;

    move-result-object p1

    sget-object p2, Lcom/microsoft/azure/storage/blob/StandardBlobTier;->ARCHIVE:Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setStandardBlobTier(Lcom/microsoft/azure/storage/blob/StandardBlobTier;)V

    goto :goto_0

    .line 14
    :cond_2
    sget-object p3, Lcom/microsoft/azure/storage/blob/StandardBlobTier;->HOT:Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    invoke-virtual {p2, p3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 15
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getProperties()Lcom/microsoft/azure/storage/blob/BlobProperties;

    move-result-object p1

    sget-object p2, Lcom/microsoft/azure/storage/blob/StandardBlobTier;->ARCHIVE:Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setStandardBlobTier(Lcom/microsoft/azure/storage/blob/StandardBlobTier;)V

    :cond_3
    :goto_0
    return-object v0
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

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlob$14;->signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method
