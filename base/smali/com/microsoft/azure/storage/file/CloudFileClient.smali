.class public final Lcom/microsoft/azure/storage/file/CloudFileClient;
.super Lcom/microsoft/azure/storage/ServiceClient;
.source "SourceFile"


# instance fields
.field public defaultRequestOptions:Lcom/microsoft/azure/storage/file/FileRequestOptions;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/ServiceClient;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    .line 3
    new-instance p1, Lcom/microsoft/azure/storage/file/FileRequestOptions;

    invoke-direct {p1}, Lcom/microsoft/azure/storage/file/FileRequestOptions;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/storage/file/CloudFileClient;->defaultRequestOptions:Lcom/microsoft/azure/storage/file/FileRequestOptions;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Lcom/microsoft/azure/storage/StorageCredentialsAnonymous;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/microsoft/azure/storage/file/CloudFileClient;->defaultRequestOptions:Lcom/microsoft/azure/storage/file/FileRequestOptions;

    invoke-static {p1}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->applyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "StorageCredentials cannot be null or anonymous for this service."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/StorageUri;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p2}, Lcom/microsoft/azure/storage/file/CloudFileClient;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method private listSharesWithPrefix(Ljava/lang/String;Ljava/util/EnumSet;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/file/ShareListingDetails;",
            ">;",
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/file/CloudFileShare;",
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
    move-object v6, p4

    .line 2
    :goto_0
    invoke-virtual {v6}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 3
    invoke-static {p3, p0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object v7

    .line 4
    new-instance v5, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;

    invoke-direct {v5}, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;-><init>()V

    .line 5
    new-instance v8, Lcom/microsoft/azure/storage/core/LazySegmentedIterable;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/file/CloudFileClient;->listSharesWithPrefixSegmentedImpl(Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/Integer;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object v2

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v7}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object v5

    move-object v1, v8

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/azure/storage/core/LazySegmentedIterable;-><init>(Lcom/microsoft/azure/storage/core/StorageRequest;Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)V

    return-object v8
.end method

.method private listSharesWithPrefixSegmented(Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/Integer;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/file/ShareListingDetails;",
            ">;",
            "Ljava/lang/Integer;",
            "Lcom/microsoft/azure/storage/ResultContinuation;",
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "Lcom/microsoft/azure/storage/file/CloudFileShare;",
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
    invoke-static {p5, p0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p5

    .line 4
    sget-object v0, Lcom/microsoft/azure/storage/ResultContinuationType;->SHARE:Lcom/microsoft/azure/storage/ResultContinuationType;

    invoke-static {p4, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertContinuationType(Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/ResultContinuationType;)V

    .line 5
    new-instance v5, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;

    invoke-direct {v5}, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;-><init>()V

    .line 6
    invoke-virtual {v5, p4}, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;->setToken(Lcom/microsoft/azure/storage/ResultContinuation;)V

    const/4 p4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/file/CloudFileClient;->listSharesWithPrefixSegmentedImpl(Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/Integer;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;)Lcom/microsoft/azure/storage/core/StorageRequest;

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

.method private listSharesWithPrefixSegmentedImpl(Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/Integer;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/file/ShareListingDetails;",
            ">;",
            "Ljava/lang/Integer;",
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            "Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/file/CloudFileClient;",
            "Ljava/lang/Void;",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "Lcom/microsoft/azure/storage/file/CloudFileShare;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;->getToken()Lcom/microsoft/azure/storage/ResultContinuation;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/storage/ResultContinuationType;->SHARE:Lcom/microsoft/azure/storage/ResultContinuationType;

    invoke-static {v0, v1}, Lcom/microsoft/azure/storage/core/Utility;->assertContinuationType(Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/ResultContinuationType;)V

    .line 2
    new-instance v7, Lcom/microsoft/azure/storage/core/ListingContext;

    invoke-direct {v7, p1, p3}, Lcom/microsoft/azure/storage/core/ListingContext;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3
    new-instance p1, Lcom/microsoft/azure/storage/file/CloudFileClient$1;

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/ServiceClient;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v5

    move-object v2, p1

    move-object v3, p0

    move-object v4, p4

    move-object v6, p5

    move-object v8, p4

    move-object v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/microsoft/azure/storage/file/CloudFileClient$1;-><init>(Lcom/microsoft/azure/storage/file/CloudFileClient;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;Lcom/microsoft/azure/storage/core/ListingContext;Lcom/microsoft/azure/storage/file/FileRequestOptions;Ljava/util/EnumSet;)V

    return-object p1
.end method


# virtual methods
.method public final downloadServiceProperties()Lcom/microsoft/azure/storage/file/FileServiceProperties;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFileClient;->downloadServiceProperties(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/file/FileServiceProperties;

    move-result-object v0

    return-object v0
.end method

.method public final downloadServiceProperties(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/file/FileServiceProperties;
    .locals 3
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
    invoke-static {p1, p0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/microsoft/azure/storage/file/FileServiceProperties;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, p1, v2}, Lcom/microsoft/azure/storage/ServiceClient;->downloadServicePropertiesImpl(Lcom/microsoft/azure/storage/RequestOptions;Z)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p1

    .line 8
    invoke-static {p0, v1, v2, p1, p2}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/storage/ServiceProperties;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/storage/file/FileServiceProperties;-><init>(Lcom/microsoft/azure/storage/ServiceProperties;)V

    return-object v0
.end method

.method public bridge synthetic getDefaultRequestOptions()Lcom/microsoft/azure/storage/RequestOptions;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/file/CloudFileClient;->getDefaultRequestOptions()Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultRequestOptions()Lcom/microsoft/azure/storage/file/FileRequestOptions;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/CloudFileClient;->defaultRequestOptions:Lcom/microsoft/azure/storage/file/FileRequestOptions;

    return-object v0
.end method

.method public getShareReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/file/CloudFileShare;
    .locals 1

    const-string v0, "shareName"

    .line 1
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/azure/storage/file/CloudFileClient;->getShareReference(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/storage/file/CloudFileShare;

    move-result-object p1

    return-object p1
.end method

.method public getShareReference(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/storage/file/CloudFileShare;
    .locals 1

    const-string v0, "shareName"

    .line 3
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/microsoft/azure/storage/file/CloudFileShare;

    invoke-direct {v0, p1, p2, p0}, Lcom/microsoft/azure/storage/file/CloudFileShare;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/file/CloudFileClient;)V

    return-object v0
.end method

.method public isUsePathStyleUris()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/microsoft/azure/storage/ServiceClient;->isUsePathStyleUris()Z

    move-result v0

    return v0
.end method

.method public listShares()Ljava/lang/Iterable;
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/file/CloudFileShare;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/microsoft/azure/storage/file/ShareListingDetails;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1, v1}, Lcom/microsoft/azure/storage/file/CloudFileClient;->listSharesWithPrefix(Ljava/lang/String;Ljava/util/EnumSet;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public listShares(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/file/CloudFileShare;",
            ">;"
        }
    .end annotation

    .line 2
    const-class v0, Lcom/microsoft/azure/storage/file/ShareListingDetails;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/microsoft/azure/storage/file/CloudFileClient;->listSharesWithPrefix(Ljava/lang/String;Ljava/util/EnumSet;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public listShares(Ljava/lang/String;Ljava/util/EnumSet;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;
    .locals 0
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/file/ShareListingDetails;",
            ">;",
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/file/CloudFileShare;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/file/CloudFileClient;->listSharesWithPrefix(Ljava/lang/String;Ljava/util/EnumSet;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public listSharesSegmented()Lcom/microsoft/azure/storage/ResultSegment;
    .locals 8
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "Lcom/microsoft/azure/storage/file/CloudFileShare;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/microsoft/azure/storage/file/ShareListingDetails;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/microsoft/azure/storage/file/CloudFileClient;->listSharesSegmented(Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/Integer;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;

    move-result-object v0

    return-object v0
.end method

.method public listSharesSegmented(Ljava/lang/String;)Lcom/microsoft/azure/storage/ResultSegment;
    .locals 8
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "Lcom/microsoft/azure/storage/file/CloudFileShare;",
            ">;"
        }
    .end annotation

    .line 2
    const-class v0, Lcom/microsoft/azure/storage/file/ShareListingDetails;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/microsoft/azure/storage/file/CloudFileClient;->listSharesWithPrefixSegmented(Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/Integer;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;

    move-result-object p1

    return-object p1
.end method

.method public listSharesSegmented(Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/Integer;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;
    .locals 0
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/file/ShareListingDetails;",
            ">;",
            "Ljava/lang/Integer;",
            "Lcom/microsoft/azure/storage/ResultContinuation;",
            "Lcom/microsoft/azure/storage/file/FileRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "Lcom/microsoft/azure/storage/file/CloudFileShare;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-direct/range {p0 .. p6}, Lcom/microsoft/azure/storage/file/CloudFileClient;->listSharesWithPrefixSegmented(Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/Integer;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultRequestOptions(Lcom/microsoft/azure/storage/file/FileRequestOptions;)V
    .locals 1

    const-string v0, "defaultRequestOptions"

    .line 1
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/CloudFileClient;->defaultRequestOptions:Lcom/microsoft/azure/storage/file/FileRequestOptions;

    return-void
.end method

.method public uploadServiceProperties(Lcom/microsoft/azure/storage/file/FileServiceProperties;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/microsoft/azure/storage/file/CloudFileClient;->uploadServiceProperties(Lcom/microsoft/azure/storage/file/FileServiceProperties;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public uploadServiceProperties(Lcom/microsoft/azure/storage/file/FileServiceProperties;Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
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
    invoke-static {p2, p0}, Lcom/microsoft/azure/storage/file/FileRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/file/FileRequestOptions;Lcom/microsoft/azure/storage/file/CloudFileClient;)Lcom/microsoft/azure/storage/file/FileRequestOptions;

    move-result-object p2

    const-string v0, "properties"

    .line 5
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/file/FileServiceProperties;->getServiceProperties()Lcom/microsoft/azure/storage/ServiceProperties;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/microsoft/azure/storage/ServiceClient;->uploadServicePropertiesImpl(Lcom/microsoft/azure/storage/ServiceProperties;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/OperationContext;Z)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    .line 7
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 8
    invoke-static {p0, v0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method
