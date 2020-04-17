.class public Lcom/microsoft/azure/storage/table/TableOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public echoContent:Z

.field public entity:Lcom/microsoft/azure/storage/table/TableEntity;

.field public opType:Lcom/microsoft/azure/storage/table/TableOperationType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/storage/table/TableOperation;->opType:Lcom/microsoft/azure/storage/table/TableOperationType;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/table/TableEntity;Lcom/microsoft/azure/storage/table/TableOperationType;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/azure/storage/table/TableOperation;-><init>(Lcom/microsoft/azure/storage/table/TableEntity;Lcom/microsoft/azure/storage/table/TableOperationType;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/table/TableEntity;Lcom/microsoft/azure/storage/table/TableOperationType;Z)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/microsoft/azure/storage/table/TableOperation;->opType:Lcom/microsoft/azure/storage/table/TableOperationType;

    .line 6
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/TableOperation;->entity:Lcom/microsoft/azure/storage/table/TableEntity;

    .line 7
    iput-object p2, p0, Lcom/microsoft/azure/storage/table/TableOperation;->opType:Lcom/microsoft/azure/storage/table/TableOperationType;

    .line 8
    iput-boolean p3, p0, Lcom/microsoft/azure/storage/table/TableOperation;->echoContent:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/azure/storage/table/TableOperation;)Lcom/microsoft/azure/storage/table/TableOperationType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/storage/table/TableOperation;->opType:Lcom/microsoft/azure/storage/table/TableOperationType;

    return-object p0
.end method

