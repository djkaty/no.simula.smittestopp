.class public final Lcom/microsoft/azure/storage/table/CloudTableClient;
.super Lcom/microsoft/azure/storage/ServiceClient;
.source "SourceFile"


# instance fields
.field public defaultRequestOptions:Lcom/microsoft/azure/storage/table/TableRequestOptions;

.field public final tableNameResolver:Lcom/microsoft/azure/storage/table/EntityResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/azure/storage/table/EntityResolver<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/ServiceClient;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    .line 3
    new-instance p1, Lcom/microsoft/azure/storage/table/TableRequestOptions;

    invoke-direct {p1}, Lcom/microsoft/azure/storage/table/TableRequestOptions;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/storage/table/CloudTableClient;->defaultRequestOptions:Lcom/microsoft/azure/storage/table/TableRequestOptions;

    .line 4
    new-instance p1, Lcom/microsoft/azure/storage/table/CloudTableClient$1;

    invoke-direct {p1, p0}, Lcom/microsoft/azure/storage/table/CloudTableClient$1;-><init>(Lcom/microsoft/azure/storage/table/CloudTableClient;)V

    iput-object p1, p0, Lcom/microsoft/azure/storage/table/CloudTableClient;->tableNameResolver:Lcom/microsoft/azure/storage/table/EntityResolver;

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Lcom/microsoft/azure/storage/StorageCredentialsAnonymous;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/microsoft/azure/storage/table/CloudTableClient;->defaultRequestOptions:Lcom/microsoft/azure/storage/table/TableRequestOptions;

    invoke-static {p1}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->applyDefaults(Lcom/microsoft/azure/storage/table/TableRequestOptions;)V

    return-void

    .line 7
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

    invoke-direct {p0, v0, p2}, Lcom/microsoft/azure/storage/table/CloudTableClient;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public static addEncryptionProperties(Lcom/microsoft/azure/storage/table/TableQuery;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/table/TableQuery<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableQuery;->getColumns()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableQuery;->getColumns()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableQuery;->getColumns()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableQuery;->getColumns()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v1, "_ClientEncryptionMetadata1"

    .line 4
    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "_ClientEncryptionMetadata2"

    .line 5
    aput-object v2, v0, v1

    .line 6
    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/table/TableQuery;->setColumns([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private executeQuerySegmentedCoreImpl(Lcom/microsoft/azure/storage/table/TableQuery;Lcom/microsoft/azure/storage/table/EntityResolver;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/microsoft/azure/storage/table/TableEntity;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/microsoft/azure/storage/table/TableQuery<",
            "TT;>;",
            "Lcom/microsoft/azure/storage/table/EntityResolver<",
            "TR;>;",
            "Lcom/microsoft/azure/storage/table/TableRequestOptions;",
            "Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/table/CloudTableClient;",
            "Lcom/microsoft/azure/storage/table/TableQuery<",
            "TT;>;",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "TT;>;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableQuery;->getClazzType()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "Query requires a valid class type or resolver."

    invoke-static {v0, p2}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    :cond_0
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->assertPolicyIfRequired()V

    .line 3
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 4
    invoke-static {p1}, Lcom/microsoft/azure/storage/table/CloudTableClient;->addEncryptionProperties(Lcom/microsoft/azure/storage/table/TableQuery;)V

    .line 5
    :cond_1
    new-instance p2, Lcom/microsoft/azure/storage/table/CloudTableClient$2;

    .line 6
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/ServiceClient;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, p2

    move-object v1, p0

    move-object v2, p3

    move-object v4, p4

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/azure/storage/table/CloudTableClient$2;-><init>(Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/table/TableQuery;)V

    return-object p2
.end method

.method private executeQuerySegmentedWithResolverCoreImpl(Lcom/microsoft/azure/storage/table/TableQuery;Lcom/microsoft/azure/storage/table/EntityResolver;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/microsoft/azure/storage/table/TableEntity;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/microsoft/azure/storage/table/TableQuery<",
            "TT;>;",
            "Lcom/microsoft/azure/storage/table/EntityResolver<",
            "TR;>;",
            "Lcom/microsoft/azure/storage/table/TableRequestOptions;",
            "Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/table/CloudTableClient;",
            "Lcom/microsoft/azure/storage/table/TableQuery<",
            "TT;>;",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "TR;>;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableQuery;->getClazzType()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Query requires a valid class type or resolver."

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    :cond_0
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/table/TableEncryptionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/microsoft/azure/storage/table/CloudTableClient;->addEncryptionProperties(Lcom/microsoft/azure/storage/table/TableQuery;)V

    .line 4
    :cond_1
    new-instance v0, Lcom/microsoft/azure/storage/table/CloudTableClient$3;

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/ServiceClient;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v4

    move-object v1, v0

    move-object v2, p0

    move-object v3, p3

    move-object v5, p4

    move-object v6, p3

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/microsoft/azure/storage/table/CloudTableClient$3;-><init>(Lcom/microsoft/azure/storage/table/CloudTableClient;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/table/TableQuery;Lcom/microsoft/azure/storage/table/EntityResolver;)V

    return-object v0
.end method

.method private generateListTablesQuery(Ljava/lang/String;)Lcom/microsoft/azure/storage/table/TableQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/azure/storage/table/TableQuery<",
            "Lcom/microsoft/azure/storage/table/TableServiceEntity;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/microsoft/azure/storage/table/TableServiceEntity;

    invoke-static {v0}, Lcom/microsoft/azure/storage/table/TableQuery;->from(Ljava/lang/Class;)Lcom/microsoft/azure/storage/table/TableQuery;

    move-result-object v0

    const-string v1, "Tables"

    .line 2
    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/table/TableQuery;->setSourceTableName(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "TableName"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const-string p1, "(%s ge \'%s\') and (%s lt \'%s{\')"

    .line 4
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lcom/microsoft/azure/storage/table/TableQuery;->where(Ljava/lang/String;)Lcom/microsoft/azure/storage/table/TableQuery;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final downloadServiceProperties()Lcom/microsoft/azure/storage/ServiceProperties;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/table/CloudTableClient;->downloadServiceProperties(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ServiceProperties;

    move-result-object v0

    return-object v0
.end method

.method public final downloadServiceProperties(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ServiceProperties;
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
    invoke-static {p1, p0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/table/CloudTableClient;)Lcom/microsoft/azure/storage/table/TableRequestOptions;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

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

.method public executeQuerySegmentedImpl(Lcom/microsoft/azure/storage/table/TableQuery;Lcom/microsoft/azure/storage/table/EntityResolver;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/microsoft/azure/storage/table/TableEntity;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/microsoft/azure/storage/table/TableQuery<",
            "TT;>;",
            "Lcom/microsoft/azure/storage/table/EntityResolver<",
            "TR;>;",
            "Lcom/microsoft/azure/storage/ResultContinuation;",
            "Lcom/microsoft/azure/storage/table/TableRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "*>;"
        }
    .end annotation

    if-nez p5, :cond_0

    .line 1
    new-instance p5, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p5}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 3
    invoke-static {p4, p0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/table/CloudTableClient;)Lcom/microsoft/azure/storage/table/TableRequestOptions;

    move-result-object p4

    .line 4
    sget-object v0, Lcom/microsoft/azure/storage/ResultContinuationType;->TABLE:Lcom/microsoft/azure/storage/ResultContinuationType;

    invoke-static {p3, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertContinuationType(Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/ResultContinuationType;)V

    .line 5
    new-instance v0, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;-><init>()V

    .line 6
    invoke-virtual {v0, p3}, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;->setToken(Lcom/microsoft/azure/storage/ResultContinuation;)V

    .line 7
    invoke-direct {p0, p1, p2, p4, v0}, Lcom/microsoft/azure/storage/table/CloudTableClient;->executeQuerySegmentedWithResolverCoreImpl(Lcom/microsoft/azure/storage/table/TableQuery;Lcom/microsoft/azure/storage/table/EntityResolver;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p2

    .line 8
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p3

    .line 9
    invoke-static {p0, p1, p2, p3, p5}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/storage/ResultSegment;

    return-object p1
.end method

.method public generateIteratorForQuery(Lcom/microsoft/azure/storage/table/TableQuery;Lcom/microsoft/azure/storage/table/EntityResolver;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/microsoft/azure/storage/table/TableEntity;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/microsoft/azure/storage/table/TableQuery<",
            "TT;>;",
            "Lcom/microsoft/azure/storage/table/EntityResolver<",
            "TR;>;",
            "Lcom/microsoft/azure/storage/table/TableRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Ljava/lang/Iterable<",
            "*>;"
        }
    .end annotation

    if-nez p4, :cond_0

    .line 1
    new-instance p4, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p4}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    :cond_0
    move-object v5, p4

    .line 2
    invoke-virtual {v5}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 3
    new-instance p4, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;

    invoke-direct {p4}, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;-><init>()V

    if-nez p2, :cond_1

    .line 4
    new-instance v6, Lcom/microsoft/azure/storage/core/LazySegmentedIterable;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/table/CloudTableClient;->executeQuerySegmentedCoreImpl(Lcom/microsoft/azure/storage/table/TableQuery;Lcom/microsoft/azure/storage/table/EntityResolver;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object v1

    .line 5
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object v4

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/core/LazySegmentedIterable;-><init>(Lcom/microsoft/azure/storage/core/StorageRequest;Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)V

    return-object v6

    .line 6
    :cond_1
    new-instance v6, Lcom/microsoft/azure/storage/core/LazySegmentedIterable;

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/table/CloudTableClient;->executeQuerySegmentedWithResolverCoreImpl(Lcom/microsoft/azure/storage/table/TableQuery;Lcom/microsoft/azure/storage/table/EntityResolver;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object v1

    .line 8
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object v4

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/core/LazySegmentedIterable;-><init>(Lcom/microsoft/azure/storage/core/StorageRequest;Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)V

    return-object v6
.end method

.method public bridge synthetic getDefaultRequestOptions()Lcom/microsoft/azure/storage/RequestOptions;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/CloudTableClient;->getDefaultRequestOptions()Lcom/microsoft/azure/storage/table/TableRequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultRequestOptions()Lcom/microsoft/azure/storage/table/TableRequestOptions;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/CloudTableClient;->defaultRequestOptions:Lcom/microsoft/azure/storage/table/TableRequestOptions;

    return-object v0
.end method

.method public getServiceStats()Lcom/microsoft/azure/storage/ServiceStats;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/table/CloudTableClient;->getServiceStats(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ServiceStats;

    move-result-object v0

    return-object v0
.end method

.method public getServiceStats(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ServiceStats;
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
    invoke-static {p1, p0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/table/CloudTableClient;)Lcom/microsoft/azure/storage/table/TableRequestOptions;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

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

.method public getTableReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/table/CloudTable;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/table/CloudTable;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/azure/storage/table/CloudTable;-><init>(Ljava/lang/String;Lcom/microsoft/azure/storage/table/CloudTableClient;)V

    return-object v0
.end method

.method public final getTransformedEndPoint(Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/ServiceClient;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/microsoft/azure/storage/StorageCredentials;->transformUri(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    return-object p1
.end method

.method public isUsePathStyleUris()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/microsoft/azure/storage/ServiceClient;->isUsePathStyleUris()Z

    move-result v0

    return v0
.end method

.method public listTables()Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/table/CloudTableClient;->listTables(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public listTables(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lcom/microsoft/azure/storage/table/CloudTableClient;->listTables(Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public listTables(Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/TableRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-static {p2, p0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/table/CloudTableClient;)Lcom/microsoft/azure/storage/table/TableRequestOptions;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->clearEncryption()V

    .line 5
    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/table/CloudTableClient;->generateListTablesQuery(Ljava/lang/String;)Lcom/microsoft/azure/storage/table/TableQuery;

    move-result-object p1

    iget-object v0, p0, Lcom/microsoft/azure/storage/table/CloudTableClient;->tableNameResolver:Lcom/microsoft/azure/storage/table/EntityResolver;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/microsoft/azure/storage/table/CloudTableClient;->generateIteratorForQuery(Lcom/microsoft/azure/storage/table/TableQuery;Lcom/microsoft/azure/storage/table/EntityResolver;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public listTablesSegmented()Lcom/microsoft/azure/storage/ResultSegment;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/table/CloudTableClient;->listTablesSegmented(Ljava/lang/String;)Lcom/microsoft/azure/storage/ResultSegment;

    move-result-object v0

    return-object v0
.end method

.method public listTablesSegmented(Ljava/lang/String;)Lcom/microsoft/azure/storage/ResultSegment;
    .locals 6
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/table/CloudTableClient;->listTablesSegmented(Ljava/lang/String;Ljava/lang/Integer;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;

    move-result-object p1

    return-object p1
.end method

.method public listTablesSegmented(Ljava/lang/String;Ljava/lang/Integer;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;
    .locals 6
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lcom/microsoft/azure/storage/ResultContinuation;",
            "Lcom/microsoft/azure/storage/table/TableRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x1

    const-string v5, "maxResults"

    invoke-static {v5, v1, v2, v3, v4}, Lcom/microsoft/azure/storage/core/Utility;->assertGreaterThanOrEqual(Ljava/lang/String;JJ)V

    .line 4
    :cond_0
    invoke-static {p4, p0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/table/CloudTableClient;)Lcom/microsoft/azure/storage/table/TableRequestOptions;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->clearEncryption()V

    .line 6
    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/table/CloudTableClient;->generateListTablesQuery(Ljava/lang/String;)Lcom/microsoft/azure/storage/table/TableQuery;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/microsoft/azure/storage/table/TableQuery;->take(Ljava/lang/Integer;)Lcom/microsoft/azure/storage/table/TableQuery;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/azure/storage/table/CloudTableClient;->tableNameResolver:Lcom/microsoft/azure/storage/table/EntityResolver;

    move-object v0, p0

    move-object v3, p3

    move-object v5, p5

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/table/CloudTableClient;->executeQuerySegmentedImpl(Lcom/microsoft/azure/storage/table/TableQuery;Lcom/microsoft/azure/storage/table/EntityResolver;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultRequestOptions(Lcom/microsoft/azure/storage/table/TableRequestOptions;)V
    .locals 1

    const-string v0, "defaultRequestOptions"

    .line 1
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/CloudTableClient;->defaultRequestOptions:Lcom/microsoft/azure/storage/table/TableRequestOptions;

    return-void
.end method

.method public uploadServiceProperties(Lcom/microsoft/azure/storage/ServiceProperties;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/microsoft/azure/storage/table/CloudTableClient;->uploadServiceProperties(Lcom/microsoft/azure/storage/ServiceProperties;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public uploadServiceProperties(Lcom/microsoft/azure/storage/ServiceProperties;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
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
    invoke-static {p2, p0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/table/CloudTableClient;)Lcom/microsoft/azure/storage/table/TableRequestOptions;

    move-result-object p2

    const-string v0, "properties"

    .line 6
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

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
