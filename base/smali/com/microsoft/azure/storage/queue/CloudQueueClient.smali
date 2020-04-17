.class public final Lcom/microsoft/azure/storage/queue/CloudQueueClient;
.super Lcom/microsoft/azure/storage/ServiceClient;
.source "SourceFile"


# instance fields
.field public defaultRequestOptions:Lcom/microsoft/azure/storage/queue/QueueRequestOptions;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/ServiceClient;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    .line 3
    new-instance p1, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    invoke-direct {p1}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/storage/queue/CloudQueueClient;->defaultRequestOptions:Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Lcom/microsoft/azure/storage/StorageCredentialsAnonymous;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/microsoft/azure/storage/queue/CloudQueueClient;->defaultRequestOptions:Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    invoke-static {p1}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->applyDefaults(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "StorageCredentials cannot be null or anonymous for this service."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/StorageUri;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;Ljava/net/URI;)V

    invoke-direct {p0, v0, p2}, Lcom/microsoft/azure/storage/queue/CloudQueueClient;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/azure/storage/queue/CloudQueueClient;)Lcom/microsoft/azure/storage/StorageCredentials;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/storage/ServiceClient;->credentials:Lcom/microsoft/azure/storage/StorageCredentials;

    return-object p0
.end method

.method private listQueuesSegmentedImpl(Ljava/lang/String;Lcom/microsoft/azure/storage/queue/QueueListingDetails;Ljava/lang/Integer;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/queue/QueueListingDetails;",
            "Ljava/lang/Integer;",
            "Lcom/microsoft/azure/storage/queue/QueueRequestOptions;",
            "Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/queue/CloudQueueClient;",
            "Ljava/lang/Void;",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "Lcom/microsoft/azure/storage/queue/CloudQueue;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;->getToken()Lcom/microsoft/azure/storage/ResultContinuation;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/storage/ResultContinuationType;->QUEUE:Lcom/microsoft/azure/storage/ResultContinuationType;

    invoke-static {v0, v1}, Lcom/microsoft/azure/storage/core/Utility;->assertContinuationType(Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/ResultContinuationType;)V

    .line 2
    new-instance v7, Lcom/microsoft/azure/storage/core/ListingContext;

    invoke-direct {v7, p1, p3}, Lcom/microsoft/azure/storage/core/ListingContext;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3
    new-instance p1, Lcom/microsoft/azure/storage/queue/CloudQueueClient$1;

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/ServiceClient;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v5

    move-object v2, p1

    move-object v3, p0

    move-object v4, p4

    move-object v6, p5

    move-object v8, p4

    move-object v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/microsoft/azure/storage/queue/CloudQueueClient$1;-><init>(Lcom/microsoft/azure/storage/queue/CloudQueueClient;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;Lcom/microsoft/azure/storage/core/ListingContext;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/queue/QueueListingDetails;)V

    return-object p1
.end method


# virtual methods
.method public final downloadServiceProperties()Lcom/microsoft/azure/storage/ServiceProperties;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/queue/CloudQueueClient;->downloadServiceProperties(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ServiceProperties;

    move-result-object v0

    return-object v0
.end method

.method public final downloadServiceProperties(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ServiceProperties;
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
    invoke-static {p1, p0}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/queue/CloudQueueClient;)Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

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

.method public bridge synthetic getDefaultRequestOptions()Lcom/microsoft/azure/storage/RequestOptions;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/queue/CloudQueueClient;->getDefaultRequestOptions()Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultRequestOptions()Lcom/microsoft/azure/storage/queue/QueueRequestOptions;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueueClient;->defaultRequestOptions:Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    return-object v0
.end method

.method public getQueueReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/queue/CloudQueue;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/queue/CloudQueue;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/azure/storage/queue/CloudQueue;-><init>(Ljava/lang/String;Lcom/microsoft/azure/storage/queue/CloudQueueClient;)V

    return-object v0
.end method

.method public getServiceStats()Lcom/microsoft/azure/storage/ServiceStats;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/queue/CloudQueueClient;->getServiceStats(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ServiceStats;

    move-result-object v0

    return-object v0
.end method

.method public getServiceStats(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ServiceStats;
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
    invoke-static {p1, p0}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/queue/CloudQueueClient;)Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

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

.method public listQueues()Ljava/lang/Iterable;
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/queue/CloudQueue;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/queue/QueueListingDetails;->NONE:Lcom/microsoft/azure/storage/queue/QueueListingDetails;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/microsoft/azure/storage/queue/CloudQueueClient;->listQueues(Ljava/lang/String;Lcom/microsoft/azure/storage/queue/QueueListingDetails;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public listQueues(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/queue/CloudQueue;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/microsoft/azure/storage/queue/QueueListingDetails;->NONE:Lcom/microsoft/azure/storage/queue/QueueListingDetails;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/microsoft/azure/storage/queue/CloudQueueClient;->listQueues(Ljava/lang/String;Lcom/microsoft/azure/storage/queue/QueueListingDetails;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public listQueues(Ljava/lang/String;Lcom/microsoft/azure/storage/queue/QueueListingDetails;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;
    .locals 9
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/queue/QueueListingDetails;",
            "Lcom/microsoft/azure/storage/queue/QueueRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/queue/CloudQueue;",
            ">;"
        }
    .end annotation

    if-nez p4, :cond_0

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, p4

    .line 4
    :goto_0
    invoke-virtual {v6}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 5
    invoke-static {p3, p0}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/queue/CloudQueueClient;)Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    move-result-object v7

    .line 6
    new-instance v5, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;

    invoke-direct {v5}, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;-><init>()V

    .line 7
    new-instance v8, Lcom/microsoft/azure/storage/core/LazySegmentedIterable;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/queue/CloudQueueClient;->listQueuesSegmentedImpl(Ljava/lang/String;Lcom/microsoft/azure/storage/queue/QueueListingDetails;Ljava/lang/Integer;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object v2

    const/4 v4, 0x0

    .line 8
    invoke-virtual {v7}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object v5

    move-object v1, v8

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/azure/storage/core/LazySegmentedIterable;-><init>(Lcom/microsoft/azure/storage/core/StorageRequest;Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)V

    return-object v8
.end method

.method public listQueuesSegmented()Lcom/microsoft/azure/storage/ResultSegment;
    .locals 7
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "Lcom/microsoft/azure/storage/queue/CloudQueue;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v2, Lcom/microsoft/azure/storage/queue/QueueListingDetails;->NONE:Lcom/microsoft/azure/storage/queue/QueueListingDetails;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/azure/storage/queue/CloudQueueClient;->listQueuesSegmented(Ljava/lang/String;Lcom/microsoft/azure/storage/queue/QueueListingDetails;Ljava/lang/Integer;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;

    move-result-object v0

    return-object v0
.end method

.method public listQueuesSegmented(Ljava/lang/String;)Lcom/microsoft/azure/storage/ResultSegment;
    .locals 7
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "Lcom/microsoft/azure/storage/queue/CloudQueue;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v2, Lcom/microsoft/azure/storage/queue/QueueListingDetails;->NONE:Lcom/microsoft/azure/storage/queue/QueueListingDetails;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/azure/storage/queue/CloudQueueClient;->listQueuesSegmented(Ljava/lang/String;Lcom/microsoft/azure/storage/queue/QueueListingDetails;Ljava/lang/Integer;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;

    move-result-object p1

    return-object p1
.end method

.method public listQueuesSegmented(Ljava/lang/String;Lcom/microsoft/azure/storage/queue/QueueListingDetails;Ljava/lang/Integer;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;
    .locals 6
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/queue/QueueListingDetails;",
            "Ljava/lang/Integer;",
            "Lcom/microsoft/azure/storage/ResultContinuation;",
            "Lcom/microsoft/azure/storage/queue/QueueRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "Lcom/microsoft/azure/storage/queue/CloudQueue;",
            ">;"
        }
    .end annotation

    if-nez p6, :cond_0

    .line 3
    new-instance p6, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p6}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 4
    :cond_0
    invoke-virtual {p6}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 5
    invoke-static {p5, p0}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/queue/CloudQueueClient;)Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    move-result-object p5

    .line 6
    new-instance v5, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;

    invoke-direct {v5}, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;-><init>()V

    .line 7
    invoke-virtual {v5, p4}, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;->setToken(Lcom/microsoft/azure/storage/ResultContinuation;)V

    const/4 p4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/queue/CloudQueueClient;->listQueuesSegmentedImpl(Ljava/lang/String;Lcom/microsoft/azure/storage/queue/QueueListingDetails;Ljava/lang/Integer;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 9
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 10
    invoke-static {p0, p4, p1, p2, p6}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/storage/ResultSegment;

    return-object p1
.end method

.method public setDefaultRequestOptions(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;)V
    .locals 1

    const-string v0, "defaultRequestOptions"

    .line 1
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/storage/queue/CloudQueueClient;->defaultRequestOptions:Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    return-void
.end method

.method public uploadServiceProperties(Lcom/microsoft/azure/storage/ServiceProperties;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/microsoft/azure/storage/queue/CloudQueueClient;->uploadServiceProperties(Lcom/microsoft/azure/storage/ServiceProperties;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public uploadServiceProperties(Lcom/microsoft/azure/storage/ServiceProperties;Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ServiceProperties;->getDefaultServiceVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    .line 3
    new-instance p3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 4
    :cond_0
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 5
    invoke-static {p2, p0}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/queue/QueueRequestOptions;Lcom/microsoft/azure/storage/queue/CloudQueueClient;)Lcom/microsoft/azure/storage/queue/QueueRequestOptions;

    move-result-object p2

    const-string v0, "properties"

    .line 6
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/microsoft/azure/storage/ServiceClient;->uploadServicePropertiesImpl(Lcom/microsoft/azure/storage/ServiceProperties;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/OperationContext;Z)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 8
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 9
    invoke-static {p0, v0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DefaultServiceVersion can only be set for the Blob service."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
