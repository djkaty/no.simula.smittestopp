.class public Lcom/microsoft/azure/storage/blob/CloudPageBlob$1;
.super Lcom/microsoft/azure/storage/core/StorageRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/storage/blob/CloudPageBlob;->createImpl(JLcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
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
.field public final synthetic this$0:Lcom/microsoft/azure/storage/blob/CloudPageBlob;

.field public final synthetic val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

.field public final synthetic val$length:J

.field public final synthetic val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

.field public final synthetic val$premiumBlobTier:Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/blob/CloudPageBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;JLcom/microsoft/azure/storage/blob/PremiumPageBlobTier;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$1;->this$0:Lcom/microsoft/azure/storage/blob/CloudPageBlob;

    iput-object p4, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$1;->val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iput-object p5, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$1;->val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    iput-wide p6, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$1;->val$length:J

    iput-object p8, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$1;->val$premiumBlobTier:Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;

    invoke-direct {p0, p2, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;-><init>(Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method


# virtual methods
.method public buildRequest(Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 10

    .line 2
    invoke-virtual {p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getTransformedAddress(Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/storage/StorageUri;->getUri(Lcom/microsoft/azure/storage/StorageLocation;)Ljava/net/URI;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$1;->val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iget-object v4, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$1;->val$accessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    iget-object v5, p2, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    sget-object v6, Lcom/microsoft/azure/storage/blob/BlobType;->PAGE_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-wide v7, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$1;->val$length:J

    iget-object v9, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$1;->val$premiumBlobTier:Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;

    move-object v3, p3

    invoke-static/range {v1 .. v9}, Lcom/microsoft/azure/storage/blob/BlobRequest;->putBlob(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobProperties;Lcom/microsoft/azure/storage/blob/BlobType;JLcom/microsoft/azure/storage/blob/PremiumPageBlobTier;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildRequest(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlob;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudPageBlob$1;->buildRequest(Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic preProcessResponse(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/blob/CloudBlob;

    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudPageBlob$1;->preProcessResponse(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Void;

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

    move-result-object p2

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/BaseResponse;->isServerRequestEncrypted(Ljava/net/HttpURLConnection;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/microsoft/azure/storage/RequestResult;->setRequestServiceEncrypted(Z)V

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getProperties()Lcom/microsoft/azure/storage/blob/BlobProperties;

    move-result-object p2

    iget-wide v0, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$1;->val$length:J

    invoke-virtual {p2, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setLength(J)V

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getProperties()Lcom/microsoft/azure/storage/blob/BlobProperties;

    move-result-object p2

    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$1;->val$premiumBlobTier:Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;

    invoke-virtual {p2, v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setPremiumPageBlobTier(Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;)V

    .line 8
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob$1;->val$premiumBlobTier:Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;

    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getProperties()Lcom/microsoft/azure/storage/blob/BlobProperties;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setBlobTierInferred(Ljava/lang/Boolean;)V

    :cond_1
    return-object p3
.end method

.method public setHeaders(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 2
    iget-object p2, p2, Lcom/microsoft/azure/storage/blob/CloudBlob;->metadata:Ljava/util/HashMap;

    invoke-static {p1, p2, p3}, Lcom/microsoft/azure/storage/blob/BlobRequest;->addMetadata(Ljava/net/HttpURLConnection;Ljava/util/HashMap;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public bridge synthetic setHeaders(Ljava/net/HttpURLConnection;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlob;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudPageBlob$1;->setHeaders(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
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

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudPageBlob$1;->signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method
