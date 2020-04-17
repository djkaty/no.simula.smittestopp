.class public abstract Lcom/microsoft/azure/storage/blob/CloudBlob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/storage/blob/ListBlobItem;


# instance fields
.field public blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

.field public container:Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

.field public deleted:Z

.field public metadata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public parent:Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;

.field public properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

.field public snapshotID:Ljava/lang/String;

.field public storageUri:Lcom/microsoft/azure/storage/StorageUri;

.field public streamMinimumReadSizeInBytes:I

.field public streamWriteSizeInBytes:I


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->metadata:Ljava/util/HashMap;

    const/high16 v0, 0x400000

    .line 15
    iput v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->streamWriteSizeInBytes:I

    .line 16
    iput v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->streamMinimumReadSizeInBytes:I

    .line 17
    new-instance v0, Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/storage/blob/BlobProperties;-><init>(Lcom/microsoft/azure/storage/blob/BlobType;)V

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    .line 18
    invoke-direct {p0, p2, p4}, Lcom/microsoft/azure/storage/blob/CloudBlob;->parseQueryAndVerify(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    if-eqz p3, :cond_1

    .line 19
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->snapshotID:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 20
    iput-object p3, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->snapshotID:Ljava/lang/String;

    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Snapshot query parameter is already defined in the blob URI. Either pass in a snapshotTime parameter or use a full URL with a snapshot query parameter."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/blob/BlobType;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->metadata:Ljava/util/HashMap;

    const/high16 v0, 0x400000

    .line 3
    iput v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->streamWriteSizeInBytes:I

    .line 4
    iput v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->streamMinimumReadSizeInBytes:I

    const-string v0, "blobName"

    .line 5
    invoke-static {v0, p2}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "container"

    .line 6
    invoke-static {v0, p4}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/microsoft/azure/storage/core/PathUtility;->appendPathToUri(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    .line 8
    iput-object p2, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->name:Ljava/lang/String;

    .line 9
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getServiceClient()Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 10
    iput-object p4, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->container:Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    .line 11
    iput-object p3, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->snapshotID:Ljava/lang/String;

    .line 12
    new-instance p2, Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-direct {p2, p1}, Lcom/microsoft/azure/storage/blob/BlobProperties;-><init>(Lcom/microsoft/azure/storage/blob/BlobType;)V

    iput-object p2, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/blob/CloudBlob;)V
    .locals 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->metadata:Ljava/util/HashMap;

    const/high16 v0, 0x400000

    .line 24
    iput v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->streamWriteSizeInBytes:I

    .line 25
    iput v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->streamMinimumReadSizeInBytes:I

    .line 26
    new-instance v0, Lcom/microsoft/azure/storage/blob/BlobProperties;

    iget-object v1, p1, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-direct {v0, v1}, Lcom/microsoft/azure/storage/blob/BlobProperties;-><init>(Lcom/microsoft/azure/storage/blob/BlobProperties;)V

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    .line 27
    iget-object v0, p1, Lcom/microsoft/azure/storage/blob/CloudBlob;->metadata:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->metadata:Ljava/util/HashMap;

    .line 29
    iget-object v0, p1, Lcom/microsoft/azure/storage/blob/CloudBlob;->metadata:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 30
    iget-object v2, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->metadata:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/microsoft/azure/storage/blob/CloudBlob;->metadata:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p1, Lcom/microsoft/azure/storage/blob/CloudBlob;->snapshotID:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->snapshotID:Ljava/lang/String;

    .line 32
    iget-object v0, p1, Lcom/microsoft/azure/storage/blob/CloudBlob;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    .line 33
    iget-object v0, p1, Lcom/microsoft/azure/storage/blob/CloudBlob;->container:Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->container:Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    .line 34
    iget-object v0, p1, Lcom/microsoft/azure/storage/blob/CloudBlob;->parent:Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->parent:Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;

    .line 35
    iget-object v0, p1, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 36
    iget-object v0, p1, Lcom/microsoft/azure/storage/blob/CloudBlob;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->name:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStreamMinimumReadSizeInBytes()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->setStreamMinimumReadSizeInBytes(I)V

    .line 38
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStreamWriteSizeInBytes()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->setStreamWriteSizeInBytes(I)V

    return-void
.end method

.method private abortCopyImpl(Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudBlob;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "copyId"

    .line 1
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/blob/CloudBlob$1;

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v4

    move-object v1, v0

    move-object v2, p0

    move-object v3, p3

    move-object v5, p3

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/microsoft/azure/storage/blob/CloudBlob$1;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;)V

    return-object v0
.end method

.method private acquireLeaseImpl(Ljava/lang/Integer;Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudBlob;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/microsoft/azure/storage/blob/CloudBlob$2;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v8

    move-object v1, p0

    move-object v2, p4

    move-object v4, p4

    move-object v5, p3

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/microsoft/azure/storage/blob/CloudBlob$2;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v8
.end method

.method private breakLeaseImpl(Ljava/lang/Integer;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudBlob;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/microsoft/azure/storage/blob/CloudBlob$3;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudBlob$3;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/Integer;)V

    return-object v7
.end method

.method private changeLeaseImpl(Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudBlob;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/microsoft/azure/storage/blob/CloudBlob$4;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudBlob$4;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;)V

    return-object v7
.end method

.method private createSnapshotImpl(Ljava/util/HashMap;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudBlob;",
            "Lcom/microsoft/azure/storage/blob/CloudBlob;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/microsoft/azure/storage/blob/CloudBlob$6;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudBlob$6;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Ljava/util/HashMap;)V

    return-object v7
.end method

.method private deleteEmptyFileOnException(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 2
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private deleteImpl(Lcom/microsoft/azure/storage/blob/DeleteSnapshotsOption;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/blob/DeleteSnapshotsOption;",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudBlob;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/microsoft/azure/storage/blob/CloudBlob$7;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudBlob$7;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/DeleteSnapshotsOption;)V

    return-object v7
.end method

.method private downloadAttributesImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudBlob;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/blob/CloudBlob$9;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudBlob$9;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V

    return-object v6
.end method

.method private final downloadToStreamImpl(Ljava/lang/Long;Ljava/lang/Long;Ljava/io/OutputStream;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 18
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/io/OutputStream;",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudBlob;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual/range {p5 .. p5}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->assertPolicyIfRequired()V

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    move-wide/from16 v16, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    const/4 v2, 0x0

    if-eqz v11, :cond_5

    .line 3
    invoke-virtual/range {p5 .. p5}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/blob/BlobEncryptionPolicy;

    move-result-object v3

    if-eqz v3, :cond_5

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0xf

    const-wide/16 v7, 0x10

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    add-long/2addr v12, v9

    sub-long/2addr v12, v3

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    rem-long/2addr v12, v7

    sub-long v12, v5, v12

    add-long/2addr v12, v9

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 6
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    rem-long/2addr v9, v7

    long-to-int v10, v9

    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    int-to-long v14, v10

    sub-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 8
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v14, v12, v5

    if-lez v14, :cond_3

    .line 9
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v9

    const/4 v0, 0x0

    :goto_2
    if-eqz v2, :cond_4

    .line 10
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    add-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move v15, v0

    move-object v6, v1

    move-object v12, v2

    move-object v7, v3

    goto :goto_3

    :cond_4
    move-object/from16 v7, p2

    move v15, v0

    move-object v6, v1

    move-object v12, v2

    :goto_3
    move v14, v10

    goto :goto_4

    :cond_5
    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object v12, v2

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 11
    :goto_4
    new-instance v0, Lcom/microsoft/azure/storage/blob/CloudBlob$10;

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v5

    move-object v2, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p5

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p3

    move-object/from16 v13, p2

    invoke-direct/range {v2 .. v17}, Lcom/microsoft/azure/storage/blob/CloudBlob$10;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/Long;Ljava/lang/Long;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Ljava/io/OutputStream;ZLjava/lang/Long;Ljava/lang/Long;IZJ)V

    return-object v0
.end method

.method private final exists(ZLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    if-nez p4, :cond_0

    .line 3
    new-instance p4, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p4}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 4
    :cond_0
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p3, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p3

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlob;->existsImpl(ZLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p3}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 8
    invoke-static {v0, p0, p1, p2, p4}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private existsImpl(ZLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudBlob;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/microsoft/azure/storage/blob/CloudBlob$11;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudBlob$11;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;ZLcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V

    return-object v7
.end method

.method public static getParentNameFromURI(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;)Ljava/lang/String;
    .locals 3

    const-string v0, "resourceAddress"

    .line 1
    invoke-static {v0, p0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "container"

    .line 2
    invoke-static {v0, p2}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "delimiter"

    .line 3
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object p2

    .line 6
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object p0

    .line 7
    invoke-static {p2, p0}, Lcom/microsoft/azure/storage/core/Utility;->safeRelativize(Ljava/net/URI;Ljava/net/URI;)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 10
    :cond_0
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    const-string v2, ""

    if-eqz p2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    if-gez p2, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, p0

    :goto_0
    return-object v2
.end method

.method private parseQueryAndVerify(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 3

    const-string v0, "completeUri"

    .line 1
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageUri;->isAbsolute()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 3
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/PathUtility;->stripURIQueryAndFragment(Lcom/microsoft/azure/storage/StorageUri;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageUri;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/azure/storage/core/PathUtility;->parseQueryString(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "snapshot"

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 6
    array-length v2, v0

    if-lez v2, :cond_0

    .line 7
    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->snapshotID:Ljava/lang/String;

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->parseQuery(Ljava/util/HashMap;)Lcom/microsoft/azure/storage/StorageCredentialsSharedAccessSignature;

    move-result-object p1

    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot provide credentials as part of the address and as constructor parameter. Either pass in the address or use a different constructor."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->determinePathStyleFromUri(Ljava/net/URI;)Z

    move-result v0

    .line 11
    new-instance v1, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 12
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v2

    .line 13
    invoke-static {v2, v0}, Lcom/microsoft/azure/storage/core/PathUtility;->getServiceClientBaseAddress(Lcom/microsoft/azure/storage/StorageUri;Z)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move-object p2, p1

    :goto_1
    invoke-direct {v1, v2, p2}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    iput-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 14
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/microsoft/azure/storage/core/PathUtility;->getBlobNameFromURI(Ljava/net/URI;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 15
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Utility;->generateNewUnexpectedStorageException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object p1

    throw p1

    .line 16
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageUri;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Address %s is a relative address. Only absolute addresses are permitted."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private releaseLeaseImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudBlob;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/blob/CloudBlob$12;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudBlob$12;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V

    return-object v6
.end method

.method private renewLeaseImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudBlob;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/blob/CloudBlob$13;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudBlob$13;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V

    return-object v6
.end method

.method private undeleteImpl(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudBlob;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/blob/CloudBlob$8;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p1}, Lcom/microsoft/azure/storage/blob/CloudBlob$8;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)V

    return-object v0
.end method

.method private uploadMetadataImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudBlob;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/blob/CloudBlob$15;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudBlob$15;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V

    return-object v6
.end method

.method private uploadPropertiesImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudBlob;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/blob/CloudBlob$16;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudBlob$16;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V

    return-object v6
.end method


# virtual methods
.method public final abortCopy(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->abortCopy(Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public final abortCopy(Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    if-nez p4, :cond_0

    .line 2
    new-instance p4, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p4}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p3, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p3

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlob;->abortCopyImpl(Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p3}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 7
    invoke-static {v0, p0, p1, p2, p4}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public final acquireLease()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->acquireLease(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final acquireLease(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudBlob;->acquireLease(Ljava/lang/Integer;Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final acquireLease(Ljava/lang/Integer;Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    if-nez p5, :cond_0

    .line 3
    new-instance p5, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p5}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 4
    :cond_0
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p4, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p4

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/blob/CloudBlob;->acquireLeaseImpl(Ljava/lang/Integer;Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 8
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 9
    invoke-static {v0, p0, p1, p2, p5}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final assertCorrectBlobType()V
    .locals 12

    .line 1
    instance-of v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "Incorrect Blob type, please use the correct Blob type to access a blob on the server. Expected %s, actual %s."

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v0

    sget-object v5, Lcom/microsoft/azure/storage/blob/BlobType;->BLOCK_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    if-ne v0, v5, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/microsoft/azure/storage/StorageException;

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v5, Lcom/microsoft/azure/storage/blob/BlobType;->BLOCK_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    aput-object v5, v3, v2

    iget-object v2, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    .line 3
    invoke-virtual {v2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v2

    aput-object v2, v3, v1

    .line 4
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x132

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v7, "IncorrectBlobType"

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    instance-of v0, p0, Lcom/microsoft/azure/storage/blob/CloudPageBlob;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v0

    sget-object v5, Lcom/microsoft/azure/storage/blob/BlobType;->PAGE_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    if-ne v0, v5, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    new-instance v0, Lcom/microsoft/azure/storage/StorageException;

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v5, Lcom/microsoft/azure/storage/blob/BlobType;->PAGE_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    aput-object v5, v3, v2

    iget-object v2, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    .line 7
    invoke-virtual {v2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v2

    aput-object v2, v3, v1

    .line 8
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x132

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v7, "IncorrectBlobType"

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V

    throw v0

    .line 9
    :cond_3
    :goto_1
    instance-of v0, p0, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v0

    sget-object v5, Lcom/microsoft/azure/storage/blob/BlobType;->APPEND_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    if-ne v0, v5, :cond_4

    goto :goto_2

    .line 10
    :cond_4
    new-instance v0, Lcom/microsoft/azure/storage/StorageException;

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v5, Lcom/microsoft/azure/storage/blob/BlobType;->APPEND_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    aput-object v5, v3, v2

    iget-object v2, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    .line 11
    invoke-virtual {v2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v2

    aput-object v2, v3, v1

    .line 12
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x132

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v7, "IncorrectBlobType"

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V

    throw v0

    :cond_5
    :goto_2
    return-void
.end method

.method public assertNoWriteOperationForSnapshot()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->isSnapshot()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot perform this operation on a blob representing a snapshot."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final breakLease(Ljava/lang/Integer;)J
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->breakLease(Ljava/lang/Integer;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final breakLease(Ljava/lang/Integer;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)J
    .locals 5
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    if-nez p4, :cond_0

    .line 2
    new-instance p4, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p4}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    const-string v4, "breakPeriodInSeconds"

    invoke-static {v4, v0, v1, v2, v3}, Lcom/microsoft/azure/storage/core/Utility;->assertGreaterThanOrEqual(Ljava/lang/String;JJ)V

    .line 4
    :cond_1
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p3, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p3

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlob;->breakLeaseImpl(Ljava/lang/Integer;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p3}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 8
    invoke-static {v0, p0, p1, p2, p4}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public final changeLease(Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->changeLease(Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final changeLease(Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const-string v0, "accessCondition"

    .line 2
    invoke-static {v0, p2}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/AccessCondition;->getLeaseID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "leaseID"

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_0

    .line 4
    new-instance p4, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p4}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 5
    :cond_0
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p3, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p3

    .line 7
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlob;->changeLeaseImpl(Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p3}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 9
    invoke-static {v0, p0, p1, p2, p4}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final createSnapshot()Lcom/microsoft/azure/storage/blob/CloudBlob;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->createSnapshot(Ljava/util/HashMap;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/CloudBlob;

    move-result-object v0

    return-object v0
.end method

.method public final createSnapshot(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/CloudBlob;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlob;->createSnapshot(Ljava/util/HashMap;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/CloudBlob;

    move-result-object p1

    return-object p1
.end method

.method public final createSnapshot(Ljava/util/HashMap;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/CloudBlob;
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Lcom/microsoft/azure/storage/blob/CloudBlob;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->assertNoWriteOperationForSnapshot()V

    if-nez p4, :cond_0

    .line 4
    new-instance p4, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p4}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 5
    :cond_0
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p3, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p3

    .line 7
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlob;->createSnapshotImpl(Ljava/util/HashMap;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p3}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 9
    invoke-static {v0, p0, p1, p2, p4}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/storage/blob/CloudBlob;

    return-object p1
.end method

.method public final delete()V
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/blob/DeleteSnapshotsOption;->NONE:Lcom/microsoft/azure/storage/blob/DeleteSnapshotsOption;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->delete(Lcom/microsoft/azure/storage/blob/DeleteSnapshotsOption;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public final delete(Lcom/microsoft/azure/storage/blob/DeleteSnapshotsOption;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const-string v0, "deleteSnapshotsOption"

    .line 2
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p4, :cond_0

    .line 3
    new-instance p4, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p4}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 4
    :cond_0
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p3, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p3

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlob;->deleteImpl(Lcom/microsoft/azure/storage/blob/DeleteSnapshotsOption;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p3}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 8
    invoke-static {v0, p0, p1, p2, p4}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public final deleteIfExists()Z
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/blob/DeleteSnapshotsOption;->NONE:Lcom/microsoft/azure/storage/blob/DeleteSnapshotsOption;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->deleteIfExists(Lcom/microsoft/azure/storage/blob/DeleteSnapshotsOption;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    return v0
.end method

.method public final deleteIfExists(Lcom/microsoft/azure/storage/blob/DeleteSnapshotsOption;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z
    .locals 3
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p3, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p3

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/microsoft/azure/storage/blob/CloudBlob;->exists(ZLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/blob/CloudBlob;->delete(Lcom/microsoft/azure/storage/blob/DeleteSnapshotsOption;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    :try_end_0
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageException;->getHttpStatusCode()I

    move-result p2

    const/16 p3, 0x194

    if-ne p2, p3, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageException;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BlobNotFound"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return v2

    .line 8
    :cond_0
    throw p1

    :cond_1
    return v2
.end method

.method public final download(Ljava/io/OutputStream;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->download(Ljava/io/OutputStream;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public final download(Ljava/io/OutputStream;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 8
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    if-nez p4, :cond_0

    .line 2
    new-instance p4, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p4}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p3, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p3

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/microsoft/azure/storage/blob/CloudBlob;->downloadToStreamImpl(Ljava/lang/Long;Ljava/lang/Long;Ljava/io/OutputStream;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 6
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 7
    invoke-static {v0, p0, p1, p2, p4}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public downloadAccountInfo()Lcom/microsoft/azure/storage/AccountInformation;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->downloadAccountInfo(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/AccountInformation;

    move-result-object v0

    return-object v0
.end method

.method public downloadAccountInfo(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/AccountInformation;
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p2}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 4
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p1, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->downloadAccountInformationImpl(Lcom/microsoft/azure/storage/RequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p1

    .line 7
    invoke-static {v0, p0, v1, p1, p2}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/storage/AccountInformation;

    return-object p1
.end method

.method public downloadAccountInformationImpl(Lcom/microsoft/azure/storage/RequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/RequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/ServiceClient;",
            "Lcom/microsoft/azure/storage/blob/CloudBlob;",
            "Lcom/microsoft/azure/storage/AccountInformation;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/blob/CloudBlob$17;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p1}, Lcom/microsoft/azure/storage/blob/CloudBlob$17;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/RequestOptions;)V

    return-object v0
.end method

.method public final downloadAttributes()V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->downloadAttributes(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public final downloadAttributes(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    if-nez p3, :cond_0

    .line 2
    new-instance p3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p2, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/blob/CloudBlob;->downloadAttributesImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 6
    invoke-static {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public final downloadRange(JLjava/lang/Long;Ljava/io/OutputStream;)V
    .locals 8
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/microsoft/azure/storage/blob/CloudBlob;->downloadRange(JLjava/lang/Long;Ljava/io/OutputStream;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public final downloadRange(JLjava/lang/Long;Ljava/io/OutputStream;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 8
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_4

    :cond_0
    if-nez p7, :cond_1

    .line 3
    new-instance p7, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p7}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 4
    :cond_1
    invoke-virtual {p7}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p6, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p6

    .line 6
    invoke-virtual {p6}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getUseTransactionalContentMD5()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x400000

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot specify x-ms-range-get-content-md5 header on ranges larger than 4 MB. Either use a BlobReadStream via openRead, or disable TransactionalMD5 via the BlobRequestOptions."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v2, p0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/microsoft/azure/storage/blob/CloudBlob;->downloadToStreamImpl(Ljava/lang/Long;Ljava/lang/Long;Ljava/io/OutputStream;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 10
    invoke-virtual {p6}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 11
    invoke-static {v0, p0, p1, p2, p7}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void

    .line 12
    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final downloadRangeInternal(JLjava/lang/Long;[BILcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)I
    .locals 11
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    move-object v6, p0

    move/from16 v0, p5

    if-ltz v0, :cond_4

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_4

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-lez v5, :cond_4

    :cond_0
    if-nez p8, :cond_1

    .line 2
    new-instance v1, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {v1}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    move-object v7, v1

    goto :goto_0

    :cond_1
    move-object/from16 v7, p8

    .line 3
    :goto_0
    iget-object v1, v6, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v1

    iget-object v2, v6, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-object/from16 v3, p7

    invoke-static {v3, v1, v2}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object v8

    .line 4
    invoke-virtual {v8}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->getUseTransactionalContentMD5()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/32 v3, 0x400000

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot specify x-ms-range-get-content-md5 header on ranges larger than 4 MB. Either use a BlobReadStream via openRead, or disable TransactionalMD5 via the BlobRequestOptions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_3
    :goto_1
    new-instance v9, Lcom/microsoft/azure/storage/core/WrappedByteArrayOutputStream;

    move-object v1, p4

    invoke-direct {v9, p4, v0}, Lcom/microsoft/azure/storage/core/WrappedByteArrayOutputStream;-><init>([BI)V

    .line 7
    iget-object v10, v6, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 8
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v0, p0

    move-object v2, p3

    move-object v3, v9

    move-object/from16 v4, p6

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudBlob;->downloadToStreamImpl(Ljava/lang/Long;Ljava/lang/Long;Ljava/io/OutputStream;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object v0

    .line 9
    invoke-virtual {v8}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object v1

    .line 10
    invoke-static {v10, p0, v0, v1, v7}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v9}, Lcom/microsoft/azure/storage/core/WrappedByteArrayOutputStream;->getPosition()I

    move-result v0

    return v0

    .line 12
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final downloadRangeToByteArray(JLjava/lang/Long;[BI)I
    .locals 9
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-virtual/range {v0 .. v8}, Lcom/microsoft/azure/storage/blob/CloudBlob;->downloadRangeToByteArray(JLjava/lang/Long;[BILcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)I

    move-result p1

    return p1
.end method

.method public final downloadRangeToByteArray(JLjava/lang/Long;[BILcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)I
    .locals 9
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    move-object v4, p4

    const-string v0, "buffer"

    .line 2
    invoke-static {v0, p4}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move v5, p5

    int-to-long v2, v5

    add-long/2addr v0, v2

    array-length v2, v4

    int-to-long v2, v2

    cmp-long v6, v0, v2

    if-gtz v6, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    move v5, p5

    :goto_0
    if-nez p8, :cond_2

    .line 5
    new-instance v0, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    move-object v8, v0

    goto :goto_1

    :cond_2
    move-object/from16 v8, p8

    .line 6
    :goto_1
    invoke-virtual {v8}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 7
    invoke-virtual/range {v0 .. v8}, Lcom/microsoft/azure/storage/blob/CloudBlob;->downloadRangeInternal(JLjava/lang/Long;[BILcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)I

    move-result v0

    return v0
.end method

.method public final downloadToByteArray([BI)I
    .locals 6
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudBlob;->downloadToByteArray([BILcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)I

    move-result p1

    return p1
.end method

.method public final downloadToByteArray([BILcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)I
    .locals 8
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const-string v0, "buffer"

    .line 2
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    if-ltz p2, :cond_2

    .line 3
    array-length v0, p1

    if-ge p2, v0, :cond_1

    if-nez p5, :cond_0

    .line 4
    new-instance p5, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p5}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 5
    :cond_0
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p4, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p4

    .line 7
    new-instance v0, Lcom/microsoft/azure/storage/core/WrappedByteArrayOutputStream;

    invoke-direct {v0, p1, p2}, Lcom/microsoft/azure/storage/core/WrappedByteArrayOutputStream;-><init>([BI)V

    .line 8
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, v0

    move-object v6, p3

    move-object v7, p4

    .line 9
    invoke-direct/range {v2 .. v7}, Lcom/microsoft/azure/storage/blob/CloudBlob;->downloadToStreamImpl(Ljava/lang/Long;Ljava/lang/Long;Ljava/io/OutputStream;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p2

    .line 10
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p3

    .line 11
    invoke-static {p1, p0, p2, p3, p5}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/core/WrappedByteArrayOutputStream;->getPosition()I

    move-result p1

    return p1

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public downloadToFile(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->downloadToFile(Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public downloadToFile(Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3
    :try_start_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/microsoft/azure/storage/blob/CloudBlob;->download(Ljava/io/OutputStream;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->deleteEmptyFileOnException(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 6
    throw p2

    :catch_1
    move-exception p2

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->deleteEmptyFileOnException(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 8
    throw p2
.end method

.method public final exists()Z
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->exists(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    return v0
.end method

.method public final exists(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlob;->exists(ZLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result p1

    return p1
.end method

.method public generateSharedAccessSignature(Lcom/microsoft/azure/storage/blob/SharedAccessBlobPolicy;Lcom/microsoft/azure/storage/blob/SharedAccessBlobHeaders;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudBlob;->generateSharedAccessSignature(Lcom/microsoft/azure/storage/blob/SharedAccessBlobPolicy;Lcom/microsoft/azure/storage/blob/SharedAccessBlobHeaders;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generateSharedAccessSignature(Lcom/microsoft/azure/storage/blob/SharedAccessBlobPolicy;Lcom/microsoft/azure/storage/blob/SharedAccessBlobHeaders;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/azure/storage/core/StorageCredentialsHelper;->canCredentialsSignRequest(Lcom/microsoft/azure/storage/StorageCredentials;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->isSnapshot()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getCanonicalName(Z)Ljava/lang/String;

    move-result-object v5

    .line 6
    iget-object v8, v0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v8}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->generateSharedAccessSignatureHashForBlobAndFile(Lcom/microsoft/azure/storage/SharedAccessPolicy;Lcom/microsoft/azure/storage/SharedAccessHeaders;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;Lcom/microsoft/azure/storage/ServiceClient;)Ljava/lang/String;

    move-result-object v15

    const-string v12, "b"

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    .line 7
    invoke-static/range {v9 .. v15}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->generateSharedAccessSignatureForBlobAndFile(Lcom/microsoft/azure/storage/SharedAccessPolicy;Lcom/microsoft/azure/storage/SharedAccessHeaders;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;Ljava/lang/String;)Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 9
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create Shared Access Signature via references to blob snapshots. Please perform the given operation on the root blob instead."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create Shared Access Signature unless the Account Key credentials are used by the ServiceClient."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public generateSharedAccessSignature(Lcom/microsoft/azure/storage/blob/SharedAccessBlobPolicy;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/microsoft/azure/storage/blob/CloudBlob;->generateSharedAccessSignature(Lcom/microsoft/azure/storage/blob/SharedAccessBlobPolicy;Lcom/microsoft/azure/storage/blob/SharedAccessBlobHeaders;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCanonicalName(Z)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "blob"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->isUsePathStyleUris()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 6
    invoke-virtual {v1}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getUri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v1, v2}, Lcom/microsoft/azure/storage/core/PathUtility;->getCanonicalPathFromCredentials(Lcom/microsoft/azure/storage/StorageCredentials;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-nez p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->snapshotID:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string p1, "?snapshot="

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->snapshotID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getContainer()Lcom/microsoft/azure/storage/blob/CloudBlobContainer;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->container:Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 3
    invoke-virtual {v1}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->isUsePathStyleUris()Z

    move-result v1

    .line 4
    invoke-static {v0, v1}, Lcom/microsoft/azure/storage/core/PathUtility;->getContainerURI(Lcom/microsoft/azure/storage/StorageUri;Z)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    iget-object v2, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {v2}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    iput-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->container:Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->container:Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    return-object v0
.end method

.method public getCopyState()Lcom/microsoft/azure/storage/blob/CopyState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getCopyState()Lcom/microsoft/azure/storage/blob/CopyState;

    move-result-object v0

    return-object v0
.end method

.method public final getMetadata()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->metadata:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getParent()Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->parent:Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 3
    invoke-virtual {v1}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->getDirectoryDelimiter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getContainer()Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    move-result-object v2

    .line 4
    invoke-static {v0, v1, v2}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getParentNameFromURI(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->container:Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/PathUtility;->appendPathToUri(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;

    iget-object v3, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getContainer()Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    move-result-object v4

    invoke-direct {v2, v1, v0, v3, v4}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;-><init>(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;)V

    iput-object v2, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->parent:Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->parent:Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;

    return-object v0
.end method

.method public final getProperties()Lcom/microsoft/azure/storage/blob/BlobProperties;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    return-object v0
.end method

.method public final getQualifiedStorageUri()Lcom/microsoft/azure/storage/StorageUri;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->isSnapshot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->snapshotID:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "snapshot=%s"

    .line 3
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/microsoft/azure/storage/core/PathUtility;->addToQuery(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/microsoft/azure/storage/StorageCredentials;->transformUri(Lcom/microsoft/azure/storage/StorageUri;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/StorageCredentials;->transformUri(Lcom/microsoft/azure/storage/StorageUri;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    return-object v0
.end method

.method public final getQualifiedUri()Ljava/net/URI;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->isSnapshot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getUri()Ljava/net/URI;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->snapshotID:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "snapshot=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/azure/storage/core/PathUtility;->addToQuery(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/StorageCredentials;->transformUri(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public final getServiceClient()Lcom/microsoft/azure/storage/blob/CloudBlobClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    return-object v0
.end method

.method public final getSnapshotID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->snapshotID:Ljava/lang/String;

    return-object v0
.end method

.method public final getSnapshotQualifiedStorageUri()Lcom/microsoft/azure/storage/StorageUri;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->isSnapshot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->snapshotID:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "snapshot=%s"

    .line 3
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/microsoft/azure/storage/core/PathUtility;->addToQuery(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    return-object v0
.end method

.method public final getSnapshotQualifiedUri()Ljava/net/URI;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->isSnapshot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getUri()Ljava/net/URI;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->snapshotID:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "snapshot=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/azure/storage/core/PathUtility;->addToQuery(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public final getStorageUri()Lcom/microsoft/azure/storage/StorageUri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    return-object v0
.end method

.method public final getStreamMinimumReadSizeInBytes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->streamMinimumReadSizeInBytes:I

    return v0
.end method

.method public final getStreamWriteSizeInBytes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->streamWriteSizeInBytes:I

    return v0
.end method

.method public final getTransformedAddress(Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/microsoft/azure/storage/StorageCredentials;->transformUri(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    return-object p1
.end method

.method public final getUri()Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public final isSnapshot()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->snapshotID:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final openInputStream()Lcom/microsoft/azure/storage/blob/BlobInputStream;
    .locals 7
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudBlob;->openInputStream(JLjava/lang/Long;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/BlobInputStream;

    move-result-object v0

    return-object v0
.end method

.method public final openInputStream(JLjava/lang/Long;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/BlobInputStream;
    .locals 8
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    :cond_0
    if-nez p6, :cond_1

    .line 4
    new-instance p6, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p6}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    :cond_1
    move-object v7, p6

    .line 5
    iget-object p6, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {p6}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object p6

    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    const/4 v1, 0x0

    invoke-static {p5, p6, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Z)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object v6

    .line 6
    new-instance p5, Lcom/microsoft/azure/storage/blob/BlobInputStream;

    move-object v0, p5

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/microsoft/azure/storage/blob/BlobInputStream;-><init>(JLjava/lang/Long;Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-object p5

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final openInputStream(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/BlobInputStream;
    .locals 7
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudBlob;->openInputStream(JLjava/lang/Long;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/BlobInputStream;

    move-result-object p1

    return-object p1
.end method

.method public final releaseLease(Lcom/microsoft/azure/storage/AccessCondition;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->releaseLease(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public final releaseLease(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const-string v0, "accessCondition"

    .line 2
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/AccessCondition;->getLeaseID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "leaseID"

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 4
    new-instance p3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 5
    :cond_0
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p2, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p2

    .line 7
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/blob/CloudBlob;->releaseLeaseImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 8
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 9
    invoke-static {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public final renewLease(Lcom/microsoft/azure/storage/AccessCondition;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->renewLease(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public final renewLease(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const-string v0, "accessCondition"

    .line 2
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/AccessCondition;->getLeaseID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "leaseID"

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 4
    new-instance p3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 5
    :cond_0
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p2, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p2

    .line 7
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/blob/CloudBlob;->renewLeaseImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 8
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 9
    invoke-static {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public final setContainer(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->container:Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    return-void
.end method

.method public final setMetadata(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->metadata:Ljava/util/HashMap;

    return-void
.end method

.method public final setProperties(Lcom/microsoft/azure/storage/blob/BlobProperties;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    return-void
.end method

.method public final setSnapshotID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->snapshotID:Ljava/lang/String;

    return-void
.end method

.method public setStorageUri(Lcom/microsoft/azure/storage/StorageUri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    return-void
.end method

.method public setStreamMinimumReadSizeInBytes(I)V
    .locals 1

    const/16 v0, 0x4000

    if-lt p1, v0, :cond_0

    .line 1
    iput p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->streamMinimumReadSizeInBytes:I

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "MinimumReadSize"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract setStreamWriteSizeInBytes(I)V
.end method

.method public final startCopy(Ljava/net/URI;)Ljava/lang/String;
    .locals 6
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudBlob;->startCopy(Ljava/net/URI;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final startCopy(Ljava/net/URI;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;
    .locals 7
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudBlob;->startCopy(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final startCopy(Ljava/net/URI;Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;
    .locals 9
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 3
    invoke-virtual/range {v0 .. v8}, Lcom/microsoft/azure/storage/blob/CloudBlob;->startCopy(Ljava/net/URI;Ljava/lang/String;ZLcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final startCopy(Ljava/net/URI;Ljava/lang/String;ZLcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;
    .locals 13
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    move-object v9, p0

    if-nez p8, :cond_0

    .line 4
    new-instance v0, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    move-object v10, v0

    goto :goto_0

    :cond_0
    move-object/from16 v10, p8

    .line 5
    :goto_0
    invoke-virtual {v10}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 6
    iget-object v0, v9, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v0

    iget-object v1, v9, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-object/from16 v2, p7

    invoke-static {v2, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object v11

    .line 7
    iget-object v12, v9, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, v11

    .line 8
    invoke-virtual/range {v0 .. v8}, Lcom/microsoft/azure/storage/blob/CloudBlob;->startCopyImpl(Ljava/net/URI;Ljava/lang/String;ZZLcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object v0

    .line 9
    invoke-virtual {v11}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object v1

    .line 10
    invoke-static {v12, p0, v0, v1, v10}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public startCopyImpl(Ljava/net/URI;Ljava/lang/String;ZZLcom/microsoft/azure/storage/blob/PremiumPageBlobTier;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudBlob;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v12, Lcom/microsoft/azure/storage/blob/CloudBlob$5;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v4, p8

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object v7, p1

    move/from16 v8, p4

    move/from16 v9, p3

    move-object v10, p2

    move-object/from16 v11, p5

    invoke-direct/range {v0 .. v11}, Lcom/microsoft/azure/storage/blob/CloudBlob$5;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/AccessCondition;Ljava/net/URI;ZZLjava/lang/String;Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;)V

    return-object v12
.end method

.method public final undelete()V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->undelete(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public final undelete(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p2}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p1, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 6
    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->undeleteImpl(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p1

    .line 7
    invoke-static {v0, p0, v1, p1, p2}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public updateEtagAndLastModifiedFromResponse(Ljava/net/HttpURLConnection;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getProperties()Lcom/microsoft/azure/storage/blob/BlobProperties;

    move-result-object v0

    const-string v1, "ETag"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setEtag(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 3
    sget-object v0, Lcom/microsoft/azure/storage/core/Utility;->LOCALE_US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/microsoft/azure/storage/core/Utility;->UTC_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 5
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 6
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getProperties()Lcom/microsoft/azure/storage/blob/BlobProperties;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setLastModified(Ljava/util/Date;)V

    :cond_0
    return-void
.end method

.method public updateLengthFromResponse(Ljava/net/HttpURLConnection;)V
    .locals 3

    const-string v0, "x-ms-blob-content-length"

    .line 1
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getProperties()Lcom/microsoft/azure/storage/blob/BlobProperties;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setLength(J)V

    :cond_0
    return-void
.end method

.method public abstract upload(Ljava/io/InputStream;J)V
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation
.end method

.method public abstract upload(Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation
.end method

.method public uploadBlobTierImpl(Ljava/lang/String;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudBlob;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/blob/CloudBlob$14;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudBlob$14;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlob;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Ljava/lang/String;)V

    return-object v6
.end method

.method public uploadFromByteArray([BII)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudBlob;->uploadFromByteArray([BIILcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public uploadFromByteArray([BIILcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 8

    .line 2
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    int-to-long v2, p3

    move-object v0, p0

    move-object v1, v7

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 3
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudBlob;->upload(Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    .line 4
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V

    return-void
.end method

.method public uploadFromFile(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->uploadFromFile(Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public uploadFromFile(Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 8

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 4
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 5
    invoke-virtual/range {v1 .. v7}, Lcom/microsoft/azure/storage/blob/CloudBlob;->upload(Ljava/io/InputStream;JLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    .line 6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final uploadMetadata()V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->uploadMetadata(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public final uploadMetadata(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->assertNoWriteOperationForSnapshot()V

    if-nez p3, :cond_0

    .line 3
    new-instance p3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 4
    :cond_0
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p2, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/blob/CloudBlob;->uploadMetadataImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 8
    invoke-static {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public final uploadProperties()V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->uploadProperties(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public final uploadProperties(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlob;->assertNoWriteOperationForSnapshot()V

    if-nez p3, :cond_0

    .line 3
    new-instance p3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 4
    :cond_0
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p2, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlob;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/blob/CloudBlob;->uploadPropertiesImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 8
    invoke-static {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method
