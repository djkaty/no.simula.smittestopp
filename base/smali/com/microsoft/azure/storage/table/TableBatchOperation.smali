.class public Lcom/microsoft/azure/storage/table/TableBatchOperation;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/microsoft/azure/storage/table/TableOperation;",
        ">;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x108d1fd20994498eL


# instance fields
.field public containsWrites:Z

.field public hasQuery:Z

.field public partitionKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/TableBatchOperation;->hasQuery:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/microsoft/azure/storage/table/TableBatchOperation;->partitionKey:Ljava/lang/String;

    .line 4
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/TableBatchOperation;->containsWrites:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/azure/storage/table/TableBatchOperation;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/azure/storage/table/TableBatchOperation;->containsWrites:Z

    return p0
.end method

.method private checkResetEntityLocks()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/storage/table/TableBatchOperation;->partitionKey:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/TableBatchOperation;->hasQuery:Z

    .line 4
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/TableBatchOperation;->containsWrites:Z

    :cond_0
    return-void
.end method

.method private checkSingleQueryPerBatch(Lcom/microsoft/azure/storage/table/TableOperation;I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/storage/table/TableBatchOperation;->hasQuery:Z

    const-string v1, "A batch transaction with a retrieve operation cannot contain any other operations."

    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableOperation;->getOperationType()Lcom/microsoft/azure/storage/table/TableOperationType;

    move-result-object v0

    sget-object v2, Lcom/microsoft/azure/storage/table/TableOperationType;->RETRIEVE:Lcom/microsoft/azure/storage/table/TableOperationType;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    if-gtz p2, :cond_0

    .line 3
    iput-boolean v3, p0, Lcom/microsoft/azure/storage/table/TableBatchOperation;->hasQuery:Z

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableOperation;->getOperationType()Lcom/microsoft/azure/storage/table/TableOperationType;

    move-result-object p1

    sget-object p2, Lcom/microsoft/azure/storage/table/TableOperationType;->RETRIEVE:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-eq p1, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lcom/microsoft/azure/storage/table/TableBatchOperation;->containsWrites:Z

    return-void

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private executeImpl(Lcom/microsoft/azure/storage/table/CloudTableClient;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/table/CloudTableClient;",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/TableRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/table/CloudTableClient;",
            "Lcom/microsoft/azure/storage/table/TableBatchOperation;",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/azure/storage/table/TableResult;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "batch_%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "changeset_%s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v2, p1

    move-object/from16 v3, p4

    .line 4
    :try_start_0
    invoke-virtual {p1, v3}, Lcom/microsoft/azure/storage/table/CloudTableClient;->getTransformedEndPoint(Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object v7

    move-object v4, v0

    move-object v5, p3

    move-object v6, p2

    move-object v8, p0

    move-object v9, v1

    move-object/from16 v11, p4

    .line 6
    invoke-static/range {v4 .. v11}, Lcom/microsoft/azure/storage/table/MimeHelper;->writeBatchToStream(Ljava/io/OutputStream;Lcom/microsoft/azure/storage/table/TableRequestOptions;Ljava/lang/String;Ljava/net/URI;Lcom/microsoft/azure/storage/table/TableBatchOperation;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/OperationContext;)V

    .line 7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 8
    new-instance v0, Lcom/microsoft/azure/storage/table/TableBatchOperation$1;

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ServiceClient;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v7

    move-object v4, v0

    move-object v5, p0

    move-object v6, p3

    move-object v9, p3

    move-object v10, v1

    move-object/from16 v11, p4

    invoke-direct/range {v4 .. v11}, Lcom/microsoft/azure/storage/table/TableBatchOperation$1;-><init>(Lcom/microsoft/azure/storage/table/TableBatchOperation;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;[BLcom/microsoft/azure/storage/table/TableRequestOptions;Ljava/lang/String;Lcom/microsoft/azure/storage/OperationContext;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/microsoft/azure/storage/StorageException;->translateClientException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object v0

    .line 11
    throw v0

    :catch_1
    move-exception v0

    .line 12
    invoke-static {v0}, Lcom/microsoft/azure/storage/StorageException;->translateClientException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object v0

    .line 13
    throw v0
.end method

.method private lockToPartitionKey(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableBatchOperation;->partitionKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/TableBatchOperation;->partitionKey:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableBatchOperation;->partitionKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "All entities in a given batch must have the same partition key."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public add(ILcom/microsoft/azure/storage/table/TableOperation;)V
    .locals 2

    const-string v0, "element"

    .line 3
    invoke-static {v0, p2}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->checkSingleQueryPerBatch(Lcom/microsoft/azure/storage/table/TableOperation;I)V

    .line 5
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/table/TableOperation;->getOperationType()Lcom/microsoft/azure/storage/table/TableOperationType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/storage/table/TableOperationType;->RETRIEVE:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-ne v0, v1, :cond_0

    .line 6
    move-object v0, p2

    check-cast v0, Lcom/microsoft/azure/storage/table/QueryTableOperation;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/table/QueryTableOperation;->getPartitionKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->lockToPartitionKey(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/azure/storage/table/TableEntity;->getPartitionKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->lockToPartitionKey(Ljava/lang/String;)V

    .line 8
    :goto_0
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/microsoft/azure/storage/table/TableOperation;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->add(ILcom/microsoft/azure/storage/table/TableOperation;)V

    return-void
.end method

.method public add(Lcom/microsoft/azure/storage/table/TableOperation;)Z
    .locals 2

    const-string v0, "element"

    .line 9
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->checkSingleQueryPerBatch(Lcom/microsoft/azure/storage/table/TableOperation;I)V

    .line 11
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableOperation;->getOperationType()Lcom/microsoft/azure/storage/table/TableOperationType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/storage/table/TableOperationType;->RETRIEVE:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-ne v0, v1, :cond_0

    .line 12
    move-object v0, p1

    check-cast v0, Lcom/microsoft/azure/storage/table/QueryTableOperation;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/table/QueryTableOperation;->getPartitionKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->lockToPartitionKey(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/azure/storage/table/TableEntity;->getPartitionKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->lockToPartitionKey(Ljava/lang/String;)V

    .line 14
    :goto_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Lcom/microsoft/azure/storage/table/TableOperation;

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->add(Lcom/microsoft/azure/storage/table/TableOperation;)Z

    move-result p1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Lcom/microsoft/azure/storage/table/TableOperation;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/azure/storage/table/TableOperation;

    const-string v3, "operation"

    .line 3
    invoke-static {v3, v2}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0, v2, v0}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->checkSingleQueryPerBatch(Lcom/microsoft/azure/storage/table/TableOperation;I)V

    .line 5
    invoke-virtual {v2}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object v3

    if-nez v3, :cond_0

    .line 6
    check-cast v2, Lcom/microsoft/azure/storage/table/QueryTableOperation;

    invoke-virtual {v2}, Lcom/microsoft/azure/storage/table/QueryTableOperation;->getPartitionKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->lockToPartitionKey(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v2}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object v2

    invoke-interface {v2}, Lcom/microsoft/azure/storage/table/TableEntity;->getPartitionKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->lockToPartitionKey(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/microsoft/azure/storage/table/TableOperation;",
            ">;)Z"
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 10
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/azure/storage/table/TableOperation;

    const-string v3, "operation"

    .line 11
    invoke-static {v3, v2}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    invoke-direct {p0, v2, v0}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->checkSingleQueryPerBatch(Lcom/microsoft/azure/storage/table/TableOperation;I)V

    .line 13
    invoke-virtual {v2}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object v3

    if-nez v3, :cond_0

    .line 14
    check-cast v2, Lcom/microsoft/azure/storage/table/QueryTableOperation;

    invoke-virtual {v2}, Lcom/microsoft/azure/storage/table/QueryTableOperation;->getPartitionKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->lockToPartitionKey(Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {v2}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object v2

    invoke-interface {v2}, Lcom/microsoft/azure/storage/table/TableEntity;->getPartitionKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->lockToPartitionKey(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16
    :cond_1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 0

    .line 1
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 2
    invoke-direct {p0}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->checkResetEntityLocks()V

    return-void
.end method

.method public delete(Lcom/microsoft/azure/storage/table/TableEntity;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/microsoft/azure/storage/table/TableEntity;->getPartitionKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->lockToPartitionKey(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/microsoft/azure/storage/table/TableOperation;->delete(Lcom/microsoft/azure/storage/table/TableEntity;)Lcom/microsoft/azure/storage/table/TableOperation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->add(Lcom/microsoft/azure/storage/table/TableOperation;)Z

    return-void
.end method

.method public execute(Lcom/microsoft/azure/storage/table/CloudTableClient;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/table/CloudTableClient;",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/TableRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/azure/storage/table/TableResult;",
            ">;"
        }
    .end annotation

    const-string v0, "TableName"

    .line 1
    invoke-static {v0, p2}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->executeImpl(Lcom/microsoft/azure/storage/table/CloudTableClient;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p2

    .line 4
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p3

    .line 5
    invoke-static {p1, p0, p2, p3, p4}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot execute an empty batch operation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public insert(Lcom/microsoft/azure/storage/table/TableEntity;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->insert(Lcom/microsoft/azure/storage/table/TableEntity;Z)V

    return-void
.end method

.method public insert(Lcom/microsoft/azure/storage/table/TableEntity;Z)V
    .locals 1

    .line 2
    invoke-interface {p1}, Lcom/microsoft/azure/storage/table/TableEntity;->getPartitionKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->lockToPartitionKey(Ljava/lang/String;)V

    .line 3
    invoke-static {p1, p2}, Lcom/microsoft/azure/storage/table/TableOperation;->insert(Lcom/microsoft/azure/storage/table/TableEntity;Z)Lcom/microsoft/azure/storage/table/TableOperation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->add(Lcom/microsoft/azure/storage/table/TableOperation;)Z

    return-void
.end method

.method public insertOrMerge(Lcom/microsoft/azure/storage/table/TableEntity;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/microsoft/azure/storage/table/TableEntity;->getPartitionKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->lockToPartitionKey(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/microsoft/azure/storage/table/TableOperation;->insertOrMerge(Lcom/microsoft/azure/storage/table/TableEntity;)Lcom/microsoft/azure/storage/table/TableOperation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->add(Lcom/microsoft/azure/storage/table/TableOperation;)Z

    return-void
.end method

.method public insertOrReplace(Lcom/microsoft/azure/storage/table/TableEntity;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/microsoft/azure/storage/table/TableEntity;->getPartitionKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->lockToPartitionKey(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/microsoft/azure/storage/table/TableOperation;->insertOrReplace(Lcom/microsoft/azure/storage/table/TableEntity;)Lcom/microsoft/azure/storage/table/TableOperation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->add(Lcom/microsoft/azure/storage/table/TableOperation;)Z

    return-void
.end method

.method public merge(Lcom/microsoft/azure/storage/table/TableEntity;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/microsoft/azure/storage/table/TableEntity;->getPartitionKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->lockToPartitionKey(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/microsoft/azure/storage/table/TableOperation;->merge(Lcom/microsoft/azure/storage/table/TableEntity;)Lcom/microsoft/azure/storage/table/TableOperation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->add(Lcom/microsoft/azure/storage/table/TableOperation;)Z

    return-void
.end method

.method public remove(I)Lcom/microsoft/azure/storage/table/TableOperation;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/storage/table/TableOperation;

    .line 3
    invoke-direct {p0}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->checkResetEntityLocks()V

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->remove(I)Lcom/microsoft/azure/storage/table/TableOperation;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 4
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 5
    invoke-direct {p0}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->checkResetEntityLocks()V

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    .line 2
    invoke-direct {p0}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->checkResetEntityLocks()V

    return p1
.end method

.method public removeRange(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->removeRange(II)V

    .line 2
    invoke-direct {p0}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->checkResetEntityLocks()V

    return-void
.end method

.method public replace(Lcom/microsoft/azure/storage/table/TableEntity;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/microsoft/azure/storage/table/TableEntity;->getPartitionKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->lockToPartitionKey(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/microsoft/azure/storage/table/TableOperation;->replace(Lcom/microsoft/azure/storage/table/TableEntity;)Lcom/microsoft/azure/storage/table/TableOperation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->add(Lcom/microsoft/azure/storage/table/TableOperation;)Z

    return-void
.end method

.method public retrieve(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/table/EntityResolver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/EntityResolver<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->lockToPartitionKey(Ljava/lang/String;)V

    .line 4
    invoke-static {p1, p2, p3}, Lcom/microsoft/azure/storage/table/TableOperation;->retrieve(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/table/EntityResolver;)Lcom/microsoft/azure/storage/table/TableOperation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->add(Lcom/microsoft/azure/storage/table/TableOperation;)Z

    return-void
.end method

.method public retrieve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/azure/storage/table/TableEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->lockToPartitionKey(Ljava/lang/String;)V

    .line 2
    invoke-static {p1, p2, p3}, Lcom/microsoft/azure/storage/table/TableOperation;->retrieve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/microsoft/azure/storage/table/TableOperation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->add(Lcom/microsoft/azure/storage/table/TableOperation;)Z

    return-void
.end method
