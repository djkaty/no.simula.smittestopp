.class public final Lcom/microsoft/azure/storage/table/CloudTable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public name:Ljava/lang/String;

.field public storageUri:Lcom/microsoft/azure/storage/StorageUri;

.field public tableServiceClient:Lcom/microsoft/azure/storage/table/CloudTableClient;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/StorageUri;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/microsoft/azure/storage/table/CloudTable;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/table/CloudTable;->parseQueryAndVerify(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/azure/storage/table/CloudTableClient;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "client"

    .line 7
    invoke-static {v0, p2}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "tableName"

    .line 8
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/ServiceClient;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/PathUtility;->appendPathToUri(Lcom/microsoft/azure/storage/StorageUri;Ljava/lang/String;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/CloudTable;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    .line 10
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/CloudTable;->name:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/microsoft/azure/storage/table/CloudTable;->tableServiceClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/StorageUri;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;Ljava/net/URI;)V

    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/table/CloudTable;-><init>(Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 2

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/StorageUri;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;Ljava/net/URI;)V

    invoke-direct {p0, v0, p2}, Lcom/microsoft/azure/storage/table/CloudTable;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-void
.end method

.method private downloadPermissionsImpl(Lcom/microsoft/azure/storage/table/TableRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/table/TableRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/table/CloudTableClient;",
            "Lcom/microsoft/azure/storage/table/CloudTable;",
            "Lcom/microsoft/azure/storage/table/TablePermissions;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/table/CloudTable$2;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/CloudTable;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p1}, Lcom/microsoft/azure/storage/table/CloudTable$2;-><init>(Lcom/microsoft/azure/storage/table/CloudTable;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/table/TableRequestOptions;)V

    return-object v0
.end method

.method private exists(ZLcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z
    .locals 6
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    if-nez p3, :cond_0

    .line 3
    new-instance p3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 4
    :cond_0
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/CloudTable;->tableServiceClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    invoke-static {p2, v0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/table/CloudTableClient;)Lcom/microsoft/azure/storage/table/TableRequestOptions;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->clearEncryption()V

    .line 7
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/CloudTable;->name:Ljava/lang/String;

    const-string v1, "tableName"

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/CloudTable;->name:Ljava/lang/String;

    const/4 v1, 0x0

    const-class v2, Lcom/microsoft/azure/storage/table/DynamicTableEntity;

    invoke-static {v0, v1, v2}, Lcom/microsoft/azure/storage/table/TableOperation;->retrieve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/microsoft/azure/storage/table/TableOperation;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/storage/table/QueryTableOperation;

    .line 9
    invoke-virtual {v0, p1}, Lcom/microsoft/azure/storage/table/QueryTableOperation;->setPrimaryOnlyRetrieve(Z)V

    .line 10
    iget-object p1, p0, Lcom/microsoft/azure/storage/table/CloudTable;->tableServiceClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    const-string v1, "Tables"

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/microsoft/azure/storage/table/TableOperation;->execute(Lcom/microsoft/azure/storage/table/CloudTableClient;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/TableResult;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableResult;->getHttpStatusCode()I

    move-result p2

    const/16 p3, 0xc8

    if-ne p2, p3, :cond_1

    const/4 p1, 0x1

    return p1

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableResult;->getHttpStatusCode()I

    move-result p2

    const/16 p3, 0x194

    if-ne p2, p3, :cond_2

    const/4 p1, 0x0

    return p1

    .line 13
    :cond_2
    new-instance p2, Lcom/microsoft/azure/storage/StorageException;

    .line 14
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableResult;->getHttpStatusCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, "OutOfRangeInput"

    const-string v2, "Unexpected http status code received."

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V

    throw p2
.end method

.method private getSharedAccessCanonicalName()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/CloudTable;->getServiceClient()Lcom/microsoft/azure/storage/table/CloudTableClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageCredentials;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/CloudTable;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "table"

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

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/CloudTable;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

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
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/CloudTable;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->determinePathStyleFromUri(Ljava/net/URI;)Z

    move-result v0

    .line 7
    new-instance v1, Lcom/microsoft/azure/storage/table/CloudTableClient;

    .line 8
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/CloudTable;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v2

    .line 9
    invoke-static {v2, v0}, Lcom/microsoft/azure/storage/core/PathUtility;->getServiceClientBaseAddress(Lcom/microsoft/azure/storage/StorageUri;Z)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, p1

    :goto_1
    invoke-direct {v1, v2, p2}, Lcom/microsoft/azure/storage/table/CloudTableClient;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    iput-object v1, p0, Lcom/microsoft/azure/storage/table/CloudTable;->tableServiceClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    .line 10
    iget-object p1, p0, Lcom/microsoft/azure/storage/table/CloudTable;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/microsoft/azure/storage/core/PathUtility;->getTableNameFromUri(Ljava/net/URI;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/table/CloudTable;->name:Ljava/lang/String;
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

.method private uploadPermissionsImpl(Lcom/microsoft/azure/storage/table/TablePermissions;Lcom/microsoft/azure/storage/table/TableRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/table/TablePermissions;",
            "Lcom/microsoft/azure/storage/table/TableRequestOptions;",
            ")",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/table/CloudTableClient;",
            "Lcom/microsoft/azure/storage/table/CloudTable;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/Permissions;->getSharedAccessPolicies()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/microsoft/azure/storage/SharedAccessPolicySerializer;->writeSharedAccessIdentifiersToStream(Ljava/util/HashMap;Ljava/io/StringWriter;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 4
    new-instance p1, Lcom/microsoft/azure/storage/table/CloudTable$1;

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/CloudTable;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v4

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/azure/storage/table/CloudTable$1;-><init>(Lcom/microsoft/azure/storage/table/CloudTable;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;[BLcom/microsoft/azure/storage/table/TableRequestOptions;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

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
.method public create()V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/table/CloudTable;->create(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public create(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 4
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
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/CloudTable;->tableServiceClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    invoke-static {p1, v0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/table/CloudTableClient;)Lcom/microsoft/azure/storage/table/TableRequestOptions;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->clearEncryption()V

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/CloudTable;->name:Ljava/lang/String;

    const-string v1, "tableName"

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/microsoft/azure/storage/table/DynamicTableEntity;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/table/DynamicTableEntity;-><init>()V

    .line 8
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/table/DynamicTableEntity;->getProperties()Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lcom/microsoft/azure/storage/table/EntityProperty;

    iget-object v3, p0, Lcom/microsoft/azure/storage/table/CloudTable;->name:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/microsoft/azure/storage/table/EntityProperty;-><init>(Ljava/lang/String;)V

    const-string v3, "TableName"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {v0}, Lcom/microsoft/azure/storage/table/TableOperation;->insert(Lcom/microsoft/azure/storage/table/TableEntity;)Lcom/microsoft/azure/storage/table/TableOperation;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/table/CloudTable;->tableServiceClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    const-string v2, "Tables"

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/microsoft/azure/storage/table/TableOperation;->execute(Lcom/microsoft/azure/storage/table/CloudTableClient;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/TableResult;

    return-void
.end method

.method public createIfNotExists()Z
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/table/CloudTable;->createIfNotExists(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    return v0
.end method

.method public createIfNotExists(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z
    .locals 3
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/CloudTable;->tableServiceClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    invoke-static {p1, v0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/table/CloudTableClient;)Lcom/microsoft/azure/storage/table/TableRequestOptions;

    move-result-object p1

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0, p1, p2}, Lcom/microsoft/azure/storage/table/CloudTable;->exists(ZLcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/azure/storage/table/CloudTable;->create(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    :try_end_0
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageException;->getHttpStatusCode()I

    move-result p2

    const/16 v0, 0x199

    if-ne p2, v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageException;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TableAlreadyExists"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v2

    .line 7
    :cond_1
    throw p1
.end method

.method public delete()V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/table/CloudTable;->delete(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public delete(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 4
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
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/CloudTable;->tableServiceClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    invoke-static {p1, v0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/table/CloudTableClient;)Lcom/microsoft/azure/storage/table/TableRequestOptions;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/CloudTable;->name:Ljava/lang/String;

    const-string v1, "tableName"

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/microsoft/azure/storage/table/DynamicTableEntity;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/table/DynamicTableEntity;-><init>()V

    .line 7
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/table/DynamicTableEntity;->getProperties()Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lcom/microsoft/azure/storage/table/EntityProperty;

    iget-object v3, p0, Lcom/microsoft/azure/storage/table/CloudTable;->name:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/microsoft/azure/storage/table/EntityProperty;-><init>(Ljava/lang/String;)V

    const-string v3, "TableName"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Lcom/microsoft/azure/storage/table/TableOperation;

    sget-object v2, Lcom/microsoft/azure/storage/table/TableOperationType;->DELETE:Lcom/microsoft/azure/storage/table/TableOperationType;

    invoke-direct {v1, v0, v2}, Lcom/microsoft/azure/storage/table/TableOperation;-><init>(Lcom/microsoft/azure/storage/table/TableEntity;Lcom/microsoft/azure/storage/table/TableOperationType;)V

    .line 9
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/CloudTable;->tableServiceClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    const-string v2, "Tables"

    invoke-virtual {v1, v0, v2, p1, p2}, Lcom/microsoft/azure/storage/table/TableOperation;->execute(Lcom/microsoft/azure/storage/table/CloudTableClient;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/TableResult;

    return-void
.end method

.method public deleteIfExists()Z
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/table/CloudTable;->deleteIfExists(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    return v0
.end method

.method public deleteIfExists(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z
    .locals 3
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/CloudTable;->tableServiceClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    invoke-static {p1, v0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/table/CloudTableClient;)Lcom/microsoft/azure/storage/table/TableRequestOptions;

    move-result-object p1

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0, p1, p2}, Lcom/microsoft/azure/storage/table/CloudTable;->exists(ZLcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/azure/storage/table/CloudTable;->delete(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    :try_end_0
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageException;->getHttpStatusCode()I

    move-result p2

    const/16 v0, 0x194

    if-ne p2, v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageException;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ResourceNotFound"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return v2

    .line 7
    :cond_0
    throw p1

    :cond_1
    return v2
.end method

.method public downloadPermissions()Lcom/microsoft/azure/storage/table/TablePermissions;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/table/CloudTable;->downloadPermissions(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/TablePermissions;

    move-result-object v0

    return-object v0
.end method

.method public downloadPermissions(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/TablePermissions;
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
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/CloudTable;->tableServiceClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    invoke-static {p1, v0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/table/CloudTableClient;)Lcom/microsoft/azure/storage/table/TableRequestOptions;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/CloudTable;->tableServiceClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/table/CloudTable;->downloadPermissionsImpl(Lcom/microsoft/azure/storage/table/TableRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p1

    .line 7
    invoke-static {v0, p0, v1, p1, p2}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/storage/table/TablePermissions;

    return-object p1
.end method

.method public execute(Lcom/microsoft/azure/storage/table/TableOperation;)Lcom/microsoft/azure/storage/table/TableResult;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0, v0}, Lcom/microsoft/azure/storage/table/CloudTable;->execute(Lcom/microsoft/azure/storage/table/TableOperation;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/TableResult;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lcom/microsoft/azure/storage/table/TableOperation;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/TableResult;
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const-string v0, "operation"

    .line 8
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/CloudTable;->getServiceClient()Lcom/microsoft/azure/storage/table/CloudTableClient;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/CloudTable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/microsoft/azure/storage/table/TableOperation;->execute(Lcom/microsoft/azure/storage/table/CloudTableClient;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/TableResult;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lcom/microsoft/azure/storage/table/TableQuery;)Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/microsoft/azure/storage/table/TableEntity;",
            ">(",
            "Lcom/microsoft/azure/storage/table/TableQuery<",
            "TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, p1, v0, v0}, Lcom/microsoft/azure/storage/table/CloudTable;->execute(Lcom/microsoft/azure/storage/table/TableQuery;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lcom/microsoft/azure/storage/table/TableQuery;Lcom/microsoft/azure/storage/table/EntityResolver;)Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/microsoft/azure/storage/table/TableQuery<",
            "*>;",
            "Lcom/microsoft/azure/storage/table/EntityResolver<",
            "TR;>;)",
            "Ljava/lang/Iterable<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/microsoft/azure/storage/table/CloudTable;->execute(Lcom/microsoft/azure/storage/table/TableQuery;Lcom/microsoft/azure/storage/table/EntityResolver;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lcom/microsoft/azure/storage/table/TableQuery;Lcom/microsoft/azure/storage/table/EntityResolver;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/microsoft/azure/storage/table/TableQuery<",
            "*>;",
            "Lcom/microsoft/azure/storage/table/EntityResolver<",
            "TR;>;",
            "Lcom/microsoft/azure/storage/table/TableRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Ljava/lang/Iterable<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "query"

    .line 11
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Query requires a valid class type or resolver."

    .line 12
    invoke-static {v0, p2}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/CloudTable;->getServiceClient()Lcom/microsoft/azure/storage/table/CloudTableClient;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/table/CloudTableClient;)Lcom/microsoft/azure/storage/table/TableRequestOptions;

    move-result-object p3

    .line 14
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/CloudTable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/storage/table/TableQuery;->setSourceTableName(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/CloudTable;->getServiceClient()Lcom/microsoft/azure/storage/table/CloudTableClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/microsoft/azure/storage/table/CloudTableClient;->generateIteratorForQuery(Lcom/microsoft/azure/storage/table/TableQuery;Lcom/microsoft/azure/storage/table/EntityResolver;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lcom/microsoft/azure/storage/table/TableQuery;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/microsoft/azure/storage/table/TableEntity;",
            ">(",
            "Lcom/microsoft/azure/storage/table/TableQuery<",
            "TT;>;",
            "Lcom/microsoft/azure/storage/table/TableRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "query"

    .line 17
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/table/TableQuery;->getClazzType()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Query requires a valid class type or resolver."

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/CloudTable;->getServiceClient()Lcom/microsoft/azure/storage/table/CloudTableClient;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/table/CloudTableClient;)Lcom/microsoft/azure/storage/table/TableRequestOptions;

    move-result-object p2

    .line 20
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/CloudTable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/storage/table/TableQuery;->setSourceTableName(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/CloudTable;->getServiceClient()Lcom/microsoft/azure/storage/table/CloudTableClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/microsoft/azure/storage/table/CloudTableClient;->generateIteratorForQuery(Lcom/microsoft/azure/storage/table/TableQuery;Lcom/microsoft/azure/storage/table/EntityResolver;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lcom/microsoft/azure/storage/table/TableBatchOperation;)Ljava/util/ArrayList;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/table/TableBatchOperation;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/azure/storage/table/TableResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/microsoft/azure/storage/table/CloudTable;->execute(Lcom/microsoft/azure/storage/table/TableBatchOperation;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lcom/microsoft/azure/storage/table/TableBatchOperation;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/util/ArrayList;
    .locals 2
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/table/TableBatchOperation;",
            "Lcom/microsoft/azure/storage/table/TableRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/azure/storage/table/TableResult;",
            ">;"
        }
    .end annotation

    const-string v0, "batch"

    .line 2
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p3, :cond_0

    .line 3
    new-instance p3, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p3}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 4
    :cond_0
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/OperationContext;->initialize()V

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/CloudTable;->getServiceClient()Lcom/microsoft/azure/storage/table/CloudTableClient;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/table/CloudTableClient;)Lcom/microsoft/azure/storage/table/TableRequestOptions;

    move-result-object p2

    .line 6
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/CloudTable;->getServiceClient()Lcom/microsoft/azure/storage/table/CloudTableClient;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/CloudTable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/microsoft/azure/storage/table/TableBatchOperation;->execute(Lcom/microsoft/azure/storage/table/CloudTableClient;Ljava/lang/String;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public executeSegmented(Lcom/microsoft/azure/storage/table/TableQuery;Lcom/microsoft/azure/storage/ResultContinuation;)Lcom/microsoft/azure/storage/ResultSegment;
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/microsoft/azure/storage/table/TableEntity;",
            ">(",
            "Lcom/microsoft/azure/storage/table/TableQuery<",
            "TT;>;",
            "Lcom/microsoft/azure/storage/ResultContinuation;",
            ")",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/microsoft/azure/storage/table/CloudTable;->executeSegmented(Lcom/microsoft/azure/storage/table/TableQuery;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;

    move-result-object p1

    return-object p1
.end method

.method public executeSegmented(Lcom/microsoft/azure/storage/table/TableQuery;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;
    .locals 7
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/microsoft/azure/storage/table/TableEntity;",
            ">(",
            "Lcom/microsoft/azure/storage/table/TableQuery<",
            "TT;>;",
            "Lcom/microsoft/azure/storage/ResultContinuation;",
            "Lcom/microsoft/azure/storage/table/TableRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "query"

    .line 6
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/CloudTable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/storage/table/TableQuery;->setSourceTableName(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/CloudTable;->getServiceClient()Lcom/microsoft/azure/storage/table/CloudTableClient;

    move-result-object v1

    const/4 v3, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/microsoft/azure/storage/table/CloudTableClient;->executeQuerySegmentedImpl(Lcom/microsoft/azure/storage/table/TableQuery;Lcom/microsoft/azure/storage/table/EntityResolver;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;

    move-result-object p1

    return-object p1
.end method

.method public executeSegmented(Lcom/microsoft/azure/storage/table/TableQuery;Lcom/microsoft/azure/storage/table/EntityResolver;Lcom/microsoft/azure/storage/ResultContinuation;)Lcom/microsoft/azure/storage/ResultSegment;
    .locals 6
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/microsoft/azure/storage/table/TableQuery<",
            "*>;",
            "Lcom/microsoft/azure/storage/table/EntityResolver<",
            "TR;>;",
            "Lcom/microsoft/azure/storage/ResultContinuation;",
            ")",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "TR;>;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/table/CloudTable;->executeSegmented(Lcom/microsoft/azure/storage/table/TableQuery;Lcom/microsoft/azure/storage/table/EntityResolver;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;

    move-result-object p1

    return-object p1
.end method

.method public executeSegmented(Lcom/microsoft/azure/storage/table/TableQuery;Lcom/microsoft/azure/storage/table/EntityResolver;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;
    .locals 7
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/microsoft/azure/storage/table/TableQuery<",
            "*>;",
            "Lcom/microsoft/azure/storage/table/EntityResolver<",
            "TR;>;",
            "Lcom/microsoft/azure/storage/ResultContinuation;",
            "Lcom/microsoft/azure/storage/table/TableRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Lcom/microsoft/azure/storage/ResultSegment<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "Query requires a valid class type or resolver."

    .line 2
    invoke-static {v0, p2}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/CloudTable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/storage/table/TableQuery;->setSourceTableName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/CloudTable;->getServiceClient()Lcom/microsoft/azure/storage/table/CloudTableClient;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/microsoft/azure/storage/table/CloudTableClient;->executeQuerySegmentedImpl(Lcom/microsoft/azure/storage/table/TableQuery;Lcom/microsoft/azure/storage/table/EntityResolver;Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/ResultSegment;

    move-result-object p1

    return-object p1
.end method

.method public exists()Z
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/microsoft/azure/storage/table/CloudTable;->exists(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    return v0
.end method

.method public exists(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lcom/microsoft/azure/storage/table/CloudTable;->exists(ZLcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result p1

    return p1
.end method

.method public generateSharedAccessSignature(Lcom/microsoft/azure/storage/table/SharedAccessTablePolicy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-virtual/range {v0 .. v8}, Lcom/microsoft/azure/storage/table/CloudTable;->generateSharedAccessSignature(Lcom/microsoft/azure/storage/table/SharedAccessTablePolicy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generateSharedAccessSignature(Lcom/microsoft/azure/storage/table/SharedAccessTablePolicy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;)Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/microsoft/azure/storage/table/CloudTable;->tableServiceClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/azure/storage/core/StorageCredentialsHelper;->canCredentialsSignRequest(Lcom/microsoft/azure/storage/StorageCredentials;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/microsoft/azure/storage/table/CloudTable;->getSharedAccessCanonicalName()Ljava/lang/String;

    move-result-object v4

    .line 4
    iget-object v11, v0, Lcom/microsoft/azure/storage/table/CloudTable;->tableServiceClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-static/range {v2 .. v11}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->generateSharedAccessSignatureHashForTable(Lcom/microsoft/azure/storage/table/SharedAccessTablePolicy;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/ServiceClient;)Ljava/lang/String;

    move-result-object v21

    .line 5
    iget-object v1, v0, Lcom/microsoft/azure/storage/table/CloudTable;->name:Ljava/lang/String;

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v17, p2

    move-object/from16 v18, p7

    move-object/from16 v19, p8

    move-object/from16 v20, v1

    invoke-static/range {v12 .. v21}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->generateSharedAccessSignatureForTable(Lcom/microsoft/azure/storage/table/SharedAccessTablePolicy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/storage/core/UriQueryBuilder;

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

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/CloudTable;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceClient()Lcom/microsoft/azure/storage/table/CloudTableClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/CloudTable;->tableServiceClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    return-object v0
.end method

.method public final getStorageUri()Lcom/microsoft/azure/storage/StorageUri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/CloudTable;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/CloudTable;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public uploadPermissions(Lcom/microsoft/azure/storage/table/TablePermissions;)V
    .locals 1
    .annotation runtime Lcom/microsoft/azure/storage/DoesServiceRequest;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/microsoft/azure/storage/table/CloudTable;->uploadPermissions(Lcom/microsoft/azure/storage/table/TablePermissions;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-void
.end method

.method public uploadPermissions(Lcom/microsoft/azure/storage/table/TablePermissions;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 1
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
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/CloudTable;->tableServiceClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    invoke-static {p2, v0}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->populateAndApplyDefaults(Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/table/CloudTableClient;)Lcom/microsoft/azure/storage/table/TableRequestOptions;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/CloudTable;->tableServiceClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/table/CloudTable;->uploadPermissionsImpl(Lcom/microsoft/azure/storage/table/TablePermissions;Lcom/microsoft/azure/storage/table/TableRequestOptions;)Lcom/microsoft/azure/storage/core/StorageRequest;

    move-result-object p1

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/RequestOptions;->getRetryPolicyFactory()Lcom/microsoft/azure/storage/RetryPolicyFactory;

    move-result-object p2

    .line 7
    invoke-static {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    return-void
.end method
