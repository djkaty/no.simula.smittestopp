.class public final Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/storage/blob/ListBlobItem;


# instance fields
.field public final blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

.field public final container:Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

.field public parent:Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;

.field public final prefix:Ljava/lang/String;

.field public final storageUri:Lcom/microsoft/azure/storage/StorageUri;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;-><init>(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "uri"

    .line 3
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "client"

    .line 4
    invoke-static {v0, p3}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "container"

    .line 5
    invoke-static {v0, p4}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iput-object p3, p0, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 7
    iput-object p5, p0, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->parent:Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;

    .line 8
    iput-object p4, p0, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->container:Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    .line 9
    iput-object p2, p0, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->prefix:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    return-void
.end method


# virtual methods
.method public getAppendBlobReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CloudAppendBlob;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->getAppendBlobReference(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CloudAppendBlob;

    move-result-object p1

    return-object p1
.end method

.method public getAppendBlobReference(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CloudAppendBlob;
    .locals 2

    const-string v0, "blobName"

    .line 2
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->getContainer()Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;)V

    return-object v0
.end method

.method public getBlockBlobReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CloudBlockBlob;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->getBlockBlobReference(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CloudBlockBlob;

    move-result-object p1

    return-object p1
.end method

.method public getBlockBlobReference(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CloudBlockBlob;
    .locals 2

    const-string v0, "blobName"

    .line 2
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->getContainer()Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;)V

    return-object v0
.end method

.method public getContainer()Lcom/microsoft/azure/storage/blob/CloudBlobContainer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->container:Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    return-object v0
.end method

.method public getDirectoryReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;
    .locals 7

    const-string v0, "directoryName"

    .line 1
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->getDirectoryDelimiter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->getDirectoryDelimiter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 6
    invoke-virtual {v1}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->getDirectoryDelimiter()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v0, p1, v1}, Lcom/microsoft/azure/storage/core/PathUtility;->appendPathToUri(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v2

    .line 8
    new-instance p1, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;

    iget-object v4, p0, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    iget-object v5, p0, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->container:Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;-><init>(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;)V

    return-object p1
.end method

.method public getPageBlobReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CloudPageBlob;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->getPageBlobReference(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CloudPageBlob;

    move-result-object p1

    return-object p1
.end method

.method public getPageBlobReference(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CloudPageBlob;
    .locals 2

    const-string v0, "blobName"

    .line 2
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/blob/CloudPageBlob;

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->getContainer()Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;)V

    return-object v0
.end method

.method public getParent()Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->parent:Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 3
    invoke-virtual {v1}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->getDirectoryDelimiter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->getContainer()Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    move-result-object v2

    .line 4
    invoke-static {v0, v1, v2}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getParentNameFromURI(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->container:Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/PathUtility;->appendPathToUri(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;

    iget-object v3, p0, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->getContainer()Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    move-result-object v4

    invoke-direct {v2, v1, v0, v3, v4}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;-><init>(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;)V

    iput-object v2, p0, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->parent:Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->parent:Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceClient()Lcom/microsoft/azure/storage/blob/CloudBlobClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    return-object v0
.end method

.method public final getStorageUri()Lcom/microsoft/azure/storage/StorageUri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public listBlobs()Ljava/lang/Iterable;
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/blob/ListBlobItem;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->getContainer()Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->listBlobs(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public listBlobs(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/blob/ListBlobItem;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->getContainer()Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->listBlobs(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public listBlobs(Ljava/lang/String;ZLjava/util/EnumSet;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;
    .locals 6
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/blob/BlobListingDetails;",
            ">;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/blob/ListBlobItem;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->getContainer()Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->listBlobs(Ljava/lang/String;ZLjava/util/EnumSet;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public listBlobsSegmented()Lcom/microsoft/azure/storage/ResultSegment;
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "Lcom/microsoft/azure/storage/blob/ListBlobItem;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->getContainer()Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->listBlobsSegmented(Ljava/lang/String;)Lcom/microsoft/azure/storage/ResultSegment;

    move-result-object v0

    return-object v0
.end method

.method public listBlobsSegmented(Ljava/lang/String;)Lcom/microsoft/azure/storage/ResultSegment;
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "Lcom/microsoft/azure/storage/blob/ListBlobItem;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->getContainer()Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->listBlobsSegmented(Ljava/lang/String;)Lcom/microsoft/azure/storage/ResultSegment;

    move-result-object p1

    return-object p1
.end method

.method public listBlobsSegmented(Ljava/lang/String;ZLjava/util/EnumSet;Ljava/lang/Integer;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;
    .locals 8
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/blob/BlobListingDetails;",
            ">;",
            "Ljava/lang/Integer;",
            "Lcom/microsoft/azure/storage/ResultContinuation;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "Lcom/microsoft/azure/storage/blob/ListBlobItem;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->getContainer()Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->listBlobsSegmented(Ljava/lang/String;ZLjava/util/EnumSet;Ljava/lang/Integer;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;

    move-result-object p1

    return-object p1
.end method
