.class public final Lcom/microsoft/azure/storage/blob/CloudBlobContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

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

.field public properties:Lcom/microsoft/azure/storage/blob/BlobContainerProperties;

.field public storageUri:Lcom/microsoft/azure/storage/StorageUri;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/StorageUri;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->metadata:Ljava/util/HashMap;

    .line 6
    new-instance v0, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->properties:Lcom/microsoft/azure/storage/blob/BlobContainerProperties;

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->parseQueryAndVerify(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->metadata:Ljava/util/HashMap;

    .line 10
    new-instance v0, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->properties:Lcom/microsoft/azure/storage/blob/BlobContainerProperties;

    const-string v0, "client"

    .line 11
    invoke-static {v0, p2}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "containerName"

    .line 12
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/ServiceClient;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/PathUtility;->appendPathToUri(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    .line 14
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->name:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/StorageUri;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;-><init>(Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/StorageUri;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p2}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;)Lcom/microsoft/azure/storage/StorageUri;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getTransformedAddress()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p0

    return-object p0
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
            "Lcom/microsoft/azure/storage/blob/CloudBlobContainer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$10;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v8

    move-object v1, p0

    move-object v2, p4

    move-object v4, p4

    move-object v5, p3

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$10;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v8
.end method

.method private final breakLeaseImpl(Ljava/lang/Integer;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
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
            "Lcom/microsoft/azure/storage/blob/CloudBlobContainer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$13;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$13;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/Integer;)V

    return-object v7
.end method

.method private final changeLeaseImpl(Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
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
            "Lcom/microsoft/azure/storage/blob/CloudBlobContainer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$14;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$14;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;)V

    return-object v7
.end method

.method private createImpl(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            "Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudBlobContainer;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$1;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$1;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;)V

    return-object v6
.end method

.method private deleteImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudBlobContainer;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$2;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$2;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V

    return-object v6
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
            "Lcom/microsoft/azure/storage/blob/CloudBlobContainer;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$3;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$3;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V

    return-object v6
.end method

.method private downloadPermissionsImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudBlobContainer;",
            "Lcom/microsoft/azure/storage/blob/BlobContainerPermissions;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$4;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$4;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V

    return-object v6
.end method

.method private exists(ZLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z
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
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p3, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p3

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->existsImpl(ZLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

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
            "Lcom/microsoft/azure/storage/blob/CloudBlobContainer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$5;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$5;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;ZLcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V

    return-object v7
.end method

.method private getBlobReferenceFromServerImpl(Ljava/lang/String;Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/StorageUri;",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudBlobContainer;",
            "Lcom/microsoft/azure/storage/blob/CloudBlob;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v9, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$6;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v9

    move-object v1, p0

    move-object v2, p5

    move-object v4, p2

    move-object v5, p5

    move-object v6, p4

    move-object v7, p3

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$6;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public static getContainerAcl(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/BlobContainerPermissions;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;->parse(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;

    move-result-object p0

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/blob/BlobContainerPermissions;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/blob/BlobContainerPermissions;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Lcom/microsoft/azure/storage/blob/BlobContainerPermissions;->setPublicAccess(Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;)V

    return-object v0
.end method

.method private getSharedAccessCanonicalName()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getServiceClient()Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageCredentials;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "blob"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v0, "/%s/%s/%s"

    .line 3
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTransformedAddress()Lcom/microsoft/azure/storage/StorageUri;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/StorageCredentials;->transformUri(Lcom/microsoft/azure/storage/StorageUri;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    return-object v0
.end method

.method private listBlobsSegmentedImpl(Ljava/lang/String;ZLjava/util/EnumSet;Ljava/lang/Integer;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/blob/BlobListingDetails;",
            ">;",
            "Ljava/lang/Integer;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            "Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudBlobContainer;",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "Lcom/microsoft/azure/storage/blob/ListBlobItem;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p6}, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;->getToken()Lcom/microsoft/azure/storage/ResultContinuation;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/storage/ResultContinuationType;->BLOB:Lcom/microsoft/azure/storage/ResultContinuationType;

    invoke-static {v0, v1}, Lcom/microsoft/azure/storage/core/Utility;->assertContinuationType(Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/ResultContinuationType;)V

    const-string v0, "options"

    .line 2
    invoke-static {v0, p5}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->getDirectoryDelimiter()Ljava/lang/String;

    move-result-object p2

    .line 4
    :goto_0
    new-instance v5, Lcom/microsoft/azure/storage/blob/BlobListingContext;

    invoke-direct {v5, p1, p4, p2, p3}, Lcom/microsoft/azure/storage/blob/BlobListingContext;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/EnumSet;)V

    .line 5
    new-instance p1, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$7;

    .line 6
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, p1

    move-object v1, p0

    move-object v2, p5

    move-object v4, p6

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$7;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;Lcom/microsoft/azure/storage/blob/BlobListingContext;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)V

    return-object p1
.end method

.method private parseQueryAndVerify(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 3

    const-string v0, "completeUri"

    .line 1
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageUri;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/PathUtility;->stripURIQueryAndFragment(Lcom/microsoft/azure/storage/StorageUri;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    .line 4
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->parseQuery(Lcom/microsoft/azure/storage/StorageUri;)Lcom/microsoft/azure/storage/StorageCredentialsSharedAccessSignature;

    move-result-object p1

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot provide credentials as part of the address and as constructor parameter. Either pass in the address or use a different constructor."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->determinePathStyleFromUri(Ljava/net/URI;)Z

    move-result v0

    .line 7
    new-instance v1, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 8
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v2

    .line 9
    invoke-static {v2, v0}, Lcom/microsoft/azure/storage/core/PathUtility;->getServiceClientBaseAddress(Lcom/microsoft/azure/storage/StorageUri;Z)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, p1

    :goto_1
    invoke-direct {v1, v2, p2}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    iput-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 10
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/microsoft/azure/storage/core/PathUtility;->getContainerNameFromUri(Ljava/net/URI;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Utility;->generateNewUnexpectedStorageException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object p1

    throw p1

    .line 12
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

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
            "Lcom/microsoft/azure/storage/blob/CloudBlobContainer;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$12;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$12;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V

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
            "Lcom/microsoft/azure/storage/blob/CloudBlobContainer;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$11;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$11;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V

    return-object v6
.end method

.method private uploadMetadataImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 7
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudBlobContainer;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$8;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$8;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;)V

    return-object v6
.end method

.method private uploadPermissionsImpl(Lcom/microsoft/azure/storage/blob/BlobContainerPermissions;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/blob/BlobContainerPermissions;",
            "Lcom/microsoft/azure/storage/AccessCondition;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Lcom/microsoft/azure/storage/blob/CloudBlobContainer;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/Permissions;->getSharedAccessPolicies()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/SharedAccessPolicySerializer;->writeSharedAccessIdentifiersToStream(Ljava/util/HashMap;Ljava/io/StringWriter;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 4
    new-instance v0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$9;

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v5

    move-object v2, v0

    move-object v3, p0

    move-object v4, p3

    move-object v7, p3

    move-object v8, p2

    move-object v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$9;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;[BLcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobContainerPermissions;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lcom/microsoft/azure/storage/StorageException;->translateClientException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object p1

    .line 7
    throw p1

    :catch_1
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/microsoft/azure/storage/StorageException;->translateClientException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object p1

    .line 9
    throw p1

    :catch_2
    move-exception p1

    .line 10
    invoke-static {p1}, Lcom/microsoft/azure/storage/StorageException;->translateClientException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object p1

    .line 11
    throw p1
.end method


# virtual methods
.method public final acquireLease()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->acquireLease(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

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
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->acquireLease(Ljava/lang/Integer;Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;

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
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p4, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p4

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->acquireLeaseImpl(Ljava/lang/Integer;Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

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

.method public final breakLease(Ljava/lang/Integer;)J
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->breakLease(Ljava/lang/Integer;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)J

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
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p3, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p3

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->breakLeaseImpl(Ljava/lang/Integer;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

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
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->changeLease(Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final changeLease(Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const-string v0, "proposedLeaseId"

    .line 2
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "accessCondition"

    .line 3
    invoke-static {v0, p2}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/AccessCondition;->getLeaseID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "leaseID"

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_0

    .line 5
    new-instance p4, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p4}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 6
    :cond_0
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 7
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p3, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p3

    .line 8
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->changeLeaseImpl(Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p3}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 10
    invoke-static {v0, p0, p1, p2, p4}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public create()V
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;->OFF:Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->create(Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public create(Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 3
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 3
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;->UNKNOWN:Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;

    if-eq p1, v0, :cond_1

    if-nez p3, :cond_0

    .line 4
    new-instance p3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 5
    :cond_0
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 6
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p2, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p2

    .line 7
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 8
    invoke-direct {p0, p2, p1}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->createImpl(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 9
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 10
    invoke-static {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void

    .line 11
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    sget-object p3, Lcom/microsoft/azure/storage/core/Utility;->LOCALE_US:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "accessType"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "The argument is out of range. Argument name: %s, Value passed: %s."

    invoke-static {p3, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public create(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 2
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;->OFF:Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;

    invoke-virtual {p0, v0, p1, p2}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->create(Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public createIfNotExists()Z
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;->OFF:Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->createIfNotExists(Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    return v0
.end method

.method public createIfNotExists(Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z
    .locals 4
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 3
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;->UNKNOWN:Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    .line 4
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v3, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p2, v0, v3}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p2

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v2, v0, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->exists(ZLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->create(Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    :try_end_0
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageException;->getHttpStatusCode()I

    move-result p2

    const/16 p3, 0x199

    if-ne p2, p3, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageException;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ContainerAlreadyExists"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v1

    .line 9
    :cond_1
    throw p1

    .line 10
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    sget-object p3, Lcom/microsoft/azure/storage/core/Utility;->LOCALE_US:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "accessType"

    aput-object v3, v0, v1

    aput-object p1, v0, v2

    const-string p1, "The argument is out of range. Argument name: %s, Value passed: %s."

    invoke-static {p3, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public createIfNotExists(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 2
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;->OFF:Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;

    invoke-virtual {p0, v0, p1, p2}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->createIfNotExists(Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result p1

    return p1
.end method

.method public delete()V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->delete(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public delete(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    if-nez p3, :cond_0

    .line 2
    new-instance p3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 4
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p2, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->deleteImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 6
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 7
    invoke-static {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public deleteIfExists()Z
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->deleteIfExists(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    return v0
.end method

.method public deleteIfExists(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z
    .locals 3
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 2
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p2, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p2

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->exists(ZLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->delete(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    :try_end_0
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageException;->getHttpStatusCode()I

    move-result p2

    const/16 p3, 0x194

    if-ne p2, p3, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageException;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ContainerNotFound"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return v2

    .line 7
    :cond_0
    throw p1

    :cond_1
    return v2
.end method

.method public downloadAccountInfo()Lcom/microsoft/azure/storage/AccountInformation;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->downloadAccountInfo(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/AccountInformation;

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

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p1, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->downloadAccountInformationImpl(Lcom/microsoft/azure/storage/RequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

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
            "Lcom/microsoft/azure/storage/blob/CloudBlobContainer;",
            "Lcom/microsoft/azure/storage/AccountInformation;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$15;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p1}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer$15;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/RequestOptions;)V

    return-object v0
.end method

.method public downloadAttributes()V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->downloadAttributes(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public downloadAttributes(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    if-nez p3, :cond_0

    .line 2
    new-instance p3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 4
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p2, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->downloadAttributesImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 7
    invoke-static {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public downloadPermissions()Lcom/microsoft/azure/storage/blob/BlobContainerPermissions;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->downloadPermissions(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/BlobContainerPermissions;

    move-result-object v0

    return-object v0
.end method

.method public downloadPermissions(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/BlobContainerPermissions;
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    if-nez p3, :cond_0

    .line 2
    new-instance p3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 4
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p2, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->downloadPermissionsImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 7
    invoke-static {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/storage/blob/BlobContainerPermissions;

    return-object p1
.end method

.method public exists()Z
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->exists(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    return v0
.end method

.method public exists(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->exists(ZLcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result p1

    return p1
.end method

.method public generateSharedAccessSignature(Lcom/microsoft/azure/storage/blob/SharedAccessBlobPolicy;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->generateSharedAccessSignature(Lcom/microsoft/azure/storage/blob/SharedAccessBlobPolicy;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generateSharedAccessSignature(Lcom/microsoft/azure/storage/blob/SharedAccessBlobPolicy;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/azure/storage/core/StorageCredentialsHelper;->canCredentialsSignRequest(Lcom/microsoft/azure/storage/StorageCredentials;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getSharedAccessCanonicalName()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    .line 4
    iget-object v8, v0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-static/range {v2 .. v8}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->generateSharedAccessSignatureHashForBlobAndFile(Lcom/microsoft/azure/storage/SharedAccessPolicy;Lcom/microsoft/azure/storage/SharedAccessHeaders;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;Lcom/microsoft/azure/storage/ServiceClient;)Ljava/lang/String;

    move-result-object v15

    const/4 v10, 0x0

    const-string v12, "c"

    move-object/from16 v9, p1

    move-object/from16 v11, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    .line 5
    invoke-static/range {v9 .. v15}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->generateSharedAccessSignatureForBlobAndFile(Lcom/microsoft/azure/storage/SharedAccessPolicy;Lcom/microsoft/azure/storage/SharedAccessHeaders;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;Ljava/lang/String;)Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create Shared Access Signature unless the Account Key credentials are used by the ServiceClient."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAppendBlobReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CloudAppendBlob;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getAppendBlobReference(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CloudAppendBlob;

    move-result-object p1

    return-object p1
.end method

.method public getAppendBlobReference(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CloudAppendBlob;
    .locals 1

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;

    invoke-direct {v0, p1, p2, p0}, Lcom/microsoft/azure/storage/blob/CloudAppendBlob;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;)V

    return-object v0
.end method

.method public final getBlobReferenceFromServer(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CloudBlob;
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
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getBlobReferenceFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/CloudBlob;

    move-result-object p1

    return-object p1
.end method

.method public final getBlobReferenceFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/blob/CloudBlob;
    .locals 8
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    if-nez p5, :cond_0

    .line 2
    new-instance p5, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p5}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 3
    :cond_0
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p4, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p4

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/PathUtility;->appendPathToUri(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v4

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 6
    invoke-direct/range {v2 .. v7}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getBlobReferenceFromServerImpl(Ljava/lang/String;Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p4}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 7
    invoke-static {v0, p0, p1, p2, p5}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/storage/blob/CloudBlob;

    return-object p1
.end method

.method public getBlockBlobReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CloudBlockBlob;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getBlockBlobReference(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CloudBlockBlob;

    move-result-object p1

    return-object p1
.end method

.method public getBlockBlobReference(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CloudBlockBlob;
    .locals 1

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;

    invoke-direct {v0, p1, p2, p0}, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;)V

    return-object v0
.end method

.method public getDirectoryReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;
    .locals 3

    const-string v0, "directoryName"

    .line 1
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->getDirectoryDelimiter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->getDirectoryDelimiter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/PathUtility;->appendPathToUri(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;

    iget-object v2, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-direct {v1, v0, p1, v2, p0}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;-><init>(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;)V

    return-object v1
.end method

.method public getMetadata()Ljava/util/HashMap;
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
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->metadata:Ljava/util/HashMap;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPageBlobReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CloudPageBlob;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getPageBlobReference(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CloudPageBlob;

    move-result-object p1

    return-object p1
.end method

.method public getPageBlobReference(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CloudPageBlob;
    .locals 1

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/blob/CloudPageBlob;

    invoke-direct {v0, p1, p2, p0}, Lcom/microsoft/azure/storage/blob/CloudPageBlob;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;)V

    return-object v0
.end method

.method public getProperties()Lcom/microsoft/azure/storage/blob/BlobContainerProperties;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->properties:Lcom/microsoft/azure/storage/blob/BlobContainerProperties;

    return-object v0
.end method

.method public getServiceClient()Lcom/microsoft/azure/storage/blob/CloudBlobClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    return-object v0
.end method

.method public getStorageUri()Lcom/microsoft/azure/storage/StorageUri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public listBlobs()Ljava/lang/Iterable;
    .locals 7
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
    const-class v0, Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->listBlobs(Ljava/lang/String;ZLjava/util/EnumSet;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public listBlobs(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 1
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

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->listBlobs(Ljava/lang/String;Z)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public listBlobs(Ljava/lang/String;Z)Ljava/lang/Iterable;
    .locals 7
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/blob/ListBlobItem;",
            ">;"
        }
    .end annotation

    .line 3
    const-class v0, Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->listBlobs(Ljava/lang/String;ZLjava/util/EnumSet;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public listBlobs(Ljava/lang/String;ZLjava/util/EnumSet;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;
    .locals 11
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

    move-object v7, p0

    move-object v3, p3

    if-nez p5, :cond_0

    .line 4
    new-instance v0, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p5

    .line 5
    :goto_0
    invoke-virtual {v8}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 6
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v1, v7, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-object v2, p4

    invoke-static {p4, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object v9

    if-nez p2, :cond_2

    if-eqz v3, :cond_2

    .line 7
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobListingDetails;->SNAPSHOTS:Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    invoke-virtual {p3, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listing snapshots is only supported in flat mode (no delimiter). Consider setting useFlatBlobListing to true."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    :goto_1
    new-instance v6, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;

    invoke-direct {v6}, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;-><init>()V

    .line 10
    new-instance v10, Lcom/microsoft/azure/storage/core/LazySegmentedIterable;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v9

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->listBlobsSegmentedImpl(Ljava/lang/String;ZLjava/util/EnumSet;Ljava/lang/Integer;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object v1

    iget-object v2, v7, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 12
    invoke-virtual {v9}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object v4

    move-object v0, v10

    move-object v3, p0

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/core/LazySegmentedIterable;-><init>(Lcom/microsoft/azure/storage/core/StorageRequest;Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)V

    return-object v10
.end method

.method public listBlobsSegmented()Lcom/microsoft/azure/storage/ResultSegment;
    .locals 9
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
    const-class v0, Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->listBlobsSegmented(Ljava/lang/String;ZLjava/util/EnumSet;Ljava/lang/Integer;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;

    move-result-object v0

    return-object v0
.end method

.method public listBlobsSegmented(Ljava/lang/String;)Lcom/microsoft/azure/storage/ResultSegment;
    .locals 9
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

    .line 2
    const-class v0, Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->listBlobsSegmented(Ljava/lang/String;ZLjava/util/EnumSet;Ljava/lang/Integer;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;

    move-result-object p1

    return-object p1
.end method

.method public listBlobsSegmented(Ljava/lang/String;ZLjava/util/EnumSet;Ljava/lang/Integer;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;
    .locals 11
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

    move-object v7, p0

    move-object v3, p3

    move-object/from16 v0, p5

    if-nez p7, :cond_0

    .line 3
    new-instance v1, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {v1}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object/from16 v8, p7

    .line 4
    :goto_0
    invoke-virtual {v8}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 5
    sget-object v1, Lcom/microsoft/azure/storage/blob/BlobType;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v2, v7, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-object/from16 v4, p6

    invoke-static {v4, v1, v2}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object v9

    .line 6
    sget-object v1, Lcom/microsoft/azure/storage/ResultContinuationType;->BLOB:Lcom/microsoft/azure/storage/ResultContinuationType;

    invoke-static {v0, v1}, Lcom/microsoft/azure/storage/core/Utility;->assertContinuationType(Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/ResultContinuationType;)V

    if-nez p2, :cond_2

    if-eqz v3, :cond_2

    .line 7
    sget-object v1, Lcom/microsoft/azure/storage/blob/BlobListingDetails;->SNAPSHOTS:Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    invoke-virtual {p3, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listing snapshots is only supported in flat mode (no delimiter). Consider setting useFlatBlobListing to true."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    :goto_1
    new-instance v6, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;

    invoke-direct {v6}, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;-><init>()V

    .line 10
    invoke-virtual {v6, v0}, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;->setToken(Lcom/microsoft/azure/storage/ResultContinuation;)V

    .line 11
    iget-object v10, v7, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->listBlobsSegmentedImpl(Ljava/lang/String;ZLjava/util/EnumSet;Ljava/lang/Integer;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object v0

    .line 12
    invoke-virtual {v9}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object v1

    .line 13
    invoke-static {v10, p0, v0, v1, v8}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/storage/ResultSegment;

    return-object v0
.end method

.method public listContainers()Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobContainer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->listContainers()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public listContainers(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobContainer;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->listContainers(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public listContainers(Ljava/lang/String;Lcom/microsoft/azure/storage/blob/ContainerListingDetails;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/blob/ContainerListingDetails;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobContainer;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->listContainers(Ljava/lang/String;Lcom/microsoft/azure/storage/blob/ContainerListingDetails;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public listContainersSegmented()Lcom/microsoft/azure/storage/ResultSegment;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobContainer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->listContainersSegmented()Lcom/microsoft/azure/storage/ResultSegment;

    move-result-object v0

    return-object v0
.end method

.method public listContainersSegmented(Ljava/lang/String;)Lcom/microsoft/azure/storage/ResultSegment;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobContainer;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->listContainersSegmented(Ljava/lang/String;)Lcom/microsoft/azure/storage/ResultSegment;

    move-result-object p1

    return-object p1
.end method

.method public listContainersSegmented(Ljava/lang/String;Lcom/microsoft/azure/storage/blob/ContainerListingDetails;Ljava/lang/Integer;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;
    .locals 7
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/blob/ContainerListingDetails;",
            "Ljava/lang/Integer;",
            "Lcom/microsoft/azure/storage/ResultContinuation;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobContainer;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->listContainersSegmented(Ljava/lang/String;Lcom/microsoft/azure/storage/blob/ContainerListingDetails;Ljava/lang/Integer;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;

    move-result-object p1

    return-object p1
.end method

.method public final releaseLease(Lcom/microsoft/azure/storage/AccessCondition;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->releaseLease(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

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
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p2, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p2

    .line 7
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->releaseLeaseImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

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
    invoke-virtual {p0, p1, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->renewLease(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

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
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p2, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p2

    .line 7
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->renewLeaseImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 8
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 9
    invoke-static {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public setMetadata(Ljava/util/HashMap;)V
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
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->metadata:Ljava/util/HashMap;

    return-void
.end method

.method public setProperties(Lcom/microsoft/azure/storage/blob/BlobContainerProperties;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->properties:Lcom/microsoft/azure/storage/blob/BlobContainerProperties;

    return-void
.end method

.method public setStorageUri(Lcom/microsoft/azure/storage/StorageUri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    return-void
.end method

.method public updatePropertiesFromResponse(Ljava/net/HttpURLConnection;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getProperties()Lcom/microsoft/azure/storage/blob/BlobContainerProperties;

    move-result-object v0

    const-string v1, "ETag"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;->setEtag(Ljava/lang/String;)V

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
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getProperties()Lcom/microsoft/azure/storage/blob/BlobContainerProperties;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/storage/blob/BlobContainerProperties;->setLastModified(Ljava/util/Date;)V

    :cond_0
    return-void
.end method

.method public uploadMetadata()V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->uploadMetadata(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public uploadMetadata(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    if-nez p3, :cond_0

    .line 2
    new-instance p3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 4
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p2, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->uploadMetadataImpl(Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 7
    invoke-static {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method

.method public uploadPermissions(Lcom/microsoft/azure/storage/blob/BlobContainerPermissions;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->uploadPermissions(Lcom/microsoft/azure/storage/blob/BlobContainerPermissions;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public uploadPermissions(Lcom/microsoft/azure/storage/blob/BlobContainerPermissions;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobContainerPermissions;->getPublicAccess()Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;->UNKNOWN:Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;

    if-eq v0, v1, :cond_1

    if-nez p4, :cond_0

    .line 3
    new-instance p4, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p4}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 4
    :cond_0
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 5
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/BlobType;

    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-static {p3, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p3

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->blobServiceClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->uploadPermissionsImpl(Lcom/microsoft/azure/storage/blob/BlobContainerPermissions;Lcom/microsoft/azure/storage/AccessCondition;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p3}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 8
    invoke-static {v0, p0, p1, p2, p4}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void

    .line 9
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    sget-object p3, Lcom/microsoft/azure/storage/core/Utility;->LOCALE_US:Ljava/util/Locale;

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "accessType"

    aput-object v1, p4, v0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobContainerPermissions;->getPublicAccess()Lcom/microsoft/azure/storage/blob/BlobContainerPublicAccessType;

    move-result-object p1

    aput-object p1, p4, v0

    const-string p1, "The argument is out of range. Argument name: %s, Value passed: %s."

    invoke-static {p3, p1, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
