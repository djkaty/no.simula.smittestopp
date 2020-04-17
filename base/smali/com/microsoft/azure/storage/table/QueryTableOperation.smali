.class public Lcom/microsoft/azure/storage/table/QueryTableOperation;
.super Lcom/microsoft/azure/storage/table/TableOperation;
.source "SourceFile"


# instance fields
.field public clazzType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/azure/storage/table/TableEntity;",
            ">;"
        }
    .end annotation
.end field

.field public isPrimaryOnlyRetrieve:Z

.field public partitionKey:Ljava/lang/String;

.field public resolver:Lcom/microsoft/azure/storage/table/EntityResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/azure/storage/table/EntityResolver<",
            "*>;"
        }
    .end annotation
.end field

.field public rowKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/table/TableOperationType;->RETRIEVE:Lcom/microsoft/azure/storage/table/TableOperationType;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/microsoft/azure/storage/table/TableOperation;-><init>(Lcom/microsoft/azure/storage/table/TableEntity;Lcom/microsoft/azure/storage/table/TableOperationType;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/QueryTableOperation;->isPrimaryOnlyRetrieve:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 3
    sget-object v0, Lcom/microsoft/azure/storage/table/TableOperationType;->RETRIEVE:Lcom/microsoft/azure/storage/table/TableOperationType;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/microsoft/azure/storage/table/TableOperation;-><init>(Lcom/microsoft/azure/storage/table/TableEntity;Lcom/microsoft/azure/storage/table/TableOperationType;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/QueryTableOperation;->isPrimaryOnlyRetrieve:Z

    const-string v0, "partitionKey"

    .line 5
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/QueryTableOperation;->partitionKey:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/microsoft/azure/storage/table/QueryTableOperation;->rowKey:Ljava/lang/String;

    return-void
.end method

.method private retrieveImpl(Lcom/microsoft/azure/storage/table/CloudTableClient;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/table/CloudTableClient;",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/TableRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/table/CloudTableClient;",
            "Lcom/microsoft/azure/storage/table/QueryTableOperation;",
            "Lcom/microsoft/azure/storage/table/TableResult;",
            ">;"
        }
    .end annotation

    const-string v0, "Tables"

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/QueryTableOperation;->getClazzType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/QueryTableOperation;->getClazzType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->checkNullaryCtor(Ljava/lang/Class;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/QueryTableOperation;->getResolver()Lcom/microsoft/azure/storage/table/EntityResolver;

    move-result-object v0

    const-string v1, "Query requires a valid class type or resolver."

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    :goto_0
    new-instance v0, Lcom/microsoft/azure/storage/table/QueryTableOperation$1;

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ServiceClient;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v4

    move-object v1, v0

    move-object v2, p0

    move-object v3, p3

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/microsoft/azure/storage/table/QueryTableOperation$1;-><init>(Lcom/microsoft/azure/storage/table/QueryTableOperation;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/table/TableRequestOptions;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public getClazzType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/azure/storage/table/TableEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/QueryTableOperation;->clazzType:Ljava/lang/Class;

    return-object v0
.end method

.method public getPartitionKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/QueryTableOperation;->partitionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getResolver()Lcom/microsoft/azure/storage/table/EntityResolver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/azure/storage/table/EntityResolver<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/QueryTableOperation;->resolver:Lcom/microsoft/azure/storage/table/EntityResolver;

    return-object v0
.end method

.method public getRowKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/QueryTableOperation;->rowKey:Ljava/lang/String;

    return-object v0
.end method

.method public final isPrimaryOnlyRetrieve()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/storage/table/QueryTableOperation;->isPrimaryOnlyRetrieve:Z

    return v0
.end method

.method public parseResponse(Ljava/io/InputStream;ILjava/lang/String;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/table/TableRequestOptions;)Lcom/microsoft/azure/storage/table/TableResult;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/QueryTableOperation;->getClazzType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/QueryTableOperation;->getResolver()Lcom/microsoft/azure/storage/table/EntityResolver;

    move-result-object v4

    move-object v0, p1

    move-object v1, p5

    move v2, p2

    move-object v5, p4

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/microsoft/azure/storage/table/TableDeserializer;->parseSingleOpResponse(Ljava/io/InputStream;Lcom/microsoft/azure/storage/table/TableRequestOptions;ILjava/lang/Class;Lcom/microsoft/azure/storage/table/EntityResolver;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/TableResult;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p3}, Lcom/microsoft/azure/storage/table/TableResult;->setEtag(Ljava/lang/String;)V

    return-object p1
.end method

.method public performRetrieve(Lcom/microsoft/azure/storage/table/CloudTableClient;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/TableResult;
    .locals 0

    .line 1
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->assertPolicyIfRequired()V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/table/QueryTableOperation;->retrieveImpl(Lcom/microsoft/azure/storage/table/CloudTableClient;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p2

    .line 3
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p3

    .line 4
    invoke-static {p1, p0, p2, p3, p4}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/storage/table/TableResult;

    return-object p1
.end method

.method public setClazzType(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/azure/storage/table/TableEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clazzType"

    .line 1
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Utility;->checkNullaryCtor(Ljava/lang/Class;)V

    .line 3
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/QueryTableOperation;->clazzType:Ljava/lang/Class;

    return-void
.end method

.method public setPartitionKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/QueryTableOperation;->partitionKey:Ljava/lang/String;

    return-void
.end method

.method public setPrimaryOnlyRetrieve(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/azure/storage/table/QueryTableOperation;->isPrimaryOnlyRetrieve:Z

    return-void
.end method

.method public setResolver(Lcom/microsoft/azure/storage/table/EntityResolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/table/EntityResolver<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "Query requires a valid class type or resolver."

    .line 1
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/QueryTableOperation;->resolver:Lcom/microsoft/azure/storage/table/EntityResolver;

    return-void
.end method

.method public setRowKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/QueryTableOperation;->rowKey:Ljava/lang/String;

    return-void
.end method
