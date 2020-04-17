.class public Lcom/microsoft/azure/storage/blob/CloudBlob$5;
.super Lcom/microsoft/azure/storage/core/StorageRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/azure/storage/blob/CloudBlob;->startCopyImpl(Ljava/net/URI;Ljava/lang/String;ZZLcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/azure/storage/blob/CloudBlob;

.field public final synthetic val$contentMd5:Ljava/lang/String;

.field public final synthetic val$destinationAccessCondition:Lcom/microsoft/azure/storage/AccessCondition;

.field public final synthetic val$incrementalCopy:Z

.field public final synthetic val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

.field public final synthetic val$premiumPageBlobTier:Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;

.field public final synthetic val$source:Ljava/net/URI;

.field public final synthetic val$sourceAccessCondition:Lcom/microsoft/azure/storage/AccessCondition;

.field public final synthetic val$syncCopy:Z


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Ljava/net/URI;ZZLjava/lang/String;Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$5;->this$0:Lcom/microsoft/azure/storage/blob/CloudBlob;

    iput-object p4, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$5;->val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iput-object p5, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$5;->val$sourceAccessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    iput-object p6, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$5;->val$destinationAccessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    iput-object p7, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$5;->val$source:Ljava/net/URI;

    iput-boolean p8, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$5;->val$incrementalCopy:Z

    iput-boolean p9, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$5;->val$syncCopy:Z

    iput-object p10, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$5;->val$contentMd5:Ljava/lang/String;

    iput-object p11, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$5;->val$premiumPageBlobTier:Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;

    invoke-direct {p0, p2, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;-><init>(Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method


# virtual methods
.method public buildRequest(Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 12

    .line 2
    invoke-virtual {p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getTransformedAddress(Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/storage/StorageUri;->getUri(Lcom/microsoft/azure/storage/StorageLocation;)Ljava/net/URI;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$5;->val$options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iget-object v4, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$5;->val$sourceAccessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    iget-object v5, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$5;->val$destinationAccessCondition:Lcom/microsoft/azure/storage/AccessCondition;

    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$5;->val$source:Ljava/net/URI;

    .line 3
    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p2, Lcom/microsoft/azure/storage/blob/CloudBlob;->snapshotID:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$5;->val$incrementalCopy:Z

    iget-boolean v9, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$5;->val$syncCopy:Z

    iget-object v10, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$5;->val$contentMd5:Ljava/lang/String;

    iget-object v11, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$5;->val$premiumPageBlobTier:Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;

    move-object v3, p3

    .line 4
    invoke-static/range {v1 .. v11}, Lcom/microsoft/azure/storage/blob/BlobRequest;->copyFrom(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildRequest(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlob;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlob$5;->buildRequest(Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic preProcessResponse(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/blob/CloudBlob;

    check-cast p2, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlob$5;->preProcessResponse(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public preProcessResponse(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result p2

    const/16 p3, 0xca

    if-eq p2, p3, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setNonExceptionedRetryableFailure(Z)V

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/CloudBlob;->updateEtagAndLastModifiedFromResponse(Ljava/net/HttpURLConnection;)V

    .line 5
    iget-object p2, p1, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p3

    invoke-static {p3}, Lcom/microsoft/azure/storage/blob/BlobResponse;->getCopyState(Ljava/net/HttpURLConnection;)Lcom/microsoft/azure/storage/blob/CopyState;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setCopyState(Lcom/microsoft/azure/storage/blob/CopyState;)V

    .line 6
    iget-object p2, p1, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    iget-object p3, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$5;->val$premiumPageBlobTier:Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;

    invoke-virtual {p2, p3}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setPremiumPageBlobTier(Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;)V

    .line 7
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/CloudBlob$5;->val$premiumPageBlobTier:Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;

    if-eqz p2, :cond_1

    .line 8
    iget-object p2, p1, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setBlobTierInferred(Ljava/lang/Boolean;)V

    .line 9
    :cond_1
    iget-object p1, p1, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getCopyState()Lcom/microsoft/azure/storage/blob/CopyState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CopyState;->getCopyId()Ljava/lang/String;

    move-result-object p1

    return-object p1
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

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlob$5;->setHeaders(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/OperationContext;)V

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlob$5;->signRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method
