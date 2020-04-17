.class public final Lcom/microsoft/azure/storage/blob/CloudBlobClient;
.super Lcom/microsoft/azure/storage/ServiceClient;
.source "SourceFile"


# instance fields
.field public defaultRequestOptions:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

.field public directoryDelimiter:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/StorageUri;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/ServiceClient;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    const-string p1, "/"

    .line 5
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->directoryDelimiter:Ljava/lang/String;

    .line 6
    new-instance p1, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    invoke-direct {p1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->defaultRequestOptions:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    .line 7
    sget-object p2, Lcom/microsoft/azure/storage/blob/BlobType;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/BlobType;

    invoke-static {p1, p2}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->applyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/StorageUri;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/StorageUri;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p2}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/StorageCredentials;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/storage/ServiceClient;->credentials:Lcom/microsoft/azure/storage/StorageCredentials;

    return-object p0
.end method

.method private listContainersWithPrefix(Ljava/lang/String;Lcom/microsoft/azure/storage/blob/ContainerListingDetails;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;
    .locals 15
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

    if-nez p4, :cond_0

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object/from16 v6, p4

    .line 2
    :goto_0
    invoke-virtual {v6}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 3
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/BlobType;

    move-object v13, p0

    move-object/from16 v1, p3

    invoke-static {v1, v0, p0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object v0

    .line 4
    new-instance v12, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;

    invoke-direct {v12}, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;-><init>()V

    .line 5
    new-instance v14, Lcom/microsoft/azure/storage/core/LazySegmentedIterable;

    const/4 v10, 0x0

    move-object v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object v11, v0

    .line 6
    invoke-direct/range {v7 .. v12}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->listContainersWithPrefixSegmentedImpl(Ljava/lang/String;Lcom/microsoft/azure/storage/blob/ContainerListingDetails;Ljava/lang/Integer;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object v2

    const/4 v4, 0x0

    .line 7
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object v5

    move-object v1, v14

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/azure/storage/core/LazySegmentedIterable;-><init>(Lcom/microsoft/azure/storage/core/StorageRequest;Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)V

    return-object v14
.end method

.method private listContainersWithPrefixSegmented(Ljava/lang/String;Lcom/microsoft/azure/storage/blob/ContainerListingDetails;Ljava/lang/Integer;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;
    .locals 7
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

    if-nez p6, :cond_0

    .line 1
    new-instance p6, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p6}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p6}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 3
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/BlobType;

    invoke-static {p5, v0, p0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p5

    .line 4
    sget-object v0, Lcom/microsoft/azure/storage/ResultContinuationType;->CONTAINER:Lcom/microsoft/azure/storage/ResultContinuationType;

    invoke-static {p4, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertContinuationType(Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/ResultContinuationType;)V

    .line 5
    new-instance v6, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;

    invoke-direct {v6}, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;-><init>()V

    .line 6
    invoke-virtual {v6, p4}, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;->setToken(Lcom/microsoft/azure/storage/ResultContinuation;)V

    const/4 p4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    .line 7
    invoke-direct/range {v1 .. v6}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->listContainersWithPrefixSegmentedImpl(Ljava/lang/String;Lcom/microsoft/azure/storage/blob/ContainerListingDetails;Ljava/lang/Integer;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 8
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 9
    invoke-static {p0, p4, p1, p2, p6}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/storage/ResultSegment;

    return-object p1
.end method

.method private listContainersWithPrefixSegmentedImpl(Ljava/lang/String;Lcom/microsoft/azure/storage/blob/ContainerListingDetails;Ljava/lang/Integer;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/blob/ContainerListingDetails;",
            "Ljava/lang/Integer;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            "Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobClient;",
            "Ljava/lang/Void;",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "Lcom/microsoft/azure/storage/blob/CloudBlobContainer;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;->getToken()Lcom/microsoft/azure/storage/ResultContinuation;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/storage/ResultContinuationType;->CONTAINER:Lcom/microsoft/azure/storage/ResultContinuationType;

    invoke-static {v0, v1}, Lcom/microsoft/azure/storage/core/Utility;->assertContinuationType(Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/ResultContinuationType;)V

    .line 2
    new-instance v7, Lcom/microsoft/azure/storage/core/ListingContext;

    invoke-direct {v7, p1, p3}, Lcom/microsoft/azure/storage/core/ListingContext;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3
    new-instance p1, Lcom/microsoft/azure/storage/blob/CloudBlobClient$1;

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/ServiceClient;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v5

    move-object v2, p1

    move-object v3, p0

    move-object v4, p4

    move-object v6, p5

    move-object v8, p4

    move-object v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/microsoft/azure/storage/blob/CloudBlobClient$1;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;Lcom/microsoft/azure/storage/core/ListingContext;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/ContainerListingDetails;)V

    return-object p1
.end method


# virtual methods
.method public downloadAccountInfo()Lcom/microsoft/azure/storage/AccountInformation;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->downloadAccountInfo(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/AccountInformation;

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

    invoke-static {p1, v0, p0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->downloadAccountInformationImpl(Lcom/microsoft/azure/storage/RequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p1

    .line 7
    invoke-static {p0, v0, v1, p1, p2}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

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
            "Ljava/lang/Void;",
            "Lcom/microsoft/azure/storage/AccountInformation;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/blob/CloudBlobClient$2;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/ServiceClient;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p1}, Lcom/microsoft/azure/storage/blob/CloudBlobClient$2;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlobClient;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/RequestOptions;)V

    return-object v0
.end method

.method public final downloadServiceProperties()Lcom/microsoft/azure/storage/ServiceProperties;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->downloadServiceProperties(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ServiceProperties;

    move-result-object v0

    return-object v0
.end method

.method public final downloadServiceProperties(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ServiceProperties;
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

    invoke-static {p1, v0, p0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/azure/storage/ServiceClient;->downloadServicePropertiesImpl(Lcom/microsoft/azure/storage/RequestOptions;Z)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p1

    .line 7
    invoke-static {p0, v0, v1, p1, p2}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/storage/ServiceProperties;

    return-object p1
.end method

.method public getContainerReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CloudBlobContainer;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;-><init>(Ljava/lang/String;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)V

    return-object v0
.end method

.method public bridge synthetic getDefaultRequestOptions()Lcom/microsoft/azure/storage/RequestOptions;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->getDefaultRequestOptions()Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultRequestOptions()Lcom/microsoft/azure/storage/blob/BlobRequestOptions;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->defaultRequestOptions:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    return-object v0
.end method

.method public getDirectoryDelimiter()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->directoryDelimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceStats()Lcom/microsoft/azure/storage/ServiceStats;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->getServiceStats(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ServiceStats;

    move-result-object v0

    return-object v0
.end method

.method public getServiceStats(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ServiceStats;
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

    invoke-static {p1, v0, p0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, p1, v1}, Lcom/microsoft/azure/storage/ServiceClient;->getServiceStatsImpl(Lcom/microsoft/azure/storage/RequestOptions;Z)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p1

    .line 7
    invoke-static {p0, v0, v1, p1, p2}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/storage/ServiceStats;

    return-object p1
.end method

.method public isUsePathStyleUris()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/microsoft/azure/storage/ServiceClient;->isUsePathStyleUris()Z

    move-result v0

    return v0
.end method

.method public listContainers()Ljava/lang/Iterable;
    .locals 2
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
    sget-object v0, Lcom/microsoft/azure/storage/blob/ContainerListingDetails;->NONE:Lcom/microsoft/azure/storage/blob/ContainerListingDetails;

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v1, v0, v1, v1}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->listContainersWithPrefix(Ljava/lang/String;Lcom/microsoft/azure/storage/blob/ContainerListingDetails;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public listContainers(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 2
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

    .line 3
    sget-object v0, Lcom/microsoft/azure/storage/blob/ContainerListingDetails;->NONE:Lcom/microsoft/azure/storage/blob/ContainerListingDetails;

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->listContainersWithPrefix(Ljava/lang/String;Lcom/microsoft/azure/storage/blob/ContainerListingDetails;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public listContainers(Ljava/lang/String;Lcom/microsoft/azure/storage/blob/ContainerListingDetails;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;
    .locals 0
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

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->listContainersWithPrefix(Ljava/lang/String;Lcom/microsoft/azure/storage/blob/ContainerListingDetails;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public listContainersSegmented()Lcom/microsoft/azure/storage/ResultSegment;
    .locals 7
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
    sget-object v2, Lcom/microsoft/azure/storage/blob/ContainerListingDetails;->NONE:Lcom/microsoft/azure/storage/blob/ContainerListingDetails;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->listContainersSegmented(Ljava/lang/String;Lcom/microsoft/azure/storage/blob/ContainerListingDetails;Ljava/lang/Integer;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;

    move-result-object v0

    return-object v0
.end method

.method public listContainersSegmented(Ljava/lang/String;)Lcom/microsoft/azure/storage/ResultSegment;
    .locals 7
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
    sget-object v2, Lcom/microsoft/azure/storage/blob/ContainerListingDetails;->NONE:Lcom/microsoft/azure/storage/blob/ContainerListingDetails;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->listContainersWithPrefixSegmented(Ljava/lang/String;Lcom/microsoft/azure/storage/blob/ContainerListingDetails;Ljava/lang/Integer;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;

    move-result-object p1

    return-object p1
.end method

.method public listContainersSegmented(Ljava/lang/String;Lcom/microsoft/azure/storage/blob/ContainerListingDetails;Ljava/lang/Integer;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;
    .locals 0
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
    invoke-direct/range {p0 .. p6}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->listContainersWithPrefixSegmented(Ljava/lang/String;Lcom/microsoft/azure/storage/blob/ContainerListingDetails;Ljava/lang/Integer;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultRequestOptions(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;)V
    .locals 1

    const-string v0, "defaultRequestOptions"

    .line 1
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->defaultRequestOptions:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    return-void
.end method

.method public setDirectoryDelimiter(Ljava/lang/String;)V
    .locals 1

    const-string v0, "directoryDelimiter"

    .line 1
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->directoryDelimiter:Ljava/lang/String;

    return-void
.end method

.method public uploadServiceProperties(Lcom/microsoft/azure/storage/ServiceProperties;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->uploadServiceProperties(Lcom/microsoft/azure/storage/ServiceProperties;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public uploadServiceProperties(Lcom/microsoft/azure/storage/ServiceProperties;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
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

    invoke-static {p2, v0, p0}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/blob/BlobType;Lcom/microsoft/azure/storage/blob/CloudBlobClient;)Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    move-result-object p2

    const-string v0, "properties"

    .line 5
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ServiceProperties;->getDeleteRetentionPolicy()Lcom/microsoft/azure/storage/DeleteRetentionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ServiceProperties;->getDeleteRetentionPolicy()Lcom/microsoft/azure/storage/DeleteRetentionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/DeleteRetentionPolicy;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ServiceProperties;->getDeleteRetentionPolicy()Lcom/microsoft/azure/storage/DeleteRetentionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/DeleteRetentionPolicy;->getRetentionIntervalInDays()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "RetentionIntervalInDays"

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/microsoft/azure/storage/ServiceClient;->uploadServicePropertiesImpl(Lcom/microsoft/azure/storage/ServiceProperties;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/OperationContext;Z)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 10
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 11
    invoke-static {p0, v0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method