.method public static delete(Lcom/microsoft/azure/storage/table/TableEntity;)Lcom/microsoft/azure/storage/table/TableOperation;
    .locals 2

    const-string v0, "entity"

    .line 1
    invoke-static {v0, p0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-interface {p0}, Lcom/microsoft/azure/storage/table/TableEntity;->getEtag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "entity etag"

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/table/TableOperation;

    sget-object v1, Lcom/microsoft/azure/storage/table/TableOperationType;->DELETE:Lcom/microsoft/azure/storage/table/TableOperationType;

    invoke-direct {v0, p0, v1}, Lcom/microsoft/azure/storage/table/TableOperation;-><init>(Lcom/microsoft/azure/storage/table/TableEntity;Lcom/microsoft/azure/storage/table/TableOperationType;)V

    return-object v0
.end method

.method private deleteImpl(Lcom/microsoft/azure/storage/table/CloudTableClient;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 10
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
            "Lcom/microsoft/azure/storage/table/TableOperation;",
            "Lcom/microsoft/azure/storage/table/TableResult;",
            ">;"
        }
    .end annotation

    const-string v0, "Tables"

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/microsoft/azure/storage/table/TableEntity;->writeEntity(Lcom/microsoft/azure/storage/OperationContext;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "TableName"

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/storage/table/EntityProperty;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v8, v0

    if-nez v7, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/azure/storage/table/TableEntity;->getEtag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Delete requires a valid ETag (which may be the \'*\' wildcard)."

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/azure/storage/table/TableEntity;->getPartitionKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Delete requires a partition key."

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/azure/storage/table/TableEntity;->getRowKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Delete requires a row key."

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    :cond_1
    new-instance v0, Lcom/microsoft/azure/storage/table/TableOperation$1;

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ServiceClient;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v4

    move-object v1, v0

    move-object v2, p0

    move-object v3, p3

    move-object v5, p3

    move-object v6, p2

    move-object v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/microsoft/azure/storage/table/TableOperation$1;-><init>(Lcom/microsoft/azure/storage/table/TableOperation;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/table/TableRequestOptions;Ljava/lang/String;ZLjava/lang/String;Lcom/microsoft/azure/storage/OperationContext;)V

    return-object v0
.end method

.method public static insert(Lcom/microsoft/azure/storage/table/TableEntity;)Lcom/microsoft/azure/storage/table/TableOperation;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/microsoft/azure/storage/table/TableOperation;->insert(Lcom/microsoft/azure/storage/table/TableEntity;Z)Lcom/microsoft/azure/storage/table/TableOperation;

    move-result-object p0

    return-object p0
.end method

.method public static insert(Lcom/microsoft/azure/storage/table/TableEntity;Z)Lcom/microsoft/azure/storage/table/TableOperation;
    .locals 2

    const-string v0, "entity"

    .line 2
    invoke-static {v0, p0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/table/TableOperation;

    sget-object v1, Lcom/microsoft/azure/storage/table/TableOperationType;->INSERT:Lcom/microsoft/azure/storage/table/TableOperationType;

    invoke-direct {v0, p0, v1, p1}, Lcom/microsoft/azure/storage/table/TableOperation;-><init>(Lcom/microsoft/azure/storage/table/TableEntity;Lcom/microsoft/azure/storage/table/TableOperationType;Z)V

    return-object v0
.end method

.method private insertImpl(Lcom/microsoft/azure/storage/table/CloudTableClient;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 11
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
            "Lcom/microsoft/azure/storage/table/TableOperation;",
            "Lcom/microsoft/azure/storage/table/TableResult;",
            ">;"
        }
    .end annotation

    const-string v0, "Tables"

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/microsoft/azure/storage/table/TableEntity;->writeEntity(Lcom/microsoft/azure/storage/OperationContext;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "TableName"

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/storage/table/EntityProperty;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v10, v0

    if-nez v9, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/azure/storage/table/TableEntity;->getPartitionKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Insert requires a partition key."

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/azure/storage/table/TableEntity;->getRowKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Insert requires a row key."

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/azure/storage/table/TableOperation;->entity:Lcom/microsoft/azure/storage/table/TableEntity;

    invoke-static {v0, p3, v1, v9, p4}, Lcom/microsoft/azure/storage/table/TableEntitySerializer;->writeSingleEntityToStream(Ljava/io/OutputStream;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/table/TableEntity;ZLcom/microsoft/azure/storage/OperationContext;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 9
    new-instance v0, Lcom/microsoft/azure/storage/table/TableOperation$2;

    .line 10
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ServiceClient;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v4

    move-object v1, v0

    move-object v2, p0

    move-object v3, p3

    move-object v6, p4

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v1 .. v10}, Lcom/microsoft/azure/storage/table/TableOperation$2;-><init>(Lcom/microsoft/azure/storage/table/TableOperation;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;[BLcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/table/TableRequestOptions;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/microsoft/azure/storage/StorageException;->translateClientException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object p1

    .line 12
    throw p1
.end method

.method public static insertOrMerge(Lcom/microsoft/azure/storage/table/TableEntity;)Lcom/microsoft/azure/storage/table/TableOperation;
    .locals 2

    const-string v0, "entity"

    .line 1
    invoke-static {v0, p0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/table/TableOperation;

    sget-object v1, Lcom/microsoft/azure/storage/table/TableOperationType;->INSERT_OR_MERGE:Lcom/microsoft/azure/storage/table/TableOperationType;

    invoke-direct {v0, p0, v1}, Lcom/microsoft/azure/storage/table/TableOperation;-><init>(Lcom/microsoft/azure/storage/table/TableEntity;Lcom/microsoft/azure/storage/table/TableOperationType;)V

    return-object v0
.end method

.method public static insertOrReplace(Lcom/microsoft/azure/storage/table/TableEntity;)Lcom/microsoft/azure/storage/table/TableOperation;
    .locals 2

    const-string v0, "entity"

    .line 1
    invoke-static {v0, p0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/table/TableOperation;

    sget-object v1, Lcom/microsoft/azure/storage/table/TableOperationType;->INSERT_OR_REPLACE:Lcom/microsoft/azure/storage/table/TableOperationType;

    invoke-direct {v0, p0, v1}, Lcom/microsoft/azure/storage/table/TableOperation;-><init>(Lcom/microsoft/azure/storage/table/TableEntity;Lcom/microsoft/azure/storage/table/TableOperationType;)V

    return-object v0
.end method

.method public static merge(Lcom/microsoft/azure/storage/table/TableEntity;)Lcom/microsoft/azure/storage/table/TableOperation;
    .locals 2

    const-string v0, "entity"

    .line 1
    invoke-static {v0, p0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-interface {p0}, Lcom/microsoft/azure/storage/table/TableEntity;->getEtag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "entity etag"

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/table/TableOperation;

    sget-object v1, Lcom/microsoft/azure/storage/table/TableOperationType;->MERGE:Lcom/microsoft/azure/storage/table/TableOperationType;

    invoke-direct {v0, p0, v1}, Lcom/microsoft/azure/storage/table/TableOperation;-><init>(Lcom/microsoft/azure/storage/table/TableEntity;Lcom/microsoft/azure/storage/table/TableOperationType;)V

    return-object v0
.end method

.method private mergeImpl(Lcom/microsoft/azure/storage/table/CloudTableClient;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 11
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
            "Lcom/microsoft/azure/storage/table/TableOperation;",
            "Lcom/microsoft/azure/storage/table/TableResult;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/azure/storage/table/TableEntity;->getEtag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Merge requires a valid ETag (which may be the \'*\' wildcard)."

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/azure/storage/table/TableEntity;->getPartitionKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Merge requires a partition key."

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/azure/storage/table/TableEntity;->getRowKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Merge requires a row key."

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, p3, v1, v2, p4}, Lcom/microsoft/azure/storage/table/TableEntitySerializer;->writeSingleEntityToStream(Ljava/io/OutputStream;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/table/TableEntity;ZLcom/microsoft/azure/storage/OperationContext;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 7
    new-instance v0, Lcom/microsoft/azure/storage/table/TableOperation$3;

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ServiceClient;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v6

    move-object v3, v0

    move-object v4, p0

    move-object v5, p3

    move-object v8, p4

    move-object v9, p3

    move-object v10, p2

    invoke-direct/range {v3 .. v10}, Lcom/microsoft/azure/storage/table/TableOperation$3;-><init>(Lcom/microsoft/azure/storage/table/TableOperation;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;[BLcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/table/TableRequestOptions;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lcom/microsoft/azure/storage/StorageException;->translateClientException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object p1

    .line 10
    throw p1
.end method

.method private performDelete(Lcom/microsoft/azure/storage/table/CloudTableClient;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/TableResult;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/table/TableOperation;->deleteImpl(Lcom/microsoft/azure/storage/table/CloudTableClient;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p2

    .line 2
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p3

    .line 3
    invoke-static {p1, p0, p2, p3, p4}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/storage/table/TableResult;

    return-object p1
.end method

.method private performInsert(Lcom/microsoft/azure/storage/table/CloudTableClient;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/TableResult;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/table/TableOperation;->insertImpl(Lcom/microsoft/azure/storage/table/CloudTableClient;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p2

    .line 2
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p3

    .line 3
    invoke-static {p1, p0, p2, p3, p4}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/storage/table/TableResult;

    return-object p1
.end method

.method private performMerge(Lcom/microsoft/azure/storage/table/CloudTableClient;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/TableResult;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/table/TableOperation;->mergeImpl(Lcom/microsoft/azure/storage/table/CloudTableClient;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p2

    .line 2
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p3

    .line 3
    invoke-static {p1, p0, p2, p3, p4}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/storage/table/TableResult;

    return-object p1
.end method

.method private performUpdate(Lcom/microsoft/azure/storage/table/CloudTableClient;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/TableResult;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/table/TableOperation;->updateImpl(Lcom/microsoft/azure/storage/table/CloudTableClient;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p2

    .line 2
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p3

    .line 3
    invoke-static {p1, p0, p2, p3, p4}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/storage/table/TableResult;

    return-object p1
.end method

.method public static replace(Lcom/microsoft/azure/storage/table/TableEntity;)Lcom/microsoft/azure/storage/table/TableOperation;
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/microsoft/azure/storage/table/TableEntity;->getEtag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "entity etag"

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/table/TableOperation;

    sget-object v1, Lcom/microsoft/azure/storage/table/TableOperationType;->REPLACE:Lcom/microsoft/azure/storage/table/TableOperationType;

    invoke-direct {v0, p0, v1}, Lcom/microsoft/azure/storage/table/TableOperation;-><init>(Lcom/microsoft/azure/storage/table/TableEntity;Lcom/microsoft/azure/storage/table/TableOperationType;)V

    return-object v0
.end method

.method public static retrieve(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/table/EntityResolver;)Lcom/microsoft/azure/storage/table/TableOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/EntityResolver<",
            "*>;)",
            "Lcom/microsoft/azure/storage/table/TableOperation;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/table/QueryTableOperation;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/azure/storage/table/QueryTableOperation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/microsoft/azure/storage/table/QueryTableOperation;->setResolver(Lcom/microsoft/azure/storage/table/EntityResolver;)V

    return-object v0
.end method

.method public static retrieve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/microsoft/azure/storage/table/TableOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/azure/storage/table/TableEntity;",
            ">;)",
            "Lcom/microsoft/azure/storage/table/TableOperation;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/table/QueryTableOperation;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/azure/storage/table/QueryTableOperation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p2}, Lcom/microsoft/azure/storage/table/QueryTableOperation;->setClazzType(Ljava/lang/Class;)V

    return-object v0
.end method

.method private updateImpl(Lcom/microsoft/azure/storage/table/CloudTableClient;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 11
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
            "Lcom/microsoft/azure/storage/table/TableOperation;",
            "Lcom/microsoft/azure/storage/table/TableResult;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/azure/storage/table/TableEntity;->getEtag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Replace requires a valid ETag (which may be the \'*\' wildcard)."

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/azure/storage/table/TableEntity;->getPartitionKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Replace requires a partition key."

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/azure/storage/table/TableEntity;->getRowKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Replace requires a row key."

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, p3, v1, v2, p4}, Lcom/microsoft/azure/storage/table/TableEntitySerializer;->writeSingleEntityToStream(Ljava/io/OutputStream;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/table/TableEntity;ZLcom/microsoft/azure/storage/OperationContext;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 7
    new-instance v0, Lcom/microsoft/azure/storage/table/TableOperation$4;

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ServiceClient;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v6

    move-object v3, v0

    move-object v4, p0

    move-object v5, p3

    move-object v8, p3

    move-object v9, p2

    move-object v10, p4

    invoke-direct/range {v3 .. v10}, Lcom/microsoft/azure/storage/table/TableOperation$4;-><init>(Lcom/microsoft/azure/storage/table/TableOperation;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;[BLcom/microsoft/azure/storage/table/TableRequestOptions;Ljava/lang/String;Lcom/microsoft/azure/storage/OperationContext;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lcom/microsoft/azure/storage/StorageException;->translateClientException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object p1

    .line 10
    throw p1
.end method


# virtual methods
.method public execute(Lcom/microsoft/azure/storage/table/CloudTableClient;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/TableResult;
    .locals 2

    if-nez p4, :cond_0

    .line 1
    new-instance p4, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p4}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 3
    invoke-static {p3, p1}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/table/CloudTableClient;)Lcom/microsoft/azure/storage/table/TableRequestOptions;

    move-result-object p3

    const-string v0, "TableName"

    .line 4
    invoke-static {v0, p2}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableOperation;->getOperationType()Lcom/microsoft/azure/storage/table/TableOperationType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/storage/table/TableOperationType;->INSERT:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-eq v0, v1, :cond_6

    .line 6
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableOperation;->getOperationType()Lcom/microsoft/azure/storage/table/TableOperationType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/storage/table/TableOperationType;->INSERT_OR_MERGE:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-eq v0, v1, :cond_6

    .line 7
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableOperation;->getOperationType()Lcom/microsoft/azure/storage/table/TableOperationType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/storage/table/TableOperationType;->INSERT_OR_REPLACE:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableOperation;->getOperationType()Lcom/microsoft/azure/storage/table/TableOperationType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/storage/table/TableOperationType;->DELETE:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-ne v0, v1, :cond_2

    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/table/TableOperation;->performDelete(Lcom/microsoft/azure/storage/table/CloudTableClient;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/TableResult;

    move-result-object p1

    return-object p1

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableOperation;->getOperationType()Lcom/microsoft/azure/storage/table/TableOperationType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/storage/table/TableOperationType;->MERGE:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-ne v0, v1, :cond_3

    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/table/TableOperation;->performMerge(Lcom/microsoft/azure/storage/table/CloudTableClient;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/TableResult;

    move-result-object p1

    return-object p1

    .line 12
    :cond_3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableOperation;->getOperationType()Lcom/microsoft/azure/storage/table/TableOperationType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/storage/table/TableOperationType;->REPLACE:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-ne v0, v1, :cond_4

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/table/TableOperation;->performUpdate(Lcom/microsoft/azure/storage/table/CloudTableClient;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/TableResult;

    move-result-object p1

    return-object p1

    .line 14
    :cond_4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableOperation;->getOperationType()Lcom/microsoft/azure/storage/table/TableOperationType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/storage/table/TableOperationType;->RETRIEVE:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-ne v0, v1, :cond_5

    .line 15
    move-object v0, p0

    check-cast v0, Lcom/microsoft/azure/storage/table/QueryTableOperation;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/table/QueryTableOperation;->performRetrieve(Lcom/microsoft/azure/storage/table/CloudTableClient;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/TableResult;

    move-result-object p1

    return-object p1

    .line 16
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown table operation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_6
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/table/TableOperation;->performInsert(Lcom/microsoft/azure/storage/table/CloudTableClient;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/TableResult;

    move-result-object p1

    return-object p1
.end method

.method public generateRequestIdentity(ZLjava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "\'\'"

    const-string v3, "\'"

    if-eqz p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "\'%s\'"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/microsoft/azure/storage/table/TableOperation;->opType:Lcom/microsoft/azure/storage/table/TableOperationType;

    sget-object p2, Lcom/microsoft/azure/storage/table/TableOperationType;->INSERT:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-ne p1, p2, :cond_1

    const-string p1, ""

    return-object p1

    .line 3
    :cond_1
    sget-object p2, Lcom/microsoft/azure/storage/table/TableOperationType;->RETRIEVE:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-ne p1, p2, :cond_2

    .line 4
    move-object p1, p0

    check-cast p1, Lcom/microsoft/azure/storage/table/QueryTableOperation;

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/QueryTableOperation;->getPartitionKey()Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/QueryTableOperation;->getRowKey()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object p1

    invoke-interface {p1}, Lcom/microsoft/azure/storage/table/TableEntity;->getPartitionKey()Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object p1

    invoke-interface {p1}, Lcom/microsoft/azure/storage/table/TableEntity;->getRowKey()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "PartitionKey"

    aput-object v5, v4, v0

    .line 9
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, v1

    const/4 p2, 0x2

    const-string v0, "RowKey"

    aput-object v0, v4, p2

    const/4 p2, 0x3

    .line 10
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, p2

    const-string p1, "%s=\'%s\',%s=\'%s\'"

    .line 11
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generateRequestIdentityWithTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, v1, p1}, Lcom/microsoft/azure/storage/table/TableOperation;->generateRequestIdentity(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%s(%s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEchoContent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/storage/table/TableOperation;->echoContent:Z

    return v0
.end method

.method public final declared-synchronized getEntity()Lcom/microsoft/azure/storage/table/TableEntity;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableOperation;->entity:Lcom/microsoft/azure/storage/table/TableEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getOperationType()Lcom/microsoft/azure/storage/table/TableOperationType;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableOperation;->opType:Lcom/microsoft/azure/storage/table/TableOperationType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public parseResponse(Ljava/io/InputStream;ILjava/lang/String;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/table/TableRequestOptions;)Lcom/microsoft/azure/storage/table/TableResult;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableOperation;->opType:Lcom/microsoft/azure/storage/table/TableOperationType;

    sget-object v1, Lcom/microsoft/azure/storage/table/TableOperationType;->INSERT:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/microsoft/azure/storage/table/TableOperation;->echoContent:Z

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p5

    move v3, p2

    move-object v6, p4

    .line 2
    invoke-static/range {v1 .. v6}, Lcom/microsoft/azure/storage/table/TableDeserializer;->parseSingleOpResponse(Ljava/io/InputStream;Lcom/microsoft/azure/storage/table/TableRequestOptions;ILjava/lang/Class;Lcom/microsoft/azure/storage/table/EntityResolver;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/TableResult;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p3}, Lcom/microsoft/azure/storage/table/TableResult;->setEtag(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/table/TableResult;->updateResultObject(Lcom/microsoft/azure/storage/table/TableEntity;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lcom/microsoft/azure/storage/table/TableResult;

    invoke-direct {p1, p2}, Lcom/microsoft/azure/storage/table/TableResult;-><init>(I)V

    .line 6
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/table/TableResult;->setResult(Ljava/lang/Object;)V

    .line 7
    iget-object p2, p0, Lcom/microsoft/azure/storage/table/TableOperation;->opType:Lcom/microsoft/azure/storage/table/TableOperationType;

    sget-object p4, Lcom/microsoft/azure/storage/table/TableOperationType;->DELETE:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-eq p2, p4, :cond_1

    if-eqz p3, :cond_1

    .line 8
    invoke-virtual {p1, p3}, Lcom/microsoft/azure/storage/table/TableResult;->setEtag(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/table/TableResult;->updateResultObject(Lcom/microsoft/azure/storage/table/TableEntity;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public setEchoContent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/azure/storage/table/TableOperation;->echoContent:Z

    return-void
.end method

.method public final declared-synchronized setEntity(Lcom/microsoft/azure/storage/table/TableEntity;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/TableOperation;->entity:Lcom/microsoft/azure/storage/table/TableEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
